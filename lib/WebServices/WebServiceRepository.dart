import 'dart:io';
import 'package:flutterapp2/Constatnts/Constant.dart';
import 'package:flutterapp2/utils/DateHelper.dart';
import 'package:flutterapp2/utils/SharedPreferencesUtils/SharedPreferencesValues.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:convert';
import 'Request/UserRequest.dart';
import 'Response/UserResponse.dart';

class WebServiceRepository {
  SharedPreferences prefs;
  var http;

  Future<void> initSharedPreferences() async {
    if (prefs == null) {
      Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
      prefs = await _prefs;
    }
  }

  void setCertificateVerify() {
    final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    http = new IOClient(ioc);
  }

  /**
   *login user
   */
  Future<UserResponse> loginUser(
      String usernamePhonenumber, String password) async {
    List<String> listUserDetails = LoginCheckParameter.isUsernameOrPhonenumber(
        usernamePhonenumber, password);
    UserResponse userResponse;
    await initSharedPreferences();
    setCertificateVerify();


    final Response response = await http.post(
      baseUrl + loginSubUrl,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(UserRequest(
              username: listUserDetails[0],
              password: listUserDetails[2],
              phonenumber: listUserDetails[1])
          .toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      userResponse = UserResponse.fromJson(json.decode(response.body));
      prefs.setInt(TokenDate, DateHelper.getPlusDayTimeToMiliSec());
      prefs.setString(TokenValue, userResponse.token);
      SharedPreferencesValues.setUsernamePassword(
          listUserDetails[0], listUserDetails[2], listUserDetails[1], prefs);
      return userResponse;
    } else {
      throw Exception('Failed to create album.');
    }
  }

  ///**
  /// get all message
  /// @param boxId String
  /// **
  Future<CashbackCategoriesResponse> getCashbackCategoriesList() async {
    try {
      //solve flutter CERTIFICATE_VERIFY_FAILED error while performing a POST request
      setCertificateVerify();

      print(baseUrl + cashbackCategoriesList);
      var response = await http.get(baseUrl + cashbackCategoriesList);

      if (response.statusCode == 200) {
        return CashbackCategoriesResponse.fromJson(json.decode(response.body));
          } else {
        return CashbackCategoriesResponse().data = null;
      }
    } catch (e) {
      print(e);
    }

  }
}
