sealed class Result<T> {
  const Result();

  R when<R>({
    required R Function(T data) success,
    required R Function(Exception error) failure,
  });
}

class Success<T> extends Result<T> {
  final T data;

  const Success(this.data);

  @override
  R when<R>({
    required R Function(T data) success,
    required R Function(Exception error) failure,
  }) => success(data);
}

class Failure<T> extends Result<T> {
  final Exception error;

  const Failure(this.error);

  @override
  R when<R>({
    required R Function(T data) success,
    required R Function(Exception error) failure,
  }) => failure(error);
}
