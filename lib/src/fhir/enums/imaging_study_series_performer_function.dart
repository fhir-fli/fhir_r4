// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Performer function of an agent in an imaging study series
enum ImagingStudySeriesPerformerFunction {
  /// Display: consultant
  /// Definition:
  CON('CON'),

  /// Display: verifier
  /// Definition:
  VRF('VRF'),

  /// Display: performer
  /// Definition:
  PRF('PRF'),

  /// Display: secondary performer
  /// Definition:
  SPRF('SPRF'),

  /// Display: referrer
  /// Definition:
  REF('REF'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ImagingStudySeriesPerformerFunction(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ImagingStudySeriesPerformerFunction] instances.
  static ImagingStudySeriesPerformerFunction fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingStudySeriesPerformerFunction.elementOnly
          .withElement(element);
    }
    return ImagingStudySeriesPerformerFunction.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ImagingStudySeriesPerformerFunction withElement(Element? newElement) {
    return ImagingStudySeriesPerformerFunction.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
