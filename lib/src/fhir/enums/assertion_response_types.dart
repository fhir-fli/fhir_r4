/// The type of response code to use for assertion.
enum AssertionResponseTypes {
  /// Display: okay
  /// Definition: Response code is 200.
  okay,

  /// Display: created
  /// Definition: Response code is 201.
  created,

  /// Display: noContent
  /// Definition: Response code is 204.
  noContent,

  /// Display: notModified
  /// Definition: Response code is 304.
  notModified,

  /// Display: bad
  /// Definition: Response code is 400.
  bad,

  /// Display: forbidden
  /// Definition: Response code is 403.
  forbidden,

  /// Display: notFound
  /// Definition: Response code is 404.
  notFound,

  /// Display: methodNotAllowed
  /// Definition: Response code is 405.
  methodNotAllowed,

  /// Display: conflict
  /// Definition: Response code is 409.
  conflict,

  /// Display: gone
  /// Definition: Response code is 410.
  gone,

  /// Display: preconditionFailed
  /// Definition: Response code is 412.
  preconditionFailed,

  /// Display: unprocessable
  /// Definition: Response code is 422.
  unprocessable,
  ;

  @override
  String toString() {
    switch (this) {
      case okay:
        return 'okay';
      case created:
        return 'created';
      case noContent:
        return 'noContent';
      case notModified:
        return 'notModified';
      case bad:
        return 'bad';
      case forbidden:
        return 'forbidden';
      case notFound:
        return 'notFound';
      case methodNotAllowed:
        return 'methodNotAllowed';
      case conflict:
        return 'conflict';
      case gone:
        return 'gone';
      case preconditionFailed:
        return 'preconditionFailed';
      case unprocessable:
        return 'unprocessable';
    }
  }

  String toJson() => toString();
  static AssertionResponseTypes fromString(String str) {
    switch (str) {
      case 'okay':
        return AssertionResponseTypes.okay;
      case 'created':
        return AssertionResponseTypes.created;
      case 'noContent':
        return AssertionResponseTypes.noContent;
      case 'notModified':
        return AssertionResponseTypes.notModified;
      case 'bad':
        return AssertionResponseTypes.bad;
      case 'forbidden':
        return AssertionResponseTypes.forbidden;
      case 'notFound':
        return AssertionResponseTypes.notFound;
      case 'methodNotAllowed':
        return AssertionResponseTypes.methodNotAllowed;
      case 'conflict':
        return AssertionResponseTypes.conflict;
      case 'gone':
        return AssertionResponseTypes.gone;
      case 'preconditionFailed':
        return AssertionResponseTypes.preconditionFailed;
      case 'unprocessable':
        return AssertionResponseTypes.unprocessable;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static AssertionResponseTypes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
