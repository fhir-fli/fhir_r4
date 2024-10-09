/// The allowable request method or HTTP operation codes.
enum TestScriptRequestMethodCode {
  /// Display: DELETE
  /// Definition: HTTP DELETE operation.
  delete,

  /// Display: GET
  /// Definition: HTTP GET operation.
  get_,

  /// Display: OPTIONS
  /// Definition: HTTP OPTIONS operation.
  options,

  /// Display: PATCH
  /// Definition: HTTP PATCH operation.
  patch,

  /// Display: POST
  /// Definition: HTTP POST operation.
  post,

  /// Display: PUT
  /// Definition: HTTP PUT operation.
  put,

  /// Display: HEAD
  /// Definition: HTTP HEAD operation.
  head,
  ;

  @override
  String toString() {
    switch (this) {
      case delete:
        return 'delete';
      case get_:
        return 'get';
      case options:
        return 'options';
      case patch:
        return 'patch';
      case post:
        return 'post';
      case put:
        return 'put';
      case head:
        return 'head';
    }
  }

  String toJson() => toString();
  static TestScriptRequestMethodCode fromString(String str) {
    switch (str) {
      case 'delete':
        return TestScriptRequestMethodCode.delete;
      case 'get':
        return TestScriptRequestMethodCode.get_;
      case 'options':
        return TestScriptRequestMethodCode.options;
      case 'patch':
        return TestScriptRequestMethodCode.patch;
      case 'post':
        return TestScriptRequestMethodCode.post;
      case 'put':
        return TestScriptRequestMethodCode.put;
      case 'head':
        return TestScriptRequestMethodCode.head;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static TestScriptRequestMethodCode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
