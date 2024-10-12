import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ImmunizationEvaluation]
/// Describes a comparison of an immunization event against published
/// recommendations to determine if the administration is "valid" in
/// relation to those recommendations.
class ImmunizationEvaluation extends DomainResource {
  /// Primary constructor for [ImmunizationEvaluation]

  ImmunizationEvaluation({
    super.id,
    super.meta,
    super.implicitRules,

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    required this.patient,
    this.date,

    /// Extensions for [date]
    this.dateElement,
    this.authority,
    required this.targetDisease,
    required this.immunizationEvent,
    required this.doseStatus,
    this.doseStatusReason,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    this.series,

    /// Extensions for [series]
    this.seriesElement,
    this.doseNumberPositiveInt,

    /// Extensions for [doseNumberPositiveInt]
    this.doseNumberPositiveIntElement,
    this.doseNumberString,

    /// Extensions for [doseNumberString]
    this.doseNumberStringElement,
    this.seriesDosesPositiveInt,

    /// Extensions for [seriesDosesPositiveInt]
    this.seriesDosesPositiveIntElement,
    this.seriesDosesString,

    /// Extensions for [seriesDosesString]
    this.seriesDosesStringElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.ImmunizationEvaluation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationEvaluation.fromJson(Map<String, dynamic> json) {
    return ImmunizationEvaluation(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: ImmunizationEvaluationStatusCodes.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      patient: Reference.fromJson(
        json['patient'] as Map<String, dynamic>,
      ),
      date: json['date'] != null ? FhirDateTime.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(
              json['_date'] as Map<String, dynamic>,
            )
          : null,
      authority: json['authority'] != null
          ? Reference.fromJson(
              json['authority'] as Map<String, dynamic>,
            )
          : null,
      targetDisease: CodeableConcept.fromJson(
        json['targetDisease'] as Map<String, dynamic>,
      ),
      immunizationEvent: Reference.fromJson(
        json['immunizationEvent'] as Map<String, dynamic>,
      ),
      doseStatus: CodeableConcept.fromJson(
        json['doseStatus'] as Map<String, dynamic>,
      ),
      doseStatusReason: json['doseStatusReason'] != null
          ? (json['doseStatusReason'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      series:
          json['series'] != null ? FhirString.fromJson(json['series']) : null,
      seriesElement: json['_series'] != null
          ? Element.fromJson(
              json['_series'] as Map<String, dynamic>,
            )
          : null,
      doseNumberPositiveInt: json['doseNumberPositiveInt'] != null
          ? FhirPositiveInt.fromJson(json['doseNumberPositiveInt'])
          : null,
      doseNumberPositiveIntElement: json['_doseNumberPositiveInt'] != null
          ? Element.fromJson(
              json['_doseNumberPositiveInt'] as Map<String, dynamic>,
            )
          : null,
      doseNumberString: json['doseNumberString'] != null
          ? FhirString.fromJson(json['doseNumberString'])
          : null,
      doseNumberStringElement: json['_doseNumberString'] != null
          ? Element.fromJson(
              json['_doseNumberString'] as Map<String, dynamic>,
            )
          : null,
      seriesDosesPositiveInt: json['seriesDosesPositiveInt'] != null
          ? FhirPositiveInt.fromJson(json['seriesDosesPositiveInt'])
          : null,
      seriesDosesPositiveIntElement: json['_seriesDosesPositiveInt'] != null
          ? Element.fromJson(
              json['_seriesDosesPositiveInt'] as Map<String, dynamic>,
            )
          : null,
      seriesDosesString: json['seriesDosesString'] != null
          ? FhirString.fromJson(json['seriesDosesString'])
          : null,
      seriesDosesStringElement: json['_seriesDosesString'] != null
          ? Element.fromJson(
              json['_seriesDosesString'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ImmunizationEvaluation] from a [String] or [YamlMap] object
  factory ImmunizationEvaluation.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationEvaluation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ImmunizationEvaluation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ImmunizationEvaluation cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ImmunizationEvaluation] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationEvaluation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationEvaluation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationEvaluation';

  /// [identifier]
  /// A unique identifier assigned to this immunization evaluation record.
  final List<Identifier>? identifier;

  /// [status]
  /// Indicates the current status of the evaluation of the vaccination
  /// administration event.
  final ImmunizationEvaluationStatusCodes status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [patient]
  /// The individual for whom the evaluation is being done.
  final Reference patient;

  /// [date]
  /// The date the evaluation of the vaccine administration event was
  /// performed.
  final FhirDateTime? date;

  /// Extensions for [date]
  final Element? dateElement;

  /// [authority]
  /// Indicates the authority who published the protocol (e.g. ACIP).
  final Reference? authority;

  /// [targetDisease]
  /// The vaccine preventable disease the dose is being evaluated against.
  final CodeableConcept targetDisease;

  /// [immunizationEvent]
  /// The vaccine administration event being evaluated.
  final Reference immunizationEvent;

  /// [doseStatus]
  /// Indicates if the dose is valid or not valid with respect to the
  /// published recommendations.
  final CodeableConcept doseStatus;

  /// [doseStatusReason]
  /// Provides an explanation as to why the vaccine administration event is
  /// valid or not relative to the published recommendations.
  final List<CodeableConcept>? doseStatusReason;

  /// [description]
  /// Additional information about the evaluation.
  final FhirString? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [series]
  /// One possible path to achieve presumed immunity against a disease -
  /// within the context of an authority.
  final FhirString? series;

  /// Extensions for [series]
  final Element? seriesElement;

  /// [doseNumberPositiveInt]
  /// Nominal position in a series.
  final FhirPositiveInt? doseNumberPositiveInt;

  /// Extensions for [doseNumberPositiveInt]
  final Element? doseNumberPositiveIntElement;

  /// [doseNumberString]
  /// Nominal position in a series.
  final FhirString? doseNumberString;

  /// Extensions for [doseNumberString]
  final Element? doseNumberStringElement;

  /// [seriesDosesPositiveInt]
  /// The recommended number of doses to achieve immunity.
  final FhirPositiveInt? seriesDosesPositiveInt;

  /// Extensions for [seriesDosesPositiveInt]
  final Element? seriesDosesPositiveIntElement;

  /// [seriesDosesString]
  /// The recommended number of doses to achieve immunity.
  final FhirString? seriesDosesString;

  /// Extensions for [seriesDosesString]
  final Element? seriesDosesStringElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    json['patient'] = patient.toJson();
    if (date?.value != null) {
      json['date'] = date!.toJson();
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (authority != null) {
      json['authority'] = authority!.toJson();
    }
    json['targetDisease'] = targetDisease.toJson();
    json['immunizationEvent'] = immunizationEvent.toJson();
    json['doseStatus'] = doseStatus.toJson();
    if (doseStatusReason != null && doseStatusReason!.isNotEmpty) {
      json['doseStatusReason'] =
          doseStatusReason!.map((CodeableConcept v) => v.toJson()).toList();
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
    return json;
  }

  @override
  ImmunizationEvaluation clone() => throw UnimplementedError();
  @override
  ImmunizationEvaluation copyWith({
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
    ImmunizationEvaluationStatusCodes? status,
    Element? statusElement,
    Reference? patient,
    FhirDateTime? date,
    Element? dateElement,
    Reference? authority,
    CodeableConcept? targetDisease,
    Reference? immunizationEvent,
    CodeableConcept? doseStatus,
    List<CodeableConcept>? doseStatusReason,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImmunizationEvaluation(
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
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      patient: patient ?? this.patient,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      authority: authority ?? this.authority,
      targetDisease: targetDisease ?? this.targetDisease,
      immunizationEvent: immunizationEvent ?? this.immunizationEvent,
      doseStatus: doseStatus ?? this.doseStatus,
      doseStatusReason: doseStatusReason ?? this.doseStatusReason,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
