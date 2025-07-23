abstract class Failure {
  final String message;
  Failure(this.message);
}


class ServiceFailure extends Failure {
  ServiceFailure(String message) : super(message);
}