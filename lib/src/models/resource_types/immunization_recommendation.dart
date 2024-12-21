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
          resourceType: R4ResourceType.ImmunizationRecommendation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationRecommendation.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImmunizationRecommendation(
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
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
      )!,
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      )!,
      authority: JsonParser.parseObject<Reference>(
        json,
        'authority',
        Reference.fromJson,
      ),
      recommendation: (json['recommendation'] as List<dynamic>)
          .map<ImmunizationRecommendationRecommendation>(
            (v) => ImmunizationRecommendationRecommendation.fromJson(
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ImmunizationRecommendation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

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

    json['patient'] = patient.toJson();

    addField('date', date);
    if (authority != null) {
      json['authority'] = authority!.toJson();
    }

    if (recommendation.isNotEmpty) {
      json['recommendation'] = recommendation.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ImmunizationRecommendation(
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationRecommendationRecommendation.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImmunizationRecommendationRecommendation(
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
      vaccineCode: (json['vaccineCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      targetDisease: JsonParser.parseObject<CodeableConcept>(
        json,
        'targetDisease',
        CodeableConcept.fromJson,
      ),
      contraindicatedVaccineCode:
          (json['contraindicatedVaccineCode'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList(),
      forecastStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'forecastStatus',
        CodeableConcept.fromJson,
      )!,
      forecastReason: (json['forecastReason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      dateCriterion: (json['dateCriterion'] as List<dynamic>?)
          ?.map<ImmunizationRecommendationDateCriterion>(
            (v) => ImmunizationRecommendationDateCriterion.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      series: JsonParser.parsePrimitive<FhirString>(
        json,
        'series',
        FhirString.fromJson,
      ),
      doseNumberX: JsonParser.parsePolymorphic<
          DoseNumberXImmunizationRecommendationRecommendation>(json, {
        'doseNumberPositiveInt': FhirPositiveInt.fromJson,
        'doseNumberString': FhirString.fromJson,
      }),
      seriesDosesX: JsonParser.parsePolymorphic<
          SeriesDosesXImmunizationRecommendationRecommendation>(json, {
        'seriesDosesPositiveInt': FhirPositiveInt.fromJson,
        'seriesDosesString': FhirString.fromJson,
      }),
      supportingImmunization: (json['supportingImmunization'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      supportingPatientInformation:
          (json['supportingPatientInformation'] as List<dynamic>?)
              ?.map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ImmunizationRecommendationRecommendation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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

  /// [seriesDosesX]
  /// The recommended number of doses to achieve immunity.
  final SeriesDosesXImmunizationRecommendationRecommendation? seriesDosesX;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (vaccineCode != null && vaccineCode!.isNotEmpty) {
      json['vaccineCode'] = vaccineCode!.map((e) => e.toJson()).toList();
    }

    if (targetDisease != null) {
      json['targetDisease'] = targetDisease!.toJson();
    }

    if (contraindicatedVaccineCode != null &&
        contraindicatedVaccineCode!.isNotEmpty) {
      json['contraindicatedVaccineCode'] =
          contraindicatedVaccineCode!.map((e) => e.toJson()).toList();
    }

    json['forecastStatus'] = forecastStatus.toJson();

    if (forecastReason != null && forecastReason!.isNotEmpty) {
      json['forecastReason'] = forecastReason!.map((e) => e.toJson()).toList();
    }

    if (dateCriterion != null && dateCriterion!.isNotEmpty) {
      json['dateCriterion'] = dateCriterion!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      addField('description', description);
    }

    if (series != null) {
      addField('series', series);
    }

    if (doseNumberX != null) {
      addField('doseNumber${doseNumberX!.fhirType.capitalize()}', doseNumberX);
    }

    if (seriesDosesX != null) {
      addField(
          'seriesDoses${seriesDosesX!.fhirType.capitalize()}', seriesDosesX);
    }

    if (supportingImmunization != null && supportingImmunization!.isNotEmpty) {
      json['supportingImmunization'] =
          supportingImmunization!.map((e) => e.toJson()).toList();
    }

    if (supportingPatientInformation != null &&
        supportingPatientInformation!.isNotEmpty) {
      json['supportingPatientInformation'] =
          supportingPatientInformation!.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ImmunizationRecommendationRecommendation(
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationRecommendationDateCriterion.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImmunizationRecommendationDateCriterion(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      value: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'value',
        FhirDateTime.fromJson,
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
    if (json is Map<String, Object?>) {
      return ImmunizationRecommendationDateCriterion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['code'] = code.toJson();

    addField('value', value);
    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ImmunizationRecommendationDateCriterion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      value: value ?? this.value,
    );
  }
}
