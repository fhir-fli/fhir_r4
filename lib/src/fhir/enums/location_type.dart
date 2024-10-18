// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the physical form of the Location.
enum LocationType {
  /// Display: Site
  /// Definition: A collection of buildings or other locations such as a site or a campus.
  si('si'),

  /// Display: Building
  /// Definition: Any Building or structure. This may contain rooms, corridors, wings, etc. It might not have walls, or a roof, but is considered a defined/allocated space.
  bu('bu'),

  /// Display: Wing
  /// Definition: A Wing within a Building, this often contains levels, rooms and corridors.
  wi('wi'),

  /// Display: Ward
  /// Definition: A Ward is a section of a medical facility that may contain rooms and other types of location.
  wa('wa'),

  /// Display: Level
  /// Definition: A Level in a multi-level Building/Structure.
  lvl('lvl'),

  /// Display: Corridor
  /// Definition: Any corridor within a Building, that may connect rooms.
  co('co'),

  /// Display: Room
  /// Definition: A space that is allocated as a room, it may have walls/roof etc., but does not require these.
  ro('ro'),

  /// Display: Bed
  /// Definition: A space that is allocated for sleeping/laying on. This is not the physical bed/trolley that may be moved about, but the space it may occupy.
  bd('bd'),

  /// Display: Vehicle
  /// Definition: A means of transportation.
  ve('ve'),

  /// Display: House
  /// Definition: A residential dwelling. Usually used to reference a location that a person/patient may reside.
  ho('ho'),

  /// Display: Cabinet
  /// Definition: A container that can store goods, equipment, medications or other items.
  ca('ca'),

  /// Display: Road
  /// Definition: A defined path to travel between 2 points that has a known name.
  rd('rd'),

  /// Display: Area
  /// Definition: A defined physical boundary of something, such as a flood risk zone, region, postcode
  area('area'),

  /// Display: Jurisdiction
  /// Definition: A wide scope that covers a conceptual domain, such as a Nation (Country wide community or Federal Government - e.g. Ministry of Health), Province or State (community or Government), Business (throughout the enterprise), Nation with a business scope of an agency (e.g. CDC, FDA etc.) or a Business segment (UK Pharmacy), not just an physical boundary
  jdn('jdn'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const LocationType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [LocationType] instances.
  static LocationType fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  LocationType withElement(Element? newElement) {
    return LocationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
