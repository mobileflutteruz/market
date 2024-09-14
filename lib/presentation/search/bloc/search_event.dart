part of 'search_bloc.dart';
sealed class SearchEvent extends Equatable {
  const SearchEvent();
}

class OnSearchEvent extends SearchEvent {
  const OnSearchEvent({required this.text});

  final String text;

  @override
  List<Object> get props => [text];
}

// import 'package:equatable/equatable.dart';

// abstract class PostEvent extends Equatable {
//   @override
//   List<Object> get props => [];
// }

// class FetchPosts extends PostEvent {}

// class SearchPosts extends PostEvent {
//   final String query;

//   SearchPosts(this.query);

//   @override
//   List<Object> get props => [query];
// }

