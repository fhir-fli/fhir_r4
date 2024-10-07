import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class ClinicalUseDefinition extends DomainResource {
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
    required this.type,
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
  }) : super(resourceType: R4ResourceType.ClinicalUseDefinition);

  final List<Identifier>? identifier;
  final FhirCode type;
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
  @override
  ClinicalUseDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class ClinicalUseDefinitionContraindication extends BackboneElement {
  ClinicalUseDefinitionContraindication({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.indication,
    this.otherTherapy,
  });

  final CodeableReference? diseaseSymptomProcedure;
  final CodeableReference? diseaseStatus;
  final List<CodeableReference>? comorbidity;
  final List<Reference>? indication;
  final List<ClinicalUseDefinitionOtherTherapy>? otherTherapy;
  @override
  ClinicalUseDefinitionContraindication clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class ClinicalUseDefinitionOtherTherapy extends BackboneElement {
  ClinicalUseDefinitionOtherTherapy({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationshipType,
    required this.therapy,
  });

  final CodeableConcept relationshipType;
  final CodeableReference therapy;
  @override
  ClinicalUseDefinitionOtherTherapy clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class ClinicalUseDefinitionIndication extends BackboneElement {
  ClinicalUseDefinitionIndication({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  final CodeableReference? diseaseSymptomProcedure;
  final CodeableReference? diseaseStatus;
  final List<CodeableReference>? comorbidity;
  final CodeableReference? intendedEffect;
  final Range? durationRange;
  final FhirString? durationString;
  final Element? durationStringElement;
  final List<Reference>? undesirableEffect;
  final List<ClinicalUseDefinitionOtherTherapy>? otherTherapy;
  @override
  ClinicalUseDefinitionIndication clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class ClinicalUseDefinitionInteraction extends BackboneElement {
  ClinicalUseDefinitionInteraction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.interactant,
    this.type,
    this.effect,
    this.incidence,
    this.management,
  });

  final List<ClinicalUseDefinitionInteractant>? interactant;
  final CodeableConcept? type;
  final CodeableReference? effect;
  final CodeableConcept? incidence;
  final List<CodeableConcept>? management;
  @override
  ClinicalUseDefinitionInteraction clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class ClinicalUseDefinitionInteractant extends BackboneElement {
  ClinicalUseDefinitionInteractant({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemReference,
    required this.itemCodeableConcept,
  });

  final Reference itemReference;
  final CodeableConcept itemCodeableConcept;
  @override
  ClinicalUseDefinitionInteractant clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class ClinicalUseDefinitionUndesirableEffect extends BackboneElement {
  ClinicalUseDefinitionUndesirableEffect({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.symptomConditionEffect,
    this.classification,
    this.frequencyOfOccurrence,
  });

  final CodeableReference? symptomConditionEffect;
  final CodeableConcept? classification;
  final CodeableConcept? frequencyOfOccurrence;
  @override
  ClinicalUseDefinitionUndesirableEffect clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class ClinicalUseDefinitionWarning extends BackboneElement {
  ClinicalUseDefinitionWarning({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.code,
  });

  final FhirMarkdown? description;
  final Element? descriptionElement;
  final CodeableConcept? code;
  @override
  ClinicalUseDefinitionWarning clone() => throw UnimplementedError();
}
