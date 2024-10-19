// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// TODO.
class AdverseEventCausalityMethod {
  // Private constructor for internal use (like enum)
  AdverseEventCausalityMethod._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AdverseEventCausalityMethod values
  /// ProbabilityScale
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCausalityMethod ProbabilityScale =
      AdverseEventCausalityMethod._(
    'ProbabilityScale',
  );

  /// Bayesian
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCausalityMethod Bayesian =
      AdverseEventCausalityMethod._(
    'Bayesian',
  );

  /// Checklist
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCausalityMethod Checklist =
      AdverseEventCausalityMethod._(
    'Checklist',
  );

  /// For instances where an Element is present but not value

  static final AdverseEventCausalityMethod elementOnly =
      AdverseEventCausalityMethod._('');

  /// List of all enum-like values
  static final List<AdverseEventCausalityMethod> values = [
    ProbabilityScale,
    Bayesian,
    Checklist,
  ];

  /// Returns the enum value with an element attached
  AdverseEventCausalityMethod withElement(Element? newElement) {
    return AdverseEventCausalityMethod._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AdverseEventCausalityMethod] from JSON.
  static AdverseEventCausalityMethod fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventCausalityMethod.elementOnly.withElement(element);
    }
    return AdverseEventCausalityMethod.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdverseEventCausalityMethod.$fhirCode';
}
