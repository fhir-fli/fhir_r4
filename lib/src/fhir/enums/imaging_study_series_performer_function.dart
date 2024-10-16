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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ImagingStudySeriesPerformerFunction(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ImagingStudySeriesPerformerFunction fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingStudySeriesPerformerFunction.elementOnly
          .withElement(element);
    }
    return ImagingStudySeriesPerformerFunction.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ImagingStudySeriesPerformerFunction withElement(Element? newElement) {
    return ImagingStudySeriesPerformerFunction.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
