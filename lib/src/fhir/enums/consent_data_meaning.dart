import 'package:json_annotation/json_annotation.dart';

/// How a resource reference is interpreted when testing consent restrictions.
enum ConsentDataMeaning {
  /// Display: Instance
  /// Definition: The consent applies directly to the instance of the resource.
  @JsonValue('instance')
  instance,

  /// Display: Related
  /// Definition: The consent applies directly to the instance of the resource and instances it refers to.
  @JsonValue('related')
  related,

  /// Display: Dependents
  /// Definition: The consent applies directly to the instance of the resource and instances that refer to it.
  @JsonValue('dependents')
  dependents,

  /// Display: AuthoredBy
  /// Definition: The consent applies to instances of resources that are authored by.
  @JsonValue('authoredby')
  authoredby,
  ;

  @override
  String toString() {
    switch (this) {
      case instance:
        return 'instance';
      case related:
        return 'related';
      case dependents:
        return 'dependents';
      case authoredby:
        return 'authoredby';
    }
  }

  String toJson() => toString();
  ConsentDataMeaning fromString(String str) {
    switch (str) {
      case 'instance':
        return ConsentDataMeaning.instance;
      case 'related':
        return ConsentDataMeaning.related;
      case 'dependents':
        return ConsentDataMeaning.dependents;
      case 'authoredby':
        return ConsentDataMeaning.authoredby;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ConsentDataMeaning fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
