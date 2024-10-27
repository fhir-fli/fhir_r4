// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How a rule statement is applied, such as adding additional consent or removing consent.
class ConsentProvisionType {
  // Private constructor for internal use (like enum)
  ConsentProvisionType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConsentProvisionType values
  /// deny
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentProvisionType deny = ConsentProvisionType._(
    'deny',
  );

  /// permit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentProvisionType permit = ConsentProvisionType._(
    'permit',
  );

  /// For instances where an Element is present but not value

  static final ConsentProvisionType elementOnly = ConsentProvisionType._('');

  /// List of all enum-like values
  static final List<ConsentProvisionType> values = [
    deny,
    permit,
  ];

  /// Returns the enum value with an element attached
  ConsentProvisionType withElement(Element? newElement) {
    return ConsentProvisionType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConsentProvisionType] from JSON.
  static ConsentProvisionType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentProvisionType.elementOnly.withElement(element);
    }
    return ConsentProvisionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
