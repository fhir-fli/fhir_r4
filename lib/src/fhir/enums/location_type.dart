// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the physical form of the Location.
class LocationType {
  // Private constructor for internal use (like enum)
  LocationType._(this.fhirCode, {this.element});

  /// Factory constructor to create [LocationType] from JSON.
  factory LocationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationType.elementOnly.withElement(element);
    }
    return LocationType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// LocationType values
  /// si
  static final LocationType si = LocationType._(
    'si',
  );

  /// bu
  static final LocationType bu = LocationType._(
    'bu',
  );

  /// wi
  static final LocationType wi = LocationType._(
    'wi',
  );

  /// wa
  static final LocationType wa = LocationType._(
    'wa',
  );

  /// lvl
  static final LocationType lvl = LocationType._(
    'lvl',
  );

  /// co
  static final LocationType co = LocationType._(
    'co',
  );

  /// ro
  static final LocationType ro = LocationType._(
    'ro',
  );

  /// bd
  static final LocationType bd = LocationType._(
    'bd',
  );

  /// ve
  static final LocationType ve = LocationType._(
    've',
  );

  /// ho
  static final LocationType ho = LocationType._(
    'ho',
  );

  /// ca
  static final LocationType ca = LocationType._(
    'ca',
  );

  /// rd
  static final LocationType rd = LocationType._(
    'rd',
  );

  /// area
  static final LocationType area = LocationType._(
    'area',
  );

  /// jdn
  static final LocationType jdn = LocationType._(
    'jdn',
  );

  /// For instances where an Element is present but not value

  static final LocationType elementOnly = LocationType._('');

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
    return LocationType._(fhirCode, element: newElement);
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
