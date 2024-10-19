// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The composite scoring method of the measure.
@collection
class CompositeMeasureScoring {
  /// Constructor for internal use (like enum)
  CompositeMeasureScoring({this.fhirCode, this.element})
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

  /// CompositeMeasureScoring values
  /// opportunity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositeMeasureScoring opportunity = CompositeMeasureScoring(
    fhirCode: 'opportunity',
  );

  /// all_or_nothing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositeMeasureScoring all_or_nothing = CompositeMeasureScoring(
    fhirCode: 'all-or-nothing',
  );

  /// linear
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositeMeasureScoring linear = CompositeMeasureScoring(
    fhirCode: 'linear',
  );

  /// weighted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositeMeasureScoring weighted = CompositeMeasureScoring(
    fhirCode: 'weighted',
  );

  /// For instances where an Element is present but not value

  static final CompositeMeasureScoring elementOnly = CompositeMeasureScoring();

  /// List of all enum-like values
  static final List<CompositeMeasureScoring> values = [
    opportunity,
    all_or_nothing,
    linear,
    weighted,
  ];

  /// Returns the enum value with an element attached
  CompositeMeasureScoring withElement(Element? newElement) {
    return CompositeMeasureScoring(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CompositeMeasureScoring] from JSON.
  static CompositeMeasureScoring fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositeMeasureScoring.elementOnly.withElement(element);
    }
    return CompositeMeasureScoring.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CompositeMeasureScoring.$fhirCode';
}
