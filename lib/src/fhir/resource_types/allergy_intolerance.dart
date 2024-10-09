import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [AllergyIntolerance] /// Risk of harmful or undesirable, physiological response which is unique to
/// an individual and associated with exposure to a substance.
@JsonSerializable()
class AllergyIntolerance extends DomainResource {
  AllergyIntolerance({
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
    this.clinicalStatus,
    this.verificationStatus,
    this.type,
    this.typeElement,
    this.category,
    this.categoryElement,
    this.criticality,
    this.criticalityElement,
    this.code,
    required this.patient,
    this.encounter,
    this.onsetDateTime,
    this.onsetDateTimeElement,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.onsetStringElement,
    this.recordedDate,
    this.recordedDateElement,
    this.recorder,
    this.asserter,
    this.lastOccurrence,
    this.lastOccurrenceElement,
    this.note,
    this.reaction,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.AllergyIntolerance);
  @override
  String get fhirType => 'AllergyIntolerance';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this AllergyIntolerance by the performer
  /// or other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [clinicalStatus] /// The clinical status of the allergy or intolerance.
  @JsonKey(name: 'clinicalStatus')
  final CodeableConcept? clinicalStatus;

  /// [verificationStatus] /// Assertion about certainty associated with the propensity, or potential
  /// risk, of a reaction to the identified substance (including pharmaceutical
  /// product).
  @JsonKey(name: 'verificationStatus')
  final CodeableConcept? verificationStatus;

  /// [type] /// Identification of the underlying physiological mechanism for the reaction
  /// risk.
  @JsonKey(name: 'type')
  final AllergyIntoleranceType? type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [category] /// Category of the identified substance.
  @JsonKey(name: 'category')
  final List<AllergyIntoleranceCategory>? category;
  @JsonKey(name: '_category')
  final List<Element>? categoryElement;

  /// [criticality] /// Estimate of the potential clinical harm, or seriousness, of the reaction to
  /// the identified substance.
  @JsonKey(name: 'criticality')
  final AllergyIntoleranceCriticality? criticality;
  @JsonKey(name: '_criticality')
  final Element? criticalityElement;

  /// [code] /// Code for an allergy or intolerance statement (either a positive or a
  /// negated/excluded statement). This may be a code for a substance or
  /// pharmaceutical product that is considered to be responsible for the adverse
  /// reaction risk (e.g., "Latex"), an allergy or intolerance condition (e.g.,
  /// "Latex allergy"), or a negated/excluded code for a specific substance or
  /// class (e.g., "No latex allergy") or a general or categorical negated
  /// statement (e.g., "No known allergy", "No known drug allergies"). Note: the
  /// substance for a specific reaction may be different from the substance
  /// identified as the cause of the risk, but it must be consistent with it. For
  /// instance, it may be a more specific substance (e.g. a brand medication) or
  /// a composite product that includes the identified substance. It must be
  /// clinically safe to only process the 'code' and ignore the
  /// 'reaction.substance'. If a receiving system is unable to confirm that
  /// AllergyIntolerance.reaction.substance falls within the semantic scope of
  /// AllergyIntolerance.code, then the receiving system should ignore
  /// AllergyIntolerance.reaction.substance.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [patient] /// The patient who has the allergy or intolerance.
  @JsonKey(name: 'patient')
  final Reference patient;

  /// [encounter] /// The encounter when the allergy or intolerance was asserted.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [onsetDateTime] /// Estimated or actual date, date-time, or age when allergy or intolerance was
  /// identified.
  @JsonKey(name: 'onsetDateTime')
  final FhirDateTime? onsetDateTime;
  @JsonKey(name: '_onsetDateTime')
  final Element? onsetDateTimeElement;

  /// [onsetAge] /// Estimated or actual date, date-time, or age when allergy or intolerance was
  /// identified.
  @JsonKey(name: 'onsetAge')
  final Age? onsetAge;

  /// [onsetPeriod] /// Estimated or actual date, date-time, or age when allergy or intolerance was
  /// identified.
  @JsonKey(name: 'onsetPeriod')
  final Period? onsetPeriod;

  /// [onsetRange] /// Estimated or actual date, date-time, or age when allergy or intolerance was
  /// identified.
  @JsonKey(name: 'onsetRange')
  final Range? onsetRange;

  /// [onsetString] /// Estimated or actual date, date-time, or age when allergy or intolerance was
  /// identified.
  @JsonKey(name: 'onsetString')
  final FhirString? onsetString;
  @JsonKey(name: '_onsetString')
  final Element? onsetStringElement;

  /// [recordedDate] /// The recordedDate represents when this particular AllergyIntolerance record
  /// was created in the system, which is often a system-generated date.
  @JsonKey(name: 'recordedDate')
  final FhirDateTime? recordedDate;
  @JsonKey(name: '_recordedDate')
  final Element? recordedDateElement;

  /// [recorder] /// Individual who recorded the record and takes responsibility for its
  /// content.
  @JsonKey(name: 'recorder')
  final Reference? recorder;

  /// [asserter] /// The source of the information about the allergy that is recorded.
  @JsonKey(name: 'asserter')
  final Reference? asserter;

  /// [lastOccurrence] /// Represents the date and/or time of the last known occurrence of a reaction
  /// event.
  @JsonKey(name: 'lastOccurrence')
  final FhirDateTime? lastOccurrence;
  @JsonKey(name: '_lastOccurrence')
  final Element? lastOccurrenceElement;

  /// [note] /// Additional narrative about the propensity for the Adverse Reaction, not
  /// captured in other fields.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [reaction] /// Details about each adverse reaction event linked to exposure to the
  /// identified substance.
  @JsonKey(name: 'reaction')
  final List<AllergyIntoleranceReaction>? reaction;
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
      json['implicitRules'] = implicitRules!.value;
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
    if (clinicalStatus != null) {
      json['clinicalStatus'] = clinicalStatus!.toJson();
    }
    if (verificationStatus != null) {
      json['verificationStatus'] = verificationStatus!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (category != null && category!.isNotEmpty) {
      json['category'] = category!
          .map<dynamic>((AllergyIntoleranceCategory v) => v.toJson())
          .toList();
    }
    if (criticality != null) {
      json['criticality'] = criticality!.toJson();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    json['patient'] = patient.toJson();
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (onsetDateTime?.value != null) {
      json['onsetDateTime'] = onsetDateTime!.value;
    }
    if (onsetDateTimeElement != null) {
      json['_onsetDateTime'] = onsetDateTimeElement!.toJson();
    }
    if (onsetAge != null) {
      json['onsetAge'] = onsetAge!.toJson();
    }
    if (onsetPeriod != null) {
      json['onsetPeriod'] = onsetPeriod!.toJson();
    }
    if (onsetRange != null) {
      json['onsetRange'] = onsetRange!.toJson();
    }
    if (onsetString?.value != null) {
      json['onsetString'] = onsetString!.value;
    }
    if (onsetStringElement != null) {
      json['_onsetString'] = onsetStringElement!.toJson();
    }
    if (recordedDate?.value != null) {
      json['recordedDate'] = recordedDate!.value;
    }
    if (recordedDateElement != null) {
      json['_recordedDate'] = recordedDateElement!.toJson();
    }
    if (recorder != null) {
      json['recorder'] = recorder!.toJson();
    }
    if (asserter != null) {
      json['asserter'] = asserter!.toJson();
    }
    if (lastOccurrence?.value != null) {
      json['lastOccurrence'] = lastOccurrence!.value;
    }
    if (lastOccurrenceElement != null) {
      json['_lastOccurrence'] = lastOccurrenceElement!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (reaction != null && reaction!.isNotEmpty) {
      json['reaction'] = reaction!
          .map<dynamic>((AllergyIntoleranceReaction v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory AllergyIntolerance.fromJson(Map<String, dynamic> json) {
    return AllergyIntolerance(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
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
      clinicalStatus: json['clinicalStatus'] != null
          ? CodeableConcept.fromJson(
              json['clinicalStatus'] as Map<String, dynamic>)
          : null,
      verificationStatus: json['verificationStatus'] != null
          ? CodeableConcept.fromJson(
              json['verificationStatus'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? AllergyIntoleranceType.fromJson(
              json['type'] as Map<String, dynamic>)
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<AllergyIntoleranceCategory>((dynamic v) =>
                  AllergyIntoleranceCategory.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      criticality: json['criticality'] != null
          ? AllergyIntoleranceCriticality.fromJson(
              json['criticality'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      onsetDateTime: json['onsetDateTime'] != null
          ? FhirDateTime(json['onsetDateTime'])
          : null,
      onsetDateTimeElement: json['_onsetDateTime'] != null
          ? Element.fromJson(json['_onsetDateTime'] as Map<String, dynamic>)
          : null,
      onsetAge: json['onsetAge'] != null
          ? Age.fromJson(json['onsetAge'] as Map<String, dynamic>)
          : null,
      onsetPeriod: json['onsetPeriod'] != null
          ? Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>)
          : null,
      onsetRange: json['onsetRange'] != null
          ? Range.fromJson(json['onsetRange'] as Map<String, dynamic>)
          : null,
      onsetString:
          json['onsetString'] != null ? FhirString(json['onsetString']) : null,
      onsetStringElement: json['_onsetString'] != null
          ? Element.fromJson(json['_onsetString'] as Map<String, dynamic>)
          : null,
      recordedDate: json['recordedDate'] != null
          ? FhirDateTime(json['recordedDate'])
          : null,
      recordedDateElement: json['_recordedDate'] != null
          ? Element.fromJson(json['_recordedDate'] as Map<String, dynamic>)
          : null,
      recorder: json['recorder'] != null
          ? Reference.fromJson(json['recorder'] as Map<String, dynamic>)
          : null,
      asserter: json['asserter'] != null
          ? Reference.fromJson(json['asserter'] as Map<String, dynamic>)
          : null,
      lastOccurrence: json['lastOccurrence'] != null
          ? FhirDateTime(json['lastOccurrence'])
          : null,
      lastOccurrenceElement: json['_lastOccurrence'] != null
          ? Element.fromJson(json['_lastOccurrence'] as Map<String, dynamic>)
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reaction: json['reaction'] != null
          ? (json['reaction'] as List<dynamic>)
              .map<AllergyIntoleranceReaction>((dynamic v) =>
                  AllergyIntoleranceReaction.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  AllergyIntolerance clone() => throw UnimplementedError();
  @override
  AllergyIntolerance copyWith({
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
    CodeableConcept? clinicalStatus,
    CodeableConcept? verificationStatus,
    AllergyIntoleranceType? type,
    Element? typeElement,
    List<AllergyIntoleranceCategory>? category,
    List<Element>? categoryElement,
    AllergyIntoleranceCriticality? criticality,
    Element? criticalityElement,
    CodeableConcept? code,
    Reference? patient,
    Reference? encounter,
    FhirDateTime? onsetDateTime,
    Element? onsetDateTimeElement,
    Age? onsetAge,
    Period? onsetPeriod,
    Range? onsetRange,
    FhirString? onsetString,
    Element? onsetStringElement,
    FhirDateTime? recordedDate,
    Element? recordedDateElement,
    Reference? recorder,
    Reference? asserter,
    FhirDateTime? lastOccurrence,
    Element? lastOccurrenceElement,
    List<Annotation>? note,
    List<AllergyIntoleranceReaction>? reaction,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AllergyIntolerance(
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
      clinicalStatus: clinicalStatus ?? this.clinicalStatus,
      verificationStatus: verificationStatus ?? this.verificationStatus,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      category: category ?? this.category,
      categoryElement: categoryElement ?? this.categoryElement,
      criticality: criticality ?? this.criticality,
      criticalityElement: criticalityElement ?? this.criticalityElement,
      code: code ?? this.code,
      patient: patient ?? this.patient,
      encounter: encounter ?? this.encounter,
      onsetDateTime: onsetDateTime ?? this.onsetDateTime,
      onsetDateTimeElement: onsetDateTimeElement ?? this.onsetDateTimeElement,
      onsetAge: onsetAge ?? this.onsetAge,
      onsetPeriod: onsetPeriod ?? this.onsetPeriod,
      onsetRange: onsetRange ?? this.onsetRange,
      onsetString: onsetString ?? this.onsetString,
      onsetStringElement: onsetStringElement ?? this.onsetStringElement,
      recordedDate: recordedDate ?? this.recordedDate,
      recordedDateElement: recordedDateElement ?? this.recordedDateElement,
      recorder: recorder ?? this.recorder,
      asserter: asserter ?? this.asserter,
      lastOccurrence: lastOccurrence ?? this.lastOccurrence,
      lastOccurrenceElement:
          lastOccurrenceElement ?? this.lastOccurrenceElement,
      note: note ?? this.note,
      reaction: reaction ?? this.reaction,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AllergyIntolerance.fromYaml(dynamic yaml) => yaml is String
      ? AllergyIntolerance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AllergyIntolerance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AllergyIntolerance cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AllergyIntolerance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AllergyIntolerance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [AllergyIntoleranceReaction] /// Details about each adverse reaction event linked to exposure to the
/// identified substance.
@JsonSerializable()
class AllergyIntoleranceReaction extends BackboneElement {
  AllergyIntoleranceReaction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substance,
    required this.manifestation,
    this.description,
    this.descriptionElement,
    this.onset,
    this.onsetElement,
    this.severity,
    this.severityElement,
    this.exposureRoute,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'AllergyIntoleranceReaction';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [substance] /// Identification of the specific substance (or pharmaceutical product)
  /// considered to be responsible for the Adverse Reaction event. Note: the
  /// substance for a specific reaction may be different from the substance
  /// identified as the cause of the risk, but it must be consistent with it. For
  /// instance, it may be a more specific substance (e.g. a brand medication) or
  /// a composite product that includes the identified substance. It must be
  /// clinically safe to only process the 'code' and ignore the
  /// 'reaction.substance'. If a receiving system is unable to confirm that
  /// AllergyIntolerance.reaction.substance falls within the semantic scope of
  /// AllergyIntolerance.code, then the receiving system should ignore
  /// AllergyIntolerance.reaction.substance.
  @JsonKey(name: 'substance')
  final CodeableConcept? substance;

  /// [manifestation] /// Clinical symptoms and/or signs that are observed or associated with the
  /// adverse reaction event.
  @JsonKey(name: 'manifestation')
  final List<CodeableConcept> manifestation;

  /// [description] /// Text description about the reaction as a whole, including details of the
  /// manifestation if required.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [onset] /// Record of the date and/or time of the onset of the Reaction.
  @JsonKey(name: 'onset')
  final FhirDateTime? onset;
  @JsonKey(name: '_onset')
  final Element? onsetElement;

  /// [severity] /// Clinical assessment of the severity of the reaction event as a whole,
  /// potentially considering multiple different manifestations.
  @JsonKey(name: 'severity')
  final AllergyIntoleranceSeverity? severity;
  @JsonKey(name: '_severity')
  final Element? severityElement;

  /// [exposureRoute] /// Identification of the route by which the subject was exposed to the
  /// substance.
  @JsonKey(name: 'exposureRoute')
  final CodeableConcept? exposureRoute;

  /// [note] /// Additional text about the adverse reaction event not captured in other
  /// fields.
  @JsonKey(name: 'note')
  final List<Annotation>? note;
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
    if (substance != null) {
      json['substance'] = substance!.toJson();
    }
    json['manifestation'] =
        manifestation.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (onset?.value != null) {
      json['onset'] = onset!.value;
    }
    if (onsetElement != null) {
      json['_onset'] = onsetElement!.toJson();
    }
    if (severity != null) {
      json['severity'] = severity!.toJson();
    }
    if (exposureRoute != null) {
      json['exposureRoute'] = exposureRoute!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    return json;
  }

  factory AllergyIntoleranceReaction.fromJson(Map<String, dynamic> json) {
    return AllergyIntoleranceReaction(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      substance: json['substance'] != null
          ? CodeableConcept.fromJson(json['substance'] as Map<String, dynamic>)
          : null,
      manifestation: (json['manifestation'] as List<dynamic>)
          .map<CodeableConcept>((dynamic v) =>
              CodeableConcept.fromJson(v as Map<String, dynamic>))
          .toList(),
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      onset: json['onset'] != null ? FhirDateTime(json['onset']) : null,
      onsetElement: json['_onset'] != null
          ? Element.fromJson(json['_onset'] as Map<String, dynamic>)
          : null,
      severity: json['severity'] != null
          ? AllergyIntoleranceSeverity.fromJson(
              json['severity'] as Map<String, dynamic>)
          : null,
      exposureRoute: json['exposureRoute'] != null
          ? CodeableConcept.fromJson(
              json['exposureRoute'] as Map<String, dynamic>)
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  AllergyIntoleranceReaction clone() => throw UnimplementedError();
  @override
  AllergyIntoleranceReaction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? substance,
    List<CodeableConcept>? manifestation,
    FhirString? description,
    Element? descriptionElement,
    FhirDateTime? onset,
    Element? onsetElement,
    AllergyIntoleranceSeverity? severity,
    Element? severityElement,
    CodeableConcept? exposureRoute,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AllergyIntoleranceReaction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substance: substance ?? this.substance,
      manifestation: manifestation ?? this.manifestation,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      onset: onset ?? this.onset,
      onsetElement: onsetElement ?? this.onsetElement,
      severity: severity ?? this.severity,
      severityElement: severityElement ?? this.severityElement,
      exposureRoute: exposureRoute ?? this.exposureRoute,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AllergyIntoleranceReaction.fromYaml(dynamic yaml) => yaml is String
      ? AllergyIntoleranceReaction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AllergyIntoleranceReaction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AllergyIntoleranceReaction cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AllergyIntoleranceReaction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AllergyIntoleranceReaction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
