import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [FamilyMemberHistory] /// Significant health conditions for a person related to the patient relevant
/// in the context of care for the patient.
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
  }) : super(resourceType: R4ResourceType.FamilyMemberHistory);

  @override
  String get fhirType => 'FamilyMemberHistory';

  @Id()
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this family member history by the
  /// performer or other systems which remain constant as the resource is updated
  /// and propagates from server to server.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical] /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other
  /// definition that is adhered to in whole or in part by this
  /// FamilyMemberHistory.
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an externally maintained protocol, guideline, orderset
  /// or other definition that is adhered to in whole or in part by this
  /// FamilyMemberHistory.
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;

  /// [status] /// A code specifying the status of the record of the family history of a
  /// specific family member.
  final FamilyHistoryStatus status;
  final Element? statusElement;

  /// [dataAbsentReason] /// Describes why the family member's history is not available.
  final CodeableConcept? dataAbsentReason;

  /// [patient] /// The person who this history concerns.
  final Reference patient;

  /// [date] /// The date (and possibly time) when the family member history was recorded or
  /// last updated.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [name] /// This will either be a name or a description; e.g. "Aunt Susan", "my cousin
  /// with the red hair".
  final FhirString? name;
  final Element? nameElement;

  /// [relationship] /// The type of relationship this person has to the patient (father, mother,
  /// brother etc.).
  final CodeableConcept relationship;

  /// [sex] /// The birth sex of the family member.
  final CodeableConcept? sex;

  /// [bornPeriod] /// The actual or approximate date of birth of the relative.
  final Period? bornPeriod;

  /// [bornDate] /// The actual or approximate date of birth of the relative.
  final FhirDate? bornDate;
  final Element? bornDateElement;

  /// [bornString] /// The actual or approximate date of birth of the relative.
  final FhirString? bornString;
  final Element? bornStringElement;

  /// [ageAge] /// The age of the relative at the time the family member history is recorded.
  final Age? ageAge;

  /// [ageRange] /// The age of the relative at the time the family member history is recorded.
  final Range? ageRange;

  /// [ageString] /// The age of the relative at the time the family member history is recorded.
  final FhirString? ageString;
  final Element? ageStringElement;

  /// [estimatedAge] /// If true, indicates that the age value specified is an estimated value.
  final FhirBoolean? estimatedAge;
  final Element? estimatedAgeElement;

  /// [deceasedBoolean] /// Deceased flag or the actual or approximate age of the relative at the time
  /// of death for the family member history record.
  final FhirBoolean? deceasedBoolean;
  final Element? deceasedBooleanElement;

  /// [deceasedAge] /// Deceased flag or the actual or approximate age of the relative at the time
  /// of death for the family member history record.
  final Age? deceasedAge;

  /// [deceasedRange] /// Deceased flag or the actual or approximate age of the relative at the time
  /// of death for the family member history record.
  final Range? deceasedRange;

  /// [deceasedDate] /// Deceased flag or the actual or approximate age of the relative at the time
  /// of death for the family member history record.
  final FhirDate? deceasedDate;
  final Element? deceasedDateElement;

  /// [deceasedString] /// Deceased flag or the actual or approximate age of the relative at the time
  /// of death for the family member history record.
  final FhirString? deceasedString;
  final Element? deceasedStringElement;

  /// [reasonCode] /// Describes why the family member history occurred in coded or textual form.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates a Condition, Observation, AllergyIntolerance, or
  /// QuestionnaireResponse that justifies this family member history event.
  final List<Reference>? reasonReference;

  /// [note] /// This property allows a non condition-specific note to the made about the
  /// related person. Ideally, the note would be in the condition property, but
  /// this is not always possible.
  final List<Annotation>? note;

  /// [condition] /// The significant Conditions (or condition) that the family member had. This
  /// is a repeating section to allow a system to represent more than one
  /// condition per resource, though there is nothing stopping multiple resources
  /// - one per condition.
  final List<FamilyMemberHistoryCondition>? condition;
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
    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      json['instantiatesCanonical'] =
          instantiatesCanonical!.map((FhirCanonical v) => v.toJson()).toList();
    }
    if (instantiatesCanonicalElement != null &&
        instantiatesCanonicalElement!.isNotEmpty) {
      json['_instantiatesCanonical'] =
          instantiatesCanonicalElement!.map((Element v) => v.toJson()).toList();
    }
    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      json['instantiatesUri'] =
          instantiatesUri!.map((FhirUri v) => v.toJson()).toList();
    }
    if (instantiatesUriElement != null && instantiatesUriElement!.isNotEmpty) {
      json['_instantiatesUri'] =
          instantiatesUriElement!.map((Element v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (dataAbsentReason != null) {
      json['dataAbsentReason'] = dataAbsentReason!.toJson();
    }
    json['patient'] = patient.toJson();
    if (date?.value != null) {
      json['date'] = date!.toJson();
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    json['relationship'] = relationship.toJson();
    if (sex != null) {
      json['sex'] = sex!.toJson();
    }
    if (bornPeriod != null) {
      json['bornPeriod'] = bornPeriod!.toJson();
    }
    if (bornDate?.value != null) {
      json['bornDate'] = bornDate!.toJson();
    }
    if (bornDateElement != null) {
      json['_bornDate'] = bornDateElement!.toJson();
    }
    if (bornString?.value != null) {
      json['bornString'] = bornString!.toJson();
    }
    if (bornStringElement != null) {
      json['_bornString'] = bornStringElement!.toJson();
    }
    if (ageAge != null) {
      json['ageAge'] = ageAge!.toJson();
    }
    if (ageRange != null) {
      json['ageRange'] = ageRange!.toJson();
    }
    if (ageString?.value != null) {
      json['ageString'] = ageString!.toJson();
    }
    if (ageStringElement != null) {
      json['_ageString'] = ageStringElement!.toJson();
    }
    if (estimatedAge?.value != null) {
      json['estimatedAge'] = estimatedAge!.toJson();
    }
    if (estimatedAgeElement != null) {
      json['_estimatedAge'] = estimatedAgeElement!.toJson();
    }
    if (deceasedBoolean?.value != null) {
      json['deceasedBoolean'] = deceasedBoolean!.toJson();
    }
    if (deceasedBooleanElement != null) {
      json['_deceasedBoolean'] = deceasedBooleanElement!.toJson();
    }
    if (deceasedAge != null) {
      json['deceasedAge'] = deceasedAge!.toJson();
    }
    if (deceasedRange != null) {
      json['deceasedRange'] = deceasedRange!.toJson();
    }
    if (deceasedDate?.value != null) {
      json['deceasedDate'] = deceasedDate!.toJson();
    }
    if (deceasedDateElement != null) {
      json['_deceasedDate'] = deceasedDateElement!.toJson();
    }
    if (deceasedString?.value != null) {
      json['deceasedString'] = deceasedString!.toJson();
    }
    if (deceasedStringElement != null) {
      json['_deceasedString'] = deceasedStringElement!.toJson();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (condition != null && condition!.isNotEmpty) {
      json['condition'] = condition!
          .map<dynamic>((FamilyMemberHistoryCondition v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory FamilyMemberHistory.fromJson(Map<String, dynamic> json) {
    return FamilyMemberHistory(
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
      instantiatesCanonical: json['instantiatesCanonical'] != null
          ? (json['instantiatesCanonical'] as List<dynamic>)
              .map<FhirCanonical>(
                  (dynamic v) => FhirCanonical.fromJson(v as dynamic))
              .toList()
          : null,
      instantiatesCanonicalElement: json['_instantiatesCanonical'] != null
          ? (json['_instantiatesCanonical'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      instantiatesUri: json['instantiatesUri'] != null
          ? (json['instantiatesUri'] as List<dynamic>)
              .map<FhirUri>((dynamic v) => FhirUri.fromJson(v as dynamic))
              .toList()
          : null,
      instantiatesUriElement: json['_instantiatesUri'] != null
          ? (json['_instantiatesUri'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: FamilyHistoryStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      dataAbsentReason: json['dataAbsentReason'] != null
          ? CodeableConcept.fromJson(
              json['dataAbsentReason'] as Map<String, dynamic>)
          : null,
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      date: json['date'] != null ? FhirDateTime.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      relationship: CodeableConcept.fromJson(
          json['relationship'] as Map<String, dynamic>),
      sex: json['sex'] != null
          ? CodeableConcept.fromJson(json['sex'] as Map<String, dynamic>)
          : null,
      bornPeriod: json['bornPeriod'] != null
          ? Period.fromJson(json['bornPeriod'] as Map<String, dynamic>)
          : null,
      bornDate:
          json['bornDate'] != null ? FhirDate.fromJson(json['bornDate']) : null,
      bornDateElement: json['_bornDate'] != null
          ? Element.fromJson(json['_bornDate'] as Map<String, dynamic>)
          : null,
      bornString: json['bornString'] != null
          ? FhirString.fromJson(json['bornString'])
          : null,
      bornStringElement: json['_bornString'] != null
          ? Element.fromJson(json['_bornString'] as Map<String, dynamic>)
          : null,
      ageAge: json['ageAge'] != null
          ? Age.fromJson(json['ageAge'] as Map<String, dynamic>)
          : null,
      ageRange: json['ageRange'] != null
          ? Range.fromJson(json['ageRange'] as Map<String, dynamic>)
          : null,
      ageString: json['ageString'] != null
          ? FhirString.fromJson(json['ageString'])
          : null,
      ageStringElement: json['_ageString'] != null
          ? Element.fromJson(json['_ageString'] as Map<String, dynamic>)
          : null,
      estimatedAge: json['estimatedAge'] != null
          ? FhirBoolean.fromJson(json['estimatedAge'])
          : null,
      estimatedAgeElement: json['_estimatedAge'] != null
          ? Element.fromJson(json['_estimatedAge'] as Map<String, dynamic>)
          : null,
      deceasedBoolean: json['deceasedBoolean'] != null
          ? FhirBoolean.fromJson(json['deceasedBoolean'])
          : null,
      deceasedBooleanElement: json['_deceasedBoolean'] != null
          ? Element.fromJson(json['_deceasedBoolean'] as Map<String, dynamic>)
          : null,
      deceasedAge: json['deceasedAge'] != null
          ? Age.fromJson(json['deceasedAge'] as Map<String, dynamic>)
          : null,
      deceasedRange: json['deceasedRange'] != null
          ? Range.fromJson(json['deceasedRange'] as Map<String, dynamic>)
          : null,
      deceasedDate: json['deceasedDate'] != null
          ? FhirDate.fromJson(json['deceasedDate'])
          : null,
      deceasedDateElement: json['_deceasedDate'] != null
          ? Element.fromJson(json['_deceasedDate'] as Map<String, dynamic>)
          : null,
      deceasedString: json['deceasedString'] != null
          ? FhirString.fromJson(json['deceasedString'])
          : null,
      deceasedStringElement: json['_deceasedString'] != null
          ? Element.fromJson(json['_deceasedString'] as Map<String, dynamic>)
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      condition: json['condition'] != null
          ? (json['condition'] as List<dynamic>)
              .map<FamilyMemberHistoryCondition>((dynamic v) =>
                  FamilyMemberHistoryCondition.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
    CodeableConcept? dataAbsentReason,
    Reference? patient,
    FhirDateTime? date,
    Element? dateElement,
    FhirString? name,
    Element? nameElement,
    CodeableConcept? relationship,
    CodeableConcept? sex,
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
  });

  @override
  String get fhirType => 'FamilyMemberHistoryCondition';

  @Id()
  int dbId = 0;

  /// [code] /// The actual condition specified. Could be a coded condition (like MI or
  /// Diabetes) or a less specific string like 'cancer' depending on how much is
  /// known about the condition and the capabilities of the creating system.
  final CodeableConcept code;

  /// [outcome] /// Indicates what happened following the condition. If the condition resulted
  /// in death, deceased date is captured on the relation.
  final CodeableConcept? outcome;

  /// [contributedToDeath] /// This condition contributed to the cause of death of the related person. If
  /// contributedToDeath is not populated, then it is unknown.
  final FhirBoolean? contributedToDeath;
  final Element? contributedToDeathElement;

  /// [onsetAge] /// Either the age of onset, range of approximate age or descriptive string can
  /// be recorded. For conditions with multiple occurrences, this describes the
  /// first known occurrence.
  final Age? onsetAge;

  /// [onsetRange] /// Either the age of onset, range of approximate age or descriptive string can
  /// be recorded. For conditions with multiple occurrences, this describes the
  /// first known occurrence.
  final Range? onsetRange;

  /// [onsetPeriod] /// Either the age of onset, range of approximate age or descriptive string can
  /// be recorded. For conditions with multiple occurrences, this describes the
  /// first known occurrence.
  final Period? onsetPeriod;

  /// [onsetString] /// Either the age of onset, range of approximate age or descriptive string can
  /// be recorded. For conditions with multiple occurrences, this describes the
  /// first known occurrence.
  final FhirString? onsetString;
  final Element? onsetStringElement;

  /// [note] /// An area where general notes can be placed about this specific condition.
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
    json['code'] = code.toJson();
    if (outcome != null) {
      json['outcome'] = outcome!.toJson();
    }
    if (contributedToDeath?.value != null) {
      json['contributedToDeath'] = contributedToDeath!.toJson();
    }
    if (contributedToDeathElement != null) {
      json['_contributedToDeath'] = contributedToDeathElement!.toJson();
    }
    if (onsetAge != null) {
      json['onsetAge'] = onsetAge!.toJson();
    }
    if (onsetRange != null) {
      json['onsetRange'] = onsetRange!.toJson();
    }
    if (onsetPeriod != null) {
      json['onsetPeriod'] = onsetPeriod!.toJson();
    }
    if (onsetString?.value != null) {
      json['onsetString'] = onsetString!.toJson();
    }
    if (onsetStringElement != null) {
      json['_onsetString'] = onsetStringElement!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    return json;
  }

  factory FamilyMemberHistoryCondition.fromJson(Map<String, dynamic> json) {
    return FamilyMemberHistoryCondition(
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
      outcome: json['outcome'] != null
          ? CodeableConcept.fromJson(json['outcome'] as Map<String, dynamic>)
          : null,
      contributedToDeath: json['contributedToDeath'] != null
          ? FhirBoolean.fromJson(json['contributedToDeath'])
          : null,
      contributedToDeathElement: json['_contributedToDeath'] != null
          ? Element.fromJson(
              json['_contributedToDeath'] as Map<String, dynamic>)
          : null,
      onsetAge: json['onsetAge'] != null
          ? Age.fromJson(json['onsetAge'] as Map<String, dynamic>)
          : null,
      onsetRange: json['onsetRange'] != null
          ? Range.fromJson(json['onsetRange'] as Map<String, dynamic>)
          : null,
      onsetPeriod: json['onsetPeriod'] != null
          ? Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>)
          : null,
      onsetString: json['onsetString'] != null
          ? FhirString.fromJson(json['onsetString'])
          : null,
      onsetStringElement: json['_onsetString'] != null
          ? Element.fromJson(json['_onsetString'] as Map<String, dynamic>)
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
  FamilyMemberHistoryCondition clone() => throw UnimplementedError();
  @override
  FamilyMemberHistoryCondition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
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
