import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ClinicalUseDefinition extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? type;
  final Element? typeElement;
  final List<CodeableConcept>? category;
  final List<Reference>? subject;
  final CodeableConcept? status;
  final ClinicalUseDefinitionContraindication? contraindication;
  final ClinicalUseDefinitionIndication? indication;
  final ClinicalUseDefinitionInteraction? interaction;
  final List<Reference>? population;
  final ClinicalUseDefinitionUndesirableEffect? undesirableEffect;
  final ClinicalUseDefinitionWarning? warning;

  ClinicalUseDefinition({
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
    this.type,
    this.typeElement,
    this.category,
    this.subject,
    this.status,
    this.contraindication,
    this.indication,
    this.interaction,
    this.population,
    this.undesirableEffect,
    this.warning,
  }): super(resourceType: R4ResourceType.ClinicalUseDefinition);

@override
ClinicalUseDefinition clone() => this;

}


@Data()
@JsonCodable()
class ClinicalUseDefinitionContraindication {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableReference? diseaseSymptomProcedure;
  final CodeableReference? diseaseStatus;
  final List<CodeableReference>? comorbidity;
  final List<Reference>? indication;
  final List<ClinicalUseDefinitionOtherTherapy>? otherTherapy;

  ClinicalUseDefinitionContraindication({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.indication,
    this.otherTherapy,
  });

}


@Data()
@JsonCodable()
class ClinicalUseDefinitionOtherTherapy {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept relationshipType;
  final CodeableReference therapy;

  ClinicalUseDefinitionOtherTherapy({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.relationshipType,
    required this.therapy,
  });

}


@Data()
@JsonCodable()
class ClinicalUseDefinitionIndication {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableReference? diseaseSymptomProcedure;
  final CodeableReference? diseaseStatus;
  final List<CodeableReference>? comorbidity;
  final CodeableReference? intendedEffect;
  final Range? durationRange;
  final FhirString? durationString;
  final Element? durationStringElement;
  final List<Reference>? undesirableEffect;
  final List<ClinicalUseDefinitionOtherTherapy>? otherTherapy;

  ClinicalUseDefinitionIndication({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.intendedEffect,
    this.durationRange,
    this.durationString,
    this.durationStringElement,
    this.undesirableEffect,
    this.otherTherapy,
  });

}


@Data()
@JsonCodable()
class ClinicalUseDefinitionInteraction {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<ClinicalUseDefinitionInteractant>? interactant;
  final CodeableConcept? type;
  final CodeableReference? effect;
  final CodeableConcept? incidence;
  final List<CodeableConcept>? management;

  ClinicalUseDefinitionInteraction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.interactant,
    this.type,
    this.effect,
    this.incidence,
    this.management,
  });

}


@Data()
@JsonCodable()
class ClinicalUseDefinitionInteractant {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference? itemReference;
  final CodeableConcept? itemCodeableConcept;

  ClinicalUseDefinitionInteractant({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.itemReference,
    this.itemCodeableConcept,
  });

}


@Data()
@JsonCodable()
class ClinicalUseDefinitionUndesirableEffect {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableReference? symptomConditionEffect;
  final CodeableConcept? classification;
  final CodeableConcept? frequencyOfOccurrence;

  ClinicalUseDefinitionUndesirableEffect({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.symptomConditionEffect,
    this.classification,
    this.frequencyOfOccurrence,
  });

}


@Data()
@JsonCodable()
class ClinicalUseDefinitionWarning {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final CodeableConcept? code;

  ClinicalUseDefinitionWarning({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.code,
  });

}



