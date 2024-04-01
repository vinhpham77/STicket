sealed class Result<T> {}

class Success<T> extends Result<T> {
  final T data;

  Success(this.data);
}

class Failure<T> extends Result<T> {
  final String message;

  Failure(this.message);

  Failure.fromException(Exception e) : message = e.toString().substring(11);
}
