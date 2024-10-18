// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Classification of relationship between a therapy and a contraindication or an indication.
enum TherapyRelationshipType {
  /// Display: Only contraindicated if the other therapy is given
  /// Definition: Only contraindicated if the other therapy is given
  contraindicated_only_with('contraindicated-only-with'),

  /// Display: Contraindicated unless the other therapy is given
  /// Definition: Contraindicated unless the other therapy is given
  contraindicated_except_with('contraindicated-except-with'),

  /// Display: Indicated only when the other therapy is given (co-occurrent)
  /// Definition: Indicated only when the other therapy is given (co-occurrent)
  indicated_only_with('indicated-only-with'),

  /// Display: Indicated except when the other therapy is given
  /// Definition: Indicated except when the other therapy is given
  indicated_except_with('indicated-except-with'),

  /// Display: Indicated only if the other therapy is planned to be given afterwards (prep)
  /// Definition: Indicated only if the other therapy is planned to be given afterwards (prep)
  indicated_only_before('indicated-only-before'),

  /// Display: Indicated only if the other therapy was given before (follow-up)
  /// Definition: Indicated only if the other therapy was given before (follow-up)
  indicated_only_before_1('indicated-only-before'),

  /// Display: Indicated to replace the other therapy
  /// Definition: Indicated to replace the other therapy
  replace_other_therapy('replace-other-therapy'),

  /// Display: Indicated to replace the other contraindicated therapy
  /// Definition: Indicated to replace the other contraindicated therapy.
  replace_other_therapy_contraindicated(
      'replace-other-therapy-contraindicated'),

  /// Display: Indicated to replace the other therapy not well tolerated by patient
  /// Definition: Indicated to replace the other therapy not well tolerated by patient
  replace_other_therapy_not_tolerated('replace-other-therapy-not-tolerated'),

  /// Display: Indicated to replace the other therapy not effective on patient
  /// Definition: Indicated to replace the other therapy not effective on patient
  replace_other_therapy_not_effective('replace-other-therapy-not-effective'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const TherapyRelationshipType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [TherapyRelationshipType] instances.
  static TherapyRelationshipType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TherapyRelationshipType.elementOnly.withElement(
        element,
      );
    }
    return TherapyRelationshipType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  TherapyRelationshipType withElement(Element? newElement) {
    return TherapyRelationshipType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
