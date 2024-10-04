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
}


