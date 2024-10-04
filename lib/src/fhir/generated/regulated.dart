import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class RegulatedAuthorization {
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
  final List<Reference> subject;
  final CodeableConcept type;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<CodeableConcept> region;
  final CodeableConcept status;
  final FhirDateTime statusDate;
  final PrimitiveElement statusDateElement;
  final Period validityPeriod;
  final CodeableReference indication;
  final CodeableConcept intendedUse;
  final List<CodeableConcept> basis;
  final Reference holder;
  final Reference regulator;
  final RegulatedAuthorizationCase case_;
}

@Data()
@JsonCodable()
class RegulatedAuthorizationCase {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final CodeableConcept type;
  final CodeableConcept status;
  final Period datePeriod;
  final String dateDateTime;
  final PrimitiveElement dateDateTimeElement;
  final List<RegulatedAuthorizationCase> application;
}


