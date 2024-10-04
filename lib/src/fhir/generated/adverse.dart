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
  const AdverseEvent({
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
    required this.actuality,
    required this.actualityElement,
    required this.category,
    required this.event,
    required this.subject,
    required this.encounter,
    required this.date,
    required this.dateElement,
    required this.detected,
    required this.detectedElement,
    required this.recordedDate,
    required this.recordedDateElement,
    required this.resultingCondition,
    required this.location,
    required this.seriousness,
    required this.severity,
    required this.outcome,
    required this.recorder,
    required this.contributor,
    required this.suspectEntity,
    required this.subjectMedicalHistory,
    required this.referenceDocument,
    required this.study,
  });
}

@Data()
@JsonCodable()
class AdverseEventSuspectEntity {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference instance;
  final List<AdverseEventCausality> causality;
  const AdverseEventSuspectEntity({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.instance,
    required this.causality,
  });
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
  const AdverseEventCausality({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.assessment,
    required this.productRelatedness,
    required this.productRelatednessElement,
    required this.author,
    required this.method,
  });
}


