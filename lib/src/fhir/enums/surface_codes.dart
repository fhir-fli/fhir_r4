// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of FDI tooth surface codes.
enum SurfaceCodes {
  /// Display: Mesial
  /// Definition: The surface of a tooth that is closest to the midline (middle) of the face.
  M('M'),

  /// Display: Occlusal
  /// Definition: The chewing surface of posterior teeth.
  O('O'),

  /// Display: Incisal
  /// Definition: The biting edge of anterior teeth.
  I('I'),

  /// Display: Distal
  /// Definition: The surface of a tooth that faces away from the midline of the face.
  D('D'),

  /// Display: Buccal
  /// Definition: The surface of a posterior tooth facing the cheeks.
  B('B'),

  /// Display: Ventral
  /// Definition: The surface of a tooth facing the lips.
  V('V'),

  /// Display: Lingual
  /// Definition: The surface of a tooth facing the tongue.
  L('L'),

  /// Display: Mesioclusal
  /// Definition: The Mesioclusal surfaces of a tooth.
  MO('MO'),

  /// Display: Distoclusal
  /// Definition: The Distoclusal surfaces of a tooth.
  DO('DO'),

  /// Display: Distoincisal
  /// Definition: The Distoincisal surfaces of a tooth.
  DI('DI'),

  /// Display: Mesioclusodistal
  /// Definition: The Mesioclusodistal surfaces of a tooth.
  MOD('MOD'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SurfaceCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SurfaceCodes] instances.
  static SurfaceCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SurfaceCodes.elementOnly.withElement(
        element,
      );
    }
    return SurfaceCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SurfaceCodes withElement(Element? newElement) {
    return SurfaceCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
