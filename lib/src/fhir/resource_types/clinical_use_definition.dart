import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ClinicalUseDefinition]
/// A single issue - either an indication, contraindication, interaction or
/// an undesirable effect for a medicinal product, medication, device or
/// procedure.
class ClinicalUseDefinition extends DomainResource {
  /// Primary constructor for [ClinicalUseDefinition]

  ClinicalUseDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.ClinicalUseDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinition.fromJson(Map<String, dynamic> json) {
    return ClinicalUseDefinition(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
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

  /// Deserialize [ClinicalUseDefinition] from a [String]
  /// or [YamlMap] object
  factory ClinicalUseDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalUseDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClinicalUseDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClinicalUseDefinition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClinicalUseDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinition.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    final fieldJson9 = type.toJson();
    json['type'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_type'] = fieldJson9['_value'];
    }

    if (category != null && category!.isNotEmpty) {
      final fieldJson10 = category!.map((e) => e.toJson()).toList();
      json['category'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_category'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    if (subject != null && subject!.isNotEmpty) {
      final fieldJson11 = subject!.map((e) => e.toJson()).toList();
      json['subject'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_subject'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (status != null) {
      final fieldJson12 = status!.toJson();
      json['status'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_status'] = fieldJson12['_value'];
      }
    }

    if (contraindication != null) {
      final fieldJson13 = contraindication!.toJson();
      json['contraindication'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_contraindication'] = fieldJson13['_value'];
      }
    }

    if (indication != null) {
      final fieldJson14 = indication!.toJson();
      json['indication'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_indication'] = fieldJson14['_value'];
      }
    }

    if (interaction != null) {
      final fieldJson15 = interaction!.toJson();
      json['interaction'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_interaction'] = fieldJson15['_value'];
      }
    }

    if (population != null && population!.isNotEmpty) {
      final fieldJson16 = population!.map((e) => e.toJson()).toList();
      json['population'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_population'] = fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (undesirableEffect != null) {
      final fieldJson17 = undesirableEffect!.toJson();
      json['undesirableEffect'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_undesirableEffect'] = fieldJson17['_value'];
      }
    }

    if (warning != null) {
      final fieldJson18 = warning!.toJson();
      json['warning'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_warning'] = fieldJson18['_value'];
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClinicalUseDefinitionContraindication]
/// Specifics for when this is a contraindication.
class ClinicalUseDefinitionContraindication extends BackboneElement {
  /// Primary constructor for [ClinicalUseDefinitionContraindication]

  ClinicalUseDefinitionContraindication({
    super.id,
    this.extension_,
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionContraindication.fromJson(
      Map<String, dynamic> json) {
    return ClinicalUseDefinitionContraindication(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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

  /// Deserialize [ClinicalUseDefinitionContraindication] from a [String]
  /// or [YamlMap] object
  factory ClinicalUseDefinitionContraindication.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionContraindication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClinicalUseDefinitionContraindication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClinicalUseDefinitionContraindication cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClinicalUseDefinitionContraindication]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionContraindication.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (diseaseSymptomProcedure != null) {
      final fieldJson3 = diseaseSymptomProcedure!.toJson();
      json['diseaseSymptomProcedure'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_diseaseSymptomProcedure'] = fieldJson3['_value'];
      }
    }

    if (diseaseStatus != null) {
      final fieldJson4 = diseaseStatus!.toJson();
      json['diseaseStatus'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_diseaseStatus'] = fieldJson4['_value'];
      }
    }

    if (comorbidity != null && comorbidity!.isNotEmpty) {
      final fieldJson5 = comorbidity!.map((e) => e.toJson()).toList();
      json['comorbidity'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_comorbidity'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (indication != null && indication!.isNotEmpty) {
      final fieldJson6 = indication!.map((e) => e.toJson()).toList();
      json['indication'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_indication'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (otherTherapy != null && otherTherapy!.isNotEmpty) {
      final fieldJson7 = otherTherapy!.map((e) => e.toJson()).toList();
      json['otherTherapy'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_otherTherapy'] = fieldJson7.map((e) => e['_value']).toList();
      }
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
}

/// [ClinicalUseDefinitionOtherTherapy]
/// Information about the use of the medicinal product in relation to other
/// therapies described as part of the contraindication.
class ClinicalUseDefinitionOtherTherapy extends BackboneElement {
  /// Primary constructor for [ClinicalUseDefinitionOtherTherapy]

  ClinicalUseDefinitionOtherTherapy({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.relationshipType,
    required this.therapy,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionOtherTherapy.fromJson(
      Map<String, dynamic> json) {
    return ClinicalUseDefinitionOtherTherapy(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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

  /// Deserialize [ClinicalUseDefinitionOtherTherapy] from a [String]
  /// or [YamlMap] object
  factory ClinicalUseDefinitionOtherTherapy.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionOtherTherapy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClinicalUseDefinitionOtherTherapy.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClinicalUseDefinitionOtherTherapy cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClinicalUseDefinitionOtherTherapy]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionOtherTherapy.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = relationshipType.toJson();
    json['relationshipType'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_relationshipType'] = fieldJson3['_value'];
    }

    final fieldJson4 = therapy.toJson();
    json['therapy'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_therapy'] = fieldJson4['_value'];
    }

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
}

/// [ClinicalUseDefinitionIndication]
/// Specifics for when this is an indication.
class ClinicalUseDefinitionIndication extends BackboneElement {
  /// Primary constructor for [ClinicalUseDefinitionIndication]

  ClinicalUseDefinitionIndication({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.intendedEffect,
    this.durationRange,
    this.durationString,
    this.undesirableEffect,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionIndication.fromJson(Map<String, dynamic> json) {
    return ClinicalUseDefinitionIndication(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      durationRange: json['durationRange'] != null
          ? Range.fromJson(
              json['durationRange'] as Map<String, dynamic>,
            )
          : null,
      durationString: json['durationString'] != null
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
    );
  }

  /// Deserialize [ClinicalUseDefinitionIndication] from a [String]
  /// or [YamlMap] object
  factory ClinicalUseDefinitionIndication.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionIndication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClinicalUseDefinitionIndication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClinicalUseDefinitionIndication cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClinicalUseDefinitionIndication]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionIndication.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [durationRange]
  /// Timing or duration information, that may be associated with use with
  /// the indicated condition e.g. Adult patients suffering from myocardial
  /// infarction (from a few days until less than 35 days), ischaemic stroke
  /// (from 7 days until less than 6 months).
  final Range? durationRange;

  /// [durationString]
  /// Timing or duration information, that may be associated with use with
  /// the indicated condition e.g. Adult patients suffering from myocardial
  /// infarction (from a few days until less than 35 days), ischaemic stroke
  /// (from 7 days until less than 6 months).
  final FhirString? durationString;

  /// [undesirableEffect]
  /// An unwanted side effect or negative outcome that may happen if you use
  /// the drug (or other subject of this resource) for this indication.
  final List<Reference>? undesirableEffect;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (diseaseSymptomProcedure != null) {
      final fieldJson3 = diseaseSymptomProcedure!.toJson();
      json['diseaseSymptomProcedure'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_diseaseSymptomProcedure'] = fieldJson3['_value'];
      }
    }

    if (diseaseStatus != null) {
      final fieldJson4 = diseaseStatus!.toJson();
      json['diseaseStatus'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_diseaseStatus'] = fieldJson4['_value'];
      }
    }

    if (comorbidity != null && comorbidity!.isNotEmpty) {
      final fieldJson5 = comorbidity!.map((e) => e.toJson()).toList();
      json['comorbidity'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_comorbidity'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (intendedEffect != null) {
      final fieldJson6 = intendedEffect!.toJson();
      json['intendedEffect'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_intendedEffect'] = fieldJson6['_value'];
      }
    }

    if (durationRange != null) {
      final fieldJson7 = durationRange!.toJson();
      json['durationRange'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_durationRange'] = fieldJson7['_value'];
      }
    }

    if (durationString != null) {
      final fieldJson8 = durationString!.toJson();
      json['durationString'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_durationString'] = fieldJson8['_value'];
      }
    }

    if (undesirableEffect != null && undesirableEffect!.isNotEmpty) {
      final fieldJson9 = undesirableEffect!.map((e) => e.toJson()).toList();
      json['undesirableEffect'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_undesirableEffect'] =
            fieldJson9.map((e) => e['_value']).toList();
      }
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
    Range? durationRange,
    FhirString? durationString,
    List<Reference>? undesirableEffect,
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
      undesirableEffect: undesirableEffect ?? this.undesirableEffect,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClinicalUseDefinitionInteraction]
/// Specifics for when this is an interaction.
class ClinicalUseDefinitionInteraction extends BackboneElement {
  /// Primary constructor for [ClinicalUseDefinitionInteraction]

  ClinicalUseDefinitionInteraction({
    super.id,
    this.extension_,
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionInteraction.fromJson(Map<String, dynamic> json) {
    return ClinicalUseDefinitionInteraction(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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

  /// Deserialize [ClinicalUseDefinitionInteraction] from a [String]
  /// or [YamlMap] object
  factory ClinicalUseDefinitionInteraction.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionInteraction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClinicalUseDefinitionInteraction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClinicalUseDefinitionInteraction cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClinicalUseDefinitionInteraction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionInteraction.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (interactant != null && interactant!.isNotEmpty) {
      final fieldJson3 = interactant!.map((e) => e.toJson()).toList();
      json['interactant'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_interactant'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (type != null) {
      final fieldJson4 = type!.toJson();
      json['type'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_type'] = fieldJson4['_value'];
      }
    }

    if (effect != null) {
      final fieldJson5 = effect!.toJson();
      json['effect'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_effect'] = fieldJson5['_value'];
      }
    }

    if (incidence != null) {
      final fieldJson6 = incidence!.toJson();
      json['incidence'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_incidence'] = fieldJson6['_value'];
      }
    }

    if (management != null && management!.isNotEmpty) {
      final fieldJson7 = management!.map((e) => e.toJson()).toList();
      json['management'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_management'] = fieldJson7.map((e) => e['_value']).toList();
      }
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
}

/// [ClinicalUseDefinitionInteractant]
/// The specific medication, food, substance or laboratory test that
/// interacts.
class ClinicalUseDefinitionInteractant extends BackboneElement {
  /// Primary constructor for [ClinicalUseDefinitionInteractant]

  ClinicalUseDefinitionInteractant({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.itemReference,
    this.itemCodeableConcept,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionInteractant.fromJson(Map<String, dynamic> json) {
    return ClinicalUseDefinitionInteractant(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      itemReference: json['itemReference'] != null
          ? Reference.fromJson(
              json['itemReference'] as Map<String, dynamic>,
            )
          : null,
      itemCodeableConcept: json['itemCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['itemCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ClinicalUseDefinitionInteractant] from a [String]
  /// or [YamlMap] object
  factory ClinicalUseDefinitionInteractant.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionInteractant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClinicalUseDefinitionInteractant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClinicalUseDefinitionInteractant cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClinicalUseDefinitionInteractant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionInteractant.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [itemReference]
  /// The specific medication, food or laboratory test that interacts.
  final Reference? itemReference;

  /// [itemCodeableConcept]
  /// The specific medication, food or laboratory test that interacts.
  final CodeableConcept? itemCodeableConcept;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (itemReference != null) {
      final fieldJson3 = itemReference!.toJson();
      json['itemReference'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_itemReference'] = fieldJson3['_value'];
      }
    }

    if (itemCodeableConcept != null) {
      final fieldJson4 = itemCodeableConcept!.toJson();
      json['itemCodeableConcept'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_itemCodeableConcept'] = fieldJson4['_value'];
      }
    }

    return json;
  }

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
}

/// [ClinicalUseDefinitionUndesirableEffect]
/// Describe the possible undesirable effects (negative outcomes) from the
/// use of the medicinal product as treatment.
class ClinicalUseDefinitionUndesirableEffect extends BackboneElement {
  /// Primary constructor for [ClinicalUseDefinitionUndesirableEffect]

  ClinicalUseDefinitionUndesirableEffect({
    super.id,
    this.extension_,
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionUndesirableEffect.fromJson(
      Map<String, dynamic> json) {
    return ClinicalUseDefinitionUndesirableEffect(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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

  /// Deserialize [ClinicalUseDefinitionUndesirableEffect] from a [String]
  /// or [YamlMap] object
  factory ClinicalUseDefinitionUndesirableEffect.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionUndesirableEffect.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClinicalUseDefinitionUndesirableEffect.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClinicalUseDefinitionUndesirableEffect cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClinicalUseDefinitionUndesirableEffect]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionUndesirableEffect.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (symptomConditionEffect != null) {
      final fieldJson3 = symptomConditionEffect!.toJson();
      json['symptomConditionEffect'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_symptomConditionEffect'] = fieldJson3['_value'];
      }
    }

    if (classification != null) {
      final fieldJson4 = classification!.toJson();
      json['classification'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_classification'] = fieldJson4['_value'];
      }
    }

    if (frequencyOfOccurrence != null) {
      final fieldJson5 = frequencyOfOccurrence!.toJson();
      json['frequencyOfOccurrence'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_frequencyOfOccurrence'] = fieldJson5['_value'];
      }
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
}

/// [ClinicalUseDefinitionWarning]
/// A critical piece of information about environmental, health or physical
/// risks or hazards that serve as caution to the user. For example 'Do not
/// operate heavy machinery', 'May cause drowsiness', or 'Get medical
/// advice/attention if you feel unwell'.
class ClinicalUseDefinitionWarning extends BackboneElement {
  /// Primary constructor for [ClinicalUseDefinitionWarning]

  ClinicalUseDefinitionWarning({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.description,
    this.code,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionWarning.fromJson(Map<String, dynamic> json) {
    return ClinicalUseDefinitionWarning(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      description: json['description'] != null
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

  /// Deserialize [ClinicalUseDefinitionWarning] from a [String]
  /// or [YamlMap] object
  factory ClinicalUseDefinitionWarning.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalUseDefinitionWarning.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClinicalUseDefinitionWarning.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClinicalUseDefinitionWarning cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClinicalUseDefinitionWarning]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionWarning.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [description]
  /// A textual definition of this warning, with formatting.
  final FhirMarkdown? description;

  /// [code]
  /// A coded or unformatted textual definition of this warning.
  final CodeableConcept? code;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (description != null) {
      final fieldJson3 = description!.toJson();
      json['description'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_description'] = fieldJson3['_value'];
      }
    }

    if (code != null) {
      final fieldJson4 = code!.toJson();
      json['code'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_code'] = fieldJson4['_value'];
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClinicalUseDefinitionWarning(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      code: code ?? this.code,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
