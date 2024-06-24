import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/model/mobile/home/home.dart';
import 'package:karmango/domain/model/mobile/product/product.dart';
import '../../data/api/main_api.dart';

@Injectable()
class MainService {
  final MainApi _mainApi;
  MainService(this._mainApi);

  fetchProducts(int page, int size) async {
    final response = await _mainApi.getMobileHomeProducts(page, size);
    var data = jsonDecode(response.body);
    return MobileHomeProducts.fromJson(data);
  }


  fetchProductDetails(int productId) async {
    final response = await _mainApi.fetchProductDetails(productId);
    var data = jsonDecode(response.body);
    return ProductDataModel.fromJson(data);
  }

  
  // fetchOrderHistory(int page, int size) async {
  //   final response = await _mainApi.fetchOrderHistory(page, size);
  //   var data = jsonDecode(response.body);
  //   return HomeProductModel.fromJson(data);
  // }

  // fetchNotifications(int page, int size) async {
  //   final response = await _mainApi.fetchNotifications(page, size);
  //   var data = jsonDecode(response.body);
  //   return NotificationModel.fromJson(data);
  // }

  // fetchNotificationDetail(int id) async {
  //   final response = await _mainApi.fetchProductDetails(id);
  //   var data = jsonDecode(response.body);
  //   return NotificationData.fromJson(data);
  // }





  // String convertTime(DateTime time) {
  //   String formattedDateTime =
  //       DateFormat('yyyy-MM-dd HH:mm:ss', 'en_US').format(time.toLocal());
  //   return formattedDateTime;
  // }

  // fetchUser() async {
  //   final response = await _mainApi.fetchUser();
  //   Map<String, dynamic> result = Map<String, dynamic>.from(response.data);
  //   return ProfileModel.fromJson(result["data"]);
  // }
}
