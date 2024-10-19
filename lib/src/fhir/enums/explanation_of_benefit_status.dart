// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A code specifying the state of the resource instance.
@collection
class ExplanationOfBenefitStatus {
  /// Constructor for internal use (like enum)
  ExplanationOfBenefitStatus({this.fhirCode, this.element})
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

  /// ExplanationOfBenefitStatus values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExplanationOfBenefitStatus active = ExplanationOfBenefitStatus(
    fhirCode: 'active',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExplanationOfBenefitStatus cancelled =
      ExplanationOfBenefitStatus(
    fhirCode: 'cancelled',
  );

  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExplanationOfBenefitStatus draft = ExplanationOfBenefitStatus(
    fhirCode: 'draft',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExplanationOfBenefitStatus entered_in_error =
      ExplanationOfBenefitStatus(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final ExplanationOfBenefitStatus elementOnly =
      ExplanationOfBenefitStatus();

  /// List of all enum-like values
  static final List<ExplanationOfBenefitStatus> values = [
    active,
    cancelled,
    draft,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  ExplanationOfBenefitStatus withElement(Element? newElement) {
    return ExplanationOfBenefitStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExplanationOfBenefitStatus] from JSON.
  static ExplanationOfBenefitStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExplanationOfBenefitStatus.elementOnly.withElement(element);
    }
    return ExplanationOfBenefitStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExplanationOfBenefitStatus.$fhirCode';
}
