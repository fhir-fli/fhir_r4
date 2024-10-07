import 'package:json_annotation/json_annotation.dart';

/// The allowable request method or HTTP operation codes.
enum TestScriptRequestMethodCode {
  /// Display: DELETE
  /// Definition: HTTP DELETE operation.
  @JsonValue('delete')
  delete,

  /// Display: GET
  /// Definition: HTTP GET operation.
  @JsonValue('get')
  get_,

  /// Display: OPTIONS
  /// Definition: HTTP OPTIONS operation.
  @JsonValue('options')
  options,

  /// Display: PATCH
  /// Definition: HTTP PATCH operation.
  @JsonValue('patch')
  patch,

  /// Display: POST
  /// Definition: HTTP POST operation.
  @JsonValue('post')
  post,

  /// Display: PUT
  /// Definition: HTTP PUT operation.
  @JsonValue('put')
  put,

  /// Display: HEAD
  /// Definition: HTTP HEAD operation.
  @JsonValue('head')
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
  TestScriptRequestMethodCode fromString(String str) {
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

  TestScriptRequestMethodCode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
