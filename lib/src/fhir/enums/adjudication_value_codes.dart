// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes a smattering of Adjudication Value codes which includes codes to indicate the amounts eligible under the plan, the amount of benefit, copays etc.
@collection
class AdjudicationValueCodes {
  /// Constructor for internal use (like enum)
  AdjudicationValueCodes({this.fhirCode, this.element})
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

  /// AdjudicationValueCodes values
  /// submitted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdjudicationValueCodes submitted = AdjudicationValueCodes(
    fhirCode: 'submitted',
  );

  /// copay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdjudicationValueCodes copay = AdjudicationValueCodes(
    fhirCode: 'copay',
  );

  /// eligible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdjudicationValueCodes eligible = AdjudicationValueCodes(
    fhirCode: 'eligible',
  );

  /// deductible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdjudicationValueCodes deductible = AdjudicationValueCodes(
    fhirCode: 'deductible',
  );

  /// unallocdeduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdjudicationValueCodes unallocdeduct = AdjudicationValueCodes(
    fhirCode: 'unallocdeduct',
  );

  /// eligpercent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdjudicationValueCodes eligpercent = AdjudicationValueCodes(
    fhirCode: 'eligpercent',
  );

  /// tax
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdjudicationValueCodes tax = AdjudicationValueCodes(
    fhirCode: 'tax',
  );

  /// benefit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdjudicationValueCodes benefit = AdjudicationValueCodes(
    fhirCode: 'benefit',
  );

  /// For instances where an Element is present but not value

  static final AdjudicationValueCodes elementOnly = AdjudicationValueCodes();

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
    return AdjudicationValueCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AdjudicationValueCodes] from JSON.
  static AdjudicationValueCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdjudicationValueCodes.elementOnly.withElement(element);
    }
    return AdjudicationValueCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdjudicationValueCodes.$fhirCode';
}
