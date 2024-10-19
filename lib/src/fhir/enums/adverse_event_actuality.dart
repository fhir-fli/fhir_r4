// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Overall nature of the adverse event, e.g. real or potential.
@collection
class AdverseEventActuality {
  /// Constructor for internal use (like enum)
  AdverseEventActuality({this.fhirCode, this.element})
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

  /// AdverseEventActuality values
  /// actual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventActuality actual = AdverseEventActuality(
    fhirCode: 'actual',
  );

  /// potential
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventActuality potential = AdverseEventActuality(
    fhirCode: 'potential',
  );

  /// For instances where an Element is present but not value

  static final AdverseEventActuality elementOnly = AdverseEventActuality();

  /// List of all enum-like values
  static final List<AdverseEventActuality> values = [
    actual,
    potential,
  ];

  /// Returns the enum value with an element attached
  AdverseEventActuality withElement(Element? newElement) {
    return AdverseEventActuality(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AdverseEventActuality] from JSON.
  static AdverseEventActuality fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventActuality.elementOnly.withElement(element);
    }
    return AdverseEventActuality.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdverseEventActuality.$fhirCode';
}
