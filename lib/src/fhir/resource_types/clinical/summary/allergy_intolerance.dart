// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'allergy_intolerance.freezed.dart';
part 'allergy_intolerance.g.dart';

/// [AllergyIntolerance] Risk of harmful or undesirable, physiological
@freezed
class AllergyIntolerance with _$AllergyIntolerance implements DomainResource {
  /// [AllergyIntolerance] Risk of harmful or undesirable, physiological
  const AllergyIntolerance._();

  /// [AllergyIntolerance] Risk of harmful or undesirable, physiological
  /// response which is unique to an individual and associated with exposure to
  ///  a substance.
  ///
  /// [resourceType] This is a AllergyIntolerance resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] Business identifiers assigned to this AllergyIntolerance by
  /// the performer or other systems which remain constant as the resource is
  ///  updated and propagates from server to server.
  ///
  /// [clinicalStatus] The clinical status of the allergy or intolerance.
  ///
  /// [verificationStatus] Assertion about certainty associated with the
  /// propensity, or potential risk, of a reaction to the identified substance
  ///  (including pharmaceutical product).
  ///
  /// [type] Identification of the underlying physiological mechanism for the
  ///  reaction risk.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [category] Category of the identified substance.
  ///
  /// [categoryElement] Extensions for category
  ///
  /// [criticality] Estimate of the potential clinical harm, or seriousness, of
  ///  the reaction to the identified substance.
  ///
  /// [criticalityElement] Extensions for criticality
  ///
  /// [code] Code for an allergy or intolerance statement (either a positive or
  /// a negated/excluded statement).  This may be a code for a substance or
  /// pharmaceutical product that is considered to be responsible for the
  /// adverse reaction risk (e.g., "Latex"), an allergy or intolerance condition
  /// (e.g., "Latex allergy"), or a negated/excluded code for a specific
  /// substance or class (e.g., "No latex allergy") or a general or categorical
  /// negated statement (e.g.,  "No known allergy", "No known drug allergies").
  /// Note: the substance for a specific reaction may be different from the
  /// substance identified as the cause of the risk, but it must be consistent
  /// with it. For instance, it may be a more specific substance (e.g. a brand
  /// medication) or a composite product that includes the identified substance.
  /// It must be clinically safe to only process the 'code' and ignore the
  /// 'reaction.substance'.  If a receiving system is unable to confirm that
  /// AllergyIntolerance.reaction.substance falls within the semantic scope of
  /// AllergyIntolerance.code, then the receiving system should ignore
  ///  AllergyIntolerance.reaction.substance.
  ///
  /// [patient] The patient who has the allergy or intolerance.
  ///
  /// [encounter] The encounter when the allergy or intolerance was asserted.
  ///
  /// [onsetDateTime] Estimated or actual date,  date-time, or age when allergy
  ///  or intolerance was identified.
  ///
  /// [onsetDateTimeElement] Extensions for onsetDateTime
  ///
  /// [onsetAge] Estimated or actual date,  date-time, or age when allergy or
  ///  intolerance was identified.
  ///
  /// [onsetPeriod] Estimated or actual date,  date-time, or age when allergy
  ///  or intolerance was identified.
  ///
  /// [onsetRange] Estimated or actual date,  date-time, or age when allergy or
  ///  intolerance was identified.
  ///
  /// [onsetString] Estimated or actual date,  date-time, or age when allergy
  ///  or intolerance was identified.
  ///
  /// [onsetStringElement] Extensions for onsetString
  ///
  /// [recordedDate] The recordedDate represents when this particular
  /// AllergyIntolerance record was created in the system, which is often a
  ///  system-generated date.
  ///
  /// [recordedDateElement] Extensions for recordedDate
  ///
  /// [recorder] Individual who recorded the record and takes responsibility
  ///  for its content.
  ///
  /// [asserter] The source of the information about the allergy that is
  ///  recorded.
  ///
  /// [lastOccurrence] Represents the date and/or time of the last known
  ///  occurrence of a reaction event.
  ///
  /// [lastOccurrenceElement] Extensions for lastOccurrence
  ///
  /// [note] Additional narrative about the propensity for the Adverse
  ///  Reaction, not captured in other fields.
  ///
  /// [reaction] Details about each adverse reaction event linked to exposure
  ///  to the identified substance.
  const factory AllergyIntolerance({
    @Default(R4ResourceType.AllergyIntolerance)
    @JsonKey(unknownEnumValue: R4ResourceType.AllergyIntolerance)
    R4ResourceType resourceType,
    String? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
    FhirCode? language,
    @JsonKey(name: '_language') PrimitiveElement? languageElement,
    Narrative? text,
    List<Resource>? contained,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? clinicalStatus,
    CodeableConcept? verificationStatus,
    FhirCode? type,
    @JsonKey(name: '_type') PrimitiveElement? typeElement,
    List<FhirCode>? category,
    @JsonKey(name: '_category') List<PrimitiveElement>? categoryElement,
    FhirCode? criticality,
    @JsonKey(name: '_criticality') PrimitiveElement? criticalityElement,
    CodeableConcept? code,
    required Reference patient,
    Reference? encounter,
    FhirDateTime? onsetDateTime,
    @JsonKey(name: '_onsetDateTime') PrimitiveElement? onsetDateTimeElement,
    Age? onsetAge,
    Period? onsetPeriod,
    Range? onsetRange,
    String? onsetString,
    @JsonKey(name: '_onsetString') PrimitiveElement? onsetStringElement,
    FhirDateTime? recordedDate,
    @JsonKey(name: '_recordedDate') PrimitiveElement? recordedDateElement,
    Reference? recorder,
    Reference? asserter,
    FhirDateTime? lastOccurrence,
    @JsonKey(name: '_lastOccurrence') PrimitiveElement? lastOccurrenceElement,
    List<Annotation>? note,
    List<AllergyIntoleranceReaction>? reaction,
  }) = _AllergyIntolerance;

