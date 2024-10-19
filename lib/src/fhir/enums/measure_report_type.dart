// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of the measure report.
@collection
class MeasureReportType {
  /// Constructor for internal use (like enum)
  MeasureReportType({this.fhirCode, this.element})
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

  /// MeasureReportType values
  /// individual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureReportType individual = MeasureReportType(
    fhirCode: 'individual',
  );

  /// subject_list
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureReportType subject_list = MeasureReportType(
    fhirCode: 'subject-list',
  );

  /// summary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureReportType summary = MeasureReportType(
    fhirCode: 'summary',
  );

  /// data_collection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureReportType data_collection = MeasureReportType(
    fhirCode: 'data-collection',
  );

  /// For instances where an Element is present but not value

  static final MeasureReportType elementOnly = MeasureReportType();

  /// List of all enum-like values
  static final List<MeasureReportType> values = [
    individual,
    subject_list,
    summary,
    data_collection,
  ];

  /// Returns the enum value with an element attached
  MeasureReportType withElement(Element? newElement) {
    return MeasureReportType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MeasureReportType] from JSON.
  static MeasureReportType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportType.elementOnly.withElement(element);
    }
    return MeasureReportType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureReportType.$fhirCode';
}
