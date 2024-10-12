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

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.actuality,

    /// Extensions for [actuality]
    this.actualityElement,
    this.category,
    this.event,
    required this.subject,
    this.encounter,
    this.date,

    /// Extensions for [date]
    this.dateElement,
    this.detected,

    /// Extensions for [detected]
    this.detectedElement,
    this.recordedDate,

    /// Extensions for [recordedDate]
    this.recordedDateElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
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
      actuality: AdverseEventActuality.fromJson(json['actuality']),
      actualityElement: json['_actuality'] != null
          ? Element.fromJson(
              json['_actuality'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
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
      date: json['date'] != null ? FhirDateTime.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(
              json['_date'] as Map<String, dynamic>,
            )
          : null,
      detected: json['detected'] != null
          ? FhirDateTime.fromJson(json['detected'])
          : null,
      detectedElement: json['_detected'] != null
          ? Element.fromJson(
              json['_detected'] as Map<String, dynamic>,
            )
          : null,
      recordedDate: json['recordedDate'] != null
          ? FhirDateTime.fromJson(json['recordedDate'])
          : null,
      recordedDateElement: json['_recordedDate'] != null
          ? Element.fromJson(
              json['_recordedDate'] as Map<String, dynamic>,
            )
          : null,
      resultingCondition: json['resultingCondition'] != null
          ? (json['resultingCondition'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
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
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      suspectEntity: json['suspectEntity'] != null
          ? (json['suspectEntity'] as List<dynamic>)
              .map<AdverseEventSuspectEntity>(
                (dynamic v) => AdverseEventSuspectEntity.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subjectMedicalHistory: json['subjectMedicalHistory'] != null
          ? (json['subjectMedicalHistory'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      referenceDocument: json['referenceDocument'] != null
          ? (json['referenceDocument'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      study: json['study'] != null
          ? (json['study'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [AdverseEvent] from a [String] or [YamlMap] object
  factory AdverseEvent.fromYaml(dynamic yaml) => yaml is String
      ? AdverseEvent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? AdverseEvent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('AdverseEvent cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [AdverseEvent] that takes in a [String]
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

  /// Extensions for [actuality]
  final Element? actualityElement;

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

  /// Extensions for [date]
  final Element? dateElement;

  /// [detected]
  /// Estimated or actual date the AdverseEvent began, in the opinion of the
  /// reporter.
  final FhirDateTime? detected;

  /// Extensions for [detected]
  final Element? detectedElement;

  /// [recordedDate]
  /// The date on which the existence of the AdverseEvent was first recorded.
  final FhirDateTime? recordedDate;

  /// Extensions for [recordedDate]
  final Element? recordedDateElement;

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
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    json['actuality'] = actuality.toJson();
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (event != null) {
      json['event'] = event!.toJson();
    }
    json['subject'] = subject.toJson();
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.toJson();
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (detected?.value != null) {
      json['detected'] = detected!.toJson();
    }
    if (detectedElement != null) {
      json['_detected'] = detectedElement!.toJson();
    }
    if (recordedDate?.value != null) {
      json['recordedDate'] = recordedDate!.toJson();
    }
    if (recordedDateElement != null) {
      json['_recordedDate'] = recordedDateElement!.toJson();
    }
    if (resultingCondition != null && resultingCondition!.isNotEmpty) {
      json['resultingCondition'] =
          resultingCondition!.map((Reference v) => v.toJson()).toList();
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
      json['contributor'] =
          contributor!.map((Reference v) => v.toJson()).toList();
    }
    if (suspectEntity != null && suspectEntity!.isNotEmpty) {
      json['suspectEntity'] = suspectEntity!
          .map((AdverseEventSuspectEntity v) => v.toJson())
          .toList();
    }
    if (subjectMedicalHistory != null && subjectMedicalHistory!.isNotEmpty) {
      json['subjectMedicalHistory'] =
          subjectMedicalHistory!.map((Reference v) => v.toJson()).toList();
    }
    if (referenceDocument != null && referenceDocument!.isNotEmpty) {
      json['referenceDocument'] =
          referenceDocument!.map((Reference v) => v.toJson()).toList();
    }
    if (study != null && study!.isNotEmpty) {
      json['study'] = study!.map((Reference v) => v.toJson()).toList();
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
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    AdverseEventActuality? actuality,
    Element? actualityElement,
    List<CodeableConcept>? category,
    CodeableConcept? event,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? date,
    Element? dateElement,
    FhirDateTime? detected,
    Element? detectedElement,
    FhirDateTime? recordedDate,
    Element? recordedDateElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      actuality: actuality ?? this.actuality,
      actualityElement: actualityElement ?? this.actualityElement,
      category: category ?? this.category,
      event: event ?? this.event,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      detected: detected ?? this.detected,
      detectedElement: detectedElement ?? this.detectedElement,
      recordedDate: recordedDate ?? this.recordedDate,
      recordedDateElement: recordedDateElement ?? this.recordedDateElement,
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
    super.extension_,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
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
                (dynamic v) => AdverseEventCausality.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [AdverseEventSuspectEntity] from a [String] or [YamlMap] object
  factory AdverseEventSuspectEntity.fromYaml(dynamic yaml) => yaml is String
      ? AdverseEventSuspectEntity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? AdverseEventSuspectEntity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'AdverseEventSuspectEntity cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [AdverseEventSuspectEntity] that takes in a [String]
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
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['instance'] = instance.toJson();
    if (causality != null && causality!.isNotEmpty) {
      json['causality'] =
          causality!.map((AdverseEventCausality v) => v.toJson()).toList();
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
    super.extension_,
    super.modifierExtension,
    this.assessment,
    this.productRelatedness,

    /// Extensions for [productRelatedness]
    this.productRelatednessElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
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
          ? FhirString.fromJson(json['productRelatedness'])
          : null,
      productRelatednessElement: json['_productRelatedness'] != null
          ? Element.fromJson(
              json['_productRelatedness'] as Map<String, dynamic>,
            )
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

  /// Deserialize [AdverseEventCausality] from a [String] or [YamlMap] object
  factory AdverseEventCausality.fromYaml(dynamic yaml) => yaml is String
      ? AdverseEventCausality.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? AdverseEventCausality.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'AdverseEventCausality cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [AdverseEventCausality] that takes in a [String]
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

  /// [assessment]
  /// Assessment of if the entity caused the event.
  final CodeableConcept? assessment;

  /// [productRelatedness]
  /// AdverseEvent.suspectEntity.causalityProductRelatedness.
  final FhirString? productRelatedness;

  /// Extensions for [productRelatedness]
  final Element? productRelatednessElement;

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
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (assessment != null) {
      json['assessment'] = assessment!.toJson();
    }
    if (productRelatedness?.value != null) {
      json['productRelatedness'] = productRelatedness!.toJson();
    }
    if (productRelatednessElement != null) {
      json['_productRelatedness'] = productRelatednessElement!.toJson();
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
    Element? productRelatednessElement,
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
      productRelatednessElement:
          productRelatednessElement ?? this.productRelatednessElement,
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
