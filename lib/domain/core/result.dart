
class Result<F, R> {
  final F failure;
  final R data;

  Result(this.failure, this.data);

  factory Result.fail(F fail) => Result(fail, null);
  factory Result.data(R data) => Result(null, data);

  bool isSuccess() {
    if(failure != null || data == null) return false;
    return true;
  }

  bool hasFailed() => !isSuccess();
}