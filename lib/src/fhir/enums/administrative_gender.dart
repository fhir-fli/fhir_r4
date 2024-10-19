// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The gender of a person used for administrative purposes.
@collection
class AdministrativeGender {
  /// Constructor for internal use (like enum)
  AdministrativeGender({this.fhirCode, this.element})
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

  /// AdministrativeGender values
  /// male
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrativeGender male = AdministrativeGender(
    fhirCode: 'male',
  );

  /// female
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrativeGender female = AdministrativeGender(
    fhirCode: 'female',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrativeGender other = AdministrativeGender(
    fhirCode: 'other',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrativeGender unknown = AdministrativeGender(
    fhirCode: 'unknown',
  );

  /// For instances where an Element is present but not value

  static final AdministrativeGender elementOnly = AdministrativeGender();

  /// List of all enum-like values
  static final List<AdministrativeGender> values = [
    male,
    female,
    other,
    unknown,
  ];

  /// Returns the enum value with an element attached
  AdministrativeGender withElement(Element? newElement) {
    return AdministrativeGender(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AdministrativeGender] from JSON.
  static AdministrativeGender fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdministrativeGender.elementOnly.withElement(element);
    }
    return AdministrativeGender.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdministrativeGender.$fhirCode';
}
