class Failure {
  Failure._();

  factory Failure.request({int? code, String? message,response}) = RequestFailure;
  factory Failure.network() = NetworkFailure;
  factory Failure.undefined({Exception? error}) = UndefinedFailure;
}

class RequestFailure extends Failure {
  RequestFailure({this.code, this.message,this.response}) : super._();
  final int? code;
  final String? message;
  final dynamic response;
}

class NetworkFailure extends Failure {
  NetworkFailure() : super._();
}

class UndefinedFailure extends Failure {
  UndefinedFailure({this.error}) : super._();
  final Exception? error;
}
