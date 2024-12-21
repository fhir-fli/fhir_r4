/// A utility class to parse JSON fields.
class JsonParser {
  /// Parse a single primitive or enum field.
  static T? parsePrimitive<T>(
    Map<String, dynamic> json,
    String fieldName,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    if (json[fieldName] != null || json['_$fieldName'] != null) {
      return fromJson({
        'value': json[fieldName],
        '_value': json['_$fieldName'],
      });
    }
    return null;
  }

  /// Parse a list of primitives or enums.
  static List<T>? parsePrimitiveList<T>(
    Map<String, dynamic> json,
    String fieldName,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    final values = json[fieldName] as List<dynamic>?;
    final extensions = json['_$fieldName'] as List<dynamic>?;
    if (values == null && extensions == null) return null;

    return List<T>.generate(
      values?.length ?? extensions!.length,
      (i) => fromJson({
        'value': values?[i],
        '_value': extensions?[i],
      }),
    );
  }

  /// Parse a single complex object.
  static T? parseObject<T>(
    Map<String, dynamic> json,
    String fieldName,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    return json[fieldName] != null
        ? fromJson(json[fieldName] as Map<String, dynamic>)
        : null;
  }

  /// Parse polymorphic fields.
  static T? parsePolymorphic<T>(
    Map<String, dynamic> json,
    Map<String, T Function(Map<String, dynamic>)> typeParsers,
  ) {
    for (final entry in typeParsers.entries) {
      final jsonKey = entry.key;
      final parser = entry.value;

      if (json[jsonKey] != null || json['_$jsonKey'] != null) {
        if (json[jsonKey] is Map<String, dynamic>) {
          return parser(json[jsonKey] as Map<String, dynamic>);
        } else {
          return parser({
            'value': json[jsonKey],
            '_value': json['_$jsonKey'],
          });
        }
      }
    }
    return null;
  }
}
