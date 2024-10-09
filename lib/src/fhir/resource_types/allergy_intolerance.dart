import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'allergy_intolerance.g.dart';

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
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
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
  factory AllergyIntolerance.fromJson(Map<String, dynamic> json) =>
      _$AllergyIntoleranceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AllergyIntoleranceToJson(this);

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
  factory AllergyIntoleranceReaction.fromJson(Map<String, dynamic> json) =>
      _$AllergyIntoleranceReactionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AllergyIntoleranceReactionToJson(this);

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
