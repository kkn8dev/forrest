abstract class Failure {
  int code;
  String message;

  Failure({required this.code, required this.message});
}

class UserFailure extends Failure {
  UserFailure({required int code, required String message})
      : super(code: code, message: message);
}

class ServerFailure extends Failure {
  ServerFailure({required int code, required String message})
      : super(code: code, message: message);
}

class StorageFailure extends Failure {
  StorageFailure({required int code, required String message})
      : super(code: code, message: message);
}
