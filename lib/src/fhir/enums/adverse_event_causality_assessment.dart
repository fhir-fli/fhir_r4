// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes for the assessment of whether the entity caused the event.
@collection
class AdverseEventCausalityAssessment {
  /// Constructor for internal use (like enum)
  AdverseEventCausalityAssessment({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AdverseEventCausalityAssessment values
  /// Certain
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCausalityAssessment Certain =
      AdverseEventCausalityAssessment(
    fhirCode: 'Certain',
  );

  /// Probably_Likely
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCausalityAssessment Probably_Likely =
      AdverseEventCausalityAssessment(
    fhirCode: 'Probably-Likely',
  );

  /// Possible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCausalityAssessment Possible =
      AdverseEventCausalityAssessment(
    fhirCode: 'Possible',
  );

  /// Unlikely
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCausalityAssessment Unlikely =
      AdverseEventCausalityAssessment(
    fhirCode: 'Unlikely',
  );

  /// Conditional_Classified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCausalityAssessment Conditional_Classified =
      AdverseEventCausalityAssessment(
    fhirCode: 'Conditional-Classified',
  );

  /// Unassessable_Unclassifiable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCausalityAssessment Unassessable_Unclassifiable =
      AdverseEventCausalityAssessment(
    fhirCode: 'Unassessable-Unclassifiable',
  );

  /// For instances where an Element is present but not value

  static final AdverseEventCausalityAssessment elementOnly =
      AdverseEventCausalityAssessment();

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
    return AdverseEventCausalityAssessment(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
