class CqlIncludeException implements Exception {
  final String libraryId;
  final String librarySystem;
  final String message;
  final String versionId;

  CqlIncludeException(
    this.message,
    this.librarySystem,
    this.libraryId,
    this.versionId,
  );

  CqlIncludeException.withCause(
    this.message,
    this.librarySystem,
    this.libraryId,
    this.versionId,
  );

  @override
  String toString() {
    return 'CqlIncludeException: $message\n'
        'Library System: $librarySystem\n'
        'Library ID: $libraryId\n'
        'Version ID: $versionId';
  }
}
