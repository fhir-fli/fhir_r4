// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Actions that can be taken for the collection of specimen from a subject.
class SpecimenCollectionEnum {
  // Private constructor for internal use (like enum)
  SpecimenCollectionEnum._(this.fhirCode, {this.element});

  /// Factory constructor to create [SpecimenCollectionEnum] from JSON.
  factory SpecimenCollectionEnum.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenCollectionEnum.elementOnly.withElement(element);
    }
    return SpecimenCollectionEnum._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SpecimenCollectionEnum values
  /// value129316008
  static final SpecimenCollectionEnum value129316008 = SpecimenCollectionEnum._(
    '129316008',
  );

  /// value129314006
  static final SpecimenCollectionEnum value129314006 = SpecimenCollectionEnum._(
    '129314006',
  );

  /// value129300006
  static final SpecimenCollectionEnum value129300006 = SpecimenCollectionEnum._(
    '129300006',
  );

  /// value129304002
  static final SpecimenCollectionEnum value129304002 = SpecimenCollectionEnum._(
    '129304002',
  );

  /// value129323009
  static final SpecimenCollectionEnum value129323009 = SpecimenCollectionEnum._(
    '129323009',
  );

  /// value73416001
  static final SpecimenCollectionEnum value73416001 = SpecimenCollectionEnum._(
    '73416001',
  );

  /// value225113003
  static final SpecimenCollectionEnum value225113003 = SpecimenCollectionEnum._(
    '225113003',
  );

  /// value70777001
  static final SpecimenCollectionEnum value70777001 = SpecimenCollectionEnum._(
    '70777001',
  );

  /// value386089008
  static final SpecimenCollectionEnum value386089008 = SpecimenCollectionEnum._(
    '386089008',
  );

  /// value278450005
  static final SpecimenCollectionEnum value278450005 = SpecimenCollectionEnum._(
    '278450005',
  );

  /// For instances where an Element is present but not value

  static final SpecimenCollectionEnum elementOnly =
      SpecimenCollectionEnum._('');

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
    return SpecimenCollectionEnum._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
