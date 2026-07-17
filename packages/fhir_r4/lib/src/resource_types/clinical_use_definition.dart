import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'clinical_use_definition.g.dart';

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      subject: (json['subject'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'type',
      type,
    );
    addField(
      'category',
      category,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'status',
      status,
    );
    addField(
      'contraindication',
      contraindication,
    );
    addField(
      'indication',
      indication,
    );
    addField(
      'interaction',
      interaction,
    );
    addField(
      'population',
      population,
    );
    addField(
      'undesirableEffect',
      undesirableEffect,
    );
    addField(
      'warning',
      warning,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'type',
      'category',
      'subject',
      'status',
      'contraindication',
      'indication',
      'interaction',
      'population',
      'undesirableEffect',
      'warning',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'type':
        fields.add(type);
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'subject':
        if (subject != null) {
          fields.addAll(subject!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'contraindication':
        if (contraindication != null) {
          fields.add(contraindication!);
        }
      case 'indication':
        if (indication != null) {
          fields.add(indication!);
        }
      case 'interaction':
        if (interaction != null) {
          fields.add(interaction!);
        }
      case 'population':
        if (population != null) {
          fields.addAll(population!);
        }
      case 'undesirableEffect':
        if (undesirableEffect != null) {
          fields.add(undesirableEffect!);
        }
      case 'warning':
        if (warning != null) {
          fields.add(warning!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ClinicalUseDefinition clone() => copyWith();

  /// Copy function for [ClinicalUseDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClinicalUseDefinitionCopyWith<ClinicalUseDefinition> get copyWith =>
      _$ClinicalUseDefinitionCopyWithImpl<ClinicalUseDefinition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClinicalUseDefinition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      contraindication,
      o.contraindication,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      indication,
      o.indication,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      interaction,
      o.interaction,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      population,
      o.population,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      undesirableEffect,
      o.undesirableEffect,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      warning,
      o.warning,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      indication: (json['indication'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      otherTherapy: (json['otherTherapy'] as List<dynamic>?)
          ?.map<ClinicalUseDefinitionOtherTherapy>(
            (v) => ClinicalUseDefinitionOtherTherapy.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinitionContraindication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'diseaseSymptomProcedure',
      diseaseSymptomProcedure,
    );
    addField(
      'diseaseStatus',
      diseaseStatus,
    );
    addField(
      'comorbidity',
      comorbidity,
    );
    addField(
      'indication',
      indication,
    );
    addField(
      'otherTherapy',
      otherTherapy,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'diseaseSymptomProcedure',
      'diseaseStatus',
      'comorbidity',
      'indication',
      'otherTherapy',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'diseaseSymptomProcedure':
        if (diseaseSymptomProcedure != null) {
          fields.add(diseaseSymptomProcedure!);
        }
      case 'diseaseStatus':
        if (diseaseStatus != null) {
          fields.add(diseaseStatus!);
        }
      case 'comorbidity':
        if (comorbidity != null) {
          fields.addAll(comorbidity!);
        }
      case 'indication':
        if (indication != null) {
          fields.addAll(indication!);
        }
      case 'otherTherapy':
        if (otherTherapy != null) {
          fields.addAll(otherTherapy!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ClinicalUseDefinitionContraindication clone() => copyWith();

  /// Copy function for [ClinicalUseDefinitionContraindication]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClinicalUseDefinitionContraindicationCopyWith<
          ClinicalUseDefinitionContraindication>
      get copyWith => _$ClinicalUseDefinitionContraindicationCopyWithImpl<
              ClinicalUseDefinitionContraindication>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClinicalUseDefinitionContraindication) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      diseaseSymptomProcedure,
      o.diseaseSymptomProcedure,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      diseaseStatus,
      o.diseaseStatus,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableReference>(
      comorbidity,
      o.comorbidity,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      indication,
      o.indication,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ClinicalUseDefinitionOtherTherapy>(
      otherTherapy,
      o.otherTherapy,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinitionOtherTherapy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'relationshipType',
      relationshipType,
    );
    addField(
      'therapy',
      therapy,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'relationshipType',
      'therapy',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'relationshipType':
        fields.add(relationshipType);
      case 'therapy':
        fields.add(therapy);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ClinicalUseDefinitionOtherTherapy clone() => copyWith();

  /// Copy function for [ClinicalUseDefinitionOtherTherapy]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClinicalUseDefinitionOtherTherapyCopyWith<ClinicalUseDefinitionOtherTherapy>
      get copyWith => _$ClinicalUseDefinitionOtherTherapyCopyWithImpl<
              ClinicalUseDefinitionOtherTherapy>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClinicalUseDefinitionOtherTherapy) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      relationshipType,
      o.relationshipType,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      therapy,
      o.therapy,
    )) {
      return false;
    }
    return true;
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
    DurationXClinicalUseDefinitionIndication? durationX,
    Range? durationRange,
    FhirString? durationString,
    this.undesirableEffect,
    this.otherTherapy,
    super.disallowExtensions,
  })  : durationX = durationX ?? durationRange ?? durationString,
        super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
        json,
        {
          'durationRange': Range.fromJson,
          'durationString': FhirString.fromJson,
        },
      ),
      undesirableEffect: (json['undesirableEffect'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      otherTherapy: (json['otherTherapy'] as List<dynamic>?)
          ?.map<ClinicalUseDefinitionOtherTherapy>(
            (v) => ClinicalUseDefinitionOtherTherapy.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinitionIndication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [durationRange] as a Range
  Range? get durationRange => durationX?.isAs<Range>();

  /// Getter for [durationString] as a FhirString
  FhirString? get durationString => durationX?.isAs<FhirString>();

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'diseaseSymptomProcedure',
      diseaseSymptomProcedure,
    );
    addField(
      'diseaseStatus',
      diseaseStatus,
    );
    addField(
      'comorbidity',
      comorbidity,
    );
    addField(
      'intendedEffect',
      intendedEffect,
    );
    if (durationX != null) {
      final fhirType = durationX!.fhirType;
      addField(
        'duration${fhirType.capitalize()}',
        durationX,
      );
    }

    addField(
      'undesirableEffect',
      undesirableEffect,
    );
    addField(
      'otherTherapy',
      otherTherapy,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'diseaseSymptomProcedure',
      'diseaseStatus',
      'comorbidity',
      'intendedEffect',
      'durationX',
      'undesirableEffect',
      'otherTherapy',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'diseaseSymptomProcedure':
        if (diseaseSymptomProcedure != null) {
          fields.add(diseaseSymptomProcedure!);
        }
      case 'diseaseStatus':
        if (diseaseStatus != null) {
          fields.add(diseaseStatus!);
        }
      case 'comorbidity':
        if (comorbidity != null) {
          fields.addAll(comorbidity!);
        }
      case 'intendedEffect':
        if (intendedEffect != null) {
          fields.add(intendedEffect!);
        }
      case 'duration':
        if (durationX != null) {
          fields.add(durationX!);
        }
      case 'durationX':
        if (durationX != null) {
          fields.add(durationX!);
        }
      case 'durationRange':
        if (durationX is Range) {
          fields.add(durationX!);
        }
      case 'durationString':
        if (durationX is FhirString) {
          fields.add(durationX!);
        }
      case 'undesirableEffect':
        if (undesirableEffect != null) {
          fields.addAll(undesirableEffect!);
        }
      case 'otherTherapy':
        if (otherTherapy != null) {
          fields.addAll(otherTherapy!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ClinicalUseDefinitionIndication clone() => copyWith();

  /// Copy function for [ClinicalUseDefinitionIndication]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClinicalUseDefinitionIndicationCopyWith<ClinicalUseDefinitionIndication>
      get copyWith => _$ClinicalUseDefinitionIndicationCopyWithImpl<
              ClinicalUseDefinitionIndication>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClinicalUseDefinitionIndication) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      diseaseSymptomProcedure,
      o.diseaseSymptomProcedure,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      diseaseStatus,
      o.diseaseStatus,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableReference>(
      comorbidity,
      o.comorbidity,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      intendedEffect,
      o.intendedEffect,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      durationX,
      o.durationX,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      undesirableEffect,
      o.undesirableEffect,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ClinicalUseDefinitionOtherTherapy>(
      otherTherapy,
      o.otherTherapy,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      interactant: (json['interactant'] as List<dynamic>?)
          ?.map<ClinicalUseDefinitionInteractant>(
            (v) => ClinicalUseDefinitionInteractant.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinitionInteraction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'interactant',
      interactant,
    );
    addField(
      'type',
      type,
    );
    addField(
      'effect',
      effect,
    );
    addField(
      'incidence',
      incidence,
    );
    addField(
      'management',
      management,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'interactant',
      'type',
      'effect',
      'incidence',
      'management',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'interactant':
        if (interactant != null) {
          fields.addAll(interactant!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'effect':
        if (effect != null) {
          fields.add(effect!);
        }
      case 'incidence':
        if (incidence != null) {
          fields.add(incidence!);
        }
      case 'management':
        if (management != null) {
          fields.addAll(management!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ClinicalUseDefinitionInteraction clone() => copyWith();

  /// Copy function for [ClinicalUseDefinitionInteraction]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClinicalUseDefinitionInteractionCopyWith<ClinicalUseDefinitionInteraction>
      get copyWith => _$ClinicalUseDefinitionInteractionCopyWithImpl<
              ClinicalUseDefinitionInteraction>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClinicalUseDefinitionInteraction) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ClinicalUseDefinitionInteractant>(
      interactant,
      o.interactant,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      effect,
      o.effect,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      incidence,
      o.incidence,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      management,
      o.management,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      itemX: JsonParser.parsePolymorphic<ItemXClinicalUseDefinitionInteractant>(
        json,
        {
          'itemReference': Reference.fromJson,
          'itemCodeableConcept': CodeableConcept.fromJson,
        },
      )!,
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
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinitionInteractant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinitionInteractant';

  /// [itemX]
  /// The specific medication, food or laboratory test that interacts.
  final ItemXClinicalUseDefinitionInteractant itemX;

  /// Getter for [itemReference] as a Reference
  Reference? get itemReference => itemX.isAs<Reference>();

  /// Getter for [itemCodeableConcept] as a CodeableConcept
  CodeableConcept? get itemCodeableConcept => itemX.isAs<CodeableConcept>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    final itemXFhirType = itemX.fhirType;
    addField(
      'item${itemXFhirType.capitalize()}',
      itemX,
    );

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'itemX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'item':
        fields.add(itemX);
      case 'itemX':
        fields.add(itemX);
      case 'itemReference':
        if (itemX is Reference) {
          fields.add(itemX);
        }
      case 'itemCodeableConcept':
        if (itemX is CodeableConcept) {
          fields.add(itemX);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ClinicalUseDefinitionInteractant clone() => copyWith();

  /// Copy function for [ClinicalUseDefinitionInteractant]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClinicalUseDefinitionInteractantCopyWith<ClinicalUseDefinitionInteractant>
      get copyWith => _$ClinicalUseDefinitionInteractantCopyWithImpl<
              ClinicalUseDefinitionInteractant>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClinicalUseDefinitionInteractant) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      itemX,
      o.itemX,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinitionUndesirableEffect.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'symptomConditionEffect',
      symptomConditionEffect,
    );
    addField(
      'classification',
      classification,
    );
    addField(
      'frequencyOfOccurrence',
      frequencyOfOccurrence,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'symptomConditionEffect',
      'classification',
      'frequencyOfOccurrence',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'symptomConditionEffect':
        if (symptomConditionEffect != null) {
          fields.add(symptomConditionEffect!);
        }
      case 'classification':
        if (classification != null) {
          fields.add(classification!);
        }
      case 'frequencyOfOccurrence':
        if (frequencyOfOccurrence != null) {
          fields.add(frequencyOfOccurrence!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ClinicalUseDefinitionUndesirableEffect clone() => copyWith();

  /// Copy function for [ClinicalUseDefinitionUndesirableEffect]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClinicalUseDefinitionUndesirableEffectCopyWith<
          ClinicalUseDefinitionUndesirableEffect>
      get copyWith => _$ClinicalUseDefinitionUndesirableEffectCopyWithImpl<
              ClinicalUseDefinitionUndesirableEffect>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClinicalUseDefinitionUndesirableEffect) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      symptomConditionEffect,
      o.symptomConditionEffect,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      classification,
      o.classification,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      frequencyOfOccurrence,
      o.frequencyOfOccurrence,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinitionWarning.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'description',
      description,
    );
    addField(
      'code',
      code,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'description',
      'code',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ClinicalUseDefinitionWarning clone() => copyWith();

  /// Copy function for [ClinicalUseDefinitionWarning]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClinicalUseDefinitionWarningCopyWith<ClinicalUseDefinitionWarning>
      get copyWith => _$ClinicalUseDefinitionWarningCopyWithImpl<
              ClinicalUseDefinitionWarning>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClinicalUseDefinitionWarning) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    return true;
  }
}
