import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        ImmunizationRecommendation,
        ImmunizationRecommendationRecommendation,
        ImmunizationRecommendationDateCriterion;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [ImmunizationRecommendationBuilder]
/// A patient's point-in-time set of recommendations (i.e. forecasting)
/// according to a published schedule with optional supporting
/// justification.
class ImmunizationRecommendationBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ImmunizationRecommendationBuilder]

  ImmunizationRecommendationBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.patient,
    this.date,
    this.authority,
    this.recommendation,
  }) : super(
          objectPath: 'ImmunizationRecommendation',
          resourceType: R4ResourceType.ImmunizationRecommendation,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImmunizationRecommendationBuilder.empty() =>
      ImmunizationRecommendationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationRecommendationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImmunizationRecommendation';
    return ImmunizationRecommendationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      authority: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'authority',
        ReferenceBuilder.fromJson,
        '$objectPath.authority',
      ),
      recommendation: (json['recommendation'] as List<dynamic>?)
          ?.map<ImmunizationRecommendationRecommendationBuilder>(
            (v) => ImmunizationRecommendationRecommendationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.recommendation',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ImmunizationRecommendationBuilder]
  /// from a [String] or [YamlMap] object
  factory ImmunizationRecommendationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationRecommendationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationRecommendationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationRecommendationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationRecommendationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationRecommendationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationRecommendationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationRecommendation';

  /// [identifier]
  /// A unique identifier assigned to this particular recommendation record.
  List<IdentifierBuilder>? identifier;

  /// [patient]
  /// The patient the recommendation(s) are for.
  ReferenceBuilder? patient;

  /// [date]
  /// The date the immunization recommendation(s) were created.
  FhirDateTimeBuilder? date;

  /// [authority]
  /// Indicates the authority who published the protocol (e.g. ACIP).
  ReferenceBuilder? authority;

  /// [recommendation]
  /// Vaccine administration recommendations.
  List<ImmunizationRecommendationRecommendationBuilder>? recommendation;

  /// Converts a ImmunizationRecommendationBuilder to [ImmunizationRecommendation]
  ImmunizationRecommendation build() =>
      ImmunizationRecommendation.fromJson(toJson());

  /// Converts a [ImmunizationRecommendationBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
    addField('patient', patient);
    addField('date', date);
    addField('authority', authority);
    addField('recommendation', recommendation);
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
      'patient',
      'date',
      'authority',
      'recommendation',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'authority':
        if (authority != null) {
          fields.add(authority!);
        }
      case 'recommendation':
        if (recommendation != null) {
          fields.addAll(recommendation!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [...(contained ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [...(identifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'authority':
        {
          if (child is ReferenceBuilder) {
            authority = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recommendation':
        {
          if (child is List<ImmunizationRecommendationRecommendationBuilder>) {
            // Replace or create new list
            recommendation = child;
            return;
          } else if (child is ImmunizationRecommendationRecommendationBuilder) {
            // Add single element to existing list or create new list
            recommendation = [...(recommendation ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'authority':
        return ['ReferenceBuilder'];
      case 'recommendation':
        return ['ImmunizationRecommendationRecommendationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationRecommendationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'authority':
        {
          authority = ReferenceBuilder.empty();
          return;
        }
      case 'recommendation':
        {
          recommendation = <ImmunizationRecommendationRecommendationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool patient = false,
    bool date = false,
    bool authority = false,
    bool recommendation = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (patient) this.patient = null;
    if (date) this.date = null;
    if (authority) this.authority = null;
    if (recommendation) this.recommendation = null;
  }

  @override
  ImmunizationRecommendationBuilder clone() => throw UnimplementedError();
  @override
  ImmunizationRecommendationBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    ReferenceBuilder? patient,
    FhirDateTimeBuilder? date,
    ReferenceBuilder? authority,
    List<ImmunizationRecommendationRecommendationBuilder>? recommendation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ImmunizationRecommendationBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      patient: patient ?? this.patient,
      date: date ?? this.date,
      authority: authority ?? this.authority,
      recommendation: recommendation ?? this.recommendation,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ImmunizationRecommendationBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      authority,
      o.authority,
    )) {
      return false;
    }
    if (!listEquals<ImmunizationRecommendationRecommendationBuilder>(
      recommendation,
      o.recommendation,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImmunizationRecommendationRecommendationBuilder]
/// Vaccine administration recommendations.
class ImmunizationRecommendationRecommendationBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ImmunizationRecommendationRecommendationBuilder]

  ImmunizationRecommendationRecommendationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.vaccineCode,
    this.targetDisease,
    this.contraindicatedVaccineCode,
    this.forecastStatus,
    this.forecastReason,
    this.dateCriterion,
    this.description,
    this.series,
    this.doseNumberX,
    this.seriesDosesX,
    this.supportingImmunization,
    this.supportingPatientInformation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImmunizationRecommendation.recommendation',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImmunizationRecommendationRecommendationBuilder.empty() =>
      ImmunizationRecommendationRecommendationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationRecommendationRecommendationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImmunizationRecommendation.recommendation';
    return ImmunizationRecommendationRecommendationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      vaccineCode: (json['vaccineCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.vaccineCode',
              },
            ),
          )
          .toList(),
      targetDisease: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'targetDisease',
        CodeableConceptBuilder.fromJson,
        '$objectPath.targetDisease',
      ),
      contraindicatedVaccineCode:
          (json['contraindicatedVaccineCode'] as List<dynamic>?)
              ?.map<CodeableConceptBuilder>(
                (v) => CodeableConceptBuilder.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.contraindicatedVaccineCode',
                  },
                ),
              )
              .toList(),
      forecastStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'forecastStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.forecastStatus',
      ),
      forecastReason: (json['forecastReason'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.forecastReason',
              },
            ),
          )
          .toList(),
      dateCriterion: (json['dateCriterion'] as List<dynamic>?)
          ?.map<ImmunizationRecommendationDateCriterionBuilder>(
            (v) => ImmunizationRecommendationDateCriterionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dateCriterion',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      series: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'series',
        FhirStringBuilder.fromJson,
        '$objectPath.series',
      ),
      doseNumberX: JsonParser.parsePolymorphic<
          DoseNumberXImmunizationRecommendationRecommendationBuilder>(
        json,
        {
          'doseNumberPositiveInt': FhirPositiveIntBuilder.fromJson,
          'doseNumberString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      seriesDosesX: JsonParser.parsePolymorphic<
          SeriesDosesXImmunizationRecommendationRecommendationBuilder>(
        json,
        {
          'seriesDosesPositiveInt': FhirPositiveIntBuilder.fromJson,
          'seriesDosesString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      supportingImmunization: (json['supportingImmunization'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingImmunization',
              },
            ),
          )
          .toList(),
      supportingPatientInformation:
          (json['supportingPatientInformation'] as List<dynamic>?)
              ?.map<ReferenceBuilder>(
                (v) => ReferenceBuilder.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.supportingPatientInformation',
                  },
                ),
              )
              .toList(),
    );
  }

  /// Deserialize [ImmunizationRecommendationRecommendationBuilder]
  /// from a [String] or [YamlMap] object
  factory ImmunizationRecommendationRecommendationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationRecommendationRecommendationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationRecommendationRecommendationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationRecommendationRecommendationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationRecommendationRecommendationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationRecommendationRecommendationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationRecommendationRecommendationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationRecommendationRecommendation';

  /// [vaccineCode]
  /// Vaccine(s) or vaccine group that pertain to the recommendation.
  List<CodeableConceptBuilder>? vaccineCode;

  /// [targetDisease]
  /// The targeted disease for the recommendation.
  CodeableConceptBuilder? targetDisease;

  /// [contraindicatedVaccineCode]
  /// Vaccine(s) which should not be used to fulfill the recommendation.
  List<CodeableConceptBuilder>? contraindicatedVaccineCode;

  /// [forecastStatus]
  /// Indicates the patient status with respect to the path to immunity for
  /// the target disease.
  CodeableConceptBuilder? forecastStatus;

  /// [forecastReason]
  /// The reason for the assigned forecast status.
  List<CodeableConceptBuilder>? forecastReason;

  /// [dateCriterion]
  /// Vaccine date recommendations. For example, earliest date to administer,
  /// latest date to administer, etc.
  List<ImmunizationRecommendationDateCriterionBuilder>? dateCriterion;

  /// [description]
  /// Contains the description about the protocol under which the vaccine was
  /// administered.
  FhirStringBuilder? description;

  /// [series]
  /// One possible path to achieve presumed immunity against a disease -
  /// within the context of an authority.
  FhirStringBuilder? series;

  /// [doseNumberX]
  /// Nominal position of the recommended dose in a series (e.g. dose 2 is
  /// the next recommended dose).
  DoseNumberXImmunizationRecommendationRecommendationBuilder? doseNumberX;

  /// Getter for [doseNumberPositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get doseNumberPositiveInt =>
      doseNumberX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [doseNumberString] as a FhirStringBuilder
  FhirStringBuilder? get doseNumberString =>
      doseNumberX?.isAs<FhirStringBuilder>();

  /// [seriesDosesX]
  /// The recommended number of doses to achieve immunity.
  SeriesDosesXImmunizationRecommendationRecommendationBuilder? seriesDosesX;

  /// Getter for [seriesDosesPositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get seriesDosesPositiveInt =>
      seriesDosesX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [seriesDosesString] as a FhirStringBuilder
  FhirStringBuilder? get seriesDosesString =>
      seriesDosesX?.isAs<FhirStringBuilder>();

  /// [supportingImmunization]
  /// Immunization event history and/or evaluation that supports the status
  /// and recommendation.
  List<ReferenceBuilder>? supportingImmunization;

  /// [supportingPatientInformation]
  /// Patient Information that supports the status and recommendation. This
  /// includes patient observations, adverse reactions and
  /// allergy/intolerance information.
  List<ReferenceBuilder>? supportingPatientInformation;

  /// Converts a ImmunizationRecommendationRecommendationBuilder to [ImmunizationRecommendationRecommendation]
  ImmunizationRecommendationRecommendation build() =>
      ImmunizationRecommendationRecommendation.fromJson(toJson());

  /// Converts a [ImmunizationRecommendationRecommendationBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('vaccineCode', vaccineCode);
    addField('targetDisease', targetDisease);
    addField('contraindicatedVaccineCode', contraindicatedVaccineCode);
    addField('forecastStatus', forecastStatus);
    addField('forecastReason', forecastReason);
    addField('dateCriterion', dateCriterion);
    addField('description', description);
    addField('series', series);
    if (doseNumberX != null) {
      final fhirType = doseNumberX!.fhirType;
      addField('doseNumber${fhirType.capitalize()}', doseNumberX);
    }

    if (seriesDosesX != null) {
      final fhirType = seriesDosesX!.fhirType;
      addField('seriesDoses${fhirType.capitalize()}', seriesDosesX);
    }

    addField('supportingImmunization', supportingImmunization);
    addField('supportingPatientInformation', supportingPatientInformation);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'vaccineCode',
      'targetDisease',
      'contraindicatedVaccineCode',
      'forecastStatus',
      'forecastReason',
      'dateCriterion',
      'description',
      'series',
      'doseNumberX',
      'seriesDosesX',
      'supportingImmunization',
      'supportingPatientInformation',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'vaccineCode':
        if (vaccineCode != null) {
          fields.addAll(vaccineCode!);
        }
      case 'targetDisease':
        if (targetDisease != null) {
          fields.add(targetDisease!);
        }
      case 'contraindicatedVaccineCode':
        if (contraindicatedVaccineCode != null) {
          fields.addAll(contraindicatedVaccineCode!);
        }
      case 'forecastStatus':
        if (forecastStatus != null) {
          fields.add(forecastStatus!);
        }
      case 'forecastReason':
        if (forecastReason != null) {
          fields.addAll(forecastReason!);
        }
      case 'dateCriterion':
        if (dateCriterion != null) {
          fields.addAll(dateCriterion!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'series':
        if (series != null) {
          fields.add(series!);
        }
      case 'doseNumber':
        if (doseNumberX != null) {
          fields.add(doseNumberX!);
        }
      case 'doseNumberX':
        if (doseNumberX != null) {
          fields.add(doseNumberX!);
        }
      case 'doseNumberPositiveInt':
        if (doseNumberX is FhirPositiveIntBuilder) {
          fields.add(doseNumberX!);
        }
      case 'doseNumberString':
        if (doseNumberX is FhirStringBuilder) {
          fields.add(doseNumberX!);
        }
      case 'seriesDoses':
        if (seriesDosesX != null) {
          fields.add(seriesDosesX!);
        }
      case 'seriesDosesX':
        if (seriesDosesX != null) {
          fields.add(seriesDosesX!);
        }
      case 'seriesDosesPositiveInt':
        if (seriesDosesX is FhirPositiveIntBuilder) {
          fields.add(seriesDosesX!);
        }
      case 'seriesDosesString':
        if (seriesDosesX is FhirStringBuilder) {
          fields.add(seriesDosesX!);
        }
      case 'supportingImmunization':
        if (supportingImmunization != null) {
          fields.addAll(supportingImmunization!);
        }
      case 'supportingPatientInformation':
        if (supportingPatientInformation != null) {
          fields.addAll(supportingPatientInformation!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'vaccineCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            vaccineCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            vaccineCode = [...(vaccineCode ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetDisease':
        {
          if (child is CodeableConceptBuilder) {
            targetDisease = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contraindicatedVaccineCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            contraindicatedVaccineCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            contraindicatedVaccineCode = [
              ...(contraindicatedVaccineCode ?? []),
              child
            ];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'forecastStatus':
        {
          if (child is CodeableConceptBuilder) {
            forecastStatus = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'forecastReason':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            forecastReason = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            forecastReason = [...(forecastReason ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dateCriterion':
        {
          if (child is List<ImmunizationRecommendationDateCriterionBuilder>) {
            // Replace or create new list
            dateCriterion = child;
            return;
          } else if (child is ImmunizationRecommendationDateCriterionBuilder) {
            // Add single element to existing list or create new list
            dateCriterion = [...(dateCriterion ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'series':
        {
          if (child is FhirStringBuilder) {
            series = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doseNumberX':
        {
          if (child
              is DoseNumberXImmunizationRecommendationRecommendationBuilder) {
            doseNumberX = child;
            return;
          } else {
            if (child is FhirPositiveIntBuilder) {
              doseNumberX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              doseNumberX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doseNumberPositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
            doseNumberX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doseNumberString':
        {
          if (child is FhirStringBuilder) {
            doseNumberX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'seriesDosesX':
        {
          if (child
              is SeriesDosesXImmunizationRecommendationRecommendationBuilder) {
            seriesDosesX = child;
            return;
          } else {
            if (child is FhirPositiveIntBuilder) {
              seriesDosesX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              seriesDosesX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'seriesDosesPositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
            seriesDosesX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'seriesDosesString':
        {
          if (child is FhirStringBuilder) {
            seriesDosesX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'supportingImmunization':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            supportingImmunization = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            supportingImmunization = [...(supportingImmunization ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'supportingPatientInformation':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            supportingPatientInformation = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            supportingPatientInformation = [
              ...(supportingPatientInformation ?? []),
              child
            ];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'vaccineCode':
        return ['CodeableConceptBuilder'];
      case 'targetDisease':
        return ['CodeableConceptBuilder'];
      case 'contraindicatedVaccineCode':
        return ['CodeableConceptBuilder'];
      case 'forecastStatus':
        return ['CodeableConceptBuilder'];
      case 'forecastReason':
        return ['CodeableConceptBuilder'];
      case 'dateCriterion':
        return ['ImmunizationRecommendationDateCriterionBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'series':
        return ['FhirStringBuilder'];
      case 'doseNumber':
      case 'doseNumberX':
        return ['FhirPositiveIntBuilder', 'FhirStringBuilder'];
      case 'doseNumberPositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'doseNumberString':
        return ['FhirStringBuilder'];
      case 'seriesDoses':
      case 'seriesDosesX':
        return ['FhirPositiveIntBuilder', 'FhirStringBuilder'];
      case 'seriesDosesPositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'seriesDosesString':
        return ['FhirStringBuilder'];
      case 'supportingImmunization':
        return ['ReferenceBuilder'];
      case 'supportingPatientInformation':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationRecommendationRecommendationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'vaccineCode':
        {
          vaccineCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'targetDisease':
        {
          targetDisease = CodeableConceptBuilder.empty();
          return;
        }
      case 'contraindicatedVaccineCode':
        {
          contraindicatedVaccineCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'forecastStatus':
        {
          forecastStatus = CodeableConceptBuilder.empty();
          return;
        }
      case 'forecastReason':
        {
          forecastReason = <CodeableConceptBuilder>[];
          return;
        }
      case 'dateCriterion':
        {
          dateCriterion = <ImmunizationRecommendationDateCriterionBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'series':
        {
          series = FhirStringBuilder.empty();
          return;
        }
      case 'doseNumber':
      case 'doseNumberX':
      case 'doseNumberPositiveInt':
        {
          doseNumberX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'doseNumberString':
        {
          doseNumberX = FhirStringBuilder.empty();
          return;
        }
      case 'seriesDoses':
      case 'seriesDosesX':
      case 'seriesDosesPositiveInt':
        {
          seriesDosesX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'seriesDosesString':
        {
          seriesDosesX = FhirStringBuilder.empty();
          return;
        }
      case 'supportingImmunization':
        {
          supportingImmunization = <ReferenceBuilder>[];
          return;
        }
      case 'supportingPatientInformation':
        {
          supportingPatientInformation = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool vaccineCode = false,
    bool targetDisease = false,
    bool contraindicatedVaccineCode = false,
    bool forecastStatus = false,
    bool forecastReason = false,
    bool dateCriterion = false,
    bool description = false,
    bool series = false,
    bool doseNumber = false,
    bool seriesDoses = false,
    bool supportingImmunization = false,
    bool supportingPatientInformation = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (vaccineCode) this.vaccineCode = null;
    if (targetDisease) this.targetDisease = null;
    if (contraindicatedVaccineCode) this.contraindicatedVaccineCode = null;
    if (forecastStatus) this.forecastStatus = null;
    if (forecastReason) this.forecastReason = null;
    if (dateCriterion) this.dateCriterion = null;
    if (description) this.description = null;
    if (series) this.series = null;
    if (doseNumber) this.doseNumberX = null;
    if (seriesDoses) this.seriesDosesX = null;
    if (supportingImmunization) this.supportingImmunization = null;
    if (supportingPatientInformation) this.supportingPatientInformation = null;
  }

  @override
  ImmunizationRecommendationRecommendationBuilder clone() =>
      throw UnimplementedError();
  @override
  ImmunizationRecommendationRecommendationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CodeableConceptBuilder>? vaccineCode,
    CodeableConceptBuilder? targetDisease,
    List<CodeableConceptBuilder>? contraindicatedVaccineCode,
    CodeableConceptBuilder? forecastStatus,
    List<CodeableConceptBuilder>? forecastReason,
    List<ImmunizationRecommendationDateCriterionBuilder>? dateCriterion,
    FhirStringBuilder? description,
    FhirStringBuilder? series,
    DoseNumberXImmunizationRecommendationRecommendationBuilder? doseNumberX,
    SeriesDosesXImmunizationRecommendationRecommendationBuilder? seriesDosesX,
    List<ReferenceBuilder>? supportingImmunization,
    List<ReferenceBuilder>? supportingPatientInformation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ImmunizationRecommendationRecommendationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      vaccineCode: vaccineCode ?? this.vaccineCode,
      targetDisease: targetDisease ?? this.targetDisease,
      contraindicatedVaccineCode:
          contraindicatedVaccineCode ?? this.contraindicatedVaccineCode,
      forecastStatus: forecastStatus ?? this.forecastStatus,
      forecastReason: forecastReason ?? this.forecastReason,
      dateCriterion: dateCriterion ?? this.dateCriterion,
      description: description ?? this.description,
      series: series ?? this.series,
      doseNumberX: doseNumberX ?? this.doseNumberX,
      seriesDosesX: seriesDosesX ?? this.seriesDosesX,
      supportingImmunization:
          supportingImmunization ?? this.supportingImmunization,
      supportingPatientInformation:
          supportingPatientInformation ?? this.supportingPatientInformation,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ImmunizationRecommendationRecommendationBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      vaccineCode,
      o.vaccineCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      targetDisease,
      o.targetDisease,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      contraindicatedVaccineCode,
      o.contraindicatedVaccineCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      forecastStatus,
      o.forecastStatus,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      forecastReason,
      o.forecastReason,
    )) {
      return false;
    }
    if (!listEquals<ImmunizationRecommendationDateCriterionBuilder>(
      dateCriterion,
      o.dateCriterion,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      series,
      o.series,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doseNumberX,
      o.doseNumberX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      seriesDosesX,
      o.seriesDosesX,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      supportingImmunization,
      o.supportingImmunization,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      supportingPatientInformation,
      o.supportingPatientInformation,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImmunizationRecommendationDateCriterionBuilder]
/// Vaccine date recommendations. For example, earliest date to administer,
/// latest date to administer, etc.
class ImmunizationRecommendationDateCriterionBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ImmunizationRecommendationDateCriterionBuilder]

  ImmunizationRecommendationDateCriterionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImmunizationRecommendation.recommendation.dateCriterion',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImmunizationRecommendationDateCriterionBuilder.empty() =>
      ImmunizationRecommendationDateCriterionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationRecommendationDateCriterionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'ImmunizationRecommendation.recommendation.dateCriterion';
    return ImmunizationRecommendationDateCriterionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      value: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'value',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [ImmunizationRecommendationDateCriterionBuilder]
  /// from a [String] or [YamlMap] object
  factory ImmunizationRecommendationDateCriterionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationRecommendationDateCriterionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationRecommendationDateCriterionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationRecommendationDateCriterionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationRecommendationDateCriterionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationRecommendationDateCriterionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationRecommendationDateCriterionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationRecommendationDateCriterion';

  /// [code]
  /// Date classification of recommendation. For example, earliest date to
  /// give, latest date to give, etc.
  CodeableConceptBuilder? code;

  /// [value]
  /// The date whose meaning is specified by dateCriterion.code.
  FhirDateTimeBuilder? value;

  /// Converts a ImmunizationRecommendationDateCriterionBuilder to [ImmunizationRecommendationDateCriterion]
  ImmunizationRecommendationDateCriterion build() =>
      ImmunizationRecommendationDateCriterion.fromJson(toJson());

  /// Converts a [ImmunizationRecommendationDateCriterionBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    addField('value', value);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'value',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is FhirDateTimeBuilder) {
            value = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'value':
        return ['FhirDateTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationRecommendationDateCriterionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
        {
          value = FhirDateTimeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool code = false,
    bool value = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (code) this.code = null;
    if (value) this.value = null;
  }

  @override
  ImmunizationRecommendationDateCriterionBuilder clone() =>
      throw UnimplementedError();
  @override
  ImmunizationRecommendationDateCriterionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    FhirDateTimeBuilder? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ImmunizationRecommendationDateCriterionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      value: value ?? this.value,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ImmunizationRecommendationDateCriterionBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}
