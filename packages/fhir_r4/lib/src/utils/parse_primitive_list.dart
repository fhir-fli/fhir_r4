/// Parses a list of primitive values and ensures matching lengths.
typedef FromJson<T> = T Function(Map<String, dynamic> json);

/// Parses a list of primitive values and ensures matching lengths.
List<T>? parsePrimitiveList<T>(
  List<dynamic>? values,
  List<dynamic>? elements, {
  required FromJson<T> fromJson,
}) {
  if (values == null && elements == null) return null;

  final length = values?.length ?? elements?.length ?? 0;

  // Ensure both lists have the same length if both are present.
  if (values != null && elements != null && values.length != elements.length) {
    throw ArgumentError('The length of values and elements lists must match.');
  }

  return List<T>.generate(length, (index) {
    final value =
        values != null && index < values.length ? values[index] : null;
    final element =
        elements != null && index < elements.length ? elements[index] : null;

    // Only include `_value` if the element is not null.
    final json = <String, dynamic>{
      if (value != null) 'value': value,
      if (element != null) '_value': element,
    };

    return fromJson(json);
  });
}

/// Ensures that a required list is not null; otherwise, throws an error.
List<T> ensureNonNullList<T>(List<T>? list) {
  if (list == null) {
    throw ArgumentError('A required list field was missing or null.');
  }
  return list;
}
