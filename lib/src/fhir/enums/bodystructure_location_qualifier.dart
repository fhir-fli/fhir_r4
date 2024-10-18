// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const BodystructureLocationQualifier(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [BodystructureLocationQualifier] instances.
  static BodystructureLocationQualifier fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BodystructureLocationQualifier.elementOnly.withElement(
        element,
      );
    }
    return BodystructureLocationQualifier.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  BodystructureLocationQualifier withElement(Element? newElement) {
    return BodystructureLocationQualifier.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
