import 'package:flutter/material.dart';
import 'package:mvvm_architecture_example/Data/response/status.dart';

class ApiResponse<T> {
  Status? _status;
  T? Data;
  String? Message;

  ApiResponse(this.Data, this.Message, this._status);

  ApiResponse.loading() : _status = Status.Loading;
  ApiResponse.completed() : _status = Status.Completed;
  ApiResponse.error() : _status = Status.Error;

  String toString() {
    return 'Status : $_status \n Message $Message \n Data $Data';
  }
}
