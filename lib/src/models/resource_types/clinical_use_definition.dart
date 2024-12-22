import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ClinicalUseDefinition]
/// A single issue - either an indication, contraindication, interaction or
/// an undesirable effect for a medicinal product, medication, device or
/// procedure.
class ClinicalUseDefinition extends DomainResource {
  /// Primary constructor for
  /// [ClinicalUseDefinition]

  const ClinicalUseDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.type,
    this.category,
    this.subject,
    this.status,
    this.contraindication,
    this.indication,
    this.interaction,
    this.population,
    this.undesirableEffect,
    this.warning,
  }) : super(
          resourceType: R4ResourceType.ClinicalUseDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalUseDefinition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<ClinicalUseDefinitionType>(
        json,
        'type',
        ClinicalUseDefinitionType.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      subject: (json['subject'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
      ),
      contraindication:
          JsonParser.parseObject<ClinicalUseDefinitionContraindication>(
        json,
        'contraindication',
        ClinicalUseDefinitionContraindication.fromJson,
      ),
      indication: JsonParser.parseObject<ClinicalUseDefinitionIndication>(
        json,
        'indication',
        ClinicalUseDefinitionIndication.fromJson,
      ),
      interaction: JsonParser.parseObject<ClinicalUseDefinitionInteraction>(
        json,
        'interaction',
        ClinicalUseDefinitionInteraction.fromJson,
      ),
      population: (json['population'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      undesirableEffect:
          JsonParser.parseObject<ClinicalUseDefinitionUndesirableEffect>(
        json,
        'undesirableEffect',
        ClinicalUseDefinitionUndesirableEffect.fromJson,
      ),
      warning: JsonParser.parseObject<ClinicalUseDefinitionWarning>(
        json,
        'warning',
        ClinicalUseDefinitionWarning.fromJson,
      ),
    );
  }

  /// Deserialize [ClinicalUseDefinition]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinition';

  /// [identifier]
  /// Business identifier for this issue.
  final List<Identifier>? identifier;

  /// [type]
  /// indication | contraindication | interaction | undesirable-effect |
  /// warning.
  final ClinicalUseDefinitionType type;

  /// [category]
  /// A categorisation of the issue, primarily for dividing warnings into
  /// subject heading areas such as "Pregnancy and Lactation", "Overdose",
  /// "Effects on Ability to Drive and Use Machines".
  final List<CodeableConcept>? category;

  /// [subject]
  /// The medication or procedure for which this is an indication.
  final List<Reference>? subject;

  /// [status]
  /// Whether this is a current issue or one that has been retired etc.
  final CodeableConcept? status;

  /// [contraindication]
  /// Specifics for when this is a contraindication.
  final ClinicalUseDefinitionContraindication? contraindication;

  /// [indication]
  /// Specifics for when this is an indication.
  final ClinicalUseDefinitionIndication? indication;

  /// [interaction]
  /// Specifics for when this is an interaction.
  final ClinicalUseDefinitionInteraction? interaction;

  /// [population]
  /// The population group to which this applies.
  final List<Reference>? population;

  /// [undesirableEffect]
  /// Describe the possible undesirable effects (negative outcomes) from the
  /// use of the medicinal product as treatment.
  final ClinicalUseDefinitionUndesirableEffect? undesirableEffect;

  /// [warning]
  /// A critical piece of information about environmental, health or physical
  /// risks or hazards that serve as caution to the user. For example 'Do not
  /// operate heavy machinery', 'May cause drowsiness', or 'Get medical
  /// advice/attention if you feel unwell'.
  final ClinicalUseDefinitionWarning? warning;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('type', type);
    addField('category', category);
    addField('subject', subject);
    addField('status', status);
    addField('contraindication', contraindication);
    addField('indication', indication);
    addField('interaction', interaction);
    addField('population', population);
    addField('undesirableEffect', undesirableEffect);
    addField('warning', warning);
    return json;
  }

  @override
  ClinicalUseDefinition clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ClinicalUseDefinitionType? type,
    List<CodeableConcept>? category,
    List<Reference>? subject,
    CodeableConcept? status,
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
  }) {
    return ClinicalUseDefinition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
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

/// [ClinicalUseDefinitionContraindication]
/// Specifics for when this is a contraindication.
class ClinicalUseDefinitionContraindication extends BackboneElement {
  /// Primary constructor for
  /// [ClinicalUseDefinitionContraindication]

  const ClinicalUseDefinitionContraindication({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.indication,
    this.otherTherapy,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionContraindication.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalUseDefinitionContraindication(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      diseaseSymptomProcedure: JsonParser.parseObject<CodeableReference>(
        json,
        'diseaseSymptomProcedure',
        CodeableReference.fromJson,
      ),
      diseaseStatus: JsonParser.parseObject<CodeableReference>(
        json,
        'diseaseStatus',
        CodeableReference.fromJson,
      ),
      comorbidity: (json['comorbidity'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      indication: (json['indication'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      otherTherapy: (json['otherTherapy'] as List<dynamic>?)
          ?.map<ClinicalUseDefinitionOtherTherapy>(
            (v) => ClinicalUseDefinitionOtherTherapy.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClinicalUseDefinitionContraindication]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinitionContraindication.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinitionContraindication.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinitionContraindication.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinitionContraindication '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinitionContraindication]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionContraindication.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinitionContraindication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinitionContraindication';

  /// [diseaseSymptomProcedure]
  /// The situation that is being documented as contraindicating against this
  /// item.
  final CodeableReference? diseaseSymptomProcedure;

  /// [diseaseStatus]
  /// The status of the disease or symptom for the contraindication, for
  /// example "chronic" or "metastatic".
  final CodeableReference? diseaseStatus;

  /// [comorbidity]
  /// A comorbidity (concurrent condition) or coinfection.
  final List<CodeableReference>? comorbidity;

  /// [indication]
  /// The indication which this is a contraidication for.
  final List<Reference>? indication;

  /// [otherTherapy]
  /// Information about the use of the medicinal product in relation to other
  /// therapies described as part of the contraindication.
  final List<ClinicalUseDefinitionOtherTherapy>? otherTherapy;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('diseaseSymptomProcedure', diseaseSymptomProcedure);
    addField('diseaseStatus', diseaseStatus);
    addField('comorbidity', comorbidity);
    addField('indication', indication);
    addField('otherTherapy', otherTherapy);
    return json;
  }

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

/// [ClinicalUseDefinitionOtherTherapy]
/// Information about the use of the medicinal product in relation to other
/// therapies described as part of the contraindication.
class ClinicalUseDefinitionOtherTherapy extends BackboneElement {
  /// Primary constructor for
  /// [ClinicalUseDefinitionOtherTherapy]

  const ClinicalUseDefinitionOtherTherapy({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationshipType,
    required this.therapy,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionOtherTherapy.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalUseDefinitionOtherTherapy(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      relationshipType: JsonParser.parseObject<CodeableConcept>(
        json,
        'relationshipType',
        CodeableConcept.fromJson,
      )!,
      therapy: JsonParser.parseObject<CodeableReference>(
        json,
        'therapy',
        CodeableReference.fromJson,
      )!,
    );
  }

  /// Deserialize [ClinicalUseDefinitionOtherTherapy]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinitionOtherTherapy.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinitionOtherTherapy.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinitionOtherTherapy.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinitionOtherTherapy '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinitionOtherTherapy]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionOtherTherapy.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinitionOtherTherapy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinitionOtherTherapy';

  /// [relationshipType]
  /// The type of relationship between the medicinal product indication or
  /// contraindication and another therapy.
  final CodeableConcept relationshipType;

  /// [therapy]
  /// Reference to a specific medication (active substance, medicinal product
  /// or class of products) as part of an indication or contraindication.
  final CodeableReference therapy;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('relationshipType', relationshipType);
    addField('therapy', therapy);
    return json;
  }

  @override
  ClinicalUseDefinitionOtherTherapy clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionOtherTherapy copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? relationshipType,
    CodeableReference? therapy,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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

/// [ClinicalUseDefinitionIndication]
/// Specifics for when this is an indication.
class ClinicalUseDefinitionIndication extends BackboneElement {
  /// Primary constructor for
  /// [ClinicalUseDefinitionIndication]

  const ClinicalUseDefinitionIndication({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.intendedEffect,
    this.durationX,
    this.undesirableEffect,
    this.otherTherapy,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionIndication.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalUseDefinitionIndication(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      diseaseSymptomProcedure: JsonParser.parseObject<CodeableReference>(
        json,
        'diseaseSymptomProcedure',
        CodeableReference.fromJson,
      ),
      diseaseStatus: JsonParser.parseObject<CodeableReference>(
        json,
        'diseaseStatus',
        CodeableReference.fromJson,
      ),
      comorbidity: (json['comorbidity'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      intendedEffect: JsonParser.parseObject<CodeableReference>(
        json,
        'intendedEffect',
        CodeableReference.fromJson,
      ),
      durationX:
          JsonParser.parsePolymorphic<DurationXClinicalUseDefinitionIndication>(
              json, {
        'durationRange': Range.fromJson,
        'durationString': FhirString.fromJson,
      }),
      undesirableEffect: (json['undesirableEffect'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      otherTherapy: (json['otherTherapy'] as List<dynamic>?)
          ?.map<ClinicalUseDefinitionOtherTherapy>(
            (v) => ClinicalUseDefinitionOtherTherapy.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClinicalUseDefinitionIndication]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinitionIndication.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinitionIndication.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinitionIndication.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinitionIndication '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinitionIndication]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionIndication.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinitionIndication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinitionIndication';

  /// [diseaseSymptomProcedure]
  /// The situation that is being documented as an indicaton for this item.
  final CodeableReference? diseaseSymptomProcedure;

  /// [diseaseStatus]
  /// The status of the disease or symptom for the indication, for example
  /// "chronic" or "metastatic".
  final CodeableReference? diseaseStatus;

  /// [comorbidity]
  /// A comorbidity (concurrent condition) or coinfection as part of the
  /// indication.
  final List<CodeableReference>? comorbidity;

  /// [intendedEffect]
  /// The intended effect, aim or strategy to be achieved.
  final CodeableReference? intendedEffect;

  /// [durationX]
  /// Timing or duration information, that may be associated with use with
  /// the indicated condition e.g. Adult patients suffering from myocardial
  /// infarction (from a few days until less than 35 days), ischaemic stroke
  /// (from 7 days until less than 6 months).
  final DurationXClinicalUseDefinitionIndication? durationX;

  /// [undesirableEffect]
  /// An unwanted side effect or negative outcome that may happen if you use
  /// the drug (or other subject of this resource) for this indication.
  final List<Reference>? undesirableEffect;

  /// [otherTherapy]
  /// Information about the use of the medicinal product in relation to other
  /// therapies described as part of the indication.
  final List<ClinicalUseDefinitionOtherTherapy>? otherTherapy;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('diseaseSymptomProcedure', diseaseSymptomProcedure);
    addField('diseaseStatus', diseaseStatus);
    addField('comorbidity', comorbidity);
    addField('intendedEffect', intendedEffect);
    if (durationX != null) {
      final fhirType = durationX!.fhirType;
      addField('duration${fhirType.capitalize()}', durationX);
    }

    addField('undesirableEffect', undesirableEffect);
    addField('otherTherapy', otherTherapy);
    return json;
  }

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
    CodeableReference? intendedEffect,
    DurationXClinicalUseDefinitionIndication? durationX,
    List<Reference>? undesirableEffect,
    List<ClinicalUseDefinitionOtherTherapy>? otherTherapy,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      durationX: durationX ?? this.durationX,
      undesirableEffect: undesirableEffect ?? this.undesirableEffect,
      otherTherapy: otherTherapy ?? this.otherTherapy,
    );
  }
}

/// [ClinicalUseDefinitionInteraction]
/// Specifics for when this is an interaction.
class ClinicalUseDefinitionInteraction extends BackboneElement {
  /// Primary constructor for
  /// [ClinicalUseDefinitionInteraction]

  const ClinicalUseDefinitionInteraction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.interactant,
    this.type,
    this.effect,
    this.incidence,
    this.management,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionInteraction.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalUseDefinitionInteraction(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      interactant: (json['interactant'] as List<dynamic>?)
          ?.map<ClinicalUseDefinitionInteractant>(
            (v) => ClinicalUseDefinitionInteractant.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      effect: JsonParser.parseObject<CodeableReference>(
        json,
        'effect',
        CodeableReference.fromJson,
      ),
      incidence: JsonParser.parseObject<CodeableConcept>(
        json,
        'incidence',
        CodeableConcept.fromJson,
      ),
      management: (json['management'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClinicalUseDefinitionInteraction]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinitionInteraction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinitionInteraction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinitionInteraction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinitionInteraction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinitionInteraction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionInteraction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinitionInteraction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinitionInteraction';

  /// [interactant]
  /// The specific medication, food, substance or laboratory test that
  /// interacts.
  final List<ClinicalUseDefinitionInteractant>? interactant;

  /// [type]
  /// The type of the interaction e.g. drug-drug interaction, drug-food
  /// interaction, drug-lab test interaction.
  final CodeableConcept? type;

  /// [effect]
  /// The effect of the interaction, for example "reduced gastric absorption
  /// of primary medication".
  final CodeableReference? effect;

  /// [incidence]
  /// The incidence of the interaction, e.g. theoretical, observed.
  final CodeableConcept? incidence;

  /// [management]
  /// Actions for managing the interaction.
  final List<CodeableConcept>? management;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('interactant', interactant);
    addField('type', type);
    addField('effect', effect);
    addField('incidence', incidence);
    addField('management', management);
    return json;
  }

  @override
  ClinicalUseDefinitionInteraction clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionInteraction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ClinicalUseDefinitionInteractant>? interactant,
    CodeableConcept? type,
    CodeableReference? effect,
    CodeableConcept? incidence,
    List<CodeableConcept>? management,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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

/// [ClinicalUseDefinitionInteractant]
/// The specific medication, food, substance or laboratory test that
/// interacts.
class ClinicalUseDefinitionInteractant extends BackboneElement {
  /// Primary constructor for
  /// [ClinicalUseDefinitionInteractant]

  const ClinicalUseDefinitionInteractant({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionInteractant.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalUseDefinitionInteractant(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      itemX: JsonParser.parsePolymorphic<ItemXClinicalUseDefinitionInteractant>(
          json, {
        'itemReference': Reference.fromJson,
        'itemCodeableConcept': CodeableConcept.fromJson,
      })!,
    );
  }

  /// Deserialize [ClinicalUseDefinitionInteractant]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinitionInteractant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinitionInteractant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinitionInteractant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinitionInteractant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinitionInteractant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionInteractant.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinitionInteractant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinitionInteractant';

  /// [itemX]
  /// The specific medication, food or laboratory test that interacts.
  final ItemXClinicalUseDefinitionInteractant itemX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    final itemXFhirType = itemX.fhirType;
    addField('item${itemXFhirType.capitalize()}', itemX);

    return json;
  }

  @override
  ClinicalUseDefinitionInteractant clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionInteractant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ItemXClinicalUseDefinitionInteractant? itemX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ClinicalUseDefinitionInteractant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemX: itemX ?? this.itemX,
    );
  }
}

/// [ClinicalUseDefinitionUndesirableEffect]
/// Describe the possible undesirable effects (negative outcomes) from the
/// use of the medicinal product as treatment.
class ClinicalUseDefinitionUndesirableEffect extends BackboneElement {
  /// Primary constructor for
  /// [ClinicalUseDefinitionUndesirableEffect]

  const ClinicalUseDefinitionUndesirableEffect({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.symptomConditionEffect,
    this.classification,
    this.frequencyOfOccurrence,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionUndesirableEffect.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalUseDefinitionUndesirableEffect(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      symptomConditionEffect: JsonParser.parseObject<CodeableReference>(
        json,
        'symptomConditionEffect',
        CodeableReference.fromJson,
      ),
      classification: JsonParser.parseObject<CodeableConcept>(
        json,
        'classification',
        CodeableConcept.fromJson,
      ),
      frequencyOfOccurrence: JsonParser.parseObject<CodeableConcept>(
        json,
        'frequencyOfOccurrence',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [ClinicalUseDefinitionUndesirableEffect]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinitionUndesirableEffect.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinitionUndesirableEffect.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinitionUndesirableEffect.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinitionUndesirableEffect '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinitionUndesirableEffect]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionUndesirableEffect.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinitionUndesirableEffect.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinitionUndesirableEffect';

  /// [symptomConditionEffect]
  /// The situation in which the undesirable effect may manifest.
  final CodeableReference? symptomConditionEffect;

  /// [classification]
  /// High level classification of the effect.
  final CodeableConcept? classification;

  /// [frequencyOfOccurrence]
  /// How often the effect is seen.
  final CodeableConcept? frequencyOfOccurrence;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('symptomConditionEffect', symptomConditionEffect);
    addField('classification', classification);
    addField('frequencyOfOccurrence', frequencyOfOccurrence);
    return json;
  }

  @override
  ClinicalUseDefinitionUndesirableEffect clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionUndesirableEffect copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? symptomConditionEffect,
    CodeableConcept? classification,
    CodeableConcept? frequencyOfOccurrence,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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

/// [ClinicalUseDefinitionWarning]
/// A critical piece of information about environmental, health or physical
/// risks or hazards that serve as caution to the user. For example 'Do not
/// operate heavy machinery', 'May cause drowsiness', or 'Get medical
/// advice/attention if you feel unwell'.
class ClinicalUseDefinitionWarning extends BackboneElement {
  /// Primary constructor for
  /// [ClinicalUseDefinitionWarning]

  const ClinicalUseDefinitionWarning({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.code,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionWarning.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalUseDefinitionWarning(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [ClinicalUseDefinitionWarning]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinitionWarning.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinitionWarning.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinitionWarning.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinitionWarning '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinitionWarning]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionWarning.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalUseDefinitionWarning.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinitionWarning';

  /// [description]
  /// A textual definition of this warning, with formatting.
  final FhirMarkdown? description;

  /// [code]
  /// A coded or unformatted textual definition of this warning.
  final CodeableConcept? code;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('description', description);
    addField('code', code);
    return json;
  }

  @override
  ClinicalUseDefinitionWarning clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionWarning copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    CodeableConcept? code,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ClinicalUseDefinitionWarning(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      code: code ?? this.code,
    );
  }
}
