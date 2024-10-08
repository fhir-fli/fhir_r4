import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'clinical_use_definition.g.dart';

/// [ClinicalUseDefinition] /// A single issue - either an indication, contraindication, interaction or an
/// undesirable effect for a medicinal product, medication, device or
/// procedure.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.ClinicalUseDefinition,
            fhirType: 'ClinicalUseDefinition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifier for this issue.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [type] /// indication | contraindication | interaction | undesirable-effect | warning.
  @JsonKey(name: 'type')
  final ClinicalUseDefinitionType type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [category] /// A categorisation of the issue, primarily for dividing warnings into subject
  /// heading areas such as "Pregnancy and Lactation", "Overdose", "Effects on
  /// Ability to Drive and Use Machines".
  @JsonKey(name: 'category')
  final List<ClinicalUseDefinitionCategory>? category;

  /// [subject] /// The medication or procedure for which this is an indication.
  @JsonKey(name: 'subject')
  final List<Reference>? subject;

  /// [status] /// Whether this is a current issue or one that has been retired etc.
  @JsonKey(name: 'status')
  final PublicationStatus? status;

  /// [contraindication] /// Specifics for when this is a contraindication.
  @JsonKey(name: 'contraindication')
  final ClinicalUseDefinitionContraindication? contraindication;

  /// [indication] /// Specifics for when this is an indication.
  @JsonKey(name: 'indication')
  final ClinicalUseDefinitionIndication? indication;

  /// [interaction] /// Specifics for when this is an interaction.
  @JsonKey(name: 'interaction')
  final ClinicalUseDefinitionInteraction? interaction;

  /// [population] /// The population group to which this applies.
  @JsonKey(name: 'population')
  final List<Reference>? population;

  /// [undesirableEffect] /// Describe the possible undesirable effects (negative outcomes) from the use
  /// of the medicinal product as treatment.
  @JsonKey(name: 'undesirableEffect')
  final ClinicalUseDefinitionUndesirableEffect? undesirableEffect;

  /// [warning] /// A critical piece of information about environmental, health or physical
  /// risks or hazards that serve as caution to the user. For example 'Do not
  /// operate heavy machinery', 'May cause drowsiness', or 'Get medical
  /// advice/attention if you feel unwell'.
  @JsonKey(name: 'warning')
  final ClinicalUseDefinitionWarning? warning;
  factory ClinicalUseDefinition.fromJson(Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClinicalUseDefinitionToJson(this);

  @override
  ClinicalUseDefinition clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ClinicalUseDefinitionType? type,
    Element? typeElement,
    List<ClinicalUseDefinitionCategory>? category,
    List<Reference>? subject,
    PublicationStatus? status,
    ClinicalUseDefinitionContraindication? contraindication,
    ClinicalUseDefinitionIndication? indication,
    ClinicalUseDefinitionInteraction? interaction,
    List<Reference>? population,
    ClinicalUseDefinitionUndesirableEffect? undesirableEffect,
    ClinicalUseDefinitionWarning? warning,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClinicalUseDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalUseDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClinicalUseDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClinicalUseDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClinicalUseDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClinicalUseDefinitionContraindication] /// Specifics for when this is a contraindication.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ClinicalUseDefinitionContraindication');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [diseaseSymptomProcedure] /// The situation that is being documented as contraindicating against this
  /// item.
  @JsonKey(name: 'diseaseSymptomProcedure')
  final CodeableReference? diseaseSymptomProcedure;

  /// [diseaseStatus] /// The status of the disease or symptom for the contraindication, for example
  /// "chronic" or "metastatic".
  @JsonKey(name: 'diseaseStatus')
  final CodeableReference? diseaseStatus;

  /// [comorbidity] /// A comorbidity (concurrent condition) or coinfection.
  @JsonKey(name: 'comorbidity')
  final List<CodeableReference>? comorbidity;

  /// [indication] /// The indication which this is a contraidication for.
  @JsonKey(name: 'indication')
  final List<Reference>? indication;

  /// [otherTherapy] /// Information about the use of the medicinal product in relation to other
  /// therapies described as part of the contraindication.
  @JsonKey(name: 'otherTherapy')
  final List<ClinicalUseDefinitionOtherTherapy>? otherTherapy;
  factory ClinicalUseDefinitionContraindication.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionContraindicationFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ClinicalUseDefinitionContraindicationToJson(this);

  @override
  ClinicalUseDefinitionContraindication clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionContraindication copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? diseaseSymptomProcedure,
    CodeableReference? diseaseStatus,
    List<CodeableReference>? comorbidity,
    List<Reference>? indication,
    List<ClinicalUseDefinitionOtherTherapy>? otherTherapy,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClinicalUseDefinitionContraindication.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionContraindication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionContraindication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClinicalUseDefinitionContraindication cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClinicalUseDefinitionContraindication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinitionContraindication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClinicalUseDefinitionOtherTherapy] /// Information about the use of the medicinal product in relation to other