  @override
  String get fhirType => 'AllergyIntolerance';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AllergyIntolerance.fromYaml(dynamic yaml) => yaml is String
      ? AllergyIntolerance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AllergyIntolerance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AllergyIntolerance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AllergyIntolerance.fromJson(Map<String, dynamic> json) =>
      _$AllergyIntoleranceFromJson(json);

  /// Acts like a constructor, returns a [AllergyIntolerance], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AllergyIntolerance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AllergyIntoleranceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [AllergyIntoleranceReaction] Risk of harmful or undesirable,
@freezed

/// [AllergyIntoleranceReaction] Risk of harmful or undesirable,
@freezed
class AllergyIntoleranceReaction
    with _$AllergyIntoleranceReaction
    implements BackboneElement {
  /// [AllergyIntoleranceReaction] Risk of harmful or undesirable,
  const AllergyIntoleranceReaction._();

  /// [AllergyIntoleranceReaction] Risk of harmful or undesirable,
  /// physiological response which is unique to an individual and associated
  ///  with exposure to a substance.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [substance] Identification of the specific substance (or pharmaceutical
  /// product) considered to be responsible for the Adverse Reaction event.
  /// Note: the substance for a specific reaction may be different from the
  /// substance identified as the cause of the risk, but it must be consistent
  /// with it. For instance, it may be a more specific substance (e.g. a brand
  /// medication) or a composite product that includes the identified substance.
  /// It must be clinically safe to only process the 'code' and ignore the
  /// 'reaction.substance'.  If a receiving system is unable to confirm that
  /// AllergyIntolerance.reaction.substance falls within the semantic scope of
  /// AllergyIntolerance.code, then the receiving system should ignore
  ///  AllergyIntolerance.reaction.substance.
  ///
  /// [manifestation] Clinical symptoms and/or signs that are observed or
  ///  associated with the adverse reaction event.
  ///
  /// [description] Text description about the reaction as a whole, including
  ///  details of the manifestation if required.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [onset] Record of the date and/or time of the onset of the Reaction.
  ///
  /// [onsetElement] Extensions for onset
  ///
  /// [severity] Clinical assessment of the severity of the reaction event as a
  ///  whole, potentially considering multiple different manifestations.
  ///
  /// [severityElement] Extensions for severity
  ///
  /// [exposureRoute] Identification of the route by which the subject was
  ///  exposed to the substance.
  ///
  /// [note] Additional text about the adverse reaction event not captured in
  ///  other fields.
  const factory AllergyIntoleranceReaction({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? substance,
    required List<CodeableConcept> manifestation,
    String? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    FhirDateTime? onset,
    @JsonKey(name: '_onset') PrimitiveElement? onsetElement,
    FhirCode? severity,
    @JsonKey(name: '_severity') PrimitiveElement? severityElement,
    CodeableConcept? exposureRoute,
    List<Annotation>? note,
  }) = _AllergyIntoleranceReaction;

  @override
  String get fhirType => 'AllergyIntoleranceReaction';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AllergyIntoleranceReaction.fromYaml(dynamic yaml) => yaml is String
      ? AllergyIntoleranceReaction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AllergyIntoleranceReaction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AllergyIntoleranceReaction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AllergyIntoleranceReaction.fromJson(Map<String, dynamic> json) =>
      _$AllergyIntoleranceReactionFromJson(json);

  /// Acts like a constructor, returns a [AllergyIntoleranceReaction], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AllergyIntoleranceReaction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AllergyIntoleranceReactionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
