import '../../../fhir_r4.dart';

abstract class PrimitiveType<T> extends FhirBase {
  PrimitiveType(
      {T? value,
      String? stringValue,
      this.element,
      super.fhirType = 'PrimitiveType'})
      : _value = value,
        _stringValue = stringValue;

  final T? _value;
  final String? _stringValue;
  final Element? element; // Optional metadata element

  // Method to convert the value into its string representation
  String? encode() => toString();

  dynamic get value => _value;
  String? get valueAsString => _stringValue;

  bool get hasValue => _stringValue?.isNotEmpty ?? false;
  bool get hasPrimitiveValue => _stringValue != null && _stringValue.isNotEmpty;

  @override
  String primitiveValue() => _stringValue ?? '';

  // Adjust toJson to handle both value and element
  @override
  dynamic toJson() {
    return <String, dynamic>{
      'value':
          _stringValue, // Assuming string value or primitive value serialization
      'element': element?.toJson(), // Include element if not null
    }..removeWhere(
        (String key, Object? value) => value == null); // Remove null fields
  }

  // Converts the PrimitiveType to YAML
  @override
  dynamic toYaml() => json2yaml(toJson() as Map<String, dynamic>);

  bool get isValid =>
      _value != null || (_stringValue != null && _stringValue.isNotEmpty);

  @override
  bool equalsDeep(FhirBase? other) {
    return other != null &&
        other is PrimitiveType<T> &&
        value == other.value &&
        valueAsString == other.valueAsString;
  }

  bool equalsShallow(PrimitiveType<T> other) {
    return value == other.value;
  }

  @override
  String toString() => '$runtimeType[$valueAsString]';

  bool equals(Object other);

  /// Retrieves a property by its name and hash.
  dynamic getProperty(int hash, String name) {
    if (hash == _computeHash('value')) {
      return this;
    } else {
      return element?.getPropertyByHash(hash);
    }
  }

  /// Sets a property value.
  PrimitiveType<T> setElement(String name, dynamic elementValue);

  /// Helper method to compute hash codes.
  int _computeHash(String name) => name.hashCode;
}