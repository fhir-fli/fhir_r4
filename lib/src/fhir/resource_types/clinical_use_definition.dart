import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ClinicalUseDefinition extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode type;
  final Element? typeElement;
  final List<CodeableConcept>? category;
  final List<Reference>? subject;
  final CodeableConcept? status;
  final BackboneElement? contraindication;
  final List<BackboneElement>? otherTherapy;
  final BackboneElement? indication;
  final BackboneElement? interaction;
  final List<BackboneElement>? interactant;
  final List<Reference>? population;
  final BackboneElement? undesirableEffect;
  final BackboneElement? warning;

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
    this.otherTherapy,
    this.indication,
    this.interaction,
    this.interactant,
    this.population,
    this.undesirableEffect,
    this.warning,
  }) : super(resourceType: R4ResourceType.ClinicalUseDefinition);

@override
ClinicalUseDefinition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionContraindication extends BackboneElement {
  final CodeableReference? diseaseSymptomProcedure;
  final CodeableReference? diseaseStatus;
  final List<CodeableReference>? comorbidity;
  final List<Reference>? indication;

  ClinicalUseDefinitionContraindication({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.indication,
  });

@override
ClinicalUseDefinitionContraindication clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionOtherTherapy extends BackboneElement {
  final CodeableConcept relationshipType;
  final CodeableReference therapy;

  ClinicalUseDefinitionOtherTherapy({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationshipType,
    required this.therapy,
  });

@override
ClinicalUseDefinitionOtherTherapy clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionIndication extends BackboneElement {
  final CodeableReference? diseaseSymptomProcedure;
  final CodeableReference? diseaseStatus;
  final List<CodeableReference>? comorbidity;
  final CodeableReference? intendedEffect;
  final Range? durationRange;
  final FhirString? durationFhirString;
  final Element? durationFhirStringElement;
  final List<Reference>? undesirableEffect;
  final List<dynamic>? otherTherapy;

  ClinicalUseDefinitionIndication({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.intendedEffect,
    this.durationRange,
    this.durationFhirString,
this.durationFhirStringElement,
    this.undesirableEffect,
    this.otherTherapy,
  });

@override
ClinicalUseDefinitionIndication clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionInteraction extends BackboneElement {
  final CodeableConcept? type;
  final CodeableReference? effect;
  final CodeableConcept? incidence;
  final List<CodeableConcept>? management;

  ClinicalUseDefinitionInteraction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.effect,
    this.incidence,
    this.management,
  });

@override
ClinicalUseDefinitionInteraction clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionInteractant extends BackboneElement {
  final Reference itemReference;
  final CodeableConcept itemCodeableConcept;

  ClinicalUseDefinitionInteractant({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemReference,
    required this.itemCodeableConcept,
  });

@override
ClinicalUseDefinitionInteractant clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionUndesirableEffect extends BackboneElement {
  final CodeableReference? symptomConditionEffect;
  final CodeableConcept? classification;
  final CodeableConcept? frequencyOfOccurrence;

  ClinicalUseDefinitionUndesirableEffect({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.symptomConditionEffect,
    this.classification,
    this.frequencyOfOccurrence,
  });

@override
ClinicalUseDefinitionUndesirableEffect clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClinicalUseDefinitionWarning extends BackboneElement {
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final CodeableConcept? code;

  ClinicalUseDefinitionWarning({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
this.descriptionElement,
    this.code,
  });

@override
ClinicalUseDefinitionWarning clone() => throw UnimplementedError();
}
