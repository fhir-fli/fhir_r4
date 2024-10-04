import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class AdverseEvent {
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
  final Identifier identifier;
  final FhirCode actuality;
  final PrimitiveElement actualityElement;
  final List<CodeableConcept> category;
  final CodeableConcept event;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final FhirDateTime detected;
  final PrimitiveElement detectedElement;
  final FhirDateTime recordedDate;
  final PrimitiveElement recordedDateElement;
  final List<Reference> resultingCondition;
  final Reference location;
  final CodeableConcept seriousness;
  final CodeableConcept severity;
  final CodeableConcept outcome;
  final Reference recorder;
  final List<Reference> contributor;
  final List<AdverseEventSuspectEntity> suspectEntity;
  final List<Reference> subjectMedicalHistory;
  final List<Reference> referenceDocument;
  final List<Reference> study;
}

@Data()
@JsonCodable()
class AdverseEventSuspectEntity {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference instance;
  final List<AdverseEventCausality> causality;
}

@Data()
@JsonCodable()
class AdverseEventCausality {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept assessment;
  final String productRelatedness;
  final PrimitiveElement productRelatednessElement;
  final Reference author;
  final CodeableConcept method;
}


