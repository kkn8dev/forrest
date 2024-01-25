abstract class Failure {

  Failure({required this.code, required this.message});
  int code;
  String message;
}

class UserFailure extends Failure {
  UserFailure({required super.code, required super.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.code, required super.message});
}

class StorageFailure extends Failure {
  StorageFailure({required super.code, required super.message});
}
