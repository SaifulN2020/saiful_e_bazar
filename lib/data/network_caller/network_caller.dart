import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:saiful_e_bazar/app.dart';
import 'package:saiful_e_bazar/presentation/screen/email_verification_screen.dart';

import '../model/network_response.dart';

class NetworkCaller {
  static Future<NetworkResponse> getRequest({required String url}) async {
    try {
      final Response response = await get(Uri.parse(url));
      if (response.statusCode == 200) {
        final decodeData = jsonDecode(response.body);
        return NetworkResponse(
            responseCode: response.statusCode,
            isSuccess: true,
            responseData: decodeData);
      } else if (response.statusCode == 401) {
        _getToSignInScreen();
        return NetworkResponse(
            responseCode: response.statusCode, isSuccess: false);
        //home work for us
      } else {
        return NetworkResponse(
            responseCode: response.statusCode, isSuccess: false);
      }
    } catch (e) {
      return NetworkResponse(
          responseCode: -1, isSuccess: false, errorMessage: e.toString());
    }
  }
  static Future<NetworkResponse> postRequest(
      {required String url,Map<String,dynamic>?body}) async {
    try {
      final Response response = await post(Uri.parse(url),headers: {"accept ":"application/json"}, body: body);
      if (response.statusCode == 200) {
        final decodeData = jsonDecode(response.body);
        return NetworkResponse(
            responseCode: response.statusCode,
            isSuccess: true,
            responseData: decodeData);
      } else if (response.statusCode == 401) {
        _getToSignInScreen();
        return NetworkResponse(
            responseCode: response.statusCode, isSuccess: false);
        //home work for us
      } else {
        return NetworkResponse(
            responseCode: response.statusCode, isSuccess: false);
      }
    } catch (e) {
      return NetworkResponse(
          responseCode: -1, isSuccess: false, errorMessage: e.toString());
    }
  }

  static void _getToSignInScreen() {
    Navigator.push(SaifulEBazar.navigationKey.currentState!.context,
        MaterialPageRoute(builder: (context) {
      return EmailVerificationScreen();
    }));
  }
}
