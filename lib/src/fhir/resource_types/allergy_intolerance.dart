import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [AllergyIntolerance]
/// Risk of harmful or undesirable, physiological response which is unique
/// to an individual and associated with exposure to a substance.
class AllergyIntolerance extends DomainResource {
  /// Primary constructor for [AllergyIntolerance]

  AllergyIntolerance({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.clinicalStatus,
    this.verificationStatus,
    this.type,
    this.category,
    this.criticality,
    this.code,
    required this.patient,
    this.encounter,
    this.onsetDateTime,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.recordedDate,
    this.recorder,
    this.asserter,
    this.lastOccurrence,
    this.note,
    this.reaction,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.AllergyIntolerance,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AllergyIntolerance.fromJson(Map<String, dynamic> json) {
    return AllergyIntolerance(
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
      clinicalStatus: json['clinicalStatus'] != null
          ? CodeableConcept.fromJson(
              json['clinicalStatus'] as Map<String, dynamic>,
            )
          : null,
      verificationStatus: json['verificationStatus'] != null
          ? CodeableConcept.fromJson(
              json['verificationStatus'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? AllergyIntoleranceType.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
      category: parsePrimitiveList<AllergyIntoleranceCategory>(
          json['category'] as List<dynamic>?,
          json['_category'] as List<dynamic>?,
          fromJson: AllergyIntoleranceCategory.fromJson),
      criticality: json['criticality'] != null
          ? AllergyIntoleranceCriticality.fromJson({
              'value': json['criticality'],
              '_value': json['_criticality'],
            })
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      patient: Reference.fromJson(
        json['patient'] as Map<String, dynamic>,
      ),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      onsetDateTime: json['onsetDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['onsetDateTime'],
              '_value': json['_onsetDateTime'],
            })
          : null,
      onsetAge: json['onsetAge'] != null
          ? Age.fromJson(
              json['onsetAge'] as Map<String, dynamic>,
            )
          : null,
      onsetPeriod: json['onsetPeriod'] != null
          ? Period.fromJson(
              json['onsetPeriod'] as Map<String, dynamic>,
            )
          : null,
      onsetRange: json['onsetRange'] != null
          ? Range.fromJson(
              json['onsetRange'] as Map<String, dynamic>,
            )
          : null,
      onsetString: json['onsetString'] != null
          ? FhirString.fromJson({
              'value': json['onsetString'],
              '_value': json['_onsetString'],
            })
          : null,
      recordedDate: json['recordedDate'] != null
          ? FhirDateTime.fromJson({
              'value': json['recordedDate'],
              '_value': json['_recordedDate'],
            })
          : null,
      recorder: json['recorder'] != null
          ? Reference.fromJson(
              json['recorder'] as Map<String, dynamic>,
            )
          : null,
      asserter: json['asserter'] != null
          ? Reference.fromJson(
              json['asserter'] as Map<String, dynamic>,
            )
          : null,
      lastOccurrence: json['lastOccurrence'] != null
          ? FhirDateTime.fromJson({
              'value': json['lastOccurrence'],
              '_value': json['_lastOccurrence'],
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
      reaction: json['reaction'] != null
          ? (json['reaction'] as List<dynamic>)
              .map<AllergyIntoleranceReaction>(
                (v) => AllergyIntoleranceReaction.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [AllergyIntolerance] from a [String]
  /// or [YamlMap] object
  factory AllergyIntolerance.fromYaml(dynamic yaml) => yaml is String
      ? AllergyIntolerance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? AllergyIntolerance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('AllergyIntolerance cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [AllergyIntolerance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AllergyIntolerance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AllergyIntolerance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'AllergyIntolerance';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Business identifiers assigned to this AllergyIntolerance by the
  /// performer or other systems which remain constant as the resource is
  /// updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [clinicalStatus]
  /// The clinical status of the allergy or intolerance.
  final CodeableConcept? clinicalStatus;

  /// [verificationStatus]
  /// Assertion about certainty associated with the propensity, or potential
  /// risk, of a reaction to the identified substance (including
  /// pharmaceutical product).
  final CodeableConcept? verificationStatus;

  /// [type]
  /// Identification of the underlying physiological mechanism for the
  /// reaction risk.
  final AllergyIntoleranceType? type;

  /// [category]
  /// Category of the identified substance.
  final List<AllergyIntoleranceCategory>? category;

  /// [criticality]
  /// Estimate of the potential clinical harm, or seriousness, of the
  /// reaction to the identified substance.
  final AllergyIntoleranceCriticality? criticality;

  /// [code]
  /// Code for an allergy or intolerance statement (either a positive or a
  /// negated/excluded statement). This may be a code for a substance or
  /// pharmaceutical product that is considered to be responsible for the
  /// adverse reaction risk (e.g., "Latex"), an allergy or intolerance
  /// condition (e.g., "Latex allergy"), or a negated/excluded code for a
  /// specific substance or class (e.g., "No latex allergy") or a general or
  /// categorical negated statement (e.g., "No known allergy", "No known drug
  /// allergies"). Note: the substance for a specific reaction may be
  /// different from the substance identified as the cause of the risk, but
  /// it must be consistent with it. For instance, it may be a more specific
  /// substance (e.g. a brand medication) or a composite product that
  /// includes the identified substance. It must be clinically safe to only
  /// process the 'code' and ignore the 'reaction.substance'. If a receiving
  /// system is unable to confirm that AllergyIntolerance.reaction.substance
  /// falls within the semantic scope of AllergyIntolerance.code, then the
  /// receiving system should ignore AllergyIntolerance.reaction.substance.
  final CodeableConcept? code;

  /// [patient]
  /// The patient who has the allergy or intolerance.
  final Reference patient;

  /// [encounter]
  /// The encounter when the allergy or intolerance was asserted.
  final Reference? encounter;

  /// [onsetDateTime]
  /// Estimated or actual date, date-time, or age when allergy or intolerance
  /// was identified.
  final FhirDateTime? onsetDateTime;

  /// [onsetAge]
  /// Estimated or actual date, date-time, or age when allergy or intolerance
  /// was identified.
  final Age? onsetAge;

  /// [onsetPeriod]
  /// Estimated or actual date, date-time, or age when allergy or intolerance
  /// was identified.
  final Period? onsetPeriod;

  /// [onsetRange]
  /// Estimated or actual date, date-time, or age when allergy or intolerance
  /// was identified.
  final Range? onsetRange;

  /// [onsetString]
  /// Estimated or actual date, date-time, or age when allergy or intolerance
  /// was identified.
  final FhirString? onsetString;

  /// [recordedDate]
  /// The recordedDate represents when this particular AllergyIntolerance
  /// record was created in the system, which is often a system-generated
  /// date.
  final FhirDateTime? recordedDate;

  /// [recorder]
  /// Individual who recorded the record and takes responsibility for its
  /// content.
  final Reference? recorder;

  /// [asserter]
  /// The source of the information about the allergy that is recorded.
  final Reference? asserter;

  /// [lastOccurrence]
  /// Represents the date and/or time of the last known occurrence of a
  /// reaction event.
  final FhirDateTime? lastOccurrence;

  /// [note]
  /// Additional narrative about the propensity for the Adverse Reaction, not
  /// captured in other fields.
  final List<Annotation>? note;

  /// [reaction]
  /// Details about each adverse reaction event linked to exposure to the
  /// identified substance.
  final List<AllergyIntoleranceReaction>? reaction;
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

    if (clinicalStatus != null) {
      final fieldJson9 = clinicalStatus!.toJson();
      json['clinicalStatus'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_clinicalStatus'] = fieldJson9['_value'];
      }
    }

    if (verificationStatus != null) {
      final fieldJson10 = verificationStatus!.toJson();
      json['verificationStatus'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_verificationStatus'] = fieldJson10['_value'];
      }
    }

    if (type != null) {
      final fieldJson11 = type!.toJson();
      json['type'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_type'] = fieldJson11['_value'];
      }
    }

    if (category != null && category!.isNotEmpty) {
      final fieldJson12 = category!.map((e) => e.toJson()).toList();
      json['category'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_category'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (criticality != null) {
      final fieldJson13 = criticality!.toJson();
      json['criticality'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_criticality'] = fieldJson13['_value'];
      }
    }

    if (code != null) {
      final fieldJson14 = code!.toJson();
      json['code'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_code'] = fieldJson14['_value'];
      }
    }

    final fieldJson15 = patient.toJson();
    json['patient'] = fieldJson15['value'];
    if (fieldJson15['_value'] != null) {
      json['_patient'] = fieldJson15['_value'];
    }

    if (encounter != null) {
      final fieldJson16 = encounter!.toJson();
      json['encounter'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_encounter'] = fieldJson16['_value'];
      }
    }

    if (onsetDateTime != null) {
      final fieldJson17 = onsetDateTime!.toJson();
      json['onsetDateTime'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_onsetDateTime'] = fieldJson17['_value'];
      }
    }

    if (onsetAge != null) {
      final fieldJson18 = onsetAge!.toJson();
      json['onsetAge'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_onsetAge'] = fieldJson18['_value'];
      }
    }

    if (onsetPeriod != null) {
      final fieldJson19 = onsetPeriod!.toJson();
      json['onsetPeriod'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_onsetPeriod'] = fieldJson19['_value'];
      }
    }

    if (onsetRange != null) {
      final fieldJson20 = onsetRange!.toJson();
      json['onsetRange'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_onsetRange'] = fieldJson20['_value'];
      }
    }

    if (onsetString != null) {
      final fieldJson21 = onsetString!.toJson();
      json['onsetString'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_onsetString'] = fieldJson21['_value'];
      }
    }

    if (recordedDate != null) {
      final fieldJson22 = recordedDate!.toJson();
      json['recordedDate'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_recordedDate'] = fieldJson22['_value'];
      }
    }

    if (recorder != null) {
      final fieldJson23 = recorder!.toJson();
      json['recorder'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_recorder'] = fieldJson23['_value'];
      }
    }

    if (asserter != null) {
      final fieldJson24 = asserter!.toJson();
      json['asserter'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_asserter'] = fieldJson24['_value'];
      }
    }

    if (lastOccurrence != null) {
      final fieldJson25 = lastOccurrence!.toJson();
      json['lastOccurrence'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_lastOccurrence'] = fieldJson25['_value'];
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson26 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson26.map((e) => e['value']).toList();
      if (fieldJson26.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson26.map((e) => e['_value']).toList();
      }
    }

    if (reaction != null && reaction!.isNotEmpty) {
      final fieldJson27 = reaction!.map((e) => e.toJson()).toList();
      json['reaction'] = fieldJson27.map((e) => e['value']).toList();
      if (fieldJson27.any((e) => e['_value'] != null)) {
        json['_reaction'] = fieldJson27.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  AllergyIntolerance clone() => throw UnimplementedError();
  @override
  AllergyIntolerance copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? clinicalStatus,
    CodeableConcept? verificationStatus,
    AllergyIntoleranceType? type,
    List<AllergyIntoleranceCategory>? category,
    AllergyIntoleranceCriticality? criticality,
    CodeableConcept? code,
    Reference? patient,
    Reference? encounter,
    FhirDateTime? onsetDateTime,
    Age? onsetAge,
    Period? onsetPeriod,
    Range? onsetRange,
    FhirString? onsetString,
    FhirDateTime? recordedDate,
    Reference? recorder,
    Reference? asserter,
    FhirDateTime? lastOccurrence,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      clinicalStatus: clinicalStatus ?? this.clinicalStatus,
      verificationStatus: verificationStatus ?? this.verificationStatus,
      type: type ?? this.type,
      category: category ?? this.category,
      criticality: criticality ?? this.criticality,
      code: code ?? this.code,
      patient: patient ?? this.patient,
      encounter: encounter ?? this.encounter,
      onsetDateTime: onsetDateTime ?? this.onsetDateTime,
      onsetAge: onsetAge ?? this.onsetAge,
      onsetPeriod: onsetPeriod ?? this.onsetPeriod,
      onsetRange: onsetRange ?? this.onsetRange,
      onsetString: onsetString ?? this.onsetString,
      recordedDate: recordedDate ?? this.recordedDate,
      recorder: recorder ?? this.recorder,
      asserter: asserter ?? this.asserter,
      lastOccurrence: lastOccurrence ?? this.lastOccurrence,
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
}

/// [AllergyIntoleranceReaction]
/// Details about each adverse reaction event linked to exposure to the
/// identified substance.
class AllergyIntoleranceReaction extends BackboneElement {
  /// Primary constructor for [AllergyIntoleranceReaction]

  AllergyIntoleranceReaction({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.substance,
    required this.manifestation,
    this.description,
    this.onset,
    this.severity,
    this.exposureRoute,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AllergyIntoleranceReaction.fromJson(Map<String, dynamic> json) {
    return AllergyIntoleranceReaction(
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
      substance: json['substance'] != null
          ? CodeableConcept.fromJson(
              json['substance'] as Map<String, dynamic>,
            )
          : null,
      manifestation: ensureNonNullList((json['manifestation'] as List<dynamic>)
          .map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      onset: json['onset'] != null
          ? FhirDateTime.fromJson({
              'value': json['onset'],
              '_value': json['_onset'],
            })
          : null,
      severity: json['severity'] != null
          ? AllergyIntoleranceSeverity.fromJson({
              'value': json['severity'],
              '_value': json['_severity'],
            })
          : null,
      exposureRoute: json['exposureRoute'] != null
          ? CodeableConcept.fromJson(
              json['exposureRoute'] as Map<String, dynamic>,
            )
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

  /// Deserialize [AllergyIntoleranceReaction] from a [String]
  /// or [YamlMap] object
  factory AllergyIntoleranceReaction.fromYaml(dynamic yaml) => yaml is String
      ? AllergyIntoleranceReaction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? AllergyIntoleranceReaction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'AllergyIntoleranceReaction cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [AllergyIntoleranceReaction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AllergyIntoleranceReaction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AllergyIntoleranceReaction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'AllergyIntoleranceReaction';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [substance]
  /// Identification of the specific substance (or pharmaceutical product)
  /// considered to be responsible for the Adverse Reaction event. Note: the
  /// substance for a specific reaction may be different from the substance
  /// identified as the cause of the risk, but it must be consistent with it.
  /// For instance, it may be a more specific substance (e.g. a brand
  /// medication) or a composite product that includes the identified
  /// substance. It must be clinically safe to only process the 'code' and
  /// ignore the 'reaction.substance'. If a receiving system is unable to
  /// confirm that AllergyIntolerance.reaction.substance falls within the
  /// semantic scope of AllergyIntolerance.code, then the receiving system
  /// should ignore AllergyIntolerance.reaction.substance.
  final CodeableConcept? substance;

  /// [manifestation]
  /// Clinical symptoms and/or signs that are observed or associated with the
  /// adverse reaction event.
  final List<CodeableConcept> manifestation;

  /// [description]
  /// Text description about the reaction as a whole, including details of
  /// the manifestation if required.
  final FhirString? description;

  /// [onset]
  /// Record of the date and/or time of the onset of the Reaction.
  final FhirDateTime? onset;

  /// [severity]
  /// Clinical assessment of the severity of the reaction event as a whole,
  /// potentially considering multiple different manifestations.
  final AllergyIntoleranceSeverity? severity;

  /// [exposureRoute]
  /// Identification of the route by which the subject was exposed to the
  /// substance.
  final CodeableConcept? exposureRoute;

  /// [note]
  /// Additional text about the adverse reaction event not captured in other
  /// fields.
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

    if (substance != null) {
      final fieldJson3 = substance!.toJson();
      json['substance'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_substance'] = fieldJson3['_value'];
      }
    }

    final fieldJson4 = manifestation.map((e) => e.toJson()).toList();
    json['manifestation'] = fieldJson4.map((e) => e['value']).toList();
    if (fieldJson4.any((e) => e['_value'] != null)) {
      json['_manifestation'] = fieldJson4.map((e) => e['_value']).toList();
    }

    if (description != null) {
      final fieldJson5 = description!.toJson();
      json['description'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_description'] = fieldJson5['_value'];
      }
    }

    if (onset != null) {
      final fieldJson6 = onset!.toJson();
      json['onset'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_onset'] = fieldJson6['_value'];
      }
    }

    if (severity != null) {
      final fieldJson7 = severity!.toJson();
      json['severity'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_severity'] = fieldJson7['_value'];
      }
    }

    if (exposureRoute != null) {
      final fieldJson8 = exposureRoute!.toJson();
      json['exposureRoute'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_exposureRoute'] = fieldJson8['_value'];
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson9 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    FhirDateTime? onset,
    AllergyIntoleranceSeverity? severity,
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
      onset: onset ?? this.onset,
      severity: severity ?? this.severity,
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
}
