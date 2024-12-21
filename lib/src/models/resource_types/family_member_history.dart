import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [FamilyMemberHistory]
/// Significant health conditions for a person related to the patient
/// relevant in the context of care for the patient.
class FamilyMemberHistory extends DomainResource {
  /// Primary constructor for
  /// [FamilyMemberHistory]

  const FamilyMemberHistory({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
    this.bornX,
    this.ageX,
    this.estimatedAge,
    this.deceasedX,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.condition,
  }) : super(
          resourceType: R4ResourceType.FamilyMemberHistory,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FamilyMemberHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    return FamilyMemberHistory(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
      ),
      status: JsonParser.parsePrimitive<FamilyHistoryStatus>(
        json,
        'status',
        FamilyHistoryStatus.fromJson,
      )!,
      dataAbsentReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'dataAbsentReason',
        CodeableConcept.fromJson,
      ),
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
      )!,
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      relationship: JsonParser.parseObject<CodeableConcept>(
        json,
        'relationship',
        CodeableConcept.fromJson,
      )!,
      sex: JsonParser.parseObject<CodeableConcept>(
        json,
        'sex',
        CodeableConcept.fromJson,
      ),
      bornX: JsonParser.parsePolymorphic<BornXFamilyMemberHistory>(json, {
        'bornPeriod': Period.fromJson,
        'bornDate': FhirDate.fromJson,
        'bornString': FhirString.fromJson,
      }),
      ageX: JsonParser.parsePolymorphic<AgeXFamilyMemberHistory>(json, {
        'ageAge': Age.fromJson,
        'ageRange': Range.fromJson,
        'ageString': FhirString.fromJson,
      }),
      estimatedAge: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'estimatedAge',
        FhirBoolean.fromJson,
      ),
      deceasedX:
          JsonParser.parsePolymorphic<DeceasedXFamilyMemberHistory>(json, {
        'deceasedBoolean': FhirBoolean.fromJson,
        'deceasedAge': Age.fromJson,
        'deceasedRange': Range.fromJson,
        'deceasedDate': FhirDate.fromJson,
        'deceasedString': FhirString.fromJson,
      }),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map<FamilyMemberHistoryCondition>(
            (v) => FamilyMemberHistoryCondition.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [FamilyMemberHistory]
  /// from a [String] or [YamlMap] object
  factory FamilyMemberHistory.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FamilyMemberHistory.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FamilyMemberHistory.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FamilyMemberHistory '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FamilyMemberHistory]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FamilyMemberHistory.fromJsonString(
    String source,
  ) {
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

  /// [bornX]
  /// The actual or approximate date of birth of the relative.
  final BornXFamilyMemberHistory? bornX;

  /// [ageX]
  /// The age of the relative at the time the family member history is
  /// recorded.
  final AgeXFamilyMemberHistory? ageX;

  /// [estimatedAge]
  /// If true, indicates that the age value specified is an estimated value.
  final FhirBoolean? estimatedAge;

  /// [deceasedX]
  /// Deceased flag or the actual or approximate age of the relative at the
  /// time of death for the family member history record.
  final DeceasedXFamilyMemberHistory? deceasedX;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      final fieldJson0 = instantiatesCanonical!.map((e) => e.toJson()).toList();
      json['instantiatesCanonical'] =
          fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_instantiatesCanonical'] =
            fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      final fieldJson1 = instantiatesUri!.map((e) => e.toJson()).toList();
      json['instantiatesUri'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_instantiatesUri'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    addField('status', status);
    if (dataAbsentReason != null) {
      json['dataAbsentReason'] = dataAbsentReason!.toJson();
    }

    json['patient'] = patient.toJson();

    if (date != null) {
      addField('date', date);
    }

    if (name != null) {
      addField('name', name);
    }

    json['relationship'] = relationship.toJson();

    if (sex != null) {
      json['sex'] = sex!.toJson();
    }

    if (bornX != null) {
      json['born${bornX!.fhirType.capitalize()}'] = bornX!.toJson();
    }

    if (ageX != null) {
      json['age${ageX!.fhirType.capitalize()}'] = ageX!.toJson();
    }

    if (estimatedAge != null) {
      addField('estimatedAge', estimatedAge);
    }

    if (deceasedX != null) {
      addField('deceased${deceasedX!.fhirType.capitalize()}', deceasedX);
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (condition != null && condition!.isNotEmpty) {
      json['condition'] = condition!.map((e) => e.toJson()).toList();
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
    BornXFamilyMemberHistory? bornX,
    AgeXFamilyMemberHistory? ageX,
    FhirBoolean? estimatedAge,
    DeceasedXFamilyMemberHistory? deceasedX,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    List<FamilyMemberHistoryCondition>? condition,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      bornX: bornX ?? this.bornX,
      ageX: ageX ?? this.ageX,
      estimatedAge: estimatedAge ?? this.estimatedAge,
      deceasedX: deceasedX ?? this.deceasedX,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      note: note ?? this.note,
      condition: condition ?? this.condition,
    );
  }
}

/// [FamilyMemberHistoryCondition]
/// The significant Conditions (or condition) that the family member had.
/// This is a repeating section to allow a system to represent more than
/// one condition per resource, though there is nothing stopping multiple
/// resources - one per condition.
class FamilyMemberHistoryCondition extends BackboneElement {
  /// Primary constructor for
  /// [FamilyMemberHistoryCondition]

  const FamilyMemberHistoryCondition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.outcome,
    this.contributedToDeath,
    this.onsetX,
    this.note,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FamilyMemberHistoryCondition.fromJson(
    Map<String, dynamic> json,
  ) {
    return FamilyMemberHistoryCondition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      outcome: JsonParser.parseObject<CodeableConcept>(
        json,
        'outcome',
        CodeableConcept.fromJson,
      ),
      contributedToDeath: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'contributedToDeath',
        FhirBoolean.fromJson,
      ),
      onsetX: JsonParser.parsePolymorphic<OnsetXFamilyMemberHistoryCondition>(
          json, {
        'onsetAge': Age.fromJson,
        'onsetRange': Range.fromJson,
        'onsetPeriod': Period.fromJson,
        'onsetString': FhirString.fromJson,
      }),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [FamilyMemberHistoryCondition]
  /// from a [String] or [YamlMap] object
  factory FamilyMemberHistoryCondition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FamilyMemberHistoryCondition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FamilyMemberHistoryCondition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FamilyMemberHistoryCondition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FamilyMemberHistoryCondition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FamilyMemberHistoryCondition.fromJsonString(
    String source,
  ) {
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

  /// [onsetX]
  /// Either the age of onset, range of approximate age or descriptive string
  /// can be recorded. For conditions with multiple occurrences, this
  /// describes the first known occurrence.
  final OnsetXFamilyMemberHistoryCondition? onsetX;

  /// [note]
  /// An area where general notes can be placed about this specific
  /// condition.
  final List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['code'] = code.toJson();

    if (outcome != null) {
      json['outcome'] = outcome!.toJson();
    }

    if (contributedToDeath != null) {
      addField('contributedToDeath', contributedToDeath);
    }

    if (onsetX != null) {
      json['onset${onsetX!.fhirType.capitalize()}'] = onsetX!.toJson();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
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
    OnsetXFamilyMemberHistoryCondition? onsetX,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return FamilyMemberHistoryCondition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      outcome: outcome ?? this.outcome,
      contributedToDeath: contributedToDeath ?? this.contributedToDeath,
      onsetX: onsetX ?? this.onsetX,
      note: note ?? this.note,
    );
  }
}
