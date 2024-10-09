/// The type of publication such as book, database, or journal.
enum PublishedInType {
  /// Display: Periodical
  /// Definition: Publication intended to be issued on an ongoing basis, generally more frequently than annually, containing separate articles, stories, or writings.
  D020492,

  /// Display: Database
  /// Definition: A structured file of information or a set of logically related data stored and retrieved using computer-based means.
  D019991,

  /// Display: Book
  /// Definition: Non-periodical written or printed works consisting of sheets of pages fastened or bound together within covers.
  D001877,

  /// Display: Dataset
  /// Definition: Works consisting of organized collections of data, which have been stored permanently in a formalized manner suitable for communication, interpretation, or processing.
  D064886,
  ;

  @override
  String toString() {
    switch (this) {
      case D020492:
        return 'D020492';
      case D019991:
        return 'D019991';
      case D001877:
        return 'D001877';
      case D064886:
        return 'D064886';
    }
  }

  String toJson() => toString();
  static PublishedInType fromString(String str) {
    switch (str) {
      case 'D020492':
        return PublishedInType.D020492;
      case 'D019991':
        return PublishedInType.D019991;
      case 'D001877':
        return PublishedInType.D001877;
      case 'D064886':
        return PublishedInType.D064886;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static PublishedInType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
