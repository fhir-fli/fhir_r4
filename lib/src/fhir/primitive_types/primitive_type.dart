import 'package:fhir_r4/fhir_r4.dart';

/// This class represents the FHIR primitive type `integer`
abstract class PrimitiveType<T> extends FhirBase {
  /// Main constructor for [PrimitiveType<T> ]
  PrimitiveType({T? value, String? stringValue, this.element})
      : _value = value,
        _stringValue = stringValue;

  @override
  String get fhirType => 'PrimitiveType';
  final T? _value;
  final String? _stringValue;

  /// Optional metadata element
  final Element? element; // Optional metadata element

  /// Method to convert the value into its string representation
  String? encode() => toString();

  /// Method to convert the string representation into the value
  dynamic get value => _value;

  /// Method to convert the string representation into the value
  String? get valueAsString => _stringValue;

  /// Method to convert the string representation into the value
  bool get hasValue => _stringValue?.isNotEmpty ?? false;

  /// Method to convert the string representation into the value
  bool get hasPrimitiveValue => _stringValue != null && _stringValue.isNotEmpty;

  @override
  String primitiveValue() => _stringValue ?? '';

  /// Adjust toJson to handle both value and element
  @override
  dynamic toJson() {
    final json = <String, Object>{};
    if (_value != null) {
      json['value'] = _value;
    }
    if (element != null) {
      json['element'] = element!.toJson();
    }
    return json;
  }

  /// Converts the PrimitiveType to YAML
  @override
  dynamic toYaml() => json2yaml(toJson() as Map<String, dynamic>);

  @override
  bool equalsDeep(FhirBase? other) {
    return other != null &&
        other is PrimitiveType<T> &&
        value == other.value &&
        valueAsString == other.valueAsString;
  }

  /// Helper method to compare PrimitiveType objects
  bool equalsShallow(PrimitiveType<T> other) {
    return value == other.value;
  }

  @override
  String toString() => '$runtimeType[$valueAsString]';

  /// Helper method to compare PrimitiveType objects
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
