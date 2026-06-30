sealed class AppException implements Exception {
  final String message;
  final Object? originalError;

  const AppException(this.message, [this.originalError]);

  @override
  String toString() => message;
}

class NetworkException extends AppException {
  const NetworkException([super.message = 'Erro de conexão', super.error]);
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
  const UnauthorizedException([super.message = 'Sessão expirada', super.error]);
}

class UnknownException extends AppException {
  const UnknownException([super.message = 'Erro inesperado', super.error]);
}
