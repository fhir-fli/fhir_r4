// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why an administered dose has been assigned a particular status. Often, this reason describes why a dose is considered invalid. This value set is provided as a suggestive example.
class ImmunizationEvaluationDoseStatusReasonCodes {
  // Private constructor for internal use (like enum)
  ImmunizationEvaluationDoseStatusReasonCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ImmunizationEvaluationDoseStatusReasonCodes values
  /// advstorage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationDoseStatusReasonCodes advstorage =
      ImmunizationEvaluationDoseStatusReasonCodes._(
    'advstorage',
  );

  /// coldchbrk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationDoseStatusReasonCodes coldchbrk =
      ImmunizationEvaluationDoseStatusReasonCodes._(
    'coldchbrk',
  );

  /// explot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationDoseStatusReasonCodes explot =
      ImmunizationEvaluationDoseStatusReasonCodes._(
    'explot',
  );

  /// outsidesched
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationDoseStatusReasonCodes outsidesched =
      ImmunizationEvaluationDoseStatusReasonCodes._(
    'outsidesched',
  );

  /// prodrecall
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationDoseStatusReasonCodes prodrecall =
      ImmunizationEvaluationDoseStatusReasonCodes._(
    'prodrecall',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationEvaluationDoseStatusReasonCodes elementOnly =
      ImmunizationEvaluationDoseStatusReasonCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationEvaluationDoseStatusReasonCodes> values = [
    advstorage,
    coldchbrk,
    explot,
    outsidesched,
    prodrecall,
  ];

  /// Returns the enum value with an element attached
  ImmunizationEvaluationDoseStatusReasonCodes withElement(Element? newElement) {
    return ImmunizationEvaluationDoseStatusReasonCodes._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationEvaluationDoseStatusReasonCodes] from JSON.
  static ImmunizationEvaluationDoseStatusReasonCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationDoseStatusReasonCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationEvaluationDoseStatusReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationEvaluationDoseStatusReasonCodes.$fhirCode';
}
