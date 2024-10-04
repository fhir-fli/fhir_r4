import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Location {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final Coding operationalStatus;
  final String name;
  final PrimitiveElement nameElement;
  final List<String> alias;
  final List<PrimitiveElement> aliasElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirCode mode;
  final PrimitiveElement modeElement;
  final List<CodeableConcept> type;
  final List<ContactPoint> telecom;
  final Address address;
  final CodeableConcept physicalType;
  final LocationPosition position;
  final Reference managingOrganization;
  final Reference partOf;
  final List<LocationHoursOfOperation> hoursOfOperation;
  final String availabilityExceptions;
  final PrimitiveElement availabilityExceptionsElement;
  final List<Reference> endpoint;
  const Location({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.operationalStatus,
    required this.name,
    required this.nameElement,
    required this.alias,
    required this.aliasElement,
    required this.description,
    required this.descriptionElement,
    required this.mode,
    required this.modeElement,
    required this.type,
    required this.telecom,
    required this.address,
    required this.physicalType,
    required this.position,
    required this.managingOrganization,
    required this.partOf,
    required this.hoursOfOperation,
    required this.availabilityExceptions,
    required this.availabilityExceptionsElement,
    required this.endpoint,
  });
}

@Data()
@JsonCodable()
class LocationPosition {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirDecimal longitude;
  final PrimitiveElement longitudeElement;
  final FhirDecimal latitude;
  final PrimitiveElement latitudeElement;
  final FhirDecimal altitude;
  final PrimitiveElement altitudeElement;
  const LocationPosition({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.longitude,
    required this.longitudeElement,
    required this.latitude,
    required this.latitudeElement,
    required this.altitude,
    required this.altitudeElement,
  });
}

@Data()
@JsonCodable()
class LocationHoursOfOperation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<FhirCode> daysOfWeek;
  final List<PrimitiveElement> daysOfWeekElement;
  final FhirBoolean allDay;
  final PrimitiveElement allDayElement;
  final FhirTime openingTime;
  final PrimitiveElement openingTimeElement;
  final FhirTime closingTime;
  final PrimitiveElement closingTimeElement;
  const LocationHoursOfOperation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.daysOfWeek,
    required this.daysOfWeekElement,
    required this.allDay,
    required this.allDayElement,
    required this.openingTime,
    required this.openingTimeElement,
    required this.closingTime,
    required this.closingTimeElement,
  });
}


