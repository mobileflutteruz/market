import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/search/cubit/search_cubit.dart';

class FoodSearchView extends StatefulWidget {
  const FoodSearchView({Key? key}) : super(key: key);

  @override
  _FoodSearchViewState createState() => _FoodSearchViewState();
}

class _FoodSearchViewState extends State<FoodSearchView> {
  @override
  void initState() {
    super.initState();
    // Searched historyni yuklash
    context.read<SearchedCubit>().searchedHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Найти продукты',
            border: InputBorder.none,
            suffixIcon: Icon(Icons.search),
          ),
          onChanged: (value) {
            // Input o'zgarganda qidiruvni boshlash
            context.read<SearchedCubit>().searchProducts(value);
          },
          onSubmitted: (value) {
            // Search qilish uchun
            context.read<SearchedCubit>().searchProducts(value);
          },
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
            }

            if (state.failure) {
              return const Center(child: Text('Что-то пошло не так.'));
            }

            // Qidiruv natijalarini ko'rsatish
            if (state.success && state.product?.length != null) {
              return _buildSearchResults(state);
            }

            // Agar qidiruv natijalari bo'lmasa, recent va popular qidiruvlarni ko'rsatish
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildRecentSearches(state),
                const SizedBox(height: 16),
                _buildPopularSearches(state),
              ],
            );
          },
        ),
      ),
    );
  }

  // Qidiruv natijalarini ko'rsatuvchi vidjet
  Widget _buildSearchResults(SearchdBuildableState state) {
    return ListView.builder(
      itemCount: state.product!.length,
      itemBuilder: (context, index) {
        final product = state.product![index];
        return ListTile(
          leading: Image.network(product.image ?? '',
              width: 50, height: 50, fit: BoxFit.cover),
          title: Text(product.name ?? 'No name'),
          subtitle: Text('${product.price ?? 0} \$'),
          onTap: () {
            // Mahsulot tanlanganida bajariladigan amal
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
            Text(
              'Последний поиск',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                // Search historyni tozalash
                context.read<SearchedCubit>().deleteAll();
              },
              child: Text(
                'Очистить',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        if (state.searched != null &&
            state.searched!.result?.search_history?.isNotEmpty == true)
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.searched!.result!.search_history!.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.history),
                title:
                    Text(state.searched!.result!.search_history![index].word!),
                trailing: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    // Tanlangan historyni o'chirish
                    context.read<SearchedCubit>().deletById(index);
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
        Text(
          'Популярные запросы',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        if (state.searched?.result?.top_search != null)
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.searched!.result!.top_search!.length,
            itemBuilder: (context, index) {
              final product = state.searched!.result!.top_search![index];
              return ListTile(
                trailing: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    // Tanlangan historyni o'chirish
                    context.read<SearchedCubit>().deletById(index);
                  },
                ),
                title: Text(product.word!),
              );
            },
          ),
      ],
    );
  }
}
