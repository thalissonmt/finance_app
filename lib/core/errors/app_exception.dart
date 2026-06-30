sealed class AppException implements Exception {
  final String message;
  final Object? originalError;

  const AppException(this.message, [this.originalError]);

  @override
  String toString() => message;
}

class NetworkException extends AppException {
  const NetworkException([String message = 'Erro de conexão', Object? error])
      : super(message, error);
}

class ServerException extends AppException {
  final int? statusCode;

  const ServerException({
    String message = 'Erro no servidor',
    this.statusCode,
    Object? error,
  }) : super(message, error);
}

class UnauthorizedException extends AppException {
  const UnauthorizedException([
    String message = 'Sessão expirada',
    Object? error,
  ]) : super(message, error);
}

class UnknownException extends AppException {
  const UnknownException([
    String message = 'Erro inesperado',
    Object? error,
  ]) : super(message, error);
}
