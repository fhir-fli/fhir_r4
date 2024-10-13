/// This example value set defines a set of codes that can be used to indicate the physical form of the Location.
enum LocationType {
  /// Display: Site
  /// Definition: A collection of buildings or other locations such as a site or a campus.
  si,

  /// Display: Building
  /// Definition: Any Building or structure. This may contain rooms, corridors, wings, etc. It might not have walls, or a roof, but is considered a defined/allocated space.
  bu,

  /// Display: Wing
  /// Definition: A Wing within a Building, this often contains levels, rooms and corridors.
  wi,

  /// Display: Ward
  /// Definition: A Ward is a section of a medical facility that may contain rooms and other types of location.
  wa,

  /// Display: Level
  /// Definition: A Level in a multi-level Building/Structure.
  lvl,

  /// Display: Corridor
  /// Definition: Any corridor within a Building, that may connect rooms.
  co,

  /// Display: Room
  /// Definition: A space that is allocated as a room, it may have walls/roof etc., but does not require these.
  ro,

  /// Display: Bed
  /// Definition: A space that is allocated for sleeping/laying on. This is not the physical bed/trolley that may be moved about, but the space it may occupy.
  bd,

  /// Display: Vehicle
  /// Definition: A means of transportation.
  ve,

  /// Display: House
  /// Definition: A residential dwelling. Usually used to reference a location that a person/patient may reside.
  ho,

  /// Display: Cabinet
  /// Definition: A container that can store goods, equipment, medications or other items.
  ca,

  /// Display: Road
  /// Definition: A defined path to travel between 2 points that has a known name.
  rd,

  /// Display: Area
  /// Definition: A defined physical boundary of something, such as a flood risk zone, region, postcode
  area,

  /// Display: Jurisdiction
  /// Definition: A wide scope that covers a conceptual domain, such as a Nation (Country wide community or Federal Government - e.g. Ministry of Health),  Province or State (community or Government), Business (throughout the enterprise), Nation with a business scope of an agency (e.g. CDC, FDA etc.) or a Business segment (UK Pharmacy), not just an physical boundary
  jdn,
  ;

  @override
  String toString() {
    switch (this) {
      case si:
        return 'si';
      case bu:
        return 'bu';
      case wi:
        return 'wi';
      case wa:
        return 'wa';
      case lvl:
        return 'lvl';
      case co:
        return 'co';
      case ro:
        return 'ro';
      case bd:
        return 'bd';
      case ve:
        return 've';
      case ho:
        return 'ho';
      case ca:
        return 'ca';
      case rd:
        return 'rd';
      case area:
        return 'area';
      case jdn:
        return 'jdn';
    }
  }

  /// Returns a [String] from a [LocationType] enum.
  String toJson() => toString();

  /// Returns a [LocationType] from a [String] enum.
  static LocationType fromString(String str) {
    switch (str) {
      case 'si':
        return LocationType.si;
      case 'bu':
        return LocationType.bu;
      case 'wi':
        return LocationType.wi;
      case 'wa':
        return LocationType.wa;
      case 'lvl':
        return LocationType.lvl;
      case 'co':
        return LocationType.co;
      case 'ro':
        return LocationType.ro;
      case 'bd':
        return LocationType.bd;
      case 've':
        return LocationType.ve;
      case 'ho':
        return LocationType.ho;
      case 'ca':
        return LocationType.ca;
      case 'rd':
        return LocationType.rd;
      case 'area':
        return LocationType.area;
      case 'jdn':
        return LocationType.jdn;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [LocationType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static LocationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
