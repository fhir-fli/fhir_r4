// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set contract specific codes for action status.
@Entity()
class ContractResourceActionStatusCodes extends FhirCode {
  /// Factory constructor to create [ContractResourceActionStatusCodes] from JSON.
  factory ContractResourceActionStatusCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceActionStatusCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ContractResourceActionStatusCodes._(value, element);
    }
    throw ArgumentError(
      'ContractResourceActionStatusCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// complete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourceActionStatusCodes.complete([this.element])
      : dbValue = 'complete',
        super('complete', element);

  /// For instances where an Element is present but not value

  ContractResourceActionStatusCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ContractResourceActionStatusCodes._(super.input, [super.element])
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
    'complete',
  ];

  /// Returns the enum value with an element attached
  ContractResourceActionStatusCodes withElement(Element? newElement) {
    return ContractResourceActionStatusCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContractResourceActionStatusCodes.$value';
}
