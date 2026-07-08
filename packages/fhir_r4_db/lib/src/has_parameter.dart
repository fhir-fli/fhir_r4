/// Parsed `_has` reverse-chaining parameter.
///
/// FHIR syntax: `_has:TargetType:referenceParam:searchParam=value`
/// The query "Patient?_has:Observation:patient:code=1234" means:
/// "find Patients that are referenced by Observations whose code is 1234".
class HasParameter {
  /// Creates a parsed `_has` reverse-chaining parameter from its parts.
  HasParameter({
    required this.targetType,
    required this.referenceParam,
    required this.searchParam,
    required this.value,
    this.nested,
  });

  /// The resource type to search (e.g. "Observation").
  final String targetType;

  /// The reference parameter on the target type that points back to the source.
  final String referenceParam;

  /// The search parameter on the target type to filter by.
  final String searchParam;

  /// The value to match.
  final String value;

  /// Nested `_has` for multi-hop reverse chains. Null for simple _has.
  final HasParameter? nested;

  /// Parses a `_has` key and value from query parameters.
  ///
  /// Key format: `_has:TargetType:referenceParam:searchParam`
  /// Nested: `_has:TargetType:referenceParam:_has:Inner:refParam:searchParam`
  ///
  /// Returns null if the format is invalid.
  static HasParameter? parse(String key, String value) {
    if (!key.startsWith('_has:')) return null;
    final remainder = key.substring(5);

    // Check for nested _has
    final nestedIdx = remainder.indexOf(':_has:');
    if (nestedIdx > 0) {
      final outerPart = remainder.substring(0, nestedIdx);
      final outerColon = outerPart.indexOf(':');
      if (outerColon < 1) return null;

      final targetType = outerPart.substring(0, outerColon);
      final referenceParam = outerPart.substring(outerColon + 1);
      if (targetType.isEmpty || referenceParam.isEmpty) return null;

      final nestedKey = remainder.substring(nestedIdx + 1);
      final nestedParam = parse(nestedKey, value);
      if (nestedParam == null) return null;

      return HasParameter(
        targetType: targetType,
        referenceParam: referenceParam,
        searchParam: '',
        value: '',
        nested: nestedParam,
      );
    }

    // Simple _has: TargetType:referenceParam:searchParam
    final parts = remainder.split(':');
    if (parts.length != 3) return null;

    final targetType = parts[0];
    final referenceParam = parts[1];
    final searchParam = parts[2];

    if (targetType.isEmpty || referenceParam.isEmpty || searchParam.isEmpty) {
      return null;
    }

    return HasParameter(
      targetType: targetType,
      referenceParam: referenceParam,
      searchParam: searchParam,
      value: value,
    );
  }

  @override
  String toString() =>
      'HasParameter($targetType:$referenceParam:$searchParam=$value'
      '${nested != null ? ', nested=$nested' : ''})';
}
