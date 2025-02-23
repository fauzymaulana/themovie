sealed class ResultState<T> {
  const ResultState();

  get data => null;
}

class Loading<T> extends ResultState<T> {}

class Success<T> extends ResultState<T> {
  @override
  final T data;
  Success(this.data);
}

class Error<T> extends ResultState<T> {
  final String message;
  Error(this.message);
}