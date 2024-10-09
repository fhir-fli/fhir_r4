import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [ImmunizationRecommendation] /// A patient's point-in-time set of recommendations (i.e. forecasting)
/// according to a published schedule with optional supporting justification.
class ImmunizationRecommendation extends DomainResource {
  ImmunizationRecommendation({
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
    required this.patient,
    required this.date,
    this.dateElement,
    this.authority,
    required this.recommendation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.ImmunizationRecommendation);

  @override
  String get fhirType => 'ImmunizationRecommendation';

  @Id()
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this particular recommendation record.
  final List<Identifier>? identifier;

  /// [patient] /// The patient the recommendation(s) are for.
  final Reference patient;

  /// [date] /// The date the immunization recommendation(s) were created.
  final FhirDateTime date;
  final Element? dateElement;

  /// [authority] /// Indicates the authority who published the protocol (e.g. ACIP).
  final Reference? authority;

  /// [recommendation] /// Vaccine administration recommendations.
  final List<ImmunizationRecommendationRecommendation> recommendation;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['patient'] = patient.toJson();
    json['date'] = date.toJson();
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (authority != null) {
      json['authority'] = authority!.toJson();
    }
    json['recommendation'] = recommendation
        .map<dynamic>(
            (ImmunizationRecommendationRecommendation v) => v.toJson())
        .toList();
    return json;
  }

