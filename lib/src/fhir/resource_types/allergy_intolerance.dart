import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [AllergyIntolerance]
/// Risk of harmful or undesirable, physiological response which is unique
/// to an individual and associated with exposure to a substance.
class AllergyIntolerance extends DomainResource {
  /// Primary constructor for
  /// [AllergyIntolerance]

  AllergyIntolerance({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
  factory AllergyIntolerance.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return AllergyIntolerance(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: parseField<FhirUri>(
        json['implicitRules'],
        json['_implicitRules'],
        FhirUri.fromJson,
      ),
      language: parseField<CommonLanguages>(
        json['language'],
        json['_language'],
        CommonLanguages.fromJson,
      ),
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: parseList<Resource>(
        json['contained'] as List<dynamic>?,
        json['_contained'] as List<dynamic>?,
        Resource.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      identifier: parseList<Identifier>(
        json['identifier'] as List<dynamic>?,
        json['_identifier'] as List<dynamic>?,
        Identifier.fromJson,
      ),
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
      type: parseField<AllergyIntoleranceType>(
        json['type'],
        json['_type'],
        AllergyIntoleranceType.fromJson,
      ),
      category: parseList<AllergyIntoleranceCategory>(
        json['category'] as List<dynamic>?,
        json['_category'] as List<dynamic>?,
        AllergyIntoleranceCategory.fromJson,
      ),
      criticality: parseField<AllergyIntoleranceCriticality>(
        json['criticality'],
        json['_criticality'],
        AllergyIntoleranceCriticality.fromJson,
      ),
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
      onsetDateTime: parseField<FhirDateTime>(
        json['onsetDateTime'],
        json['_onsetDateTime'],
        FhirDateTime.fromJson,
      ),
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
      onsetString: parseField<FhirString>(
        json['onsetString'],
        json['_onsetString'],
        FhirString.fromJson,
      ),
      recordedDate: parseField<FhirDateTime>(
        json['recordedDate'],
        json['_recordedDate'],
        FhirDateTime.fromJson,
      ),
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
      lastOccurrence: parseField<FhirDateTime>(
        json['lastOccurrence'],
        json['_lastOccurrence'],
        FhirDateTime.fromJson,
      ),
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
      reaction: parseList<AllergyIntoleranceReaction>(
        json['reaction'] as List<dynamic>?,
        json['_reaction'] as List<dynamic>?,
        AllergyIntoleranceReaction.fromJson,
      ),
    );
  }

  /// Deserialize [AllergyIntolerance]
  /// from a [String] or [YamlMap] object
  factory AllergyIntolerance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AllergyIntolerance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AllergyIntolerance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AllergyIntolerance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AllergyIntolerance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AllergyIntolerance.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
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

    if (clinicalStatus != null) {
      json['clinicalStatus'] = clinicalStatus!.toJson();
    }

    if (verificationStatus != null) {
      json['verificationStatus'] = verificationStatus!.toJson();
    }

    addField('type', type);
    if (category != null && category!.isNotEmpty) {
      final fieldJson0 = category!.map((e) => e.toJson()).toList();
      json['category'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_category'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    addField('criticality', criticality);
    if (code != null) {
      json['code'] = code!.toJson();
    }

    json['patient'] = patient.toJson();

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    addField('onsetDateTime', onsetDateTime);
    if (onsetAge != null) {
      json['onsetAge'] = onsetAge!.toJson();
    }

    if (onsetPeriod != null) {
      json['onsetPeriod'] = onsetPeriod!.toJson();
    }

    if (onsetRange != null) {
      json['onsetRange'] = onsetRange!.toJson();
    }

    addField('onsetString', onsetString);
    addField('recordedDate', recordedDate);
    if (recorder != null) {
      json['recorder'] = recorder!.toJson();
    }

    if (asserter != null) {
      json['asserter'] = asserter!.toJson();
    }

    addField('lastOccurrence', lastOccurrence);
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (reaction != null && reaction!.isNotEmpty) {
      json['reaction'] = reaction!.map((e) => e.toJson()).toList();
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
  /// Primary constructor for
  /// [AllergyIntoleranceReaction]

  AllergyIntoleranceReaction({
    super.id,
    super.extension_,
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
  factory AllergyIntoleranceReaction.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return AllergyIntoleranceReaction(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      substance: json['substance'] != null
          ? CodeableConcept.fromJson(
              json['substance'] as Map<String, dynamic>,
            )
          : null,
      manifestation: parseList<CodeableConcept>(
        json['manifestation'] as List<dynamic>?,
        json['_manifestation'] as List<dynamic>?,
        CodeableConcept.fromJson,
      )!,
      description: parseField<FhirString>(
        json['description'],
        json['_description'],
        FhirString.fromJson,
      ),
      onset: parseField<FhirDateTime>(
        json['onset'],
        json['_onset'],
        FhirDateTime.fromJson,
      ),
      severity: parseField<AllergyIntoleranceSeverity>(
        json['severity'],
        json['_severity'],
        AllergyIntoleranceSeverity.fromJson,
      ),
      exposureRoute: json['exposureRoute'] != null
          ? CodeableConcept.fromJson(
              json['exposureRoute'] as Map<String, dynamic>,
            )
          : null,
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
    );
  }

  /// Deserialize [AllergyIntoleranceReaction]
  /// from a [String] or [YamlMap] object
  factory AllergyIntoleranceReaction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AllergyIntoleranceReaction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AllergyIntoleranceReaction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AllergyIntoleranceReaction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AllergyIntoleranceReaction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AllergyIntoleranceReaction.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (substance != null) {
      json['substance'] = substance!.toJson();
    }

    if (manifestation.isNotEmpty) {
      json['manifestation'] = manifestation.map((e) => e.toJson()).toList();
    }

    addField('description', description);
    addField('onset', onset);
    addField('severity', severity);
    if (exposureRoute != null) {
      json['exposureRoute'] = exposureRoute!.toJson();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
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
