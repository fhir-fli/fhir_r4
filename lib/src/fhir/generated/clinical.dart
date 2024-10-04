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
  final CodeableConcept statusReason;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement Description;
  final Reference subject;
  final Reference encounter;
  final String effectiveDateTime;
  final PrimitiveElement EffectiveDateTime;
  final Period effectivePeriod;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final Reference assessor;
  final Reference previous;
  final List<Reference> problem;
  final List<ClinicalImpressionInvestigation> investigation;
  final List<FhirUri> protocol;
  final List<PrimitiveElement> Protocol;
  final String summary;
  final PrimitiveElement Summary;
  final List<ClinicalImpressionFinding> finding;
  final List<CodeableConcept> prognosisCodeableConcept;
  final List<Reference> prognosisReference;
  final List<Reference> supportingInfo;
  final List<Annotation> note;
}

@Data()
@JsonCodable()
class ClinicalImpressionInvestigation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final List<Reference> item;
}

@Data()
@JsonCodable()
class ClinicalImpressionFinding {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept itemCodeableConcept;
  final Reference itemReference;
  final String basis;
  final PrimitiveElement Basis;
}

@Data()
@JsonCodable()
class ClinicalUseDefinition {
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
  final FhirCode type;
  final PrimitiveElement Type;
  final List<CodeableConcept> category;
  final List<Reference> subject;
  final CodeableConcept status;
  final ClinicalUseDefinitionContraindication contraindication;
  final ClinicalUseDefinitionIndication indication;
  final ClinicalUseDefinitionInteraction interaction;
  final List<Reference> population;
  final ClinicalUseDefinitionUndesirableEffect undesirableEffect;
  final ClinicalUseDefinitionWarning warning;
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionContraindication {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableReference diseaseSymptomProcedure;
  final CodeableReference diseaseStatus;
  final List<CodeableReference> comorbidity;
  final List<Reference> indication;
  final List<ClinicalUseDefinitionOtherTherapy> otherTherapy;
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionOtherTherapy {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept relationshipType;
  final CodeableReference therapy;
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionIndication {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableReference diseaseSymptomProcedure;
  final CodeableReference diseaseStatus;
  final List<CodeableReference> comorbidity;
  final CodeableReference intendedEffect;
  final Range durationRange;
  final String durationString;
  final PrimitiveElement DurationString;
  final List<Reference> undesirableEffect;
  final List<ClinicalUseDefinitionOtherTherapy> otherTherapy;
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionInteraction {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<ClinicalUseDefinitionInteractant> interactant;
  final CodeableConcept type;
  final CodeableReference effect;
  final CodeableConcept incidence;
  final List<CodeableConcept> management;
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionInteractant {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference itemReference;
  final CodeableConcept itemCodeableConcept;
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionUndesirableEffect {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableReference symptomConditionEffect;
  final CodeableConcept classification;
  final CodeableConcept frequencyOfOccurrence;
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionWarning {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final CodeableConcept code;
}


