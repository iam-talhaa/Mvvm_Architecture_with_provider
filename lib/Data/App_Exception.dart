class AppException implements Exception {
  final _messages;
  final _prefix;

  AppException([this._messages, this._prefix]);

  String toString() {
    return '$_messages $_prefix';
  }
}

class unAuthorizedException extends AppException {
  unAuthorizedException([String? message])
      : super(message, "Un Aurthorized Acces");
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, "Invalid Request");
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, "Error During Communication");
}
