// ignore_for_file: overridden_fields

import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

/// [AdverseEvent]
/// Actual or potential/avoided event causing unintended physical injury
/// resulting from or contributed to by medical care, a research study or
/// other healthcare setting factors that requires additional monitoring,
/// treatment, or hospitalization, or that results in death.
@Entity()
class AdverseEvent extends DomainResource {
  /// Primary constructor for
  /// [AdverseEvent]

  AdverseEvent({
    this.dbId = 0,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  factory AdverseEvent.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdverseEvent(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
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
      date: (json['date'] != null || json['_date'] != null)
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      detected: (json['detected'] != null || json['_detected'] != null)
          ? FhirDateTime.fromJson({
              'value': json['detected'],
              '_value': json['_detected'],
            })
          : null,
      recordedDate:
          (json['recordedDate'] != null || json['_recordedDate'] != null)
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

  /// Deserialize [AdverseEvent]
  /// from a [String] or [YamlMap] object
  factory AdverseEvent.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? AdverseEvent.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? AdverseEvent.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'AdverseEvent '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [AdverseEvent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEvent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdverseEvent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'AdverseEvent';

  /// [id]
  /// The logical id of the resource, as used in the URL for the resource.
  /// Once assigned, this value never changes.
  @override
  FhirString? id;

  /// [meta]
  /// The metadata about the resource. This is content that is maintained by
  /// the infrastructure. Changes to the content might not always be
  /// associated with version changes to the resource.
  @override
  FhirMeta? meta;

  /// [implicitRules]
  /// A reference to a set of rules that were followed when the resource was
  /// constructed, and which must be understood when processing the content.
  /// Often, this is a reference to an implementation guide that defines the
  /// special rules along with other profiles etc.
  @override
  FhirUri? implicitRules;

  /// [language]
  /// The base language in which the resource is written.
  @override
  CommonLanguages? language;

  /// [text]
  /// A human-readable narrative that contains a summary of the resource and
  /// can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to
  /// just read the narrative. Resource definitions may define what content
  /// should be represented in the narrative to ensure clinical safety.
  @override
  Narrative? text;

  /// [contained]
  /// These resources do not have an independent existence apart from the
  /// resource that contains them - they cannot be identified independently,
  /// and nor can they have their own independent transaction scope.
  @override
  List<Resource>? contained;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource and that modifies the understanding of
  /// the element that contains it and/or the understanding of the containing
  /// element's descendants. Usually modifier elements provide negation or
  /// qualification. To make the use of extensions safe and manageable, there
  /// is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer is allowed to define an extension,
  /// there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [identifier]
  /// Business identifiers assigned to this adverse event by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  Identifier? identifier;

  /// [actuality]
  /// Whether the event actually happened, or just had the potential to. Note
  /// that this is independent of whether anyone was affected or harmed or
  /// how severely.
  AdverseEventActuality actuality;

  /// [category]
  /// The overall type of event, intended for search and filtering purposes.
  List<CodeableConcept>? category;

  /// [event]
  /// This element defines the specific type of event that occurred or that
  /// was prevented from occurring.
  CodeableConcept? event;

  /// [subject]
  /// This subject or group impacted by the event.
  Reference subject;

  /// [encounter]
  /// The Encounter during which AdverseEvent was created or to which the
  /// creation of this record is tightly associated.
  Reference? encounter;

  /// [date]
  /// The date (and perhaps time) when the adverse event occurred.
  FhirDateTime? date;

  /// [detected]
  /// Estimated or actual date the AdverseEvent began, in the opinion of the
  /// reporter.
  FhirDateTime? detected;

  /// [recordedDate]
  /// The date on which the existence of the AdverseEvent was first recorded.
  FhirDateTime? recordedDate;

  /// [resultingCondition]
  /// Includes information about the reaction that occurred as a result of
  /// exposure to a substance (for example, a drug or a chemical).
  List<Reference>? resultingCondition;

  /// [location]
  /// The information about where the adverse event occurred.
  Reference? location;

  /// [seriousness]
  /// Assessment whether this event was of real importance.
  CodeableConcept? seriousness;

  /// [severity]
  /// Describes the severity of the adverse event, in relation to the
  /// subject. Contrast to AdverseEvent.seriousness - a severe rash might not
  /// be serious, but a mild heart problem is.
  CodeableConcept? severity;

  /// [outcome]
  /// Describes the type of outcome from the adverse event.
  CodeableConcept? outcome;

  /// [recorder]
  /// Information on who recorded the adverse event. May be the patient or a
  /// practitioner.
  Reference? recorder;

  /// [contributor]
  /// Parties that may or should contribute or have contributed information
  /// to the adverse event, which can consist of one or more activities. Such
  /// information includes information leading to the decision to perform the
  /// activity and how to perform the activity (e.g. consultant), information
  /// that the activity itself seeks to reveal (e.g. informant of clinical
  /// history), or information about what activity was performed (e.g.
  /// informant witness).
  List<Reference>? contributor;

  /// [suspectEntity]
  /// Describes the entity that is suspected to have caused the adverse
  /// event.
  List<AdverseEventSuspectEntity>? suspectEntity;

  /// [subjectMedicalHistory]
  /// AdverseEvent.subjectMedicalHistory.
  List<Reference>? subjectMedicalHistory;

  /// [referenceDocument]
  /// AdverseEvent.referenceDocument.
  List<Reference>? referenceDocument;

  /// [study]
  /// AdverseEvent.study.
  List<Reference>? study;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      final fieldJson2 = language!.toJson();
      json['language'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_language'] = fieldJson2['_value'];
      }
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

    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }

    final fieldJson8 = actuality.toJson();
    json['actuality'] = fieldJson8['value'];
    if (fieldJson8['_value'] != null) {
      json['_actuality'] = fieldJson8['_value'];
    }

    if (category != null && category!.isNotEmpty) {
      json['category'] = category!.map((e) => e.toJson()).toList();
    }

    if (event != null) {
      json['event'] = event!.toJson();
    }

    json['subject'] = subject.toJson();

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    if (date != null) {
      final fieldJson13 = date!.toJson();
      json['date'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_date'] = fieldJson13['_value'];
      }
    }

    if (detected != null) {
      final fieldJson14 = detected!.toJson();
      json['detected'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_detected'] = fieldJson14['_value'];
      }
    }

    if (recordedDate != null) {
      final fieldJson15 = recordedDate!.toJson();
      json['recordedDate'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_recordedDate'] = fieldJson15['_value'];
      }
    }

    if (resultingCondition != null && resultingCondition!.isNotEmpty) {
      json['resultingCondition'] =
          resultingCondition!.map((e) => e.toJson()).toList();
    }

    if (location != null) {
      json['location'] = location!.toJson();
    }

    if (seriousness != null) {
      json['seriousness'] = seriousness!.toJson();
    }

    if (severity != null) {
      json['severity'] = severity!.toJson();
    }

    if (outcome != null) {
      json['outcome'] = outcome!.toJson();
    }

    if (recorder != null) {
      json['recorder'] = recorder!.toJson();
    }

    if (contributor != null && contributor!.isNotEmpty) {
      json['contributor'] = contributor!.map((e) => e.toJson()).toList();
    }

    if (suspectEntity != null && suspectEntity!.isNotEmpty) {
      json['suspectEntity'] = suspectEntity!.map((e) => e.toJson()).toList();
    }

    if (subjectMedicalHistory != null && subjectMedicalHistory!.isNotEmpty) {
      json['subjectMedicalHistory'] =
          subjectMedicalHistory!.map((e) => e.toJson()).toList();
    }

    if (referenceDocument != null && referenceDocument!.isNotEmpty) {
      json['referenceDocument'] =
          referenceDocument!.map((e) => e.toJson()).toList();
    }

    if (study != null && study!.isNotEmpty) {
      json['study'] = study!.map((e) => e.toJson()).toList();
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
@Entity()
class AdverseEventSuspectEntity extends BackboneElement {
  /// Primary constructor for
  /// [AdverseEventSuspectEntity]

  AdverseEventSuspectEntity({
    this.dbId = 0,
    this.id,
    this.extension_,
    this.modifierExtension,
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
  factory AdverseEventSuspectEntity.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdverseEventSuspectEntity(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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

  /// Deserialize [AdverseEventSuspectEntity]
  /// from a [String] or [YamlMap] object
  factory AdverseEventSuspectEntity.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? AdverseEventSuspectEntity.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? AdverseEventSuspectEntity.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'AdverseEventSuspectEntity '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [AdverseEventSuspectEntity]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventSuspectEntity.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdverseEventSuspectEntity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'AdverseEventSuspectEntity';

  /// [id]
  /// Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  @override
  FhirString? id;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element and that modifies the understanding of
  /// the element in which it is contained and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [instance]
  /// Identifies the actual instance of what caused the adverse event. May be
  /// a substance, medication, medication administration, medication
  /// statement or a device.
  Reference instance;

  /// [causality]
  /// Information on the possible cause of the event.
  List<AdverseEventCausality>? causality;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['instance'] = instance.toJson();

    if (causality != null && causality!.isNotEmpty) {
      json['causality'] = causality!.map((e) => e.toJson()).toList();
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
@Entity()
class AdverseEventCausality extends BackboneElement {
  /// Primary constructor for
  /// [AdverseEventCausality]

  AdverseEventCausality({
    this.dbId = 0,
    this.id,
    this.extension_,
    this.modifierExtension,
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
  factory AdverseEventCausality.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdverseEventCausality(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      productRelatedness: (json['productRelatedness'] != null ||
              json['_productRelatedness'] != null)
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

  /// Deserialize [AdverseEventCausality]
  /// from a [String] or [YamlMap] object
  factory AdverseEventCausality.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? AdverseEventCausality.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? AdverseEventCausality.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'AdverseEventCausality '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [AdverseEventCausality]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventCausality.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdverseEventCausality.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'AdverseEventCausality';

  /// [id]
  /// Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  @override
  FhirString? id;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element and that modifies the understanding of
  /// the element in which it is contained and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [assessment]
  /// Assessment of if the entity caused the event.
  CodeableConcept? assessment;

  /// [productRelatedness]
  /// AdverseEvent.suspectEntity.causalityProductRelatedness.
  FhirString? productRelatedness;

  /// [author]
  /// AdverseEvent.suspectEntity.causalityAuthor.
  Reference? author;

  /// [method]
  /// ProbabilityScale | Bayesian | Checklist.
  CodeableConcept? method;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (assessment != null) {
      json['assessment'] = assessment!.toJson();
    }

    if (productRelatedness != null) {
      final fieldJson3 = productRelatedness!.toJson();
      json['productRelatedness'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_productRelatedness'] = fieldJson3['_value'];
      }
    }

    if (author != null) {
      json['author'] = author!.toJson();
    }

    if (method != null) {
      json['method'] = method!.toJson();
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
