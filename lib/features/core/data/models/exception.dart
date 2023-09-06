class UserException implements Exception {
  final int code;
  final String message;

  UserException({
    this.code = 400,
    this.message = '',
  });
}

class ServerException implements Exception {}

class CacheException implements Exception {}

class StorageException implements Exception {
  final int code;
  final String message;

  StorageException({
    this.code = 100,
    this.message = '',
  });
}

class UnknownException implements Exception {}
