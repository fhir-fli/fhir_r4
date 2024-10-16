import 'package:fhir_r4/fhir_r4.dart';

/// SNOMED-CT concepts modifying the anatomic location
enum BodystructureLocationQualifier {
  /// Display: Unilateral left
  /// Definition:
  value419161000('419161000'),

  /// Display: Unilateral right
  /// Definition:
  value419465000('419465000'),

  /// Display: Bilateral
  /// Definition:
  value51440002('51440002'),

  /// Display: Upper
  /// Definition:
  value261183002('261183002'),

  /// Display: Lower
  /// Definition:
  value261122009('261122009'),

  /// Display: Medial
  /// Definition:
  value255561001('255561001'),

  /// Display: Lateral
  /// Definition:
  value49370004('49370004'),

  /// Display: Superior
  /// Definition:
  value264217000('264217000'),

  /// Display: Inferior
  /// Definition:
  value261089000('261089000'),

  /// Display: Posterior
  /// Definition:
  value255551008('255551008'),

  /// Display: Below
  /// Definition:
  value351726001('351726001'),

  /// Display: Above
  /// Definition:
  value352730000('352730000'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const BodystructureLocationQualifier(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static BodystructureLocationQualifier fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BodystructureLocationQualifier.elementOnly.withElement(element);
    }
    return BodystructureLocationQualifier.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  BodystructureLocationQualifier withElement(Element? newElement) {
    return BodystructureLocationQualifier.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
