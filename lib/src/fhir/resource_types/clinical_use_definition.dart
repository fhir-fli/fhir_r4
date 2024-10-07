import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ClinicalUseDefinition] /// A single issue - either an indication, contraindication, interaction or an
/// undesirable effect for a medicinal product, medication, device or
/// procedure.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifier for this issue.
  final List<Identifier>? identifier;

  /// [type] /// indication | contraindication | interaction | undesirable-effect | warning.
  final FhirCode type;
  final Element? typeElement;

  /// [category] /// A categorisation of the issue, primarily for dividing warnings into subject
  /// heading areas such as "Pregnancy and Lactation", "Overdose", "Effects on
  /// Ability to Drive and Use Machines".
  final List<CodeableConcept>? category;

  /// [subject] /// The medication or procedure for which this is an indication.
  final List<Reference>? subject;

  /// [status] /// Whether this is a current issue or one that has been retired etc.
  final CodeableConcept? status;

  /// [contraindication] /// Specifics for when this is a contraindication.
  final ClinicalUseDefinitionContraindication? contraindication;

  /// [indication] /// Specifics for when this is an indication.
  final ClinicalUseDefinitionIndication? indication;

  /// [interaction] /// Specifics for when this is an interaction.
  final ClinicalUseDefinitionInteraction? interaction;

  /// [population] /// The population group to which this applies.
  final List<Reference>? population;

  /// [undesirableEffect] /// Describe the possible undesirable effects (negative outcomes) from the use
  /// of the medicinal product as treatment.
  final ClinicalUseDefinitionUndesirableEffect? undesirableEffect;

  /// [warning] /// A critical piece of information about environmental, health or physical
  /// risks or hazards that serve as caution to the user. For example 'Do not
  /// operate heavy machinery', 'May cause drowsiness', or 'Get medical
  /// advice/attention if you feel unwell'.
  final ClinicalUseDefinitionWarning? warning;
  @override
  ClinicalUseDefinition clone() => throw UnimplementedError();
  ClinicalUseDefinition copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? type,
    Element? typeElement,
    List<CodeableConcept>? category,
    List<Reference>? subject,
    CodeableConcept? status,
    ClinicalUseDefinitionContraindication? contraindication,
    ClinicalUseDefinitionIndication? indication,
    ClinicalUseDefinitionInteraction? interaction,
    List<Reference>? population,
    ClinicalUseDefinitionUndesirableEffect? undesirableEffect,
    ClinicalUseDefinitionWarning? warning,
  }) {
    return ClinicalUseDefinition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      category: category ?? this.category,
      subject: subject ?? this.subject,
      status: status ?? this.status,
      contraindication: contraindication ?? this.contraindication,
      indication: indication ?? this.indication,
      interaction: interaction ?? this.interaction,
      population: population ?? this.population,
      undesirableEffect: undesirableEffect ?? this.undesirableEffect,
      warning: warning ?? this.warning,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClinicalUseDefinitionContraindication] /// Specifics for when this is a contraindication.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [diseaseSymptomProcedure] /// The situation that is being documented as contraindicating against this
  /// item.
  final CodeableReference? diseaseSymptomProcedure;

  /// [diseaseStatus] /// The status of the disease or symptom for the contraindication, for example
  /// "chronic" or "metastatic".
  final CodeableReference? diseaseStatus;

  /// [comorbidity] /// A comorbidity (concurrent condition) or coinfection.
  final List<CodeableReference>? comorbidity;

  /// [indication] /// The indication which this is a contraidication for.
  final List<Reference>? indication;

  /// [otherTherapy] /// Information about the use of the medicinal product in relation to other
  /// therapies described as part of the contraindication.
  final List<ClinicalUseDefinitionOtherTherapy>? otherTherapy;
  @override
  ClinicalUseDefinitionContraindication clone() => throw UnimplementedError();
  ClinicalUseDefinitionContraindication copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? diseaseSymptomProcedure,
    CodeableReference? diseaseStatus,
    List<CodeableReference>? comorbidity,
    List<Reference>? indication,
    List<ClinicalUseDefinitionOtherTherapy>? otherTherapy,
  }) {
    return ClinicalUseDefinitionContraindication(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      diseaseSymptomProcedure:
          diseaseSymptomProcedure ?? this.diseaseSymptomProcedure,
      diseaseStatus: diseaseStatus ?? this.diseaseStatus,
      comorbidity: comorbidity ?? this.comorbidity,
      indication: indication ?? this.indication,
      otherTherapy: otherTherapy ?? this.otherTherapy,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClinicalUseDefinitionOtherTherapy] /// Information about the use of the medicinal product in relation to other
/// therapies described as part of the contraindication.
class ClinicalUseDefinitionOtherTherapy extends BackboneElement {
  ClinicalUseDefinitionOtherTherapy({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationshipType,
    required this.therapy,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [relationshipType] /// The type of relationship between the medicinal product indication or
  /// contraindication and another therapy.
  final CodeableConcept relationshipType;

  /// [therapy] /// Reference to a specific medication (active substance, medicinal product or
  /// class of products) as part of an indication or contraindication.
  final CodeableReference therapy;
  @override
  ClinicalUseDefinitionOtherTherapy clone() => throw UnimplementedError();
  ClinicalUseDefinitionOtherTherapy copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? relationshipType,
    CodeableReference? therapy,
  }) {
    return ClinicalUseDefinitionOtherTherapy(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relationshipType: relationshipType ?? this.relationshipType,
      therapy: therapy ?? this.therapy,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClinicalUseDefinitionIndication] /// Specifics for when this is an indication.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [diseaseSymptomProcedure] /// The situation that is being documented as an indicaton for this item.
  final CodeableReference? diseaseSymptomProcedure;

  /// [diseaseStatus] /// The status of the disease or symptom for the indication, for example
  /// "chronic" or "metastatic".
  final CodeableReference? diseaseStatus;

  /// [comorbidity] /// A comorbidity (concurrent condition) or coinfection as part of the
  /// indication.
  final List<CodeableReference>? comorbidity;

  /// [intendedEffect] /// The intended effect, aim or strategy to be achieved.
  final CodeableReference? intendedEffect;

  /// [durationRange] /// Timing or duration information, that may be associated with use with the
  /// indicated condition e.g. Adult patients suffering from myocardial
  /// infarction (from a few days until less than 35 days), ischaemic stroke
  /// (from 7 days until less than 6 months).
  final Range? durationRange;

  /// [durationString] /// Timing or duration information, that may be associated with use with the
  /// indicated condition e.g. Adult patients suffering from myocardial
  /// infarction (from a few days until less than 35 days), ischaemic stroke
  /// (from 7 days until less than 6 months).
  final FhirString? durationString;
  final Element? durationStringElement;

  /// [undesirableEffect] /// An unwanted side effect or negative outcome that may happen if you use the
  /// drug (or other subject of this resource) for this indication.
  final List<Reference>? undesirableEffect;

  /// [otherTherapy] /// Information about the use of the medicinal product in relation to other
  /// therapies described as part of the indication.
  final List<ClinicalUseDefinitionOtherTherapy>? otherTherapy;
  @override
  ClinicalUseDefinitionIndication clone() => throw UnimplementedError();
  ClinicalUseDefinitionIndication copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? diseaseSymptomProcedure,
    CodeableReference? diseaseStatus,
    List<CodeableReference>? comorbidity,
    CodeableReference? intendedEffect,
    Range? durationRange,
    FhirString? durationString,
    Element? durationStringElement,
    List<Reference>? undesirableEffect,
    List<ClinicalUseDefinitionOtherTherapy>? otherTherapy,
  }) {
    return ClinicalUseDefinitionIndication(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      diseaseSymptomProcedure:
          diseaseSymptomProcedure ?? this.diseaseSymptomProcedure,
      diseaseStatus: diseaseStatus ?? this.diseaseStatus,
      comorbidity: comorbidity ?? this.comorbidity,
      intendedEffect: intendedEffect ?? this.intendedEffect,
      durationRange: durationRange ?? this.durationRange,
      durationString: durationString ?? this.durationString,
      durationStringElement:
          durationStringElement ?? this.durationStringElement,
      undesirableEffect: undesirableEffect ?? this.undesirableEffect,
      otherTherapy: otherTherapy ?? this.otherTherapy,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClinicalUseDefinitionInteraction] /// Specifics for when this is an interaction.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [interactant] /// The specific medication, food, substance or laboratory test that interacts.
  final List<ClinicalUseDefinitionInteractant>? interactant;

  /// [type] /// The type of the interaction e.g. drug-drug interaction, drug-food
  /// interaction, drug-lab test interaction.
  final CodeableConcept? type;

  /// [effect] /// The effect of the interaction, for example "reduced gastric absorption of
  /// primary medication".
  final CodeableReference? effect;

  /// [incidence] /// The incidence of the interaction, e.g. theoretical, observed.
  final CodeableConcept? incidence;

  /// [management] /// Actions for managing the interaction.
  final List<CodeableConcept>? management;
  @override
  ClinicalUseDefinitionInteraction clone() => throw UnimplementedError();
  ClinicalUseDefinitionInteraction copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ClinicalUseDefinitionInteractant>? interactant,
    CodeableConcept? type,
    CodeableReference? effect,
    CodeableConcept? incidence,
    List<CodeableConcept>? management,
  }) {
    return ClinicalUseDefinitionInteraction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      interactant: interactant ?? this.interactant,
      type: type ?? this.type,
      effect: effect ?? this.effect,
      incidence: incidence ?? this.incidence,
      management: management ?? this.management,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClinicalUseDefinitionInteractant] /// The specific medication, food, substance or laboratory test that interacts.
