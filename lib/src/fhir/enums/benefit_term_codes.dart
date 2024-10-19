// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Benefit Term codes.
class BenefitTermCodes {
  // Private constructor for internal use (like enum)
  BenefitTermCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// BenefitTermCodes values
  /// annual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitTermCodes annual = BenefitTermCodes._(
    'annual',
  );

  /// day
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitTermCodes day = BenefitTermCodes._(
    'day',
  );

  /// lifetime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitTermCodes lifetime = BenefitTermCodes._(
    'lifetime',
  );

  /// For instances where an Element is present but not value

  static final BenefitTermCodes elementOnly = BenefitTermCodes._('');

  /// List of all enum-like values
  static final List<BenefitTermCodes> values = [
    annual,
    day,
    lifetime,
  ];

  /// Returns the enum value with an element attached
  BenefitTermCodes withElement(Element? newElement) {
    return BenefitTermCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [BenefitTermCodes] from JSON.
  static BenefitTermCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BenefitTermCodes.elementOnly.withElement(element);
    }
    return BenefitTermCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BenefitTermCodes.$fhirCode';
}
