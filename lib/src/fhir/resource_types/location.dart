import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Location] /// Details and position information for a physical place where services are
/// provided and resources and participants may be stored, found, contained, or
/// accommodated.
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
  }) : super(resourceType: R4ResourceType.Location);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique code or number identifying the location to its users.
  final List<Identifier>? identifier;

  /// [status] /// The status property covers the general availability of the resource, not
  /// the current value which may be covered by the operationStatus, or by a
  /// schedule/slots if they are configured for the location.
  final FhirCode? status;
  final Element? statusElement;

  /// [operationalStatus] /// The operational status covers operation values most relevant to beds (but
  /// can also apply to rooms/units/chairs/etc. such as an isolation
  /// unit/dialysis chair). This typically covers concepts such as contamination,
  /// housekeeping, and other activities like maintenance.
  final Coding? operationalStatus;

  /// [name] /// Name of the location as used by humans. Does not need to be unique.
  final FhirString? name;
  final Element? nameElement;

  /// [alias] /// A list of alternate names that the location is known as, or was known as,
  /// in the past.
  final List<FhirString>? alias;
  final List<Element>? aliasElement;

  /// [description] /// Description of the Location, which helps in finding or referencing the
  /// place.
  final FhirString? description;
  final Element? descriptionElement;

  /// [mode] /// Indicates whether a resource instance represents a specific location or a
  /// class of locations.
  final FhirCode? mode;
  final Element? modeElement;

  /// [type] /// Indicates the type of function performed at the location.
  final List<CodeableConcept>? type;

  /// [telecom] /// The contact details of communication devices available at the location.
  /// This can include phone numbers, fax numbers, mobile numbers, email
  /// addresses and web sites.
  final List<ContactPoint>? telecom;

  /// [address] /// Physical location.
  final Address? address;

  /// [physicalType] /// Physical form of the location, e.g. building, room, vehicle, road.
  final CodeableConcept? physicalType;

  /// [position] /// The absolute geographic location of the Location, expressed using the WGS84
  /// datum (This is the same co-ordinate system used in KML).
  final LocationPosition? position;

  /// [managingOrganization] /// The organization responsible for the provisioning and upkeep of the
  /// location.
  final Reference? managingOrganization;

  /// [partOf] /// Another Location of which this Location is physically a part of.
  final Reference? partOf;

  /// [hoursOfOperation] /// What days/times during a week is this location usually open.
  final List<LocationHoursOfOperation>? hoursOfOperation;

  /// [availabilityExceptions] /// A description of when the locations opening ours are different to normal,
  /// e.g. public holiday availability. Succinctly describing all possible
  /// exceptions to normal site availability as detailed in the opening hours
  /// Times.
  final FhirString? availabilityExceptions;
  final Element? availabilityExceptionsElement;

  /// [endpoint] /// Technical endpoints providing access to services operated for the location.
  final List<Reference>? endpoint;
  @override
  Location clone() => throw UnimplementedError();
  Location copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    Coding? operationalStatus,
    FhirString? name,
    Element? nameElement,
    List<FhirString>? alias,
    List<Element>? aliasElement,
    FhirString? description,
    Element? descriptionElement,
    FhirCode? mode,
    Element? modeElement,
    List<CodeableConcept>? type,
    List<ContactPoint>? telecom,
    Address? address,
    CodeableConcept? physicalType,
    LocationPosition? position,
    Reference? managingOrganization,
    Reference? partOf,
    List<LocationHoursOfOperation>? hoursOfOperation,
    FhirString? availabilityExceptions,
    Element? availabilityExceptionsElement,
    List<Reference>? endpoint,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [LocationPosition] /// The absolute geographic location of the Location, expressed using the WGS84
/// datum (This is the same co-ordinate system used in KML).
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [longitude] /// Longitude. The value domain and the interpretation are the same as for the
  /// text of the longitude element in KML (see notes below).
  final FhirDecimal longitude;
  final Element? longitudeElement;

  /// [latitude] /// Latitude. The value domain and the interpretation are the same as for the
  /// text of the latitude element in KML (see notes below).
  final FhirDecimal latitude;
  final Element? latitudeElement;

  /// [altitude] /// Altitude. The value domain and the interpretation are the same as for the
  /// text of the altitude element in KML (see notes below).
  final FhirDecimal? altitude;
  final Element? altitudeElement;
  @override
  LocationPosition clone() => throw UnimplementedError();
  LocationPosition copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDecimal? longitude,
    Element? longitudeElement,
    FhirDecimal? latitude,
    Element? latitudeElement,
    FhirDecimal? altitude,
    Element? altitudeElement,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [LocationHoursOfOperation] /// What days/times during a week is this location usually open.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [daysOfWeek] /// Indicates which days of the week are available between the start and end
  /// Times.
  final List<FhirCode>? daysOfWeek;
  final List<Element>? daysOfWeekElement;

  /// [allDay] /// The Location is open all day.
  final FhirBoolean? allDay;
  final Element? allDayElement;

  /// [openingTime] /// Time that the Location opens.
  final FhirTime? openingTime;
  final Element? openingTimeElement;

  /// [closingTime] /// Time that the Location closes.
  final FhirTime? closingTime;
  final Element? closingTimeElement;
  @override
  LocationHoursOfOperation clone() => throw UnimplementedError();
  LocationHoursOfOperation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirCode>? daysOfWeek,
    List<Element>? daysOfWeekElement,
    FhirBoolean? allDay,
    Element? allDayElement,
    FhirTime? openingTime,
    Element? openingTimeElement,
    FhirTime? closingTime,
    Element? closingTimeElement,
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
    );
  }
}
