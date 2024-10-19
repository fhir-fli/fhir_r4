// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Example list of general categories for flagged issues. (Not complete or necessarily appropriate.)
@collection
class FlagCategory {
  /// Constructor for internal use (like enum)
  FlagCategory({this.fhirCode, this.element})
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

  /// FlagCategory values
  /// diet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FlagCategory diet = FlagCategory(
    fhirCode: 'diet',
  );

  /// drug
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FlagCategory drug = FlagCategory(
    fhirCode: 'drug',
  );

  /// lab
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FlagCategory lab = FlagCategory(
    fhirCode: 'lab',
  );

  /// admin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FlagCategory admin = FlagCategory(
    fhirCode: 'admin',
  );

  /// contact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FlagCategory contact = FlagCategory(
    fhirCode: 'contact',
  );

  /// clinical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FlagCategory clinical = FlagCategory(
    fhirCode: 'clinical',
  );

  /// behavioral
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FlagCategory behavioral = FlagCategory(
    fhirCode: 'behavioral',
  );

  /// research
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FlagCategory research = FlagCategory(
    fhirCode: 'research',
  );

  /// advance_directive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FlagCategory advance_directive = FlagCategory(
    fhirCode: 'advance-directive',
  );

  /// safety
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FlagCategory safety = FlagCategory(
    fhirCode: 'safety',
  );

  /// For instances where an Element is present but not value

  static final FlagCategory elementOnly = FlagCategory();

  /// List of all enum-like values
  static final List<FlagCategory> values = [
    diet,
    drug,
    lab,
    admin,
    contact,
    clinical,
    behavioral,
    research,
    advance_directive,
    safety,
  ];

  /// Returns the enum value with an element attached
  FlagCategory withElement(Element? newElement) {
    return FlagCategory(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [FlagCategory] from JSON.
  static FlagCategory fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FlagCategory.elementOnly.withElement(element);
    }
    return FlagCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FlagCategory.$fhirCode';
}
