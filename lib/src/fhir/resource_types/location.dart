import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Location extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final Coding? operationalStatus;
  final FhirString? name;
  final Element? nameElement;
  final List<FhirString>? alias;
  final List<Element>? aliasElement;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirCode? mode;
  final Element? modeElement;
  final List<CodeableConcept>? type;
  final List<ContactPoint>? telecom;
  final Address? address;
  final CodeableConcept? physicalType;
  final LocationPosition? position;
  final Reference? managingOrganization;
  final Reference? partOf;
  final List<LocationHoursOfOperation>? hoursOfOperation;
  final FhirString? availabilityExceptions;
  final Element? availabilityExceptionsElement;
  final List<Reference>? endpoint;

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

@override
Location clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class LocationPosition extends BackboneElement {
  final FhirDecimal longitude;
  final Element? longitudeElement;
  final FhirDecimal latitude;
  final Element? latitudeElement;
  final FhirDecimal? altitude;
  final Element? altitudeElement;

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

@override
LocationPosition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class LocationHoursOfOperation extends BackboneElement {
  final List<FhirCode>? daysOfWeek;
  final List<Element>? daysOfWeekElement;
  final FhirBoolean? allDay;
  final Element? allDayElement;
  final FhirTime? openingTime;
  final Element? openingTimeElement;
  final FhirTime? closingTime;
  final Element? closingTimeElement;

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

@override
LocationHoursOfOperation clone() => throw UnimplementedError();
}

