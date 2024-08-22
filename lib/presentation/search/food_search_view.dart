import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/search/cubit/search_cubit.dart';
import 'dart:async';

class FoodSearchView extends StatefulWidget {
  const FoodSearchView({Key? key}) : super(key: key);

  @override
  _FoodSearchViewState createState() => _FoodSearchViewState();
}

class _FoodSearchViewState extends State<FoodSearchView> {
  late TextEditingController _searchController;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    context.read<SearchedCubit>().searchedHistory(); // Load search history
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      final trimmedQuery = query.trim();
      if (trimmedQuery.isNotEmpty) {
        context.read<SearchedCubit>().searchProducts(trimmedQuery);
      } else {
        context.read<SearchedCubit>().searchedHistory(); // Reload search history if input is cleared
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: TextField(
          controller: _searchController,
          onChanged: _onSearchChanged,
          decoration: const InputDecoration(
            hintText: 'Найти продукты',
            border: InputBorder.none,
            suffixIcon: Icon(Icons.search),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Buildable<SearchedCubit, SearchState, SearchdBuildableState>(
          properties: (state) => [
            state.loading,
            state.success,
            state.failure,
            state.searched,
            state.allDeleted,
            state.product,
          ],
          builder: (context, state) {
            if (state.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.failure) {
              return const Center(child: Text('Что-то пошло не так.'));
            } else if (state.success && state.product != null && state.product!.isNotEmpty) {
              return _buildSearchResults(state);
            } else if (_searchController.text.isEmpty) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildRecentSearches(state),
                  const SizedBox(height: 16),
                  _buildPopularSearches(state),
                ],
              );
            }
            return const Center(child: Text('Ничего не найдено.'));
          },
        ),
      ),
    );
  }

  Widget _buildSearchResults(SearchdBuildableState state) {
    return ListView.builder(
      itemCount: state.product!.length,
      itemBuilder: (context, index) {
        final product = state.product![index];
        return ListTile(
          leading: Image.network(
            product.image ?? '',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(product.name ?? 'No name'),
          subtitle: Text('${product.price ?? 0} \$'),
          onTap: () {
            // Handle product selection
          },
        );
      },
    );
  }

  Widget _buildRecentSearches(SearchdBuildableState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Последний поиск',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () => context.read<SearchedCubit>().deleteAll(),
              child: const Text(
                'Очистить',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        if (state.searched != null && state.searched!.result?.search_history?.isNotEmpty == true)
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.searched!.result!.search_history!.length,
            itemBuilder: (context, index) {
              final historyItem = state.searched!.result!.search_history![index];
              return ListTile(
                leading: const Icon(Icons.history),
                title: Text(historyItem.word!),
                trailing: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    final int id = int.parse(historyItem.id.toString());
                    context.read<SearchedCubit>().deletById(id);
                  },
                ),
              );
            },
          ),
      ],
    );
  }

  Widget _buildPopularSearches(SearchdBuildableState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Популярные запросы',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        if (state.searched?.result?.top_search != null)
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.searched!.result!.top_search!.length,
            itemBuilder: (context, index) {
              final popularItem = state.searched!.result!.top_search![index];
              return ListTile(
                title: Text(popularItem.word!),
              );
            },
          ),
      ],
    );
  }
}
