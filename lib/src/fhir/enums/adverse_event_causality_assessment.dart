// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for the assessment of whether the entity caused the event.
class AdverseEventCausalityAssessment {
  // Private constructor for internal use (like enum)
  AdverseEventCausalityAssessment._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AdverseEventCausalityAssessment values
  /// Certain
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCausalityAssessment Certain =
      AdverseEventCausalityAssessment._(
    'Certain',
  );

  /// Probably_Likely
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCausalityAssessment Probably_Likely =
      AdverseEventCausalityAssessment._(
    'Probably-Likely',
  );

  /// Possible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCausalityAssessment Possible =
      AdverseEventCausalityAssessment._(
    'Possible',
  );

  /// Unlikely
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCausalityAssessment Unlikely =
      AdverseEventCausalityAssessment._(
    'Unlikely',
  );

  /// Conditional_Classified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCausalityAssessment Conditional_Classified =
      AdverseEventCausalityAssessment._(
    'Conditional-Classified',
  );

  /// Unassessable_Unclassifiable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCausalityAssessment Unassessable_Unclassifiable =
      AdverseEventCausalityAssessment._(
    'Unassessable-Unclassifiable',
  );

  /// For instances where an Element is present but not value

  static final AdverseEventCausalityAssessment elementOnly =
      AdverseEventCausalityAssessment._('');

  /// List of all enum-like values
  static final List<AdverseEventCausalityAssessment> values = [
    Certain,
    Probably_Likely,
    Possible,
    Unlikely,
    Conditional_Classified,
    Unassessable_Unclassifiable,
  ];

  /// Returns the enum value with an element attached
  AdverseEventCausalityAssessment withElement(Element? newElement) {
    return AdverseEventCausalityAssessment._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AdverseEventCausalityAssessment] from JSON.
  static AdverseEventCausalityAssessment fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventCausalityAssessment.elementOnly.withElement(element);
    }
    return AdverseEventCausalityAssessment.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdverseEventCausalityAssessment.$fhirCode';
}
