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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final Coding operationalStatus;
  final String name;
  final PrimitiveElement Name;
  final List<String> alias;
  final List<PrimitiveElement> Alias;
  final String description;
  final PrimitiveElement Description;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final List<CodeableConcept> type;
  final List<ContactPoint> telecom;
  final Address address;
  final CodeableConcept physicalType;
  final LocationPosition position;
  final Reference managingOrganization;
  final Reference partOf;
  final List<LocationHoursOfOperation> hoursOfOperation;
  final String availabilityExceptions;
  final PrimitiveElement AvailabilityExceptions;
  final List<Reference> endpoint;
}

@Data()
@JsonCodable()
class LocationPosition {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirDecimal longitude;
  final PrimitiveElement Longitude;
  final FhirDecimal latitude;
  final PrimitiveElement Latitude;
  final FhirDecimal altitude;
  final PrimitiveElement Altitude;
}

@Data()
@JsonCodable()
class LocationHoursOfOperation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<FhirCode> daysOfWeek;
  final List<PrimitiveElement> DaysOfWeek;
  final FhirBoolean allDay;
  final PrimitiveElement AllDay;
  final FhirTime openingTime;
  final PrimitiveElement OpeningTime;
  final FhirTime closingTime;
  final PrimitiveElement ClosingTime;
}


