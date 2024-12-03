/// Exception for when a ValueSet is too costly to expand
class ETooCostly implements Exception {
  ETooCostly(this.message);

  final String message;

  @override
  String toString() => 'ETooCostly: $message';
}
