// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This example value set defines a set of codes that can be used to indicate the physical form of the Location.
@collection
class LocationType {
  /// Constructor for internal use (like enum)
  LocationType({this.fhirCode, this.element})
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

  /// LocationType values
  /// si
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationType si = LocationType(
    fhirCode: 'si',
  );

  /// bu
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationType bu = LocationType(
    fhirCode: 'bu',
  );

  /// wi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationType wi = LocationType(
    fhirCode: 'wi',
  );

  /// wa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationType wa = LocationType(
    fhirCode: 'wa',
  );

  /// lvl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationType lvl = LocationType(
    fhirCode: 'lvl',
  );

  /// co
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationType co = LocationType(
    fhirCode: 'co',
  );

  /// ro
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationType ro = LocationType(
    fhirCode: 'ro',
  );

  /// bd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationType bd = LocationType(
    fhirCode: 'bd',
  );

  /// ve
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationType ve = LocationType(
    fhirCode: 've',
  );

  /// ho
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationType ho = LocationType(
    fhirCode: 'ho',
  );

  /// ca
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationType ca = LocationType(
    fhirCode: 'ca',
  );

  /// rd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationType rd = LocationType(
    fhirCode: 'rd',
  );

  /// area
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationType area = LocationType(
    fhirCode: 'area',
  );

  /// jdn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationType jdn = LocationType(
    fhirCode: 'jdn',
  );

  /// For instances where an Element is present but not value

  static final LocationType elementOnly = LocationType();

  /// List of all enum-like values
  static final List<LocationType> values = [
    si,
    bu,
    wi,
    wa,
    lvl,
    co,
    ro,
    bd,
    ve,
    ho,
    ca,
    rd,
    area,
    jdn,
  ];

  /// Returns the enum value with an element attached
  LocationType withElement(Element? newElement) {
    return LocationType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [LocationType] from JSON.
  static LocationType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationType.elementOnly.withElement(element);
    }
    return LocationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'LocationType.$fhirCode';
}
