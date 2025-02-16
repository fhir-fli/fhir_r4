import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ImmunizationRecommendation]
/// A patient's point-in-time set of recommendations (i.e. forecasting)
/// according to a published schedule with optional supporting
/// justification.
class ImmunizationRecommendation extends DomainResource {
  /// Primary constructor for
  /// [ImmunizationRecommendation]

  const ImmunizationRecommendation({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.patient,
    required this.date,
    this.authority,
    required this.recommendation,
  }) : super(
          objectPath: 'ImmunizationRecommendation',
          resourceType: R4ResourceType.ImmunizationRecommendation,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImmunizationRecommendation.empty() => ImmunizationRecommendation(
        patient: Reference.empty(),
        date: FhirDateTime.empty(),
        recommendation: <ImmunizationRecommendationRecommendation>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationRecommendation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImmunizationRecommendation';
    return ImmunizationRecommendation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      )!,
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      )!,
      authority: JsonParser.parseObject<Reference>(
        json,
        'authority',
        Reference.fromJson,
        '$objectPath.authority',
      ),
      recommendation: (json['recommendation'] as List<dynamic>)
          .map<ImmunizationRecommendationRecommendation>(
            (v) => ImmunizationRecommendationRecommendation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.recommendation',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ImmunizationRecommendation]
  /// from a [String] or [YamlMap] object
  factory ImmunizationRecommendation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationRecommendation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationRecommendation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationRecommendation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationRecommendation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationRecommendation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationRecommendation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationRecommendation';

  /// [identifier]
  /// A unique identifier assigned to this particular recommendation record.
  final List<Identifier>? identifier;

  /// [patient]
  /// The patient the recommendation(s) are for.
  final Reference patient;

  /// [date]
  /// The date the immunization recommendation(s) were created.
  final FhirDateTime date;

  /// [authority]
  /// Indicates the authority who published the protocol (e.g. ACIP).
  final Reference? authority;

  /// [recommendation]
  /// Vaccine administration recommendations.
  final List<ImmunizationRecommendationRecommendation> recommendation;
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
    addField('patient', patient);
    addField('date', date);
    addField('authority', authority);
    addField('recommendation', recommendation);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
      case 'patient':
        fields.add(patient);
      case 'date':
        fields.add(date);
      case 'authority':
        if (authority != null) {
          fields.add(authority!);
        }
      case 'recommendation':
        fields.addAll(recommendation);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ImmunizationRecommendation clone() => throw UnimplementedError();
  @override
  ImmunizationRecommendation copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    Reference? patient,
    FhirDateTime? date,
    Reference? authority,
    List<ImmunizationRecommendationRecommendation>? recommendation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return ImmunizationRecommendation(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      authority: authority?.copyWith(
            objectPath: '$newObjectPath.authority',
          ) ??
          this.authority,
      recommendation: recommendation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.recommendation',
                ),
              )
              .toList() ??
          this.recommendation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImmunizationRecommendation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(patient, o.patient)) {
      return false;
    }
    if (!equalsDeepWithNull(date, o.date)) {
      return false;
    }
    if (!equalsDeepWithNull(authority, o.authority)) {
      return false;
    }
    if (!listEquals<ImmunizationRecommendationRecommendation>(
      recommendation,
      o.recommendation,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImmunizationRecommendationRecommendation]
/// Vaccine administration recommendations.
class ImmunizationRecommendationRecommendation extends BackboneElement {
  /// Primary constructor for
  /// [ImmunizationRecommendationRecommendation]

  const ImmunizationRecommendationRecommendation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.vaccineCode,
    this.targetDisease,
    this.contraindicatedVaccineCode,
    required this.forecastStatus,
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImmunizationRecommendationRecommendation.empty() =>
      ImmunizationRecommendationRecommendation(
        forecastStatus: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationRecommendationRecommendation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImmunizationRecommendation.recommendation';
    return ImmunizationRecommendationRecommendation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      vaccineCode: (json['vaccineCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.vaccineCode',
              },
            ),
          )
          .toList(),
      targetDisease: JsonParser.parseObject<CodeableConcept>(
        json,
        'targetDisease',
        CodeableConcept.fromJson,
        '$objectPath.targetDisease',
      ),
      contraindicatedVaccineCode:
          (json['contraindicatedVaccineCode'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.contraindicatedVaccineCode',
                  },
                ),
              )
              .toList(),
      forecastStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'forecastStatus',
        CodeableConcept.fromJson,
        '$objectPath.forecastStatus',
      )!,
      forecastReason: (json['forecastReason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.forecastReason',
              },
            ),
          )
          .toList(),
      dateCriterion: (json['dateCriterion'] as List<dynamic>?)
          ?.map<ImmunizationRecommendationDateCriterion>(
            (v) => ImmunizationRecommendationDateCriterion.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dateCriterion',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      series: JsonParser.parsePrimitive<FhirString>(
        json,
        'series',
        FhirString.fromJson,
        '$objectPath.series',
      ),
      doseNumberX: JsonParser.parsePolymorphic<
          DoseNumberXImmunizationRecommendationRecommendation>(
        json,
        {
          'doseNumberPositiveInt': FhirPositiveInt.fromJson,
          'doseNumberString': FhirString.fromJson,
        },
        objectPath,
      ),
      seriesDosesX: JsonParser.parsePolymorphic<
          SeriesDosesXImmunizationRecommendationRecommendation>(
        json,
        {
          'seriesDosesPositiveInt': FhirPositiveInt.fromJson,
          'seriesDosesString': FhirString.fromJson,
        },
        objectPath,
      ),
      supportingImmunization: (json['supportingImmunization'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingImmunization',
              },
            ),
          )
          .toList(),
      supportingPatientInformation:
          (json['supportingPatientInformation'] as List<dynamic>?)
              ?.map<Reference>(
                (v) => Reference.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.supportingPatientInformation',
                  },
                ),
              )
              .toList(),
    );
  }

  /// Deserialize [ImmunizationRecommendationRecommendation]
  /// from a [String] or [YamlMap] object
  factory ImmunizationRecommendationRecommendation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationRecommendationRecommendation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationRecommendationRecommendation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationRecommendationRecommendation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationRecommendationRecommendation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationRecommendationRecommendation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationRecommendationRecommendation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationRecommendationRecommendation';

  /// [vaccineCode]
  /// Vaccine(s) or vaccine group that pertain to the recommendation.
  final List<CodeableConcept>? vaccineCode;

  /// [targetDisease]
  /// The targeted disease for the recommendation.
  final CodeableConcept? targetDisease;

  /// [contraindicatedVaccineCode]
  /// Vaccine(s) which should not be used to fulfill the recommendation.
  final List<CodeableConcept>? contraindicatedVaccineCode;

  /// [forecastStatus]
  /// Indicates the patient status with respect to the path to immunity for
  /// the target disease.
  final CodeableConcept forecastStatus;

  /// [forecastReason]
  /// The reason for the assigned forecast status.
  final List<CodeableConcept>? forecastReason;

  /// [dateCriterion]
  /// Vaccine date recommendations. For example, earliest date to administer,
  /// latest date to administer, etc.
  final List<ImmunizationRecommendationDateCriterion>? dateCriterion;

  /// [description]
  /// Contains the description about the protocol under which the vaccine was
  /// administered.
  final FhirString? description;

  /// [series]
  /// One possible path to achieve presumed immunity against a disease -
  /// within the context of an authority.
  final FhirString? series;

  /// [doseNumberX]
  /// Nominal position of the recommended dose in a series (e.g. dose 2 is
  /// the next recommended dose).
  final DoseNumberXImmunizationRecommendationRecommendation? doseNumberX;

  /// Getter for [doseNumberPositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get doseNumberPositiveInt =>
      doseNumberX?.isAs<FhirPositiveInt>();

  /// Getter for [doseNumberString] as a FhirString
  FhirString? get doseNumberString => doseNumberX?.isAs<FhirString>();

  /// [seriesDosesX]
  /// The recommended number of doses to achieve immunity.
  final SeriesDosesXImmunizationRecommendationRecommendation? seriesDosesX;

  /// Getter for [seriesDosesPositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get seriesDosesPositiveInt =>
      seriesDosesX?.isAs<FhirPositiveInt>();

  /// Getter for [seriesDosesString] as a FhirString
  FhirString? get seriesDosesString => seriesDosesX?.isAs<FhirString>();

  /// [supportingImmunization]
  /// Immunization event history and/or evaluation that supports the status
  /// and recommendation.
  final List<Reference>? supportingImmunization;

  /// [supportingPatientInformation]
  /// Patient Information that supports the status and recommendation. This
  /// includes patient observations, adverse reactions and
  /// allergy/intolerance information.
  final List<Reference>? supportingPatientInformation;
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
        fields.add(forecastStatus);
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
        fields.add(doseNumberX!);
      case 'doseNumberX':
        fields.add(doseNumberX!);
      case 'doseNumberPositiveInt':
        if (doseNumberX is FhirPositiveInt) {
          fields.add(doseNumberX!);
        }
      case 'doseNumberString':
        if (doseNumberX is FhirString) {
          fields.add(doseNumberX!);
        }
      case 'seriesDoses':
        fields.add(seriesDosesX!);
      case 'seriesDosesX':
        fields.add(seriesDosesX!);
      case 'seriesDosesPositiveInt':
        if (seriesDosesX is FhirPositiveInt) {
          fields.add(seriesDosesX!);
        }
      case 'seriesDosesString':
        if (seriesDosesX is FhirString) {
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ImmunizationRecommendationRecommendation clone() =>
      throw UnimplementedError();
  @override
  ImmunizationRecommendationRecommendation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? vaccineCode,
    CodeableConcept? targetDisease,
    List<CodeableConcept>? contraindicatedVaccineCode,
    CodeableConcept? forecastStatus,
    List<CodeableConcept>? forecastReason,
    List<ImmunizationRecommendationDateCriterion>? dateCriterion,
    FhirString? description,
    FhirString? series,
    DoseNumberXImmunizationRecommendationRecommendation? doseNumberX,
    SeriesDosesXImmunizationRecommendationRecommendation? seriesDosesX,
    List<Reference>? supportingImmunization,
    List<Reference>? supportingPatientInformation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImmunizationRecommendationRecommendation(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      vaccineCode: vaccineCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.vaccineCode',
                ),
              )
              .toList() ??
          this.vaccineCode,
      targetDisease: targetDisease?.copyWith(
            objectPath: '$newObjectPath.targetDisease',
          ) ??
          this.targetDisease,
      contraindicatedVaccineCode: contraindicatedVaccineCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contraindicatedVaccineCode',
                ),
              )
              .toList() ??
          this.contraindicatedVaccineCode,
      forecastStatus: forecastStatus?.copyWith(
            objectPath: '$newObjectPath.forecastStatus',
          ) ??
          this.forecastStatus,
      forecastReason: forecastReason
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.forecastReason',
                ),
              )
              .toList() ??
          this.forecastReason,
      dateCriterion: dateCriterion
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.dateCriterion',
                ),
              )
              .toList() ??
          this.dateCriterion,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      series: series?.copyWith(
            objectPath: '$newObjectPath.series',
          ) ??
          this.series,
      doseNumberX: doseNumberX?.copyWith(
            objectPath: '$newObjectPath.doseNumberX',
          ) as DoseNumberXImmunizationRecommendationRecommendation? ??
          this.doseNumberX,
      seriesDosesX: seriesDosesX?.copyWith(
            objectPath: '$newObjectPath.seriesDosesX',
          ) as SeriesDosesXImmunizationRecommendationRecommendation? ??
          this.seriesDosesX,
      supportingImmunization: supportingImmunization
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supportingImmunization',
                ),
              )
              .toList() ??
          this.supportingImmunization,
      supportingPatientInformation: supportingPatientInformation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supportingPatientInformation',
                ),
              )
              .toList() ??
          this.supportingPatientInformation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImmunizationRecommendationRecommendation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      vaccineCode,
      o.vaccineCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(targetDisease, o.targetDisease)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      contraindicatedVaccineCode,
      o.contraindicatedVaccineCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(forecastStatus, o.forecastStatus)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      forecastReason,
      o.forecastReason,
    )) {
      return false;
    }
    if (!listEquals<ImmunizationRecommendationDateCriterion>(
      dateCriterion,
      o.dateCriterion,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(series, o.series)) {
      return false;
    }
    if (!equalsDeepWithNull(doseNumberX, o.doseNumberX)) {
      return false;
    }
    if (!equalsDeepWithNull(seriesDosesX, o.seriesDosesX)) {
      return false;
    }
    if (!listEquals<Reference>(
      supportingImmunization,
      o.supportingImmunization,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      supportingPatientInformation,
      o.supportingPatientInformation,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImmunizationRecommendationDateCriterion]
/// Vaccine date recommendations. For example, earliest date to administer,
/// latest date to administer, etc.
class ImmunizationRecommendationDateCriterion extends BackboneElement {
  /// Primary constructor for
  /// [ImmunizationRecommendationDateCriterion]

  const ImmunizationRecommendationDateCriterion({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImmunizationRecommendation.recommendation.dateCriterion',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImmunizationRecommendationDateCriterion.empty() =>
      ImmunizationRecommendationDateCriterion(
        code: CodeableConcept.empty(),
        value: FhirDateTime.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationRecommendationDateCriterion.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'ImmunizationRecommendation.recommendation.dateCriterion';
    return ImmunizationRecommendationDateCriterion(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      )!,
      value: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'value',
        FhirDateTime.fromJson,
        '$objectPath.value',
      )!,
    );
  }

  /// Deserialize [ImmunizationRecommendationDateCriterion]
  /// from a [String] or [YamlMap] object
  factory ImmunizationRecommendationDateCriterion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationRecommendationDateCriterion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationRecommendationDateCriterion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationRecommendationDateCriterion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationRecommendationDateCriterion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationRecommendationDateCriterion.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationRecommendationDateCriterion.fromJson(json);
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
  final CodeableConcept code;

  /// [value]
  /// The date whose meaning is specified by dateCriterion.code.
  final FhirDateTime value;
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
    addField('code', code);
    addField('value', value);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
      case 'code':
        fields.add(code);
      case 'value':
        fields.add(value);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ImmunizationRecommendationDateCriterion clone() => throw UnimplementedError();
  @override
  ImmunizationRecommendationDateCriterion copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirDateTime? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImmunizationRecommendationDateCriterion(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImmunizationRecommendationDateCriterion) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(value, o.value)) {
      return false;
    }
    return true;
  }
}
