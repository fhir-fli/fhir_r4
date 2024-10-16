import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ImmunizationRecommendation]
/// A patient's point-in-time set of recommendations (i.e. forecasting)
/// according to a published schedule with optional supporting
/// justification.
class ImmunizationRecommendation extends DomainResource {
  /// Primary constructor for [ImmunizationRecommendation]

  ImmunizationRecommendation({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    required this.patient,
    required this.date,
    this.authority,
    required this.recommendation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.ImmunizationRecommendation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationRecommendation.fromJson(Map<String, dynamic> json) {
    return ImmunizationRecommendation(
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
      patient: Reference.fromJson(
        json['patient'] as Map<String, dynamic>,
      ),
      date: FhirDateTime.fromJson({
        'value': json['date'],
        '_value': json['_date'],
      }),
      authority: json['authority'] != null
          ? Reference.fromJson(
              json['authority'] as Map<String, dynamic>,
            )
          : null,
      recommendation:
          ensureNonNullList((json['recommendation'] as List<dynamic>)
              .map<ImmunizationRecommendationRecommendation>(
                (v) => ImmunizationRecommendationRecommendation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()),
    );
  }

  /// Deserialize [ImmunizationRecommendation] from a [String]
  /// or [YamlMap] object
  factory ImmunizationRecommendation.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationRecommendation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ImmunizationRecommendation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ImmunizationRecommendation cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ImmunizationRecommendation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationRecommendation.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    final fieldJson9 = patient.toJson();
    json['patient'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_patient'] = fieldJson9['_value'];
    }

    final fieldJson10 = date.toJson();
    json['date'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_date'] = fieldJson10['_value'];
    }

    if (authority != null) {
      final fieldJson11 = authority!.toJson();
      json['authority'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_authority'] = fieldJson11['_value'];
      }
    }

    final fieldJson12 = recommendation.map((e) => e.toJson()).toList();
    json['recommendation'] = fieldJson12.map((e) => e['value']).toList();
    if (fieldJson12.any((e) => e['_value'] != null)) {
      json['_recommendation'] = fieldJson12.map((e) => e['_value']).toList();
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ImmunizationRecommendationRecommendation]
/// Vaccine administration recommendations.
class ImmunizationRecommendationRecommendation extends BackboneElement {
  /// Primary constructor for [ImmunizationRecommendationRecommendation]

  ImmunizationRecommendationRecommendation({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.vaccineCode,
    this.targetDisease,
    this.contraindicatedVaccineCode,
    required this.forecastStatus,
    this.forecastReason,
    this.dateCriterion,
    this.description,
    this.series,
    this.doseNumberPositiveInt,
    this.doseNumberString,
    this.seriesDosesPositiveInt,
    this.seriesDosesString,
    this.supportingImmunization,
    this.supportingPatientInformation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationRecommendationRecommendation.fromJson(
      Map<String, dynamic> json) {
    return ImmunizationRecommendationRecommendation(
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
      vaccineCode: json['vaccineCode'] != null
          ? (json['vaccineCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      targetDisease: json['targetDisease'] != null
          ? CodeableConcept.fromJson(
              json['targetDisease'] as Map<String, dynamic>,
            )
          : null,
      contraindicatedVaccineCode: json['contraindicatedVaccineCode'] != null
          ? (json['contraindicatedVaccineCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      forecastStatus: CodeableConcept.fromJson(
        json['forecastStatus'] as Map<String, dynamic>,
      ),
      forecastReason: json['forecastReason'] != null
          ? (json['forecastReason'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      dateCriterion: json['dateCriterion'] != null
          ? (json['dateCriterion'] as List<dynamic>)
              .map<ImmunizationRecommendationDateCriterion>(
                (v) => ImmunizationRecommendationDateCriterion.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      series: json['series'] != null
          ? FhirString.fromJson({
              'value': json['series'],
              '_value': json['_series'],
            })
          : null,
      doseNumberPositiveInt: json['doseNumberPositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['doseNumberPositiveInt'],
              '_value': json['_doseNumberPositiveInt'],
            })
          : null,
      doseNumberString: json['doseNumberString'] != null
          ? FhirString.fromJson({
              'value': json['doseNumberString'],
              '_value': json['_doseNumberString'],
            })
          : null,
      seriesDosesPositiveInt: json['seriesDosesPositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['seriesDosesPositiveInt'],
              '_value': json['_seriesDosesPositiveInt'],
            })
          : null,
      seriesDosesString: json['seriesDosesString'] != null
          ? FhirString.fromJson({
              'value': json['seriesDosesString'],
              '_value': json['_seriesDosesString'],
            })
          : null,
      supportingImmunization: json['supportingImmunization'] != null
          ? (json['supportingImmunization'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      supportingPatientInformation: json['supportingPatientInformation'] != null
          ? (json['supportingPatientInformation'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ImmunizationRecommendationRecommendation] from a [String]
  /// or [YamlMap] object
  factory ImmunizationRecommendationRecommendation.fromYaml(dynamic yaml) => yaml
          is String
      ? ImmunizationRecommendationRecommendation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ImmunizationRecommendationRecommendation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ImmunizationRecommendationRecommendation cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ImmunizationRecommendationRecommendation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationRecommendationRecommendation.fromJsonString(
      String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [doseNumberPositiveInt]
  /// Nominal position of the recommended dose in a series (e.g. dose 2 is
  /// the next recommended dose).
  final FhirPositiveInt? doseNumberPositiveInt;

  /// [doseNumberString]
  /// Nominal position of the recommended dose in a series (e.g. dose 2 is
  /// the next recommended dose).
  final FhirString? doseNumberString;

  /// [seriesDosesPositiveInt]
  /// The recommended number of doses to achieve immunity.
  final FhirPositiveInt? seriesDosesPositiveInt;

  /// [seriesDosesString]
  /// The recommended number of doses to achieve immunity.
  final FhirString? seriesDosesString;

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

    if (vaccineCode != null && vaccineCode!.isNotEmpty) {
      final fieldJson3 = vaccineCode!.map((e) => e.toJson()).toList();
      json['vaccineCode'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_vaccineCode'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (targetDisease != null) {
      final fieldJson4 = targetDisease!.toJson();
      json['targetDisease'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_targetDisease'] = fieldJson4['_value'];
      }
    }

    if (contraindicatedVaccineCode != null &&
        contraindicatedVaccineCode!.isNotEmpty) {
      final fieldJson5 =
          contraindicatedVaccineCode!.map((e) => e.toJson()).toList();
      json['contraindicatedVaccineCode'] =
          fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contraindicatedVaccineCode'] =
            fieldJson5.map((e) => e['_value']).toList();
      }
    }

    final fieldJson6 = forecastStatus.toJson();
    json['forecastStatus'] = fieldJson6['value'];
    if (fieldJson6['_value'] != null) {
      json['_forecastStatus'] = fieldJson6['_value'];
    }

    if (forecastReason != null && forecastReason!.isNotEmpty) {
      final fieldJson7 = forecastReason!.map((e) => e.toJson()).toList();
      json['forecastReason'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_forecastReason'] = fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (dateCriterion != null && dateCriterion!.isNotEmpty) {
      final fieldJson8 = dateCriterion!.map((e) => e.toJson()).toList();
      json['dateCriterion'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_dateCriterion'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (description != null) {
      final fieldJson9 = description!.toJson();
      json['description'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_description'] = fieldJson9['_value'];
      }
    }

    if (series != null) {
      final fieldJson10 = series!.toJson();
      json['series'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_series'] = fieldJson10['_value'];
      }
    }

    if (doseNumberPositiveInt != null) {
      final fieldJson11 = doseNumberPositiveInt!.toJson();
      json['doseNumberPositiveInt'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_doseNumberPositiveInt'] = fieldJson11['_value'];
      }
    }

    if (doseNumberString != null) {
      final fieldJson12 = doseNumberString!.toJson();
      json['doseNumberString'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_doseNumberString'] = fieldJson12['_value'];
      }
    }

    if (seriesDosesPositiveInt != null) {
      final fieldJson13 = seriesDosesPositiveInt!.toJson();
      json['seriesDosesPositiveInt'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_seriesDosesPositiveInt'] = fieldJson13['_value'];
      }
    }

    if (seriesDosesString != null) {
      final fieldJson14 = seriesDosesString!.toJson();
      json['seriesDosesString'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_seriesDosesString'] = fieldJson14['_value'];
      }
    }

    if (supportingImmunization != null && supportingImmunization!.isNotEmpty) {
      final fieldJson15 =
          supportingImmunization!.map((e) => e.toJson()).toList();
      json['supportingImmunization'] =
          fieldJson15.map((e) => e['value']).toList();
      if (fieldJson15.any((e) => e['_value'] != null)) {
        json['_supportingImmunization'] =
            fieldJson15.map((e) => e['_value']).toList();
      }
    }

    if (supportingPatientInformation != null &&
        supportingPatientInformation!.isNotEmpty) {
      final fieldJson16 =
          supportingPatientInformation!.map((e) => e.toJson()).toList();
      json['supportingPatientInformation'] =
          fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_supportingPatientInformation'] =
            fieldJson16.map((e) => e['_value']).toList();
      }
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
    FhirPositiveInt? doseNumberPositiveInt,
    FhirString? doseNumberString,
    FhirPositiveInt? seriesDosesPositiveInt,
    FhirString? seriesDosesString,
    List<Reference>? supportingImmunization,
    List<Reference>? supportingPatientInformation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      doseNumberPositiveInt:
          doseNumberPositiveInt ?? this.doseNumberPositiveInt,
      doseNumberString: doseNumberString ?? this.doseNumberString,
      seriesDosesPositiveInt:
          seriesDosesPositiveInt ?? this.seriesDosesPositiveInt,
      seriesDosesString: seriesDosesString ?? this.seriesDosesString,
      supportingImmunization:
          supportingImmunization ?? this.supportingImmunization,
      supportingPatientInformation:
          supportingPatientInformation ?? this.supportingPatientInformation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ImmunizationRecommendationDateCriterion]
/// Vaccine date recommendations. For example, earliest date to administer,
/// latest date to administer, etc.
class ImmunizationRecommendationDateCriterion extends BackboneElement {
  /// Primary constructor for [ImmunizationRecommendationDateCriterion]

  ImmunizationRecommendationDateCriterion({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.code,
    required this.value,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationRecommendationDateCriterion.fromJson(
      Map<String, dynamic> json) {
    return ImmunizationRecommendationDateCriterion(
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
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
      value: FhirDateTime.fromJson({
        'value': json['value'],
        '_value': json['_value'],
      }),
    );
  }

  /// Deserialize [ImmunizationRecommendationDateCriterion] from a [String]
  /// or [YamlMap] object
  factory ImmunizationRecommendationDateCriterion.fromYaml(dynamic yaml) => yaml
          is String
      ? ImmunizationRecommendationDateCriterion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ImmunizationRecommendationDateCriterion.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ImmunizationRecommendationDateCriterion cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ImmunizationRecommendationDateCriterion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationRecommendationDateCriterion.fromJsonString(
      String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    final fieldJson3 = code.toJson();
    json['code'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_code'] = fieldJson3['_value'];
    }

    final fieldJson4 = value.toJson();
    json['value'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_value'] = fieldJson4['_value'];
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImmunizationRecommendationDateCriterion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      value: value ?? this.value,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
