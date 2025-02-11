import 'package:flutter/material.dart';

abstract class Baseapiservice {
  Future<dynamic> getGetApiResponse(String url);
  Future<dynamic> getPostApiResponse(String url);
}
