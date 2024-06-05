// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'family_member_history.freezed.dart';
part 'family_member_history.g.dart';

/// [FamilyMemberHistory] Significant health conditions for a person related
@freezed
class FamilyMemberHistory with _$FamilyMemberHistory implements DomainResource {
  /// [FamilyMemberHistory] Significant health conditions for a person related
  const FamilyMemberHistory._();

  /// [FamilyMemberHistory] Significant health conditions for a person related
  ///  to the patient relevant in the context of care for the patient.
  ///
  /// [resourceType] This is a FamilyMemberHistory resource
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
  /// [identifier] Business identifiers assigned to this family member history
  /// by the performer or other systems which remain constant as the resource is
  ///  updated and propagates from server to server.
  ///
  /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
  /// guideline, orderset or other definition that is adhered to in whole or in
  ///  part by this FamilyMemberHistory.
  ///
  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, orderset or other definition that is adhered to in whole or in
  ///  part by this FamilyMemberHistory.
  ///
  /// [instantiatesUriElement] Extensions for instantiatesUri
  ///
  /// [status] A code specifying the status of the record of the family history
  ///  of a specific family member.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [dataAbsentReason] Describes why the family member's history is not
  ///  available.
  ///
  /// [patient] The person who this history concerns.
  ///
  /// [date] The date (and possibly time) when the family member history was
  ///  recorded or last updated.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [name] This will either be a name or a description; e.g. "Aunt Susan",
  ///  "my cousin with the red hair".
  ///
  /// [nameElement] Extensions for name
  ///
  /// [relationship] The type of relationship this person has to the patient
  ///  (father, mother, brother etc.).
  ///
  /// [sex] The birth sex of the family member.
  ///
  /// [bornPeriod] The actual or approximate date of birth of the relative.
  ///
  /// [bornDate] The actual or approximate date of birth of the relative.
  ///
  /// [bornDateElement] Extensions for bornDate
  ///
  /// [bornString] The actual or approximate date of birth of the relative.
  ///
  /// [bornStringElement] Extensions for bornString
  ///
  /// [ageAge] The age of the relative at the time the family member history is
  ///  recorded.
  ///
  /// [ageRange] The age of the relative at the time the family member history
  ///  is recorded.
  ///
  /// [ageString] The age of the relative at the time the family member history
  ///  is recorded.
  ///
  /// [ageStringElement] Extensions for ageString
  ///
  /// [estimatedAge] If true, indicates that the age value specified is an
  ///  estimated value.
  ///
  /// [estimatedAgeElement] Extensions for estimatedAge
  ///
  /// [deceasedBoolean] Deceased flag or the actual or approximate age of the
  ///  relative at the time of death for the family member history record.
  ///
  /// [deceasedBooleanElement] Extensions for deceasedBoolean
  ///
  /// [deceasedAge] Deceased flag or the actual or approximate age of the
  ///  relative at the time of death for the family member history record.
  ///
  /// [deceasedRange] Deceased flag or the actual or approximate age of the
  ///  relative at the time of death for the family member history record.
  ///
  /// [deceasedDate] Deceased flag or the actual or approximate age of the
  ///  relative at the time of death for the family member history record.
  ///
  /// [deceasedDateElement] Extensions for deceasedDate
  ///
  /// [deceasedString] Deceased flag or the actual or approximate age of the
  ///  relative at the time of death for the family member history record.
  ///
  /// [deceasedStringElement] Extensions for deceasedString
  ///
  /// [reasonCode] Describes why the family member history occurred in coded or
  ///  textual form.
  ///
  /// [reasonReference] Indicates a Condition, Observation, AllergyIntolerance,
  ///  or QuestionnaireResponse that justifies this family member history event.
  ///
  /// [note] This property allows a non condition-specific note to the made
  /// about the related person. Ideally, the note would be in the condition
  ///  property, but this is not always possible.
  ///
  /// [condition] The significant Conditions (or condition) that the family
  /// member had. This is a repeating section to allow a system to represent
  /// more than one condition per resource, though there is nothing stopping
  ///  multiple resources - one per condition.
  const factory FamilyMemberHistory({
    @Default(R4ResourceType.FamilyMemberHistory)
    @JsonKey(unknownEnumValue: R4ResourceType.FamilyMemberHistory)
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
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    @JsonKey(name: '_instantiatesUri') List<Element?>? instantiatesUriElement,
    FhirCode? status,
    @JsonKey(name: '_status') PrimitiveElement? statusElement,
    CodeableConcept? dataAbsentReason,
    required Reference patient,
    FhirDateTime? date,
    @JsonKey(name: '_date') PrimitiveElement? dateElement,
    String? name,
    @JsonKey(name: '_name') PrimitiveElement? nameElement,
    required CodeableConcept relationship,
    CodeableConcept? sex,
    Period? bornPeriod,
    FhirDate? bornDate,
    @JsonKey(name: '_bornDate') PrimitiveElement? bornDateElement,
    String? bornString,
    @JsonKey(name: '_bornString') PrimitiveElement? bornStringElement,
    Age? ageAge,
    Range? ageRange,
    String? ageString,
    @JsonKey(name: '_ageString') PrimitiveElement? ageStringElement,
    FhirBoolean? estimatedAge,
    @JsonKey(name: '_estimatedAge') PrimitiveElement? estimatedAgeElement,
    FhirBoolean? deceasedBoolean,
    @JsonKey(name: '_deceasedBoolean') PrimitiveElement? deceasedBooleanElement,
    Age? deceasedAge,
    Range? deceasedRange,
    FhirDate? deceasedDate,
    @JsonKey(name: '_deceasedDate') PrimitiveElement? deceasedDateElement,
    String? deceasedString,
    @JsonKey(name: '_deceasedString') PrimitiveElement? deceasedStringElement,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    List<FamilyMemberHistoryCondition>? condition,
  }) = _FamilyMemberHistory;

