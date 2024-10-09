import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'adverse_event.g.dart';

/// [AdverseEvent] /// Actual or potential/avoided event causing unintended physical injury
/// resulting from or contributed to by medical care, a research study or other
/// healthcare setting factors that requires additional monitoring, treatment,
/// or hospitalization, or that results in death.
@JsonSerializable()
class AdverseEvent extends DomainResource {
  AdverseEvent({
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
    required this.actuality,
    this.actualityElement,
    this.category,
    this.event,
    required this.subject,
    this.encounter,
    this.date,
    this.dateElement,
    this.detected,
    this.detectedElement,
    this.recordedDate,
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
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.AdverseEvent);
  @override
  String get fhirType => 'AdverseEvent';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this adverse event by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;

  /// [actuality] /// Whether the event actually happened, or just had the potential to. Note
  /// that this is independent of whether anyone was affected or harmed or how
  /// severely.
  @JsonKey(name: 'actuality')
  final AdverseEventActuality actuality;
  @JsonKey(name: '_actuality')
  final Element? actualityElement;

  /// [category] /// The overall type of event, intended for search and filtering purposes.
  @JsonKey(name: 'category')
  final List<AdverseEventCategory>? category;

  /// [event] /// This element defines the specific type of event that occurred or that was
  /// prevented from occurring.
  @JsonKey(name: 'event')
  final CodeableConcept? event;

  /// [subject] /// This subject or group impacted by the event.
  @JsonKey(name: 'subject')
  final Reference subject;

  /// [encounter] /// The Encounter during which AdverseEvent was created or to which the
  /// creation of this record is tightly associated.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [date] /// The date (and perhaps time) when the adverse event occurred.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [detected] /// Estimated or actual date the AdverseEvent began, in the opinion of the
  /// reporter.
  @JsonKey(name: 'detected')
  final FhirDateTime? detected;
  @JsonKey(name: '_detected')
  final Element? detectedElement;

  /// [recordedDate] /// The date on which the existence of the AdverseEvent was first recorded.
  @JsonKey(name: 'recordedDate')
  final FhirDateTime? recordedDate;
  @JsonKey(name: '_recordedDate')
  final Element? recordedDateElement;

  /// [resultingCondition] /// Includes information about the reaction that occurred as a result of
  /// exposure to a substance (for example, a drug or a chemical).
  @JsonKey(name: 'resultingCondition')
  final List<Reference>? resultingCondition;

  /// [location] /// The information about where the adverse event occurred.
  @JsonKey(name: 'location')
  final Reference? location;

  /// [seriousness] /// Assessment whether this event was of real importance.
  @JsonKey(name: 'seriousness')
  final AdverseEventSeriousness? seriousness;

  /// [severity] /// Describes the severity of the adverse event, in relation to the subject.
  /// Contrast to AdverseEvent.seriousness - a severe rash might not be serious,
  /// but a mild heart problem is.
  @JsonKey(name: 'severity')
  final AdverseEventSeverity? severity;

  /// [outcome] /// Describes the type of outcome from the adverse event.
  @JsonKey(name: 'outcome')
  final AdverseEventOutcome? outcome;

  /// [recorder] /// Information on who recorded the adverse event. May be the patient or a
  /// practitioner.
  @JsonKey(name: 'recorder')
  final Reference? recorder;

  /// [contributor] /// Parties that may or should contribute or have contributed information to
  /// the adverse event, which can consist of one or more activities. Such
  /// information includes information leading to the decision to perform the
  /// activity and how to perform the activity (e.g. consultant), information
  /// that the activity itself seeks to reveal (e.g. informant of clinical
  /// history), or information about what activity was performed (e.g. informant
  /// witness).
  @JsonKey(name: 'contributor')
  final List<Reference>? contributor;

  /// [suspectEntity] /// Describes the entity that is suspected to have caused the adverse event.
  @JsonKey(name: 'suspectEntity')
  final List<AdverseEventSuspectEntity>? suspectEntity;

  /// [subjectMedicalHistory] /// AdverseEvent.subjectMedicalHistory.
  @JsonKey(name: 'subjectMedicalHistory')
  final List<Reference>? subjectMedicalHistory;

  /// [referenceDocument] /// AdverseEvent.referenceDocument.
  @JsonKey(name: 'referenceDocument')
  final List<Reference>? referenceDocument;

  /// [study] /// AdverseEvent.study.
  @JsonKey(name: 'study')
  final List<Reference>? study;
  factory AdverseEvent.fromJson(Map<String, dynamic> json) =>
      _$AdverseEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdverseEventToJson(this);

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
    List<AdverseEventCategory>? category,
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
    AdverseEventSeriousness? seriousness,
    AdverseEventSeverity? severity,
    AdverseEventOutcome? outcome,
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

  factory AdverseEvent.fromYaml(dynamic yaml) => yaml is String
      ? AdverseEvent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AdverseEvent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AdverseEvent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AdverseEvent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdverseEvent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [AdverseEventSuspectEntity] /// Describes the entity that is suspected to have caused the adverse event.
@JsonSerializable()
class AdverseEventSuspectEntity extends BackboneElement {
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
  @override
  String get fhirType => 'AdverseEventSuspectEntity';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [instance] /// Identifies the actual instance of what caused the adverse event. May be a
  /// substance, medication, medication administration, medication statement or a
  /// device.
  @JsonKey(name: 'instance')
  final Reference instance;

  /// [causality] /// Information on the possible cause of the event.
  @JsonKey(name: 'causality')
  final List<AdverseEventCausality>? causality;
  factory AdverseEventSuspectEntity.fromJson(Map<String, dynamic> json) =>
      _$AdverseEventSuspectEntityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdverseEventSuspectEntityToJson(this);

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

  factory AdverseEventSuspectEntity.fromYaml(dynamic yaml) => yaml is String
      ? AdverseEventSuspectEntity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AdverseEventSuspectEntity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AdverseEventSuspectEntity cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AdverseEventSuspectEntity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdverseEventSuspectEntity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [AdverseEventCausality] /// Information on the possible cause of the event.
@JsonSerializable()
class AdverseEventCausality extends BackboneElement {
  AdverseEventCausality({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.assessment,
    this.productRelatedness,
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
  @override
  String get fhirType => 'AdverseEventCausality';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [assessment] /// Assessment of if the entity caused the event.
  @JsonKey(name: 'assessment')
  final AdverseEventCausalityAssessment? assessment;

  /// [productRelatedness] /// AdverseEvent.suspectEntity.causalityProductRelatedness.
  @JsonKey(name: 'productRelatedness')
  final FhirString? productRelatedness;
  @JsonKey(name: '_productRelatedness')
  final Element? productRelatednessElement;

  /// [author] /// AdverseEvent.suspectEntity.causalityAuthor.
  @JsonKey(name: 'author')
  final Reference? author;

  /// [method] /// ProbabilityScale | Bayesian | Checklist.
  @JsonKey(name: 'method')
  final AdverseEventCausalityMethod? method;
  factory AdverseEventCausality.fromJson(Map<String, dynamic> json) =>
      _$AdverseEventCausalityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdverseEventCausalityToJson(this);

  @override
  AdverseEventCausality clone() => throw UnimplementedError();
  @override
  AdverseEventCausality copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    AdverseEventCausalityAssessment? assessment,
    FhirString? productRelatedness,
    Element? productRelatednessElement,
    Reference? author,
    AdverseEventCausalityMethod? method,
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

  factory AdverseEventCausality.fromYaml(dynamic yaml) => yaml is String
      ? AdverseEventCausality.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AdverseEventCausality.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AdverseEventCausality cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AdverseEventCausality.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdverseEventCausality.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
