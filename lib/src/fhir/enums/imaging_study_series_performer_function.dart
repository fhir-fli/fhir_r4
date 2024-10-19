// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Performer function of an agent in an imaging study series
@collection
class ImagingStudySeriesPerformerFunction {
  /// Constructor for internal use (like enum)
  ImagingStudySeriesPerformerFunction({this.fhirCode, this.element})
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

  /// ImagingStudySeriesPerformerFunction values
  /// CON
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImagingStudySeriesPerformerFunction CON =
      ImagingStudySeriesPerformerFunction(
    fhirCode: 'CON',
  );

  /// VRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImagingStudySeriesPerformerFunction VRF =
      ImagingStudySeriesPerformerFunction(
    fhirCode: 'VRF',
  );

  /// PRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImagingStudySeriesPerformerFunction PRF =
      ImagingStudySeriesPerformerFunction(
    fhirCode: 'PRF',
  );

  /// SPRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImagingStudySeriesPerformerFunction SPRF =
      ImagingStudySeriesPerformerFunction(
    fhirCode: 'SPRF',
  );

  /// REF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImagingStudySeriesPerformerFunction REF =
      ImagingStudySeriesPerformerFunction(
    fhirCode: 'REF',
  );

  /// For instances where an Element is present but not value

  static final ImagingStudySeriesPerformerFunction elementOnly =
      ImagingStudySeriesPerformerFunction();

  /// List of all enum-like values
  static final List<ImagingStudySeriesPerformerFunction> values = [
    CON,
    VRF,
    PRF,
    SPRF,
    REF,
  ];

  /// Returns the enum value with an element attached
  ImagingStudySeriesPerformerFunction withElement(Element? newElement) {
    return ImagingStudySeriesPerformerFunction(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImagingStudySeriesPerformerFunction] from JSON.
  static ImagingStudySeriesPerformerFunction fromJson(
      Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImagingStudySeriesPerformerFunction.$fhirCode';
}
