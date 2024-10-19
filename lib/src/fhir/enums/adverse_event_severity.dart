// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The severity of the adverse event itself, in direct relation to the subject.
@collection
class AdverseEventSeverity {
  /// Constructor for internal use (like enum)
  AdverseEventSeverity({this.fhirCode, this.element})
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

  /// AdverseEventSeverity values
  /// mild
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventSeverity mild = AdverseEventSeverity(
    fhirCode: 'mild',
  );

  /// moderate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventSeverity moderate = AdverseEventSeverity(
    fhirCode: 'moderate',
  );

  /// severe
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventSeverity severe = AdverseEventSeverity(
    fhirCode: 'severe',
  );

  /// For instances where an Element is present but not value

  static final AdverseEventSeverity elementOnly = AdverseEventSeverity();

  /// List of all enum-like values
  static final List<AdverseEventSeverity> values = [
    mild,
    moderate,
    severe,
  ];

  /// Returns the enum value with an element attached
  AdverseEventSeverity withElement(Element? newElement) {
    return AdverseEventSeverity(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AdverseEventSeverity] from JSON.
  static AdverseEventSeverity fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventSeverity.elementOnly.withElement(element);
    }
    return AdverseEventSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdverseEventSeverity.$fhirCode';
}
