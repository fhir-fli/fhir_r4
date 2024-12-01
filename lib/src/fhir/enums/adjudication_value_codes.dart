// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Adjudication Value codes which includes codes to indicate the amounts eligible under the plan, the amount of benefit, copays etc.
class AdjudicationValueCodes {
  // Private constructor for internal use (like enum)
  AdjudicationValueCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [AdjudicationValueCodes] from JSON.
  factory AdjudicationValueCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdjudicationValueCodes.elementOnly.withElement(element);
    }
    return AdjudicationValueCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AdjudicationValueCodes values
  /// submitted
  static final AdjudicationValueCodes submitted = AdjudicationValueCodes._(
    'submitted',
  );

  /// copay
  static final AdjudicationValueCodes copay = AdjudicationValueCodes._(
    'copay',
  );

  /// eligible
  static final AdjudicationValueCodes eligible = AdjudicationValueCodes._(
    'eligible',
  );

  /// deductible
  static final AdjudicationValueCodes deductible = AdjudicationValueCodes._(
    'deductible',
  );

  /// unallocdeduct
  static final AdjudicationValueCodes unallocdeduct = AdjudicationValueCodes._(
    'unallocdeduct',
  );

  /// eligpercent
  static final AdjudicationValueCodes eligpercent = AdjudicationValueCodes._(
    'eligpercent',
  );

  /// tax
  static final AdjudicationValueCodes tax = AdjudicationValueCodes._(
    'tax',
  );

  /// benefit
  static final AdjudicationValueCodes benefit = AdjudicationValueCodes._(
    'benefit',
  );

  /// For instances where an Element is present but not value

  static final AdjudicationValueCodes elementOnly =
      AdjudicationValueCodes._('');

  /// List of all enum-like values
  static final List<AdjudicationValueCodes> values = [
    submitted,
    copay,
    eligible,
    deductible,
    unallocdeduct,
    eligpercent,
    tax,
    benefit,
  ];

  /// Returns the enum value with an element attached
  AdjudicationValueCodes withElement(Element? newElement) {
    return AdjudicationValueCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