  factory ImmunizationRecommendation.fromJson(Map<String, dynamic> json) {
    return ImmunizationRecommendation(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      date: FhirDateTime.fromJson(json['date']),
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      authority: json['authority'] != null
          ? Reference.fromJson(json['authority'] as Map<String, dynamic>)
          : null,
      recommendation: (json['recommendation'] as List<dynamic>)
          .map<ImmunizationRecommendationRecommendation>((dynamic v) =>
              ImmunizationRecommendationRecommendation.fromJson(
                  v as Map<String, dynamic>))
          .toList(),
    );
  }
  @override
  ImmunizationRecommendation clone() => throw UnimplementedError();
  @override
  ImmunizationRecommendation copyWith({
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
    Reference? patient,
    FhirDateTime? date,
    Element? dateElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      patient: patient ?? this.patient,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
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

  factory ImmunizationRecommendation.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationRecommendation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImmunizationRecommendation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImmunizationRecommendation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImmunizationRecommendation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationRecommendation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImmunizationRecommendationRecommendation] /// Vaccine administration recommendations.
class ImmunizationRecommendationRecommendation extends BackboneElement {
  ImmunizationRecommendationRecommendation({
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
    this.descriptionElement,
    this.series,
    this.seriesElement,
    this.doseNumberPositiveInt,
    this.doseNumberPositiveIntElement,
    this.doseNumberString,
    this.doseNumberStringElement,
    this.seriesDosesPositiveInt,
    this.seriesDosesPositiveIntElement,
    this.seriesDosesString,
    this.seriesDosesStringElement,
    this.supportingImmunization,
    this.supportingPatientInformation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ImmunizationRecommendationRecommendation';

  @Id()
  int dbId = 0;

  /// [vaccineCode] /// Vaccine(s) or vaccine group that pertain to the recommendation.
  final List<CodeableConcept>? vaccineCode;

  /// [targetDisease] /// The targeted disease for the recommendation.
  final CodeableConcept? targetDisease;

  /// [contraindicatedVaccineCode] /// Vaccine(s) which should not be used to fulfill the recommendation.
  final List<CodeableConcept>? contraindicatedVaccineCode;

  /// [forecastStatus] /// Indicates the patient status with respect to the path to immunity for the
  /// target disease.
  final CodeableConcept forecastStatus;

  /// [forecastReason] /// The reason for the assigned forecast status.
  final List<CodeableConcept>? forecastReason;

  /// [dateCriterion] /// Vaccine date recommendations. For example, earliest date to administer,
  /// latest date to administer, etc.
  final List<ImmunizationRecommendationDateCriterion>? dateCriterion;

  /// [description] /// Contains the description about the protocol under which the vaccine was
  /// administered.
  final FhirString? description;
  final Element? descriptionElement;

  /// [series] /// One possible path to achieve presumed immunity against a disease - within
  /// the context of an authority.
  final FhirString? series;
  final Element? seriesElement;

  /// [doseNumberPositiveInt] /// Nominal position of the recommended dose in a series (e.g. dose 2 is the
  /// next recommended dose).
  final FhirPositiveInt? doseNumberPositiveInt;
  final Element? doseNumberPositiveIntElement;

  /// [doseNumberString] /// Nominal position of the recommended dose in a series (e.g. dose 2 is the
  /// next recommended dose).
  final FhirString? doseNumberString;
  final Element? doseNumberStringElement;

  /// [seriesDosesPositiveInt] /// The recommended number of doses to achieve immunity.
  final FhirPositiveInt? seriesDosesPositiveInt;
  final Element? seriesDosesPositiveIntElement;

  /// [seriesDosesString] /// The recommended number of doses to achieve immunity.
  final FhirString? seriesDosesString;
  final Element? seriesDosesStringElement;

  /// [supportingImmunization] /// Immunization event history and/or evaluation that supports the status and
  /// recommendation.
  final List<Reference>? supportingImmunization;

  /// [supportingPatientInformation] /// Patient Information that supports the status and recommendation. This
  /// includes patient observations, adverse reactions and allergy/intolerance
  /// information.
  final List<Reference>? supportingPatientInformation;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (vaccineCode != null && vaccineCode!.isNotEmpty) {
      json['vaccineCode'] =
          vaccineCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (targetDisease != null) {
      json['targetDisease'] = targetDisease!.toJson();
    }
    if (contraindicatedVaccineCode != null &&
        contraindicatedVaccineCode!.isNotEmpty) {
      json['contraindicatedVaccineCode'] = contraindicatedVaccineCode!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    json['forecastStatus'] = forecastStatus.toJson();
    if (forecastReason != null && forecastReason!.isNotEmpty) {
      json['forecastReason'] = forecastReason!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (dateCriterion != null && dateCriterion!.isNotEmpty) {
      json['dateCriterion'] = dateCriterion!
          .map<dynamic>(
              (ImmunizationRecommendationDateCriterion v) => v.toJson())
          .toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (series?.value != null) {
      json['series'] = series!.toJson();
    }
    if (seriesElement != null) {
      json['_series'] = seriesElement!.toJson();
    }
    if (doseNumberPositiveInt?.value != null) {
      json['doseNumberPositiveInt'] = doseNumberPositiveInt!.toJson();
    }
    if (doseNumberPositiveIntElement != null) {
      json['_doseNumberPositiveInt'] = doseNumberPositiveIntElement!.toJson();
    }
    if (doseNumberString?.value != null) {
      json['doseNumberString'] = doseNumberString!.toJson();
    }
    if (doseNumberStringElement != null) {
      json['_doseNumberString'] = doseNumberStringElement!.toJson();
    }
    if (seriesDosesPositiveInt?.value != null) {
      json['seriesDosesPositiveInt'] = seriesDosesPositiveInt!.toJson();
    }
    if (seriesDosesPositiveIntElement != null) {
      json['_seriesDosesPositiveInt'] = seriesDosesPositiveIntElement!.toJson();
    }
    if (seriesDosesString?.value != null) {
      json['seriesDosesString'] = seriesDosesString!.toJson();
    }
    if (seriesDosesStringElement != null) {
      json['_seriesDosesString'] = seriesDosesStringElement!.toJson();
    }
    if (supportingImmunization != null && supportingImmunization!.isNotEmpty) {
      json['supportingImmunization'] = supportingImmunization!
          .map<dynamic>((Reference v) => v.toJson())
          .toList();
    }
    if (supportingPatientInformation != null &&
        supportingPatientInformation!.isNotEmpty) {
      json['supportingPatientInformation'] = supportingPatientInformation!
          .map<dynamic>((Reference v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ImmunizationRecommendationRecommendation.fromJson(
      Map<String, dynamic> json) {
    return ImmunizationRecommendationRecommendation(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      vaccineCode: json['vaccineCode'] != null
          ? (json['vaccineCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      targetDisease: json['targetDisease'] != null
          ? CodeableConcept.fromJson(
              json['targetDisease'] as Map<String, dynamic>)
          : null,
      contraindicatedVaccineCode: json['contraindicatedVaccineCode'] != null
          ? (json['contraindicatedVaccineCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      forecastStatus: CodeableConcept.fromJson(
          json['forecastStatus'] as Map<String, dynamic>),
      forecastReason: json['forecastReason'] != null
          ? (json['forecastReason'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      dateCriterion: json['dateCriterion'] != null
          ? (json['dateCriterion'] as List<dynamic>)
              .map<ImmunizationRecommendationDateCriterion>((dynamic v) =>
                  ImmunizationRecommendationDateCriterion.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      series:
          json['series'] != null ? FhirString.fromJson(json['series']) : null,
      seriesElement: json['_series'] != null
          ? Element.fromJson(json['_series'] as Map<String, dynamic>)
          : null,
      doseNumberPositiveInt: json['doseNumberPositiveInt'] != null
          ? FhirPositiveInt.fromJson(json['doseNumberPositiveInt'])
          : null,
      doseNumberPositiveIntElement: json['_doseNumberPositiveInt'] != null
          ? Element.fromJson(
              json['_doseNumberPositiveInt'] as Map<String, dynamic>)
          : null,
      doseNumberString: json['doseNumberString'] != null
          ? FhirString.fromJson(json['doseNumberString'])
          : null,
      doseNumberStringElement: json['_doseNumberString'] != null
          ? Element.fromJson(json['_doseNumberString'] as Map<String, dynamic>)
          : null,
      seriesDosesPositiveInt: json['seriesDosesPositiveInt'] != null
          ? FhirPositiveInt.fromJson(json['seriesDosesPositiveInt'])
          : null,
      seriesDosesPositiveIntElement: json['_seriesDosesPositiveInt'] != null
          ? Element.fromJson(
              json['_seriesDosesPositiveInt'] as Map<String, dynamic>)
          : null,
      seriesDosesString: json['seriesDosesString'] != null
          ? FhirString.fromJson(json['seriesDosesString'])
          : null,
      seriesDosesStringElement: json['_seriesDosesString'] != null
          ? Element.fromJson(json['_seriesDosesString'] as Map<String, dynamic>)
          : null,
      supportingImmunization: json['supportingImmunization'] != null
          ? (json['supportingImmunization'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      supportingPatientInformation: json['supportingPatientInformation'] != null
          ? (json['supportingPatientInformation'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
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
    Element? descriptionElement,
    FhirString? series,
    Element? seriesElement,
    FhirPositiveInt? doseNumberPositiveInt,
    Element? doseNumberPositiveIntElement,
    FhirString? doseNumberString,
    Element? doseNumberStringElement,
    FhirPositiveInt? seriesDosesPositiveInt,
    Element? seriesDosesPositiveIntElement,
    FhirString? seriesDosesString,
    Element? seriesDosesStringElement,
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
      descriptionElement: descriptionElement ?? this.descriptionElement,
      series: series ?? this.series,
      seriesElement: seriesElement ?? this.seriesElement,
      doseNumberPositiveInt:
          doseNumberPositiveInt ?? this.doseNumberPositiveInt,
      doseNumberPositiveIntElement:
          doseNumberPositiveIntElement ?? this.doseNumberPositiveIntElement,
      doseNumberString: doseNumberString ?? this.doseNumberString,
      doseNumberStringElement:
          doseNumberStringElement ?? this.doseNumberStringElement,
      seriesDosesPositiveInt:
          seriesDosesPositiveInt ?? this.seriesDosesPositiveInt,
      seriesDosesPositiveIntElement:
          seriesDosesPositiveIntElement ?? this.seriesDosesPositiveIntElement,
      seriesDosesString: seriesDosesString ?? this.seriesDosesString,
      seriesDosesStringElement:
          seriesDosesStringElement ?? this.seriesDosesStringElement,
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

  factory ImmunizationRecommendationRecommendation.fromYaml(dynamic yaml) => yaml
          is String
      ? ImmunizationRecommendationRecommendation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImmunizationRecommendationRecommendation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImmunizationRecommendationRecommendation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

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
}

/// [ImmunizationRecommendationDateCriterion] /// Vaccine date recommendations. For example, earliest date to administer,
/// latest date to administer, etc.
class ImmunizationRecommendationDateCriterion extends BackboneElement {
  ImmunizationRecommendationDateCriterion({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.value,
    this.valueElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ImmunizationRecommendationDateCriterion';

  @Id()
  int dbId = 0;

  /// [code] /// Date classification of recommendation. For example, earliest date to give,
  /// latest date to give, etc.
  final CodeableConcept code;

  /// [value] /// The date whose meaning is specified by dateCriterion.code.
  final FhirDateTime value;
  final Element? valueElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['code'] = code.toJson();
    json['value'] = value.toJson();
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    return json;
  }

  factory ImmunizationRecommendationDateCriterion.fromJson(
      Map<String, dynamic> json) {
    return ImmunizationRecommendationDateCriterion(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      value: FhirDateTime.fromJson(json['value']),
      valueElement: json['_value'] != null
          ? Element.fromJson(json['_value'] as Map<String, dynamic>)
          : null,
    );
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
    Element? valueElement,
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
      valueElement: valueElement ?? this.valueElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImmunizationRecommendationDateCriterion.fromYaml(dynamic yaml) => yaml
          is String
      ? ImmunizationRecommendationDateCriterion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImmunizationRecommendationDateCriterion.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImmunizationRecommendationDateCriterion cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

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
}
