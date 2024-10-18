// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes SNOMED CT codes for materials that specimen containers are made of
enum ContainerMaterials {
  /// Display: glass
  /// Definition:
  value32039001('32039001'),

  /// Display: plastic
  /// Definition:
  value61088005('61088005'),

  /// Display: metal
  /// Definition:
  value425620007('425620007'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ContainerMaterials(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ContainerMaterials] instances.
  static ContainerMaterials fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContainerMaterials.elementOnly.withElement(
        element,
      );
    }
    return ContainerMaterials.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ContainerMaterials withElement(Element? newElement) {
    return ContainerMaterials.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