class ClinicalUseDefinitionInteractant extends BackboneElement {
  ClinicalUseDefinitionInteractant({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemReference,
    required this.itemCodeableConcept,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemReference] /// The specific medication, food or laboratory test that interacts.
  final Reference itemReference;

  /// [itemCodeableConcept] /// The specific medication, food or laboratory test that interacts.
  final CodeableConcept itemCodeableConcept;
  @override
  ClinicalUseDefinitionInteractant clone() => throw UnimplementedError();
  ClinicalUseDefinitionInteractant copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? itemReference,
    CodeableConcept? itemCodeableConcept,
  }) {
    return ClinicalUseDefinitionInteractant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemReference: itemReference ?? this.itemReference,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClinicalUseDefinitionUndesirableEffect] /// Describe the possible undesirable effects (negative outcomes) from the use
/// of the medicinal product as treatment.
class ClinicalUseDefinitionUndesirableEffect extends BackboneElement {
  ClinicalUseDefinitionUndesirableEffect({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.symptomConditionEffect,
    this.classification,
    this.frequencyOfOccurrence,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [symptomConditionEffect] /// The situation in which the undesirable effect may manifest.
  final CodeableReference? symptomConditionEffect;

  /// [classification] /// High level classification of the effect.
  final CodeableConcept? classification;

  /// [frequencyOfOccurrence] /// How often the effect is seen.
  final CodeableConcept? frequencyOfOccurrence;
  @override
  ClinicalUseDefinitionUndesirableEffect clone() => throw UnimplementedError();
  ClinicalUseDefinitionUndesirableEffect copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? symptomConditionEffect,
    CodeableConcept? classification,
    CodeableConcept? frequencyOfOccurrence,
  }) {
    return ClinicalUseDefinitionUndesirableEffect(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      symptomConditionEffect:
          symptomConditionEffect ?? this.symptomConditionEffect,
      classification: classification ?? this.classification,
      frequencyOfOccurrence:
          frequencyOfOccurrence ?? this.frequencyOfOccurrence,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClinicalUseDefinitionWarning] /// A critical piece of information about environmental, health or physical
/// risks or hazards that serve as caution to the user. For example 'Do not
/// operate heavy machinery', 'May cause drowsiness', or 'Get medical
/// advice/attention if you feel unwell'.
class ClinicalUseDefinitionWarning extends BackboneElement {
  ClinicalUseDefinitionWarning({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.code,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// A textual definition of this warning, with formatting.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [code] /// A coded or unformatted textual definition of this warning.
  final CodeableConcept? code;
  @override
  ClinicalUseDefinitionWarning clone() => throw UnimplementedError();
  ClinicalUseDefinitionWarning copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    Element? descriptionElement,
    CodeableConcept? code,
  }) {
    return ClinicalUseDefinitionWarning(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      code: code ?? this.code,
    );
  }
}
