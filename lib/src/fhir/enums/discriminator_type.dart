// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// How an element value is interpreted when discrimination is evaluated.
@collection
class DiscriminatorType {
  /// Constructor for internal use (like enum)
  DiscriminatorType({this.fhirCode, this.element})
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

  /// DiscriminatorType values
  /// value
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiscriminatorType value = DiscriminatorType(
    fhirCode: 'value',
  );

  /// exists
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiscriminatorType exists = DiscriminatorType(
    fhirCode: 'exists',
  );

  /// pattern
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiscriminatorType pattern = DiscriminatorType(
    fhirCode: 'pattern',
  );

  /// type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiscriminatorType type = DiscriminatorType(
    fhirCode: 'type',
  );

  /// profile
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiscriminatorType profile = DiscriminatorType(
    fhirCode: 'profile',
  );

  /// For instances where an Element is present but not value

  static final DiscriminatorType elementOnly = DiscriminatorType();

  /// List of all enum-like values
  static final List<DiscriminatorType> values = [
    value,
    exists,
    pattern,
    type,
    profile,
  ];

  /// Returns the enum value with an element attached
  DiscriminatorType withElement(Element? newElement) {
    return DiscriminatorType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DiscriminatorType] from JSON.
  static DiscriminatorType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiscriminatorType.elementOnly.withElement(element);
    }
    return DiscriminatorType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DiscriminatorType.$fhirCode';
}
