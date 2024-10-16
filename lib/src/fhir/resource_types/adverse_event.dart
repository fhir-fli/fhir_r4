import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [AdverseEvent]
/// Actual or potential/avoided event causing unintended physical injury
/// resulting from or contributed to by medical care, a research study or
/// other healthcare setting factors that requires additional monitoring,
/// treatment, or hospitalization, or that results in death.
class AdverseEvent extends DomainResource {
  /// Primary constructor for [AdverseEvent]

  AdverseEvent({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    required this.actuality,
    this.category,
    this.event,
    required this.subject,
    this.encounter,
    this.date,
    this.detected,
    this.recordedDate,
    this.resultingCondition,
    this.location,
    this.seriousness,
    this.severity,
    this.outcome,
    this.recorder,
    this.contributor,
    this.suspectEntity,
    this.subjectMedicalHistory,
    this.referenceDocument,
    this.study,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.AdverseEvent,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEvent.fromJson(Map<String, dynamic> json) {
    return AdverseEvent(
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
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      actuality: AdverseEventActuality.fromJson({
        'value': json['actuality'],
        '_value': json['_actuality'],
      }),
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      event: json['event'] != null
          ? CodeableConcept.fromJson(
              json['event'] as Map<String, dynamic>,
            )
          : null,
      subject: Reference.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      detected: json['detected'] != null
          ? FhirDateTime.fromJson({
              'value': json['detected'],
              '_value': json['_detected'],
            })
          : null,
      recordedDate: json['recordedDate'] != null
          ? FhirDateTime.fromJson({
              'value': json['recordedDate'],
              '_value': json['_recordedDate'],
            })
          : null,
      resultingCondition: json['resultingCondition'] != null
          ? (json['resultingCondition'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      location: json['location'] != null
          ? Reference.fromJson(
              json['location'] as Map<String, dynamic>,
            )
          : null,
      seriousness: json['seriousness'] != null
          ? CodeableConcept.fromJson(
              json['seriousness'] as Map<String, dynamic>,
            )
          : null,
      severity: json['severity'] != null
          ? CodeableConcept.fromJson(
              json['severity'] as Map<String, dynamic>,
            )
          : null,
      outcome: json['outcome'] != null
          ? CodeableConcept.fromJson(
              json['outcome'] as Map<String, dynamic>,
            )
          : null,
      recorder: json['recorder'] != null
          ? Reference.fromJson(
              json['recorder'] as Map<String, dynamic>,
            )
          : null,
      contributor: json['contributor'] != null
          ? (json['contributor'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      suspectEntity: json['suspectEntity'] != null
          ? (json['suspectEntity'] as List<dynamic>)
              .map<AdverseEventSuspectEntity>(
                (v) => AdverseEventSuspectEntity.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subjectMedicalHistory: json['subjectMedicalHistory'] != null
          ? (json['subjectMedicalHistory'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      referenceDocument: json['referenceDocument'] != null
          ? (json['referenceDocument'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      study: json['study'] != null
          ? (json['study'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [AdverseEvent] from a [String]
  /// or [YamlMap] object
  factory AdverseEvent.fromYaml(dynamic yaml) => yaml is String
      ? AdverseEvent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? AdverseEvent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('AdverseEvent cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [AdverseEvent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEvent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdverseEvent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'AdverseEvent';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Business identifiers assigned to this adverse event by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  final Identifier? identifier;

  /// [actuality]
  /// Whether the event actually happened, or just had the potential to. Note
  /// that this is independent of whether anyone was affected or harmed or
  /// how severely.
  final AdverseEventActuality actuality;

  /// [category]
  /// The overall type of event, intended for search and filtering purposes.
  final List<CodeableConcept>? category;

  /// [event]
  /// This element defines the specific type of event that occurred or that
  /// was prevented from occurring.
  final CodeableConcept? event;

  /// [subject]
  /// This subject or group impacted by the event.
  final Reference subject;

  /// [encounter]
  /// The Encounter during which AdverseEvent was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [date]
  /// The date (and perhaps time) when the adverse event occurred.
  final FhirDateTime? date;

  /// [detected]
  /// Estimated or actual date the AdverseEvent began, in the opinion of the
  /// reporter.
  final FhirDateTime? detected;

  /// [recordedDate]
  /// The date on which the existence of the AdverseEvent was first recorded.
  final FhirDateTime? recordedDate;

  /// [resultingCondition]
  /// Includes information about the reaction that occurred as a result of
  /// exposure to a substance (for example, a drug or a chemical).
  final List<Reference>? resultingCondition;

  /// [location]
  /// The information about where the adverse event occurred.
  final Reference? location;

  /// [seriousness]
  /// Assessment whether this event was of real importance.
  final CodeableConcept? seriousness;

  /// [severity]
  /// Describes the severity of the adverse event, in relation to the
  /// subject. Contrast to AdverseEvent.seriousness - a severe rash might not
  /// be serious, but a mild heart problem is.
  final CodeableConcept? severity;

  /// [outcome]
  /// Describes the type of outcome from the adverse event.
  final CodeableConcept? outcome;

  /// [recorder]
  /// Information on who recorded the adverse event. May be the patient or a
  /// practitioner.
  final Reference? recorder;

  /// [contributor]
  /// Parties that may or should contribute or have contributed information
  /// to the adverse event, which can consist of one or more activities. Such
  /// information includes information leading to the decision to perform the
  /// activity and how to perform the activity (e.g. consultant), information
  /// that the activity itself seeks to reveal (e.g. informant of clinical
  /// history), or information about what activity was performed (e.g.
  /// informant witness).
  final List<Reference>? contributor;

  /// [suspectEntity]
  /// Describes the entity that is suspected to have caused the adverse
  /// event.
  final List<AdverseEventSuspectEntity>? suspectEntity;

  /// [subjectMedicalHistory]
  /// AdverseEvent.subjectMedicalHistory.
  final List<Reference>? subjectMedicalHistory;

  /// [referenceDocument]
  /// AdverseEvent.referenceDocument.
  final List<Reference>? referenceDocument;

  /// [study]
  /// AdverseEvent.study.
  final List<Reference>? study;
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

    if (identifier != null) {
      final fieldJson8 = identifier!.toJson();
      json['identifier'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_identifier'] = fieldJson8['_value'];
      }
    }

    final fieldJson9 = actuality.toJson();
    json['actuality'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_actuality'] = fieldJson9['_value'];
    }

    if (category != null && category!.isNotEmpty) {
      final fieldJson10 = category!.map((e) => e.toJson()).toList();
      json['category'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_category'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    if (event != null) {
      final fieldJson11 = event!.toJson();
      json['event'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_event'] = fieldJson11['_value'];
      }
    }

    final fieldJson12 = subject.toJson();
    json['subject'] = fieldJson12['value'];
    if (fieldJson12['_value'] != null) {
      json['_subject'] = fieldJson12['_value'];
    }

    if (encounter != null) {
      final fieldJson13 = encounter!.toJson();
      json['encounter'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_encounter'] = fieldJson13['_value'];
      }
    }

    if (date != null) {
      final fieldJson14 = date!.toJson();
      json['date'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_date'] = fieldJson14['_value'];
      }
    }

    if (detected != null) {
      final fieldJson15 = detected!.toJson();
      json['detected'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_detected'] = fieldJson15['_value'];
      }
    }

    if (recordedDate != null) {
      final fieldJson16 = recordedDate!.toJson();
      json['recordedDate'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_recordedDate'] = fieldJson16['_value'];
      }
    }

    if (resultingCondition != null && resultingCondition!.isNotEmpty) {
      final fieldJson17 = resultingCondition!.map((e) => e.toJson()).toList();
      json['resultingCondition'] = fieldJson17.map((e) => e['value']).toList();
      if (fieldJson17.any((e) => e['_value'] != null)) {
        json['_resultingCondition'] =
            fieldJson17.map((e) => e['_value']).toList();
      }
    }

    if (location != null) {
      final fieldJson18 = location!.toJson();
      json['location'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_location'] = fieldJson18['_value'];
      }
    }

    if (seriousness != null) {
      final fieldJson19 = seriousness!.toJson();
      json['seriousness'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_seriousness'] = fieldJson19['_value'];
      }
    }

    if (severity != null) {
      final fieldJson20 = severity!.toJson();
      json['severity'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_severity'] = fieldJson20['_value'];
      }
    }

    if (outcome != null) {
      final fieldJson21 = outcome!.toJson();
      json['outcome'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_outcome'] = fieldJson21['_value'];
      }
    }

    if (recorder != null) {
      final fieldJson22 = recorder!.toJson();
      json['recorder'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_recorder'] = fieldJson22['_value'];
      }
    }

    if (contributor != null && contributor!.isNotEmpty) {
      final fieldJson23 = contributor!.map((e) => e.toJson()).toList();
      json['contributor'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_contributor'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (suspectEntity != null && suspectEntity!.isNotEmpty) {
      final fieldJson24 = suspectEntity!.map((e) => e.toJson()).toList();
      json['suspectEntity'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_suspectEntity'] = fieldJson24.map((e) => e['_value']).toList();
      }
    }

    if (subjectMedicalHistory != null && subjectMedicalHistory!.isNotEmpty) {
      final fieldJson25 =
          subjectMedicalHistory!.map((e) => e.toJson()).toList();
      json['subjectMedicalHistory'] =
          fieldJson25.map((e) => e['value']).toList();
      if (fieldJson25.any((e) => e['_value'] != null)) {
        json['_subjectMedicalHistory'] =
            fieldJson25.map((e) => e['_value']).toList();
      }
    }

    if (referenceDocument != null && referenceDocument!.isNotEmpty) {
      final fieldJson26 = referenceDocument!.map((e) => e.toJson()).toList();
      json['referenceDocument'] = fieldJson26.map((e) => e['value']).toList();
      if (fieldJson26.any((e) => e['_value'] != null)) {
        json['_referenceDocument'] =
            fieldJson26.map((e) => e['_value']).toList();
      }
    }

    if (study != null && study!.isNotEmpty) {
      final fieldJson27 = study!.map((e) => e.toJson()).toList();
      json['study'] = fieldJson27.map((e) => e['value']).toList();
      if (fieldJson27.any((e) => e['_value'] != null)) {
        json['_study'] = fieldJson27.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  AdverseEvent clone() => throw UnimplementedError();
  @override
  AdverseEvent copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    AdverseEventActuality? actuality,
    List<CodeableConcept>? category,
    CodeableConcept? event,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? date,
    FhirDateTime? detected,
    FhirDateTime? recordedDate,
    List<Reference>? resultingCondition,
    Reference? location,
    CodeableConcept? seriousness,
    CodeableConcept? severity,
    CodeableConcept? outcome,
    Reference? recorder,
    List<Reference>? contributor,
    List<AdverseEventSuspectEntity>? suspectEntity,
    List<Reference>? subjectMedicalHistory,
    List<Reference>? referenceDocument,
    List<Reference>? study,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AdverseEvent(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      actuality: actuality ?? this.actuality,
      category: category ?? this.category,
      event: event ?? this.event,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      date: date ?? this.date,
      detected: detected ?? this.detected,
      recordedDate: recordedDate ?? this.recordedDate,
      resultingCondition: resultingCondition ?? this.resultingCondition,
      location: location ?? this.location,
      seriousness: seriousness ?? this.seriousness,
      severity: severity ?? this.severity,
      outcome: outcome ?? this.outcome,
      recorder: recorder ?? this.recorder,
      contributor: contributor ?? this.contributor,
      suspectEntity: suspectEntity ?? this.suspectEntity,
      subjectMedicalHistory:
          subjectMedicalHistory ?? this.subjectMedicalHistory,
      referenceDocument: referenceDocument ?? this.referenceDocument,
      study: study ?? this.study,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [AdverseEventSuspectEntity]
/// Describes the entity that is suspected to have caused the adverse
/// event.
class AdverseEventSuspectEntity extends BackboneElement {
  /// Primary constructor for [AdverseEventSuspectEntity]

  AdverseEventSuspectEntity({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.instance,
    this.causality,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventSuspectEntity.fromJson(Map<String, dynamic> json) {
    return AdverseEventSuspectEntity(
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
      instance: Reference.fromJson(
        json['instance'] as Map<String, dynamic>,
      ),
      causality: json['causality'] != null
          ? (json['causality'] as List<dynamic>)
              .map<AdverseEventCausality>(
                (v) => AdverseEventCausality.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [AdverseEventSuspectEntity] from a [String]
  /// or [YamlMap] object
  factory AdverseEventSuspectEntity.fromYaml(dynamic yaml) => yaml is String
      ? AdverseEventSuspectEntity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? AdverseEventSuspectEntity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'AdverseEventSuspectEntity cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [AdverseEventSuspectEntity]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventSuspectEntity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdverseEventSuspectEntity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'AdverseEventSuspectEntity';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [instance]
  /// Identifies the actual instance of what caused the adverse event. May be
  /// a substance, medication, medication administration, medication
  /// statement or a device.
  final Reference instance;

  /// [causality]
  /// Information on the possible cause of the event.
  final List<AdverseEventCausality>? causality;
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

    final fieldJson3 = instance.toJson();
    json['instance'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_instance'] = fieldJson3['_value'];
    }

    if (causality != null && causality!.isNotEmpty) {
      final fieldJson4 = causality!.map((e) => e.toJson()).toList();
      json['causality'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_causality'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  AdverseEventSuspectEntity clone() => throw UnimplementedError();
  @override
  AdverseEventSuspectEntity copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? instance,
    List<AdverseEventCausality>? causality,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AdverseEventSuspectEntity(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      instance: instance ?? this.instance,
      causality: causality ?? this.causality,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [AdverseEventCausality]
/// Information on the possible cause of the event.
class AdverseEventCausality extends BackboneElement {
  /// Primary constructor for [AdverseEventCausality]

  AdverseEventCausality({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.assessment,
    this.productRelatedness,
    this.author,
    this.method,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventCausality.fromJson(Map<String, dynamic> json) {
    return AdverseEventCausality(
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
      assessment: json['assessment'] != null
          ? CodeableConcept.fromJson(
              json['assessment'] as Map<String, dynamic>,
            )
          : null,
      productRelatedness: json['productRelatedness'] != null
          ? FhirString.fromJson({
              'value': json['productRelatedness'],
              '_value': json['_productRelatedness'],
            })
          : null,
      author: json['author'] != null
          ? Reference.fromJson(
              json['author'] as Map<String, dynamic>,
            )
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(
              json['method'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [AdverseEventCausality] from a [String]
  /// or [YamlMap] object
  factory AdverseEventCausality.fromYaml(dynamic yaml) => yaml is String
      ? AdverseEventCausality.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? AdverseEventCausality.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'AdverseEventCausality cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [AdverseEventCausality]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventCausality.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdverseEventCausality.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'AdverseEventCausality';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [assessment]
  /// Assessment of if the entity caused the event.
  final CodeableConcept? assessment;

  /// [productRelatedness]
  /// AdverseEvent.suspectEntity.causalityProductRelatedness.
  final FhirString? productRelatedness;

  /// [author]
  /// AdverseEvent.suspectEntity.causalityAuthor.
  final Reference? author;

  /// [method]
  /// ProbabilityScale | Bayesian | Checklist.
  final CodeableConcept? method;
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

    if (assessment != null) {
      final fieldJson3 = assessment!.toJson();
      json['assessment'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_assessment'] = fieldJson3['_value'];
      }
    }

    if (productRelatedness != null) {
      final fieldJson4 = productRelatedness!.toJson();
      json['productRelatedness'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_productRelatedness'] = fieldJson4['_value'];
      }
    }

    if (author != null) {
      final fieldJson5 = author!.toJson();
      json['author'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_author'] = fieldJson5['_value'];
      }
    }

    if (method != null) {
      final fieldJson6 = method!.toJson();
      json['method'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_method'] = fieldJson6['_value'];
      }
    }

    return json;
  }

  @override
  AdverseEventCausality clone() => throw UnimplementedError();
  @override
  AdverseEventCausality copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? assessment,
    FhirString? productRelatedness,
    Reference? author,
    CodeableConcept? method,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AdverseEventCausality(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      assessment: assessment ?? this.assessment,
      productRelatedness: productRelatedness ?? this.productRelatedness,
      author: author ?? this.author,
      method: method ?? this.method,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
