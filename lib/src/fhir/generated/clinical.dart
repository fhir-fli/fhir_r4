import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ClinicalImpression {
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
  final CodeableConcept statusReason;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement descriptionElement;
  final Reference subject;
  final Reference encounter;
  final String effectiveDateTime;
  final PrimitiveElement effectiveDateTimeElement;
  final Period effectivePeriod;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final Reference assessor;
  final Reference previous;
  final List<Reference> problem;
  final List<ClinicalImpressionInvestigation> investigation;
  final List<FhirUri> protocol;
  final List<PrimitiveElement> protocolElement;
  final String summary;
  final PrimitiveElement summaryElement;
  final List<ClinicalImpressionFinding> finding;
  final List<CodeableConcept> prognosisCodeableConcept;
  final List<Reference> prognosisReference;
  final List<Reference> supportingInfo;
  final List<Annotation> note;
  const ClinicalImpression({
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
    required this.statusReason,
    required this.code,
    required this.description,
    required this.descriptionElement,
    required this.subject,
    required this.encounter,
    required this.effectiveDateTime,
    required this.effectiveDateTimeElement,
    required this.effectivePeriod,
    required this.date,
    required this.dateElement,
    required this.assessor,
    required this.previous,
    required this.problem,
    required this.investigation,
    required this.protocol,
    required this.protocolElement,
    required this.summary,
    required this.summaryElement,
    required this.finding,
    required this.prognosisCodeableConcept,
    required this.prognosisReference,
    required this.supportingInfo,
    required this.note,
  });
}

@Data()
@JsonCodable()
class ClinicalImpressionInvestigation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final List<Reference> item;
  const ClinicalImpressionInvestigation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.item,
  });
}

@Data()
@JsonCodable()
class ClinicalImpressionFinding {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept itemCodeableConcept;
  final Reference itemReference;
  final String basis;
  final PrimitiveElement basisElement;
  const ClinicalImpressionFinding({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.itemCodeableConcept,
    required this.itemReference,
    required this.basis,
    required this.basisElement,
  });
}

@Data()
@JsonCodable()
class ClinicalUseDefinition {
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
  final FhirCode type;
  final PrimitiveElement typeElement;
  final List<CodeableConcept> category;
  final List<Reference> subject;
  final CodeableConcept status;
  final ClinicalUseDefinitionContraindication contraindication;
  final ClinicalUseDefinitionIndication indication;
  final ClinicalUseDefinitionInteraction interaction;
  final List<Reference> population;
  final ClinicalUseDefinitionUndesirableEffect undesirableEffect;
  final ClinicalUseDefinitionWarning warning;
  const ClinicalUseDefinition({
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
    required this.type,
    required this.typeElement,
    required this.category,
    required this.subject,
    required this.status,
    required this.contraindication,
    required this.indication,
    required this.interaction,
    required this.population,
    required this.undesirableEffect,
    required this.warning,
  });
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionContraindication {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableReference diseaseSymptomProcedure;
  final CodeableReference diseaseStatus;
  final List<CodeableReference> comorbidity;
  final List<Reference> indication;
  final List<ClinicalUseDefinitionOtherTherapy> otherTherapy;
  const ClinicalUseDefinitionContraindication({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.diseaseSymptomProcedure,
    required this.diseaseStatus,
    required this.comorbidity,
    required this.indication,
    required this.otherTherapy,
  });
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionOtherTherapy {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept relationshipType;
  final CodeableReference therapy;
  const ClinicalUseDefinitionOtherTherapy({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.relationshipType,
    required this.therapy,
  });
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionIndication {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableReference diseaseSymptomProcedure;
  final CodeableReference diseaseStatus;
  final List<CodeableReference> comorbidity;
  final CodeableReference intendedEffect;
  final Range durationRange;
  final String durationString;
  final PrimitiveElement durationStringElement;
  final List<Reference> undesirableEffect;
  final List<ClinicalUseDefinitionOtherTherapy> otherTherapy;
  const ClinicalUseDefinitionIndication({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.diseaseSymptomProcedure,
    required this.diseaseStatus,
    required this.comorbidity,
    required this.intendedEffect,
    required this.durationRange,
    required this.durationString,
    required this.durationStringElement,
    required this.undesirableEffect,
    required this.otherTherapy,
  });
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionInteraction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<ClinicalUseDefinitionInteractant> interactant;
  final CodeableConcept type;
  final CodeableReference effect;
  final CodeableConcept incidence;
  final List<CodeableConcept> management;
  const ClinicalUseDefinitionInteraction({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.interactant,
    required this.type,
    required this.effect,
    required this.incidence,
    required this.management,
  });
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionInteractant {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference itemReference;
  final CodeableConcept itemCodeableConcept;
  const ClinicalUseDefinitionInteractant({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.itemReference,
    required this.itemCodeableConcept,
  });
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionUndesirableEffect {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableReference symptomConditionEffect;
  final CodeableConcept classification;
  final CodeableConcept frequencyOfOccurrence;
  const ClinicalUseDefinitionUndesirableEffect({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.symptomConditionEffect,
    required this.classification,
    required this.frequencyOfOccurrence,
  });
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionWarning {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final CodeableConcept code;
  const ClinicalUseDefinitionWarning({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.code,
  });
}