  @override
  String get fhirType => 'FamilyMemberHistory';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory FamilyMemberHistory.fromYaml(dynamic yaml) => yaml is String
      ? FamilyMemberHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? FamilyMemberHistory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'FamilyMemberHistory cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory FamilyMemberHistory.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberHistoryFromJson(json);

  /// Acts like a constructor, returns a [FamilyMemberHistory], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory FamilyMemberHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$FamilyMemberHistoryFromJson(json);
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
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}

/// [FamilyMemberHistoryCondition] Significant health conditions for a
@freezed

/// [FamilyMemberHistoryCondition] Significant health conditions for a
@freezed
class FamilyMemberHistoryCondition
    with _$FamilyMemberHistoryCondition
    implements BackboneElement {
  /// [FamilyMemberHistoryCondition] Significant health conditions for a
  const FamilyMemberHistoryCondition._();

  /// [FamilyMemberHistoryCondition] Significant health conditions for a
  /// person related to the patient relevant in the context of care for the
  ///  patient.
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
  /// [code] The actual condition specified. Could be a coded condition (like
  /// MI or Diabetes) or a less specific string like 'cancer' depending on how
  /// much is known about the condition and the capabilities of the creating
  ///  system.
  ///
  /// [outcome] Indicates what happened following the condition.  If the
  ///  condition resulted in death, deceased date is captured on the relation.
  ///
  /// [contributedToDeath] This condition contributed to the cause of death of
  /// the related person. If contributedToDeath is not populated, then it is
  ///  unknown.
  ///
  /// [contributedToDeathElement] Extensions for contributedToDeath
  ///
  /// [onsetAge] Either the age of onset, range of approximate age or
  /// descriptive string can be recorded.  For conditions with multiple
  ///  occurrences, this describes the first known occurrence.
  ///
  /// [onsetRange] Either the age of onset, range of approximate age or
  /// descriptive string can be recorded.  For conditions with multiple
  ///  occurrences, this describes the first known occurrence.
  ///
  /// [onsetPeriod] Either the age of onset, range of approximate age or
  /// descriptive string can be recorded.  For conditions with multiple
  ///  occurrences, this describes the first known occurrence.
  ///
  /// [onsetString] Either the age of onset, range of approximate age or
  /// descriptive string can be recorded.  For conditions with multiple
  ///  occurrences, this describes the first known occurrence.
  ///
  /// [onsetStringElement] Extensions for onsetString
  ///
  /// [note] An area where general notes can be placed about this specific
  ///  condition.
  const factory FamilyMemberHistoryCondition({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    required CodeableConcept code,
    CodeableConcept? outcome,
    FhirBoolean? contributedToDeath,
    @JsonKey(name: '_contributedToDeath')
    PrimitiveElement? contributedToDeathElement,
    Age? onsetAge,
    Range? onsetRange,
    Period? onsetPeriod,
    String? onsetString,
    @JsonKey(name: '_onsetString') PrimitiveElement? onsetStringElement,
    List<Annotation>? note,
  }) = _FamilyMemberHistoryCondition;

  @override
  String get fhirType => 'FamilyMemberHistoryCondition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory FamilyMemberHistoryCondition.fromYaml(dynamic yaml) => yaml is String
      ? FamilyMemberHistoryCondition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? FamilyMemberHistoryCondition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'FamilyMemberHistoryCondition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory FamilyMemberHistoryCondition.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberHistoryConditionFromJson(json);

  /// Acts like a constructor, returns a [FamilyMemberHistoryCondition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory FamilyMemberHistoryCondition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$FamilyMemberHistoryConditionFromJson(json);
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
