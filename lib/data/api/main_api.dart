import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/data/api/api.dart';
import 'package:logger/logger.dart';

@Injectable()
class MainApi {
  final Api _api;

  MainApi(this._api);
  Logger log = Logger();
  Future<Response> getMobileHomeProducts() async {
    try {
      var data = await _api.get(path: 'productsInHomePage');
       log.d(data.toString());
      

      return data;
    } catch (e) {

      log.e('Error fetching mobile home products: $e');
      rethrow;
    }
  }

  Future<Response> getCategory() async {
    try {
      var data = await _api.getWithToken(path: 'category');
      return data;
    } catch (e) {
       log.e('Error fetching category: $e');

      rethrow;
    }
  }

// Agar boshqa metodlarni ishlatmoqchi bo'lsangiz, ularni ham to'g'ri formatda va exception handling bilan ishlating

// Future<Response> getProducts() async {
//   try {
//     var data = await _api.getWithToken(path: 'book-group/public-list');
//     return data;
//   } catch (e) {
//     print('Error fetching products: $e');
//     rethrow;
//   }
// }

// Future<Response> getSearchCategories() async {
//   try {
//     var data = await _api.getWithToken(path: 'category/public-list');
//     return data;
//   } catch (e) {
//     print('Error fetching search categories: $e');
//     rethrow;
//   }
// }

// Future<Response> getBookCategoryProducts(int id) async {
//   try {
//     var data = await _api.getWithToken(path: 'book-group/public-list/$id');
//     return data;
//   } catch (e) {
//     print('Error fetching book category products: $e');
//     rethrow;
//   }
// }

// Future<Response> fetchBookInfo(int id) async {
//   try {
//     var data = await _api.getWithToken(path: 'book/public-list/$id');
//     return data;
//   } catch (e) {
//     print('Error fetching book info: $e');
//     rethrow;
//   }
// }

// Future<Response> createCheckout(var books) async {
//   final Map<String, Object?> request = {
//     'books': books,
//   };
//   try {
//     var data = await _api.postWithToken(path: 'checkout', body: request);
//     return data;
//   } catch (e) {
//     print('Error creating checkout: $e');
//     rethrow;
//   }
// }

// Future<Response> fetchCategories(int id) async {
//   try {
//     var data = await _api.getWithToken(path: 'book/public-list/$id');
//     return data;
//   } catch (e) {
//     print('Error fetching categories: $e');
//     rethrow;
//   }
// }

// Future<Response> fetchSavedBooks() async {
//   try {
//     var data = await _api.getWithToken(path: 'bookmark');
//     return data;
//   } catch (e) {
//     print('Error fetching saved books: $e');
//     rethrow;
//   }
// }

// Future<Response> getBooks(int page, int id) {
//   final Map<String, Object> params = {
//     "category_id": id,
//     'page': page,
//   };
//   try {
//     return _api.getWithToken(path: 'book/public-list', params: params);
//   } catch (e) {
//     print('Error getting books: $e');
//     rethrow;
//   }
// }

// Future<Response> fetchSearch(String query) async {
//   final Map<String, Object> params = {'name': query};
//   try {
//     var data = await _api.getWithToken(path: 'book/public-search', params: params);
//     return data;
//   } catch (e) {
//     print('Error fetching search results: $e');
//     rethrow;
//   }
// }

// Future<Response> saveBookmark(int id) async {
//   final Map<String, Object> params = {'book_id': id.toString()};
//   try {
//     var data = await _api.postWithToken(path: 'bookmark/store', body: params);
//     return data;
//   } catch (e) {
//     print('Error saving bookmark: $e');
//     rethrow;
//   }
// }

// Future<Response> deleteBookmark(int id) async {
//   final Map<String, Object> params = {'book_id': id.toString()};
//   try {
//     var data = await _api.deleteWithToken(path: 'bookmark/destroy', params: params);
//     return data;
//   } catch (e) {
//     print('Error deleting bookmark: $e');
//     rethrow;
//   }
// }

// Future<Response> postComments(String comments, int bookId, int rating) async {
//   final Map<String, Object> params = {
//     "comment": comments,
//     "rating": rating.toString(),
//     'book_id': bookId.toString()
//   };
//   try {
//     var data = await _api.postWithToken(path: 'review/store', body: params);
//     return data;
//   } catch (e) {
//     print('Error posting comments: $e');
//     rethrow;
//   }
// }

// Future<Response> fetchPayemntCards() async {
//   try {
//     var data = await _api.getWithToken(path: 'payment/uzcard-list');
//     return data;
//   } catch (e) {
//     print('Error fetching payment cards: $e');
//     rethrow;
//   }
// }

// Future<Response> createPaymentCard(
//     String cardNumber, String expryDate, String name) async {
//   final Map<String, Object> params = {
//     "pan": cardNumber,
//     "expiry": expryDate,
//     'name': name
//   };
//   try {
//     var data = await _api.postWithToken(path: 'payment/token', body: params);
//     return data;
//   } catch (e) {
//     print('Error creating payment card: $e');
//     rethrow;
//   }
// }

// Future<Response> createPayment(
//     int amount, String token, int invoiceId) async {
//   final Map<String, Object> params = {
//     "amount": amount.toString(),
//     "token": token,
//     'invoice_id': invoiceId.toString()
//   };
//   try {
//     var data = await _api.postWithToken(path: 'payment/create', body: params);
//     return data;
//   } catch (e) {
//     print('Error creating payment: $e');
//     rethrow;
//   }
// }

// Future<Response> createGuestLogin() async {
//   final Map<String, Object> params = {
//     "uuid": "some-uuid",
//     "model": "some-model",
//   };
//   try {
//     var data = await _api.postWithToken(path: 'guest/login', body: params);
//     return data;
//   } catch (e) {
//     print('Error creating guest login: $e');
//     rethrow;
//   }
// }

// Future<Response> getStats(int page, int size) async {
//   final params = {'page': page, 'size': size};
//   try {
//     return _api.get(path: 'stats', params: params);
//   } catch (e) {
//     print('Error getting stats: $e');
//     rethrow;
//   }
// }

// Future<Response> getCustomers(String? search, int page, int size) {
//
}
