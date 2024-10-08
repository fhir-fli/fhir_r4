import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'location.g.dart';

/// [Location] /// Details and position information for a physical place where services are
/// provided and resources and participants may be stored, found, contained, or
/// accommodated.
@JsonSerializable()
class Location extends DomainResource {
  Location({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.statusElement,
    this.operationalStatus,
    this.name,
    this.nameElement,
    this.alias,
    this.aliasElement,
    this.description,
    this.descriptionElement,
    this.mode,
    this.modeElement,
    this.type,
    this.telecom,
    this.address,
    this.physicalType,
    this.position,
    this.managingOrganization,
    this.partOf,
    this.hoursOfOperation,
    this.availabilityExceptions,
    this.availabilityExceptionsElement,
    this.endpoint,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Location, fhirType: 'Location');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique code or number identifying the location to its users.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The status property covers the general availability of the resource, not
  /// the current value which may be covered by the operationStatus, or by a
  /// schedule/slots if they are configured for the location.
  @JsonKey(name: 'status')
  final LocationStatus? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [operationalStatus] /// The operational status covers operation values most relevant to beds (but
  /// can also apply to rooms/units/chairs/etc. such as an isolation
  /// unit/dialysis chair). This typically covers concepts such as contamination,
  /// housekeeping, and other activities like maintenance.
  @JsonKey(name: 'operationalStatus')
  final Coding? operationalStatus;

  /// [name] /// Name of the location as used by humans. Does not need to be unique.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [alias] /// A list of alternate names that the location is known as, or was known as,
  /// in the past.
  @JsonKey(name: 'alias')
  final List<FhirString>? alias;
  @JsonKey(name: '_alias')
  final List<Element>? aliasElement;

  /// [description] /// Description of the Location, which helps in finding or referencing the
  /// place.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [mode] /// Indicates whether a resource instance represents a specific location or a
  /// class of locations.
  @JsonKey(name: 'mode')
  final LocationMode? mode;
  @JsonKey(name: '_mode')
  final Element? modeElement;

  /// [type] /// Indicates the type of function performed at the location.
  @JsonKey(name: 'type')
  final List<CodeableConcept>? type;

  /// [telecom] /// The contact details of communication devices available at the location.
  /// This can include phone numbers, fax numbers, mobile numbers, email
  /// addresses and web sites.
  @JsonKey(name: 'telecom')
  final List<ContactPoint>? telecom;

  /// [address] /// Physical location.
  @JsonKey(name: 'address')
  final Address? address;

  /// [physicalType] /// Physical form of the location, e.g. building, room, vehicle, road.
  @JsonKey(name: 'physicalType')
  final LocationType? physicalType;

  /// [position] /// The absolute geographic location of the Location, expressed using the WGS84
  /// datum (This is the same co-ordinate system used in KML).
  @JsonKey(name: 'position')
  final LocationPosition? position;

  /// [managingOrganization] /// The organization responsible for the provisioning and upkeep of the
  /// location.
  @JsonKey(name: 'managingOrganization')
  final Reference? managingOrganization;

  /// [partOf] /// Another Location of which this Location is physically a part of.
  @JsonKey(name: 'partOf')
  final Reference? partOf;

  /// [hoursOfOperation] /// What days/times during a week is this location usually open.
  @JsonKey(name: 'hoursOfOperation')
  final List<LocationHoursOfOperation>? hoursOfOperation;

  /// [availabilityExceptions] /// A description of when the locations opening ours are different to normal,
  /// e.g. public holiday availability. Succinctly describing all possible
  /// exceptions to normal site availability as detailed in the opening hours
  /// Times.
  @JsonKey(name: 'availabilityExceptions')
  final FhirString? availabilityExceptions;
  @JsonKey(name: '_availabilityExceptions')
  final Element? availabilityExceptionsElement;

  /// [endpoint] /// Technical endpoints providing access to services operated for the location.
  @JsonKey(name: 'endpoint')
  final List<Reference>? endpoint;
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  Location clone() => throw UnimplementedError();
  @override
  Location copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    LocationStatus? status,
    Element? statusElement,
    Coding? operationalStatus,
    FhirString? name,
    Element? nameElement,
    List<FhirString>? alias,
    List<Element>? aliasElement,
    FhirString? description,
    Element? descriptionElement,
    LocationMode? mode,
    Element? modeElement,
    List<CodeableConcept>? type,
    List<ContactPoint>? telecom,
    Address? address,
    LocationType? physicalType,
    LocationPosition? position,
    Reference? managingOrganization,
    Reference? partOf,
    List<LocationHoursOfOperation>? hoursOfOperation,
    FhirString? availabilityExceptions,
    Element? availabilityExceptionsElement,
    List<Reference>? endpoint,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Location(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      operationalStatus: operationalStatus ?? this.operationalStatus,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      alias: alias ?? this.alias,
      aliasElement: aliasElement ?? this.aliasElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      type: type ?? this.type,
      telecom: telecom ?? this.telecom,
      address: address ?? this.address,
      physicalType: physicalType ?? this.physicalType,
      position: position ?? this.position,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      partOf: partOf ?? this.partOf,
      hoursOfOperation: hoursOfOperation ?? this.hoursOfOperation,
      availabilityExceptions:
          availabilityExceptions ?? this.availabilityExceptions,
      availabilityExceptionsElement:
          availabilityExceptionsElement ?? this.availabilityExceptionsElement,
      endpoint: endpoint ?? this.endpoint,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Location.fromYaml(dynamic yaml) => yaml is String
      ? Location.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Location.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Location cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Location.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Location.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [LocationPosition] /// The absolute geographic location of the Location, expressed using the WGS84
/// datum (This is the same co-ordinate system used in KML).
@JsonSerializable()
class LocationPosition extends BackboneElement {
  LocationPosition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.longitude,
    this.longitudeElement,
    required this.latitude,
    this.latitudeElement,
    this.altitude,
    this.altitudeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'LocationPosition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [longitude] /// Longitude. The value domain and the interpretation are the same as for the
  /// text of the longitude element in KML (see notes below).
  @JsonKey(name: 'longitude')
  final FhirDecimal longitude;
  @JsonKey(name: '_longitude')
  final Element? longitudeElement;

  /// [latitude] /// Latitude. The value domain and the interpretation are the same as for the
  /// text of the latitude element in KML (see notes below).
  @JsonKey(name: 'latitude')
  final FhirDecimal latitude;
  @JsonKey(name: '_latitude')
  final Element? latitudeElement;

  /// [altitude] /// Altitude. The value domain and the interpretation are the same as for the
  /// text of the altitude element in KML (see notes below).
  @JsonKey(name: 'altitude')
  final FhirDecimal? altitude;
  @JsonKey(name: '_altitude')
  final Element? altitudeElement;
  factory LocationPosition.fromJson(Map<String, dynamic> json) =>
      _$LocationPositionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LocationPositionToJson(this);

  @override
  LocationPosition clone() => throw UnimplementedError();
  @override
  LocationPosition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDecimal? longitude,
    Element? longitudeElement,
    FhirDecimal? latitude,
    Element? latitudeElement,
    FhirDecimal? altitude,
    Element? altitudeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return LocationPosition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      longitude: longitude ?? this.longitude,
      longitudeElement: longitudeElement ?? this.longitudeElement,
      latitude: latitude ?? this.latitude,
      latitudeElement: latitudeElement ?? this.latitudeElement,
      altitude: altitude ?? this.altitude,
      altitudeElement: altitudeElement ?? this.altitudeElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory LocationPosition.fromYaml(dynamic yaml) => yaml is String
      ? LocationPosition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? LocationPosition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'LocationPosition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory LocationPosition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return LocationPosition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [LocationHoursOfOperation] /// What days/times during a week is this location usually open.
@JsonSerializable()
class LocationHoursOfOperation extends BackboneElement {
  LocationHoursOfOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.daysOfWeek,
    this.daysOfWeekElement,
    this.allDay,
    this.allDayElement,
    this.openingTime,
    this.openingTimeElement,
    this.closingTime,
    this.closingTimeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'LocationHoursOfOperation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [daysOfWeek] /// Indicates which days of the week are available between the start and end
  /// Times.
  @JsonKey(name: 'daysOfWeek')
  final List<DaysOfWeek>? daysOfWeek;
  @JsonKey(name: '_daysOfWeek')
  final List<Element>? daysOfWeekElement;

  /// [allDay] /// The Location is open all day.
  @JsonKey(name: 'allDay')
  final FhirBoolean? allDay;
  @JsonKey(name: '_allDay')
  final Element? allDayElement;

  /// [openingTime] /// Time that the Location opens.
  @JsonKey(name: 'openingTime')
  final FhirTime? openingTime;
  @JsonKey(name: '_openingTime')
  final Element? openingTimeElement;

  /// [closingTime] /// Time that the Location closes.
  @JsonKey(name: 'closingTime')
  final FhirTime? closingTime;
  @JsonKey(name: '_closingTime')
  final Element? closingTimeElement;
  factory LocationHoursOfOperation.fromJson(Map<String, dynamic> json) =>
      _$LocationHoursOfOperationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LocationHoursOfOperationToJson(this);

  @override
  LocationHoursOfOperation clone() => throw UnimplementedError();
  @override
  LocationHoursOfOperation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<DaysOfWeek>? daysOfWeek,
    List<Element>? daysOfWeekElement,
    FhirBoolean? allDay,
    Element? allDayElement,
    FhirTime? openingTime,
    Element? openingTimeElement,
    FhirTime? closingTime,
    Element? closingTimeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return LocationHoursOfOperation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      daysOfWeekElement: daysOfWeekElement ?? this.daysOfWeekElement,
      allDay: allDay ?? this.allDay,
      allDayElement: allDayElement ?? this.allDayElement,
      openingTime: openingTime ?? this.openingTime,
      openingTimeElement: openingTimeElement ?? this.openingTimeElement,
      closingTime: closingTime ?? this.closingTime,
      closingTimeElement: closingTimeElement ?? this.closingTimeElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory LocationHoursOfOperation.fromYaml(dynamic yaml) => yaml is String
      ? LocationHoursOfOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? LocationHoursOfOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'LocationHoursOfOperation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory LocationHoursOfOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return LocationHoursOfOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