/// therapies described as part of the contraindication.
@JsonSerializable()
class ClinicalUseDefinitionOtherTherapy extends BackboneElement {
  ClinicalUseDefinitionOtherTherapy({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationshipType,
    required this.therapy,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ClinicalUseDefinitionOtherTherapy');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [relationshipType] /// The type of relationship between the medicinal product indication or
  /// contraindication and another therapy.
  @JsonKey(name: 'relationshipType')
  final TherapyRelationshipType relationshipType;

  /// [therapy] /// Reference to a specific medication (active substance, medicinal product or
  /// class of products) as part of an indication or contraindication.
  @JsonKey(name: 'therapy')
  final CodeableReference therapy;
  factory ClinicalUseDefinitionOtherTherapy.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionOtherTherapyFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ClinicalUseDefinitionOtherTherapyToJson(this);

  @override
  ClinicalUseDefinitionOtherTherapy clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionOtherTherapy copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TherapyRelationshipType? relationshipType,
    CodeableReference? therapy,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClinicalUseDefinitionOtherTherapy(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relationshipType: relationshipType ?? this.relationshipType,
      therapy: therapy ?? this.therapy,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClinicalUseDefinitionOtherTherapy.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionOtherTherapy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionOtherTherapy.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClinicalUseDefinitionOtherTherapy cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClinicalUseDefinitionOtherTherapy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinitionOtherTherapy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClinicalUseDefinitionIndication] /// Specifics for when this is an indication.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ClinicalUseDefinitionIndication');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [diseaseSymptomProcedure] /// The situation that is being documented as an indicaton for this item.
  @JsonKey(name: 'diseaseSymptomProcedure')
  final CodeableReference? diseaseSymptomProcedure;

  /// [diseaseStatus] /// The status of the disease or symptom for the indication, for example
  /// "chronic" or "metastatic".
  @JsonKey(name: 'diseaseStatus')
  final CodeableReference? diseaseStatus;

  /// [comorbidity] /// A comorbidity (concurrent condition) or coinfection as part of the
  /// indication.
  @JsonKey(name: 'comorbidity')
  final List<CodeableReference>? comorbidity;

  /// [intendedEffect] /// The intended effect, aim or strategy to be achieved.
  @JsonKey(name: 'intendedEffect')
  final ProductIntendedUse? intendedEffect;

  /// [durationRange] /// Timing or duration information, that may be associated with use with the
  /// indicated condition e.g. Adult patients suffering from myocardial
  /// infarction (from a few days until less than 35 days), ischaemic stroke
  /// (from 7 days until less than 6 months).
  @JsonKey(name: 'durationRange')
  final Range? durationRange;

  /// [durationString] /// Timing or duration information, that may be associated with use with the
  /// indicated condition e.g. Adult patients suffering from myocardial
  /// infarction (from a few days until less than 35 days), ischaemic stroke
  /// (from 7 days until less than 6 months).
  @JsonKey(name: 'durationString')
  final FhirString? durationString;
  @JsonKey(name: '_durationString')
  final Element? durationStringElement;

  /// [undesirableEffect] /// An unwanted side effect or negative outcome that may happen if you use the
  /// drug (or other subject of this resource) for this indication.
  @JsonKey(name: 'undesirableEffect')
  final List<Reference>? undesirableEffect;

  /// [otherTherapy] /// Information about the use of the medicinal product in relation to other
  /// therapies described as part of the indication.
  @JsonKey(name: 'otherTherapy')
  final List<ClinicalUseDefinitionOtherTherapy>? otherTherapy;
  factory ClinicalUseDefinitionIndication.fromJson(Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionIndicationFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ClinicalUseDefinitionIndicationToJson(this);

  @override
  ClinicalUseDefinitionIndication clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionIndication copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? diseaseSymptomProcedure,
    CodeableReference? diseaseStatus,
    List<CodeableReference>? comorbidity,
    ProductIntendedUse? intendedEffect,
    Range? durationRange,
    FhirString? durationString,
    Element? durationStringElement,
    List<Reference>? undesirableEffect,
    List<ClinicalUseDefinitionOtherTherapy>? otherTherapy,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClinicalUseDefinitionIndication.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionIndication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionIndication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClinicalUseDefinitionIndication cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClinicalUseDefinitionIndication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinitionIndication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClinicalUseDefinitionInteraction] /// Specifics for when this is an interaction.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ClinicalUseDefinitionInteraction');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [interactant] /// The specific medication, food, substance or laboratory test that interacts.
  @JsonKey(name: 'interactant')
  final List<ClinicalUseDefinitionInteractant>? interactant;

  /// [type] /// The type of the interaction e.g. drug-drug interaction, drug-food
  /// interaction, drug-lab test interaction.
  @JsonKey(name: 'type')
  final InteractionType? type;

  /// [effect] /// The effect of the interaction, for example "reduced gastric absorption of
  /// primary medication".
  @JsonKey(name: 'effect')
  final CodeableReference? effect;

  /// [incidence] /// The incidence of the interaction, e.g. theoretical, observed.
  @JsonKey(name: 'incidence')
  final InteractionIncidence? incidence;

  /// [management] /// Actions for managing the interaction.
  @JsonKey(name: 'management')
  final List<CodeableConcept>? management;
  factory ClinicalUseDefinitionInteraction.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionInteractionFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ClinicalUseDefinitionInteractionToJson(this);

  @override
  ClinicalUseDefinitionInteraction clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionInteraction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ClinicalUseDefinitionInteractant>? interactant,
    InteractionType? type,
    CodeableReference? effect,
    InteractionIncidence? incidence,
    List<CodeableConcept>? management,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClinicalUseDefinitionInteraction.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionInteraction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionInteraction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClinicalUseDefinitionInteraction cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClinicalUseDefinitionInteraction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinitionInteraction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClinicalUseDefinitionInteractant] /// The specific medication, food, substance or laboratory test that interacts.
@JsonSerializable()
class ClinicalUseDefinitionInteractant extends BackboneElement {
  ClinicalUseDefinitionInteractant({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemReference,
    required this.itemCodeableConcept,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ClinicalUseDefinitionInteractant');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemReference] /// The specific medication, food or laboratory test that interacts.
  @JsonKey(name: 'itemReference')
  final Reference itemReference;

  /// [itemCodeableConcept] /// The specific medication, food or laboratory test that interacts.
  @JsonKey(name: 'itemCodeableConcept')
  final CodeableConcept itemCodeableConcept;
  factory ClinicalUseDefinitionInteractant.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionInteractantFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ClinicalUseDefinitionInteractantToJson(this);

  @override
  ClinicalUseDefinitionInteractant clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionInteractant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? itemReference,
    CodeableConcept? itemCodeableConcept,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClinicalUseDefinitionInteractant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemReference: itemReference ?? this.itemReference,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClinicalUseDefinitionInteractant.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionInteractant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionInteractant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClinicalUseDefinitionInteractant cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClinicalUseDefinitionInteractant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinitionInteractant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClinicalUseDefinitionUndesirableEffect] /// Describe the possible undesirable effects (negative outcomes) from the use
/// of the medicinal product as treatment.
@JsonSerializable()
class ClinicalUseDefinitionUndesirableEffect extends BackboneElement {
  ClinicalUseDefinitionUndesirableEffect({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.symptomConditionEffect,
    this.classification,
    this.frequencyOfOccurrence,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ClinicalUseDefinitionUndesirableEffect');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [symptomConditionEffect] /// The situation in which the undesirable effect may manifest.
  @JsonKey(name: 'symptomConditionEffect')
  final CodeableReference? symptomConditionEffect;

  /// [classification] /// High level classification of the effect.
  @JsonKey(name: 'classification')
  final CodeableConcept? classification;

  /// [frequencyOfOccurrence] /// How often the effect is seen.
  @JsonKey(name: 'frequencyOfOccurrence')
  final UndesirablEffectFrequency? frequencyOfOccurrence;
  factory ClinicalUseDefinitionUndesirableEffect.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionUndesirableEffectFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ClinicalUseDefinitionUndesirableEffectToJson(this);

  @override
  ClinicalUseDefinitionUndesirableEffect clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionUndesirableEffect copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? symptomConditionEffect,
    CodeableConcept? classification,
    UndesirablEffectFrequency? frequencyOfOccurrence,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClinicalUseDefinitionUndesirableEffect.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionUndesirableEffect.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionUndesirableEffect.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClinicalUseDefinitionUndesirableEffect cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClinicalUseDefinitionUndesirableEffect.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinitionUndesirableEffect.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClinicalUseDefinitionWarning] /// A critical piece of information about environmental, health or physical
/// risks or hazards that serve as caution to the user. For example 'Do not
/// operate heavy machinery', 'May cause drowsiness', or 'Get medical
/// advice/attention if you feel unwell'.
@JsonSerializable()
class ClinicalUseDefinitionWarning extends BackboneElement {
  ClinicalUseDefinitionWarning({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.code,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ClinicalUseDefinitionWarning');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// A textual definition of this warning, with formatting.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [code] /// A coded or unformatted textual definition of this warning.
  @JsonKey(name: 'code')
  final WarningType? code;
  factory ClinicalUseDefinitionWarning.fromJson(Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionWarningFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClinicalUseDefinitionWarningToJson(this);

  @override
  ClinicalUseDefinitionWarning clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionWarning copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    Element? descriptionElement,
    WarningType? code,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClinicalUseDefinitionWarning(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      code: code ?? this.code,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClinicalUseDefinitionWarning.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalUseDefinitionWarning.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionWarning.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClinicalUseDefinitionWarning cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClinicalUseDefinitionWarning.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinitionWarning.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
