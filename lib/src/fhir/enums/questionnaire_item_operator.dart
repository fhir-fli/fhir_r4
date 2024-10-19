// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The criteria by which a question is enabled.
@collection
class QuestionnaireItemOperator {
  /// Constructor for internal use (like enum)
  QuestionnaireItemOperator({this.fhirCode, this.element})
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

  /// QuestionnaireItemOperator values
  /// exists
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemOperator exists = QuestionnaireItemOperator(
    fhirCode: 'exists',
  );

  /// eq
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemOperator eq = QuestionnaireItemOperator(
    fhirCode: '=',
  );

  /// ne
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemOperator ne = QuestionnaireItemOperator(
    fhirCode: '!=',
  );

  /// gt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemOperator gt = QuestionnaireItemOperator(
    fhirCode: '>',
  );

  /// lt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemOperator lt = QuestionnaireItemOperator(
    fhirCode: '<',
  );

  /// ge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemOperator ge = QuestionnaireItemOperator(
    fhirCode: '>=',
  );

  /// le
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireItemOperator le = QuestionnaireItemOperator(
    fhirCode: '<=',
  );

  /// For instances where an Element is present but not value

  static final QuestionnaireItemOperator elementOnly =
      QuestionnaireItemOperator();

  /// List of all enum-like values
  static final List<QuestionnaireItemOperator> values = [
    exists,
    eq,
    ne,
    gt,
    lt,
    ge,
    le,
  ];

  /// Returns the enum value with an element attached
  QuestionnaireItemOperator withElement(Element? newElement) {
    return QuestionnaireItemOperator(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [QuestionnaireItemOperator] from JSON.
  static QuestionnaireItemOperator fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemOperator.elementOnly.withElement(element);
    }
    return QuestionnaireItemOperator.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'QuestionnaireItemOperator.$fhirCode';
}
