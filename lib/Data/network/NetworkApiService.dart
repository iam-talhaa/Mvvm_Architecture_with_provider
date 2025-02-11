import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:mvvm_architecture_example/Data/App_Exception.dart';
import 'package:mvvm_architecture_example/Data/network/BaseApiService.dart';
import 'package:http/http.dart' as http;

class Networkapiservice extends Baseapiservice {
  @override
  Future getGetApiResponse(String url) async {
    dynamic jsonResponse;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }

    return jsonResponse;
  }

  @override
  Future getPostApiResponse(String url) {
    // TODO: implement getPostApiResponse
    throw UnimplementedError();
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
      //dynamic response = jsonDecode(response);
      // return responseJson;
      default:
    }
  }
}
