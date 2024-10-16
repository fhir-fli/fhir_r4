import 'package:fhir_r4/fhir_r4.dart';

/// The relationship between two substance types.
enum SubstanceRelationshipType {
  /// Display: Salt to parent
  /// Definition:
  Salt('Salt'),

  /// Display: Active moiety
  /// Definition:
  ActiveMoiety('ActiveMoiety'),

  /// Display: Starting material for
  /// Definition:
  StartingMaterial('StartingMaterial'),

  /// Display: Polymorph of
  /// Definition:
  Polymorph('Polymorph'),

  /// Display: Impurity of
  /// Definition:
  Impurity('Impurity'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SubstanceRelationshipType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SubstanceRelationshipType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceRelationshipType.elementOnly.withElement(element);
    }
    return SubstanceRelationshipType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SubstanceRelationshipType withElement(Element? newElement) {
    return SubstanceRelationshipType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
