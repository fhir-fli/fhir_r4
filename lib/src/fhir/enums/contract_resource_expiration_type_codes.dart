// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set contract specific codes for status.
@Entity()
class ContractResourceExpirationTypeCodes extends FhirCode {
  /// Factory constructor to create [ContractResourceExpirationTypeCodes] from JSON.
  factory ContractResourceExpirationTypeCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceExpirationTypeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ContractResourceExpirationTypeCodes._(value, element);
    }
    throw ArgumentError(
      'ContractResourceExpirationTypeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// breach
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourceExpirationTypeCodes.breach([this.element])
      : dbValue = 'breach',
        super('breach', element);

  /// For instances where an Element is present but not value

  ContractResourceExpirationTypeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ContractResourceExpirationTypeCodes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'breach',
  ];

  /// Returns the enum value with an element attached
  ContractResourceExpirationTypeCodes withElement(Element? newElement) {
    return ContractResourceExpirationTypeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContractResourceExpirationTypeCodes.$value';
}
