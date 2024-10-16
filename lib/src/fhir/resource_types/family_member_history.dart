import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [FamilyMemberHistory]
/// Significant health conditions for a person related to the patient
/// relevant in the context of care for the patient.
class FamilyMemberHistory extends DomainResource {
  /// Primary constructor for [FamilyMemberHistory]

  FamilyMemberHistory({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    required this.status,
    this.dataAbsentReason,
    required this.patient,
    this.date,
    this.name,
    required this.relationship,
    this.sex,
    this.bornPeriod,
    this.bornDate,
    this.bornString,
    this.ageAge,
    this.ageRange,
    this.ageString,
    this.estimatedAge,
    this.deceasedBoolean,
    this.deceasedAge,
    this.deceasedRange,
    this.deceasedDate,
    this.deceasedString,
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
  }) : super(
          resourceType: R4ResourceType.FamilyMemberHistory,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FamilyMemberHistory.fromJson(Map<String, dynamic> json) {
    return FamilyMemberHistory(
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
      instantiatesCanonical: parsePrimitiveList<FhirCanonical>(
          json['instantiatesCanonical'] as List<dynamic>?,
          json['_instantiatesCanonical'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
      instantiatesUri: parsePrimitiveList<FhirUri>(
          json['instantiatesUri'] as List<dynamic>?,
          json['_instantiatesUri'] as List<dynamic>?,
          fromJson: FhirUri.fromJson),
      status: FamilyHistoryStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      dataAbsentReason: json['dataAbsentReason'] != null
          ? CodeableConcept.fromJson(
              json['dataAbsentReason'] as Map<String, dynamic>,
            )
          : null,
      patient: Reference.fromJson(
        json['patient'] as Map<String, dynamic>,
      ),
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      relationship: CodeableConcept.fromJson(
        json['relationship'] as Map<String, dynamic>,
      ),
      sex: json['sex'] != null
          ? CodeableConcept.fromJson(
              json['sex'] as Map<String, dynamic>,
            )
          : null,
      bornPeriod: json['bornPeriod'] != null
          ? Period.fromJson(
              json['bornPeriod'] as Map<String, dynamic>,
            )
          : null,
      bornDate: json['bornDate'] != null
          ? FhirDate.fromJson({
              'value': json['bornDate'],
              '_value': json['_bornDate'],
            })
          : null,
      bornString: json['bornString'] != null
          ? FhirString.fromJson({
              'value': json['bornString'],
              '_value': json['_bornString'],
            })
          : null,
      ageAge: json['ageAge'] != null
          ? Age.fromJson(
              json['ageAge'] as Map<String, dynamic>,
            )
          : null,
      ageRange: json['ageRange'] != null
          ? Range.fromJson(
              json['ageRange'] as Map<String, dynamic>,
            )
          : null,
      ageString: json['ageString'] != null
          ? FhirString.fromJson({
              'value': json['ageString'],
              '_value': json['_ageString'],
            })
          : null,
      estimatedAge: json['estimatedAge'] != null
          ? FhirBoolean.fromJson({
              'value': json['estimatedAge'],
              '_value': json['_estimatedAge'],
            })
          : null,
      deceasedBoolean: json['deceasedBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['deceasedBoolean'],
              '_value': json['_deceasedBoolean'],
            })
          : null,
      deceasedAge: json['deceasedAge'] != null
          ? Age.fromJson(
              json['deceasedAge'] as Map<String, dynamic>,
            )
          : null,
      deceasedRange: json['deceasedRange'] != null
          ? Range.fromJson(
              json['deceasedRange'] as Map<String, dynamic>,
            )
          : null,
      deceasedDate: json['deceasedDate'] != null
          ? FhirDate.fromJson({
              'value': json['deceasedDate'],
              '_value': json['_deceasedDate'],
            })
          : null,
      deceasedString: json['deceasedString'] != null
          ? FhirString.fromJson({
              'value': json['deceasedString'],
              '_value': json['_deceasedString'],
            })
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      condition: json['condition'] != null
          ? (json['condition'] as List<dynamic>)
              .map<FamilyMemberHistoryCondition>(
                (v) => FamilyMemberHistoryCondition.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [FamilyMemberHistory] from a [String]
  /// or [YamlMap] object
  factory FamilyMemberHistory.fromYaml(dynamic yaml) => yaml is String
      ? FamilyMemberHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? FamilyMemberHistory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'FamilyMemberHistory cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [FamilyMemberHistory]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FamilyMemberHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FamilyMemberHistory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'FamilyMemberHistory';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Business identifiers assigned to this family member history by the
  /// performer or other systems which remain constant as the resource is
  /// updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this
  /// FamilyMemberHistory.
  final List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this FamilyMemberHistory.
  final List<FhirUri>? instantiatesUri;

  /// [status]
  /// A code specifying the status of the record of the family history of a
  /// specific family member.
  final FamilyHistoryStatus status;

  /// [dataAbsentReason]
  /// Describes why the family member's history is not available.
  final CodeableConcept? dataAbsentReason;

  /// [patient]
  /// The person who this history concerns.
  final Reference patient;

  /// [date]
  /// The date (and possibly time) when the family member history was
  /// recorded or last updated.
  final FhirDateTime? date;

  /// [name]
  /// This will either be a name or a description; e.g. "Aunt Susan", "my
  /// cousin with the red hair".
  final FhirString? name;

  /// [relationship]
  /// The type of relationship this person has to the patient (father,
  /// mother, brother etc.).
  final CodeableConcept relationship;

  /// [sex]
  /// The birth sex of the family member.
  final CodeableConcept? sex;

  /// [bornPeriod]
  /// The actual or approximate date of birth of the relative.
  final Period? bornPeriod;

  /// [bornDate]
  /// The actual or approximate date of birth of the relative.
  final FhirDate? bornDate;

  /// [bornString]
  /// The actual or approximate date of birth of the relative.
  final FhirString? bornString;

  /// [ageAge]
  /// The age of the relative at the time the family member history is
  /// recorded.
  final Age? ageAge;

  /// [ageRange]
  /// The age of the relative at the time the family member history is
  /// recorded.
  final Range? ageRange;

  /// [ageString]
  /// The age of the relative at the time the family member history is
  /// recorded.
  final FhirString? ageString;

  /// [estimatedAge]
  /// If true, indicates that the age value specified is an estimated value.
  final FhirBoolean? estimatedAge;

  /// [deceasedBoolean]
  /// Deceased flag or the actual or approximate age of the relative at the
  /// time of death for the family member history record.
  final FhirBoolean? deceasedBoolean;

  /// [deceasedAge]
  /// Deceased flag or the actual or approximate age of the relative at the
  /// time of death for the family member history record.
  final Age? deceasedAge;

  /// [deceasedRange]
  /// Deceased flag or the actual or approximate age of the relative at the
  /// time of death for the family member history record.
  final Range? deceasedRange;

  /// [deceasedDate]
  /// Deceased flag or the actual or approximate age of the relative at the
  /// time of death for the family member history record.
  final FhirDate? deceasedDate;

  /// [deceasedString]
  /// Deceased flag or the actual or approximate age of the relative at the
  /// time of death for the family member history record.
  final FhirString? deceasedString;

  /// [reasonCode]
  /// Describes why the family member history occurred in coded or textual
  /// form.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Indicates a Condition, Observation, AllergyIntolerance, or
  /// QuestionnaireResponse that justifies this family member history event.
  final List<Reference>? reasonReference;

  /// [note]
  /// This property allows a non condition-specific note to the made about
  /// the related person. Ideally, the note would be in the condition
  /// property, but this is not always possible.
  final List<Annotation>? note;

  /// [condition]
  /// The significant Conditions (or condition) that the family member had.
  /// This is a repeating section to allow a system to represent more than
  /// one condition per resource, though there is nothing stopping multiple
  /// resources - one per condition.
  final List<FamilyMemberHistoryCondition>? condition;
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

    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      final fieldJson9 = instantiatesCanonical!.map((e) => e.toJson()).toList();
      json['instantiatesCanonical'] =
          fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_instantiatesCanonical'] =
            fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      final fieldJson10 = instantiatesUri!.map((e) => e.toJson()).toList();
      json['instantiatesUri'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_instantiatesUri'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    final fieldJson11 = status.toJson();
    json['status'] = fieldJson11['value'];
    if (fieldJson11['_value'] != null) {
      json['_status'] = fieldJson11['_value'];
    }

    if (dataAbsentReason != null) {
      final fieldJson12 = dataAbsentReason!.toJson();
      json['dataAbsentReason'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_dataAbsentReason'] = fieldJson12['_value'];
      }
    }

    final fieldJson13 = patient.toJson();
    json['patient'] = fieldJson13['value'];
    if (fieldJson13['_value'] != null) {
      json['_patient'] = fieldJson13['_value'];
    }

    if (date != null) {
      final fieldJson14 = date!.toJson();
      json['date'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_date'] = fieldJson14['_value'];
      }
    }

    if (name != null) {
      final fieldJson15 = name!.toJson();
      json['name'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_name'] = fieldJson15['_value'];
      }
    }

    final fieldJson16 = relationship.toJson();
    json['relationship'] = fieldJson16['value'];
    if (fieldJson16['_value'] != null) {
      json['_relationship'] = fieldJson16['_value'];
    }

    if (sex != null) {
      final fieldJson17 = sex!.toJson();
      json['sex'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_sex'] = fieldJson17['_value'];
      }
    }

    if (bornPeriod != null) {
      final fieldJson18 = bornPeriod!.toJson();
      json['bornPeriod'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_bornPeriod'] = fieldJson18['_value'];
      }
    }

    if (bornDate != null) {
      final fieldJson19 = bornDate!.toJson();
      json['bornDate'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_bornDate'] = fieldJson19['_value'];
      }
    }

    if (bornString != null) {
      final fieldJson20 = bornString!.toJson();
      json['bornString'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_bornString'] = fieldJson20['_value'];
      }
    }

    if (ageAge != null) {
      final fieldJson21 = ageAge!.toJson();
      json['ageAge'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_ageAge'] = fieldJson21['_value'];
      }
    }

    if (ageRange != null) {
      final fieldJson22 = ageRange!.toJson();
      json['ageRange'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_ageRange'] = fieldJson22['_value'];
      }
    }

    if (ageString != null) {
      final fieldJson23 = ageString!.toJson();
      json['ageString'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_ageString'] = fieldJson23['_value'];
      }
    }

    if (estimatedAge != null) {
      final fieldJson24 = estimatedAge!.toJson();
      json['estimatedAge'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_estimatedAge'] = fieldJson24['_value'];
      }
    }

    if (deceasedBoolean != null) {
      final fieldJson25 = deceasedBoolean!.toJson();
      json['deceasedBoolean'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_deceasedBoolean'] = fieldJson25['_value'];
      }
    }

    if (deceasedAge != null) {
      final fieldJson26 = deceasedAge!.toJson();
      json['deceasedAge'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_deceasedAge'] = fieldJson26['_value'];
      }
    }

    if (deceasedRange != null) {
      final fieldJson27 = deceasedRange!.toJson();
      json['deceasedRange'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_deceasedRange'] = fieldJson27['_value'];
      }
    }

    if (deceasedDate != null) {
      final fieldJson28 = deceasedDate!.toJson();
      json['deceasedDate'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_deceasedDate'] = fieldJson28['_value'];
      }
    }

    if (deceasedString != null) {
      final fieldJson29 = deceasedString!.toJson();
      json['deceasedString'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_deceasedString'] = fieldJson29['_value'];
      }
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      final fieldJson30 = reasonCode!.map((e) => e.toJson()).toList();
      json['reasonCode'] = fieldJson30.map((e) => e['value']).toList();
      if (fieldJson30.any((e) => e['_value'] != null)) {
        json['_reasonCode'] = fieldJson30.map((e) => e['_value']).toList();
      }
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      final fieldJson31 = reasonReference!.map((e) => e.toJson()).toList();
      json['reasonReference'] = fieldJson31.map((e) => e['value']).toList();
      if (fieldJson31.any((e) => e['_value'] != null)) {
        json['_reasonReference'] = fieldJson31.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson32 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson32.map((e) => e['value']).toList();
      if (fieldJson32.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson32.map((e) => e['_value']).toList();
      }
    }

    if (condition != null && condition!.isNotEmpty) {
      final fieldJson33 = condition!.map((e) => e.toJson()).toList();
      json['condition'] = fieldJson33.map((e) => e['value']).toList();
      if (fieldJson33.any((e) => e['_value'] != null)) {
        json['_condition'] = fieldJson33.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  FamilyMemberHistory clone() => throw UnimplementedError();
  @override
  FamilyMemberHistory copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    FamilyHistoryStatus? status,
    CodeableConcept? dataAbsentReason,
    Reference? patient,
    FhirDateTime? date,
    FhirString? name,
    CodeableConcept? relationship,
    CodeableConcept? sex,
    Period? bornPeriod,
    FhirDate? bornDate,
    FhirString? bornString,
    Age? ageAge,
    Range? ageRange,
    FhirString? ageString,
    FhirBoolean? estimatedAge,
    FhirBoolean? deceasedBoolean,
    Age? deceasedAge,
    Range? deceasedRange,
    FhirDate? deceasedDate,
    FhirString? deceasedString,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      status: status ?? this.status,
      dataAbsentReason: dataAbsentReason ?? this.dataAbsentReason,
      patient: patient ?? this.patient,
      date: date ?? this.date,
      name: name ?? this.name,
      relationship: relationship ?? this.relationship,
      sex: sex ?? this.sex,
      bornPeriod: bornPeriod ?? this.bornPeriod,
      bornDate: bornDate ?? this.bornDate,
      bornString: bornString ?? this.bornString,
      ageAge: ageAge ?? this.ageAge,
      ageRange: ageRange ?? this.ageRange,
      ageString: ageString ?? this.ageString,
      estimatedAge: estimatedAge ?? this.estimatedAge,
      deceasedBoolean: deceasedBoolean ?? this.deceasedBoolean,
      deceasedAge: deceasedAge ?? this.deceasedAge,
      deceasedRange: deceasedRange ?? this.deceasedRange,
      deceasedDate: deceasedDate ?? this.deceasedDate,
      deceasedString: deceasedString ?? this.deceasedString,
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
}

/// [FamilyMemberHistoryCondition]
/// The significant Conditions (or condition) that the family member had.
/// This is a repeating section to allow a system to represent more than
/// one condition per resource, though there is nothing stopping multiple
/// resources - one per condition.
class FamilyMemberHistoryCondition extends BackboneElement {
  /// Primary constructor for [FamilyMemberHistoryCondition]

  FamilyMemberHistoryCondition({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.code,
    this.outcome,
    this.contributedToDeath,
    this.onsetAge,
    this.onsetRange,
    this.onsetPeriod,
    this.onsetString,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FamilyMemberHistoryCondition.fromJson(Map<String, dynamic> json) {
    return FamilyMemberHistoryCondition(
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
      outcome: json['outcome'] != null
          ? CodeableConcept.fromJson(
              json['outcome'] as Map<String, dynamic>,
            )
          : null,
      contributedToDeath: json['contributedToDeath'] != null
          ? FhirBoolean.fromJson({
              'value': json['contributedToDeath'],
              '_value': json['_contributedToDeath'],
            })
          : null,
      onsetAge: json['onsetAge'] != null
          ? Age.fromJson(
              json['onsetAge'] as Map<String, dynamic>,
            )
          : null,
      onsetRange: json['onsetRange'] != null
          ? Range.fromJson(
              json['onsetRange'] as Map<String, dynamic>,
            )
          : null,
      onsetPeriod: json['onsetPeriod'] != null
          ? Period.fromJson(
              json['onsetPeriod'] as Map<String, dynamic>,
            )
          : null,
      onsetString: json['onsetString'] != null
          ? FhirString.fromJson({
              'value': json['onsetString'],
              '_value': json['_onsetString'],
            })
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [FamilyMemberHistoryCondition] from a [String]
  /// or [YamlMap] object
  factory FamilyMemberHistoryCondition.fromYaml(dynamic yaml) => yaml is String
      ? FamilyMemberHistoryCondition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? FamilyMemberHistoryCondition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'FamilyMemberHistoryCondition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [FamilyMemberHistoryCondition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FamilyMemberHistoryCondition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FamilyMemberHistoryCondition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'FamilyMemberHistoryCondition';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// The actual condition specified. Could be a coded condition (like MI or
  /// Diabetes) or a less specific string like 'cancer' depending on how much
  /// is known about the condition and the capabilities of the creating
  /// system.
  final CodeableConcept code;

  /// [outcome]
  /// Indicates what happened following the condition. If the condition
  /// resulted in death, deceased date is captured on the relation.
  final CodeableConcept? outcome;

  /// [contributedToDeath]
  /// This condition contributed to the cause of death of the related person.
  /// If contributedToDeath is not populated, then it is unknown.
  final FhirBoolean? contributedToDeath;

  /// [onsetAge]
  /// Either the age of onset, range of approximate age or descriptive string
  /// can be recorded. For conditions with multiple occurrences, this
  /// describes the first known occurrence.
  final Age? onsetAge;

  /// [onsetRange]
  /// Either the age of onset, range of approximate age or descriptive string
  /// can be recorded. For conditions with multiple occurrences, this
  /// describes the first known occurrence.
  final Range? onsetRange;

  /// [onsetPeriod]
  /// Either the age of onset, range of approximate age or descriptive string
  /// can be recorded. For conditions with multiple occurrences, this
  /// describes the first known occurrence.
  final Period? onsetPeriod;

  /// [onsetString]
  /// Either the age of onset, range of approximate age or descriptive string
  /// can be recorded. For conditions with multiple occurrences, this
  /// describes the first known occurrence.
  final FhirString? onsetString;

  /// [note]
  /// An area where general notes can be placed about this specific
  /// condition.
  final List<Annotation>? note;
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

    if (outcome != null) {
      final fieldJson4 = outcome!.toJson();
      json['outcome'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_outcome'] = fieldJson4['_value'];
      }
    }

    if (contributedToDeath != null) {
      final fieldJson5 = contributedToDeath!.toJson();
      json['contributedToDeath'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_contributedToDeath'] = fieldJson5['_value'];
      }
    }

    if (onsetAge != null) {
      final fieldJson6 = onsetAge!.toJson();
      json['onsetAge'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_onsetAge'] = fieldJson6['_value'];
      }
    }

    if (onsetRange != null) {
      final fieldJson7 = onsetRange!.toJson();
      json['onsetRange'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_onsetRange'] = fieldJson7['_value'];
      }
    }

    if (onsetPeriod != null) {
      final fieldJson8 = onsetPeriod!.toJson();
      json['onsetPeriod'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_onsetPeriod'] = fieldJson8['_value'];
      }
    }

    if (onsetString != null) {
      final fieldJson9 = onsetString!.toJson();
      json['onsetString'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_onsetString'] = fieldJson9['_value'];
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson10 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    Age? onsetAge,
    Range? onsetRange,
    Period? onsetPeriod,
    FhirString? onsetString,
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
      onsetAge: onsetAge ?? this.onsetAge,
      onsetRange: onsetRange ?? this.onsetRange,
      onsetPeriod: onsetPeriod ?? this.onsetPeriod,
      onsetString: onsetString ?? this.onsetString,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
