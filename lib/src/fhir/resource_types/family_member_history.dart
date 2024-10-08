import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'family_member_history.g.dart';

/// [FamilyMemberHistory] /// Significant health conditions for a person related to the patient relevant
/// in the context of care for the patient.
@JsonSerializable()
class FamilyMemberHistory extends DomainResource {
  FamilyMemberHistory({
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
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    required this.status,
    this.statusElement,
    this.dataAbsentReason,
    required this.patient,
    this.date,
    this.dateElement,
    this.name,
    this.nameElement,
    required this.relationship,
    this.sex,
    this.bornPeriod,
    this.bornDate,
    this.bornDateElement,
    this.bornString,
    this.bornStringElement,
    this.ageAge,
    this.ageRange,
    this.ageString,
    this.ageStringElement,
    this.estimatedAge,
    this.estimatedAgeElement,
    this.deceasedBoolean,
    this.deceasedBooleanElement,
    this.deceasedAge,
    this.deceasedRange,
    this.deceasedDate,
    this.deceasedDateElement,
    this.deceasedString,
    this.deceasedStringElement,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.condition,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.FamilyMemberHistory,
            fhirType: 'FamilyMemberHistory');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this family member history by the
  /// performer or other systems which remain constant as the resource is updated
  /// and propagates from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [instantiatesCanonical] /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other
  /// definition that is adhered to in whole or in part by this
  /// FamilyMemberHistory.
  @JsonKey(name: 'instantiatesCanonical')
  final List<FhirCanonical>? instantiatesCanonical;
  @JsonKey(name: '_instantiatesCanonical')
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an externally maintained protocol, guideline, orderset
  /// or other definition that is adhered to in whole or in part by this
  /// FamilyMemberHistory.
  @JsonKey(name: 'instantiatesUri')
  final List<FhirUri>? instantiatesUri;
  @JsonKey(name: '_instantiatesUri')
  final List<Element>? instantiatesUriElement;

  /// [status] /// A code specifying the status of the record of the family history of a
  /// specific family member.
  @JsonKey(name: 'status')
  final FamilyHistoryStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [dataAbsentReason] /// Describes why the family member's history is not available.
  @JsonKey(name: 'dataAbsentReason')
  final FamilyHistoryAbsentReason? dataAbsentReason;

  /// [patient] /// The person who this history concerns.
  @JsonKey(name: 'patient')
  final Reference patient;

  /// [date] /// The date (and possibly time) when the family member history was recorded or
  /// last updated.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [name] /// This will either be a name or a description; e.g. "Aunt Susan", "my cousin
  /// with the red hair".
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [relationship] /// The type of relationship this person has to the patient (father, mother,
  /// brother etc.).
  @JsonKey(name: 'relationship')
  final CodeableConcept relationship;

  /// [sex] /// The birth sex of the family member.
  @JsonKey(name: 'sex')
  final AdministrativeGender? sex;

  /// [bornPeriod] /// The actual or approximate date of birth of the relative.
  @JsonKey(name: 'bornPeriod')
  final Period? bornPeriod;

  /// [bornDate] /// The actual or approximate date of birth of the relative.
  @JsonKey(name: 'bornDate')
  final FhirDate? bornDate;
  @JsonKey(name: '_bornDate')
  final Element? bornDateElement;

  /// [bornString] /// The actual or approximate date of birth of the relative.
  @JsonKey(name: 'bornString')
  final FhirString? bornString;
  @JsonKey(name: '_bornString')
  final Element? bornStringElement;

  /// [ageAge] /// The age of the relative at the time the family member history is recorded.
  @JsonKey(name: 'ageAge')
  final Age? ageAge;

  /// [ageRange] /// The age of the relative at the time the family member history is recorded.
  @JsonKey(name: 'ageRange')
  final Range? ageRange;

  /// [ageString] /// The age of the relative at the time the family member history is recorded.
  @JsonKey(name: 'ageString')
  final FhirString? ageString;
  @JsonKey(name: '_ageString')
  final Element? ageStringElement;

  /// [estimatedAge] /// If true, indicates that the age value specified is an estimated value.
  @JsonKey(name: 'estimatedAge')
  final FhirBoolean? estimatedAge;
  @JsonKey(name: '_estimatedAge')
  final Element? estimatedAgeElement;

  /// [deceasedBoolean] /// Deceased flag or the actual or approximate age of the relative at the time
  /// of death for the family member history record.
  @JsonKey(name: 'deceasedBoolean')
  final FhirBoolean? deceasedBoolean;
  @JsonKey(name: '_deceasedBoolean')
  final Element? deceasedBooleanElement;

  /// [deceasedAge] /// Deceased flag or the actual or approximate age of the relative at the time
  /// of death for the family member history record.
  @JsonKey(name: 'deceasedAge')
  final Age? deceasedAge;

  /// [deceasedRange] /// Deceased flag or the actual or approximate age of the relative at the time
  /// of death for the family member history record.
  @JsonKey(name: 'deceasedRange')
  final Range? deceasedRange;

  /// [deceasedDate] /// Deceased flag or the actual or approximate age of the relative at the time
  /// of death for the family member history record.
  @JsonKey(name: 'deceasedDate')
  final FhirDate? deceasedDate;
  @JsonKey(name: '_deceasedDate')
  final Element? deceasedDateElement;

  /// [deceasedString] /// Deceased flag or the actual or approximate age of the relative at the time
  /// of death for the family member history record.
  @JsonKey(name: 'deceasedString')
  final FhirString? deceasedString;
  @JsonKey(name: '_deceasedString')
  final Element? deceasedStringElement;

  /// [reasonCode] /// Describes why the family member history occurred in coded or textual form.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates a Condition, Observation, AllergyIntolerance, or
  /// QuestionnaireResponse that justifies this family member history event.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [note] /// This property allows a non condition-specific note to the made about the
  /// related person. Ideally, the note would be in the condition property, but
  /// this is not always possible.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [condition] /// The significant Conditions (or condition) that the family member had. This
  /// is a repeating section to allow a system to represent more than one
  /// condition per resource, though there is nothing stopping multiple resources
  /// - one per condition.
  @JsonKey(name: 'condition')
  final List<FamilyMemberHistoryCondition>? condition;
  factory FamilyMemberHistory.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberHistoryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FamilyMemberHistoryToJson(this);

  @override
  FamilyMemberHistory clone() => throw UnimplementedError();
  @override
  FamilyMemberHistory copyWith({
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
    List<FhirCanonical>? instantiatesCanonical,
    List<Element>? instantiatesCanonicalElement,
    List<FhirUri>? instantiatesUri,
    List<Element>? instantiatesUriElement,
    FamilyHistoryStatus? status,
    Element? statusElement,
    FamilyHistoryAbsentReason? dataAbsentReason,
    Reference? patient,
    FhirDateTime? date,
    Element? dateElement,
    FhirString? name,
    Element? nameElement,
    CodeableConcept? relationship,
    AdministrativeGender? sex,
    Period? bornPeriod,
    FhirDate? bornDate,
    Element? bornDateElement,
    FhirString? bornString,
    Element? bornStringElement,
    Age? ageAge,
    Range? ageRange,
    FhirString? ageString,
    Element? ageStringElement,
    FhirBoolean? estimatedAge,
    Element? estimatedAgeElement,
    FhirBoolean? deceasedBoolean,
    Element? deceasedBooleanElement,
    Age? deceasedAge,
    Range? deceasedRange,
    FhirDate? deceasedDate,
    Element? deceasedDateElement,
    FhirString? deceasedString,
    Element? deceasedStringElement,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    List<FamilyMemberHistoryCondition>? condition,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FamilyMemberHistory(
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
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesCanonicalElement:
          instantiatesCanonicalElement ?? this.instantiatesCanonicalElement,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      instantiatesUriElement:
          instantiatesUriElement ?? this.instantiatesUriElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      dataAbsentReason: dataAbsentReason ?? this.dataAbsentReason,
      patient: patient ?? this.patient,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      relationship: relationship ?? this.relationship,
      sex: sex ?? this.sex,
      bornPeriod: bornPeriod ?? this.bornPeriod,
      bornDate: bornDate ?? this.bornDate,
      bornDateElement: bornDateElement ?? this.bornDateElement,
      bornString: bornString ?? this.bornString,
      bornStringElement: bornStringElement ?? this.bornStringElement,
      ageAge: ageAge ?? this.ageAge,
      ageRange: ageRange ?? this.ageRange,
      ageString: ageString ?? this.ageString,
      ageStringElement: ageStringElement ?? this.ageStringElement,
      estimatedAge: estimatedAge ?? this.estimatedAge,
      estimatedAgeElement: estimatedAgeElement ?? this.estimatedAgeElement,
      deceasedBoolean: deceasedBoolean ?? this.deceasedBoolean,
      deceasedBooleanElement:
          deceasedBooleanElement ?? this.deceasedBooleanElement,
      deceasedAge: deceasedAge ?? this.deceasedAge,
      deceasedRange: deceasedRange ?? this.deceasedRange,
      deceasedDate: deceasedDate ?? this.deceasedDate,
      deceasedDateElement: deceasedDateElement ?? this.deceasedDateElement,
      deceasedString: deceasedString ?? this.deceasedString,
      deceasedStringElement:
          deceasedStringElement ?? this.deceasedStringElement,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      note: note ?? this.note,
      condition: condition ?? this.condition,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory FamilyMemberHistory.fromYaml(dynamic yaml) => yaml is String
      ? FamilyMemberHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? FamilyMemberHistory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'FamilyMemberHistory cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory FamilyMemberHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FamilyMemberHistory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [FamilyMemberHistoryCondition] /// The significant Conditions (or condition) that the family member had. This
/// is a repeating section to allow a system to represent more than one
/// condition per resource, though there is nothing stopping multiple resources
/// - one per condition.
@JsonSerializable()
class FamilyMemberHistoryCondition extends BackboneElement {
  FamilyMemberHistoryCondition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.outcome,
    this.contributedToDeath,
    this.contributedToDeathElement,
    this.onsetAge,
    this.onsetRange,
    this.onsetPeriod,
    this.onsetString,
    this.onsetStringElement,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'FamilyMemberHistoryCondition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The actual condition specified. Could be a coded condition (like MI or
  /// Diabetes) or a less specific string like 'cancer' depending on how much is
  /// known about the condition and the capabilities of the creating system.
  @JsonKey(name: 'code')
  final ConditionProblemDiagnosisCodes code;

  /// [outcome] /// Indicates what happened following the condition. If the condition resulted
  /// in death, deceased date is captured on the relation.
  @JsonKey(name: 'outcome')
  final CodeableConcept? outcome;

  /// [contributedToDeath] /// This condition contributed to the cause of death of the related person. If
  /// contributedToDeath is not populated, then it is unknown.
  @JsonKey(name: 'contributedToDeath')
  final FhirBoolean? contributedToDeath;
  @JsonKey(name: '_contributedToDeath')
  final Element? contributedToDeathElement;

  /// [onsetAge] /// Either the age of onset, range of approximate age or descriptive string can
  /// be recorded. For conditions with multiple occurrences, this describes the
  /// first known occurrence.
  @JsonKey(name: 'onsetAge')
  final Age? onsetAge;

  /// [onsetRange] /// Either the age of onset, range of approximate age or descriptive string can
  /// be recorded. For conditions with multiple occurrences, this describes the
  /// first known occurrence.
  @JsonKey(name: 'onsetRange')
  final Range? onsetRange;

  /// [onsetPeriod] /// Either the age of onset, range of approximate age or descriptive string can
  /// be recorded. For conditions with multiple occurrences, this describes the
  /// first known occurrence.
  @JsonKey(name: 'onsetPeriod')
  final Period? onsetPeriod;

  /// [onsetString] /// Either the age of onset, range of approximate age or descriptive string can
  /// be recorded. For conditions with multiple occurrences, this describes the
  /// first known occurrence.
  @JsonKey(name: 'onsetString')
  final FhirString? onsetString;
  @JsonKey(name: '_onsetString')
  final Element? onsetStringElement;

  /// [note] /// An area where general notes can be placed about this specific condition.
  @JsonKey(name: 'note')
  final List<Annotation>? note;
  factory FamilyMemberHistoryCondition.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberHistoryConditionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FamilyMemberHistoryConditionToJson(this);

  @override
  FamilyMemberHistoryCondition clone() => throw UnimplementedError();
  @override
  FamilyMemberHistoryCondition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ConditionProblemDiagnosisCodes? code,
    CodeableConcept? outcome,
    FhirBoolean? contributedToDeath,
    Element? contributedToDeathElement,
    Age? onsetAge,
    Range? onsetRange,
    Period? onsetPeriod,
    FhirString? onsetString,
    Element? onsetStringElement,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FamilyMemberHistoryCondition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      outcome: outcome ?? this.outcome,
      contributedToDeath: contributedToDeath ?? this.contributedToDeath,
      contributedToDeathElement:
          contributedToDeathElement ?? this.contributedToDeathElement,
      onsetAge: onsetAge ?? this.onsetAge,
      onsetRange: onsetRange ?? this.onsetRange,
      onsetPeriod: onsetPeriod ?? this.onsetPeriod,
      onsetString: onsetString ?? this.onsetString,
      onsetStringElement: onsetStringElement ?? this.onsetStringElement,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory FamilyMemberHistoryCondition.fromYaml(dynamic yaml) => yaml is String
      ? FamilyMemberHistoryCondition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? FamilyMemberHistoryCondition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'FamilyMemberHistoryCondition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory FamilyMemberHistoryCondition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FamilyMemberHistoryCondition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
