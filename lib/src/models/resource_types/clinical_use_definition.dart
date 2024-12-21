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
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: ClinicalUseDefinitionType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subject: json['subject'] != null
          ? (json['subject'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: json['status'] != null
          ? CodeableConcept.fromJson(
              json['status'] as Map<String, dynamic>,
            )
          : null,
      contraindication: json['contraindication'] != null
          ? ClinicalUseDefinitionContraindication.fromJson(
              json['contraindication'] as Map<String, dynamic>,
            )
          : null,
      indication: json['indication'] != null
          ? ClinicalUseDefinitionIndication.fromJson(
              json['indication'] as Map<String, dynamic>,
            )
          : null,
      interaction: json['interaction'] != null
          ? ClinicalUseDefinitionInteraction.fromJson(
              json['interaction'] as Map<String, dynamic>,
            )
          : null,
      population: json['population'] != null
          ? (json['population'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      undesirableEffect: json['undesirableEffect'] != null
          ? ClinicalUseDefinitionUndesirableEffect.fromJson(
              json['undesirableEffect'] as Map<String, dynamic>,
            )
          : null,
      warning: json['warning'] != null
          ? ClinicalUseDefinitionWarning.fromJson(
              json['warning'] as Map<String, dynamic>,
            )
          : null,
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    if (category != null && category!.isNotEmpty) {
      json['category'] = category!.map((e) => e.toJson()).toList();
    }

    if (subject != null && subject!.isNotEmpty) {
      json['subject'] = subject!.map((e) => e.toJson()).toList();
    }

    if (status != null) {
      json['status'] = status!.toJson();
    }

    if (contraindication != null) {
      json['contraindication'] = contraindication!.toJson();
    }

    if (indication != null) {
      json['indication'] = indication!.toJson();
    }

    if (interaction != null) {
      json['interaction'] = interaction!.toJson();
    }

    if (population != null && population!.isNotEmpty) {
      json['population'] = population!.map((e) => e.toJson()).toList();
    }

    if (undesirableEffect != null) {
      json['undesirableEffect'] = undesirableEffect!.toJson();
    }

    if (warning != null) {
      json['warning'] = warning!.toJson();
    }

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
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      diseaseSymptomProcedure: json['diseaseSymptomProcedure'] != null
          ? CodeableReference.fromJson(
              json['diseaseSymptomProcedure'] as Map<String, dynamic>,
            )
          : null,
      diseaseStatus: json['diseaseStatus'] != null
          ? CodeableReference.fromJson(
              json['diseaseStatus'] as Map<String, dynamic>,
            )
          : null,
      comorbidity: json['comorbidity'] != null
          ? (json['comorbidity'] as List<dynamic>)
              .map<CodeableReference>(
                (v) => CodeableReference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      indication: json['indication'] != null
          ? (json['indication'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      otherTherapy: json['otherTherapy'] != null
          ? (json['otherTherapy'] as List<dynamic>)
              .map<ClinicalUseDefinitionOtherTherapy>(
                (v) => ClinicalUseDefinitionOtherTherapy.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (diseaseSymptomProcedure != null) {
      json['diseaseSymptomProcedure'] = diseaseSymptomProcedure!.toJson();
    }

    if (diseaseStatus != null) {
      json['diseaseStatus'] = diseaseStatus!.toJson();
    }

    if (comorbidity != null && comorbidity!.isNotEmpty) {
      json['comorbidity'] = comorbidity!.map((e) => e.toJson()).toList();
    }

    if (indication != null && indication!.isNotEmpty) {
      json['indication'] = indication!.map((e) => e.toJson()).toList();
    }

    if (otherTherapy != null && otherTherapy!.isNotEmpty) {
      json['otherTherapy'] = otherTherapy!.map((e) => e.toJson()).toList();
    }

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
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relationshipType: CodeableConcept.fromJson(
        json['relationshipType'] as Map<String, dynamic>,
      ),
      therapy: CodeableReference.fromJson(
        json['therapy'] as Map<String, dynamic>,
      ),
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['relationshipType'] = relationshipType.toJson();

    json['therapy'] = therapy.toJson();

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
    this.durationXClinicalUseDefinitionIndication,
    this.undesirableEffect,
    this.otherTherapy,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionIndication.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalUseDefinitionIndication(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      diseaseSymptomProcedure: json['diseaseSymptomProcedure'] != null
          ? CodeableReference.fromJson(
              json['diseaseSymptomProcedure'] as Map<String, dynamic>,
            )
          : null,
      diseaseStatus: json['diseaseStatus'] != null
          ? CodeableReference.fromJson(
              json['diseaseStatus'] as Map<String, dynamic>,
            )
          : null,
      comorbidity: json['comorbidity'] != null
          ? (json['comorbidity'] as List<dynamic>)
              .map<CodeableReference>(
                (v) => CodeableReference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      intendedEffect: json['intendedEffect'] != null
          ? CodeableReference.fromJson(
              json['intendedEffect'] as Map<String, dynamic>,
            )
          : null,
      durationXClinicalUseDefinitionIndication: json['durationRange'] != null ||
              json['_durationRange'] != null
          ? Range.fromJson({
              'value': json['durationRange'],
              '_value': json['_durationRange'],
            })
          : json['durationString'] != null || json['_durationString'] != null
              ? FhirString.fromJson({
                  'value': json['durationString'],
                  '_value': json['_durationString'],
                })
              : null,
      undesirableEffect: json['undesirableEffect'] != null
          ? (json['undesirableEffect'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      otherTherapy: json['otherTherapy'] != null
          ? (json['otherTherapy'] as List<dynamic>)
              .map<ClinicalUseDefinitionOtherTherapy>(
                (v) => ClinicalUseDefinitionOtherTherapy.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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

  /// [durationXClinicalUseDefinitionIndication]
  /// Timing or duration information, that may be associated with use with
  /// the indicated condition e.g. Adult patients suffering from myocardial
  /// infarction (from a few days until less than 35 days), ischaemic stroke
  /// (from 7 days until less than 6 months).
  final DurationXClinicalUseDefinitionIndication?
      durationXClinicalUseDefinitionIndication;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (diseaseSymptomProcedure != null) {
      json['diseaseSymptomProcedure'] = diseaseSymptomProcedure!.toJson();
    }

    if (diseaseStatus != null) {
      json['diseaseStatus'] = diseaseStatus!.toJson();
    }

    if (comorbidity != null && comorbidity!.isNotEmpty) {
      json['comorbidity'] = comorbidity!.map((e) => e.toJson()).toList();
    }

    if (intendedEffect != null) {
      json['intendedEffect'] = intendedEffect!.toJson();
    }

    if (durationXClinicalUseDefinitionIndication != null) {
      json['durationXClinicalUseDefinitionIndication'] =
          durationXClinicalUseDefinitionIndication!.toJson();
    }

    if (undesirableEffect != null && undesirableEffect!.isNotEmpty) {
      json['undesirableEffect'] =
          undesirableEffect!.map((e) => e.toJson()).toList();
    }

    if (otherTherapy != null && otherTherapy!.isNotEmpty) {
      json['otherTherapy'] = otherTherapy!.map((e) => e.toJson()).toList();
    }

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
    DurationXClinicalUseDefinitionIndication?
        durationXClinicalUseDefinitionIndication,
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
      durationXClinicalUseDefinitionIndication:
          durationXClinicalUseDefinitionIndication ??
              this.durationXClinicalUseDefinitionIndication,
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
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      interactant: json['interactant'] != null
          ? (json['interactant'] as List<dynamic>)
              .map<ClinicalUseDefinitionInteractant>(
                (v) => ClinicalUseDefinitionInteractant.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      effect: json['effect'] != null
          ? CodeableReference.fromJson(
              json['effect'] as Map<String, dynamic>,
            )
          : null,
      incidence: json['incidence'] != null
          ? CodeableConcept.fromJson(
              json['incidence'] as Map<String, dynamic>,
            )
          : null,
      management: json['management'] != null
          ? (json['management'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (interactant != null && interactant!.isNotEmpty) {
      json['interactant'] = interactant!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (effect != null) {
      json['effect'] = effect!.toJson();
    }

    if (incidence != null) {
      json['incidence'] = incidence!.toJson();
    }

    if (management != null && management!.isNotEmpty) {
      json['management'] = management!.map((e) => e.toJson()).toList();
    }

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
    required this.itemXClinicalUseDefinitionInteractant,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionInteractant.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalUseDefinitionInteractant(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      itemXClinicalUseDefinitionInteractant:
          json['itemReference'] != null || json['_itemReference'] != null
              ? Reference.fromJson({
                  'value': json['itemReference'],
                  '_value': json['_itemReference'],
                })
              : CodeableConcept.fromJson(json: json['itemCodeableConcept']),
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

  /// [itemXClinicalUseDefinitionInteractant]
  /// The specific medication, food or laboratory test that interacts.
  final ItemXClinicalUseDefinitionInteractant
      itemXClinicalUseDefinitionInteractant;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['itemXClinicalUseDefinitionInteractant'] =
        itemXClinicalUseDefinitionInteractant.toJson();

    return json;
  }

  @override
  ClinicalUseDefinitionInteractant clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionInteractant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ItemXClinicalUseDefinitionInteractant?
        itemXClinicalUseDefinitionInteractant,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ClinicalUseDefinitionInteractant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemXClinicalUseDefinitionInteractant:
          itemXClinicalUseDefinitionInteractant ??
              this.itemXClinicalUseDefinitionInteractant,
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
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      symptomConditionEffect: json['symptomConditionEffect'] != null
          ? CodeableReference.fromJson(
              json['symptomConditionEffect'] as Map<String, dynamic>,
            )
          : null,
      classification: json['classification'] != null
          ? CodeableConcept.fromJson(
              json['classification'] as Map<String, dynamic>,
            )
          : null,
      frequencyOfOccurrence: json['frequencyOfOccurrence'] != null
          ? CodeableConcept.fromJson(
              json['frequencyOfOccurrence'] as Map<String, dynamic>,
            )
          : null,
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (symptomConditionEffect != null) {
      json['symptomConditionEffect'] = symptomConditionEffect!.toJson();
    }

    if (classification != null) {
      json['classification'] = classification!.toJson();
    }

    if (frequencyOfOccurrence != null) {
      json['frequencyOfOccurrence'] = frequencyOfOccurrence!.toJson();
    }

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
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('description', description);
    if (code != null) {
      json['code'] = code!.toJson();
    }

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
