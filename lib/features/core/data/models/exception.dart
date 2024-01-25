class UserException implements Exception {

  UserException({
    this.code = 400,
    this.message = '',
  });
  final int code;
  final String message;
}

class ServerException implements Exception {}

class CacheException implements Exception {}

class StorageException implements Exception {

  StorageException({
    this.code = 100,
    this.message = '',
  });
  final int code;
  final String message;
}

class UnknownException implements Exception {}
