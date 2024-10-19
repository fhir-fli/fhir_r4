// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Actions that can be taken for the collection of specimen from a subject.
@collection
class SpecimenCollectionEnum {
  /// Constructor for internal use (like enum)
  SpecimenCollectionEnum({this.fhirCode, this.element})
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

  /// SpecimenCollectionEnum values
  /// value129316008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenCollectionEnum value129316008 = SpecimenCollectionEnum(
    fhirCode: '129316008',
  );

  /// value129314006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenCollectionEnum value129314006 = SpecimenCollectionEnum(
    fhirCode: '129314006',
  );

  /// value129300006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenCollectionEnum value129300006 = SpecimenCollectionEnum(
    fhirCode: '129300006',
  );

  /// value129304002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenCollectionEnum value129304002 = SpecimenCollectionEnum(
    fhirCode: '129304002',
  );

  /// value129323009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenCollectionEnum value129323009 = SpecimenCollectionEnum(
    fhirCode: '129323009',
  );

  /// value73416001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenCollectionEnum value73416001 = SpecimenCollectionEnum(
    fhirCode: '73416001',
  );

  /// value225113003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenCollectionEnum value225113003 = SpecimenCollectionEnum(
    fhirCode: '225113003',
  );

  /// value70777001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenCollectionEnum value70777001 = SpecimenCollectionEnum(
    fhirCode: '70777001',
  );

  /// value386089008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenCollectionEnum value386089008 = SpecimenCollectionEnum(
    fhirCode: '386089008',
  );

  /// value278450005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenCollectionEnum value278450005 = SpecimenCollectionEnum(
    fhirCode: '278450005',
  );

  /// For instances where an Element is present but not value

  static final SpecimenCollectionEnum elementOnly = SpecimenCollectionEnum();

  /// List of all enum-like values
  static final List<SpecimenCollectionEnum> values = [
    value129316008,
    value129314006,
    value129300006,
    value129304002,
    value129323009,
    value73416001,
    value225113003,
    value70777001,
    value386089008,
    value278450005,
  ];

  /// Returns the enum value with an element attached
  SpecimenCollectionEnum withElement(Element? newElement) {
    return SpecimenCollectionEnum(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SpecimenCollectionEnum] from JSON.
  static SpecimenCollectionEnum fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenCollectionEnum.elementOnly.withElement(element);
    }
    return SpecimenCollectionEnum.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SpecimenCollectionEnum.$fhirCode';
}
