// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set has asset availability codes.
@Entity()
class ContractResourceAssetAvailiabilityCodes extends FhirCode {
  /// Factory constructor to create [ContractResourceAssetAvailiabilityCodes] from JSON.
  factory ContractResourceAssetAvailiabilityCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceAssetAvailiabilityCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ContractResourceAssetAvailiabilityCodes._(value, element);
    }
    throw ArgumentError(
      'ContractResourceAssetAvailiabilityCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// lease
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContractResourceAssetAvailiabilityCodes.lease([this.element])
      : dbValue = 'lease',
        super('lease', element);

  /// For instances where an Element is present but not value

  ContractResourceAssetAvailiabilityCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ContractResourceAssetAvailiabilityCodes._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'lease',
  ];

  /// Returns the enum value with an element attached
  ContractResourceAssetAvailiabilityCodes withElement(Element? newElement) {
    return ContractResourceAssetAvailiabilityCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContractResourceAssetAvailiabilityCodes.$value';
}
