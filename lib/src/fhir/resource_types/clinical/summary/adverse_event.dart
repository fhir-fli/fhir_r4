// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'adverse_event.freezed.dart';
part 'adverse_event.g.dart';

/// [AdverseEvent] Actual or  potential/avoided event causing unintended
@freezed
class AdverseEvent with _$AdverseEvent implements DomainResource {
  /// [AdverseEvent] Actual or  potential/avoided event causing unintended
  const AdverseEvent._();

  /// [AdverseEvent] Actual or  potential/avoided event causing unintended
  /// physical injury resulting from or contributed to by medical care, a
  /// research study or other healthcare setting factors that requires
  /// additional monitoring, treatment, or hospitalization, or that results in
  ///  death.
  ///
  /// [resourceType] This is a AdverseEvent resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] Business identifiers assigned to this adverse event by the
  /// performer or other systems which remain constant as the resource is
  ///  updated and propagates from server to server.
  ///
  /// [actuality] Whether the event actually happened, or just had the
  /// potential to. Note that this is independent of whether anyone was affected
  ///  or harmed or how severely.
  ///
  /// [actualityElement] Extensions for actuality
  ///
  /// [category] The overall type of event, intended for search and filtering
  ///  purposes.
  ///
  /// [event] This element defines the specific type of event that occurred or
  ///  that was prevented from occurring.
  ///
  /// [subject] This subject or group impacted by the event.
  ///
  /// [encounter] The Encounter during which AdverseEvent was created or to
  ///  which the creation of this record is tightly associated.
  ///
  /// [date] The date (and perhaps time) when the adverse event occurred.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [detected] Estimated or actual date the AdverseEvent began, in the
  ///  opinion of the reporter.
  ///
  /// [detectedElement] Extensions for detected
  ///
  /// [recordedDate] The date on which the existence of the AdverseEvent was
  ///  first recorded.
  ///
  /// [recordedDateElement] Extensions for recordedDate
  ///
  /// [resultingCondition] Includes information about the reaction that
  /// occurred as a result of exposure to a substance (for example, a drug or a
  ///  chemical).
  ///
  /// [location] The information about where the adverse event occurred.
  ///
  /// [seriousness] Assessment whether this event was of real importance.
  ///
  /// [severity] Describes the severity of the adverse event, in relation to
  /// the subject. Contrast to AdverseEvent.seriousness - a severe rash might
  ///  not be serious, but a mild heart problem is.
  ///
  /// [outcome] Describes the type of outcome from the adverse event.
  ///
  /// [recorder] Information on who recorded the adverse event.  May be the
  ///  patient or a practitioner.
  ///
  /// [contributor] Parties that may or should contribute or have contributed
  /// information to the adverse event, which can consist of one or more
  /// activities.  Such information includes information leading to the decision
  /// to perform the activity and how to perform the activity (e.g. consultant),
  /// information that the activity itself seeks to reveal (e.g. informant of
  /// clinical history), or information about what activity was performed (e.g.
  ///  informant witness).
  ///
  /// [suspectEntity] Describes the entity that is suspected to have caused the
  ///  adverse event.
  ///
  /// [subjectMedicalHistory] AdverseEvent.subjectMedicalHistory.
  ///
  /// [referenceDocument] AdverseEvent.referenceDocument.
  ///
  /// [study] AdverseEvent.study.
  const factory AdverseEvent({
    @Default(R4ResourceType.AdverseEvent)
    @JsonKey(unknownEnumValue: R4ResourceType.AdverseEvent)
    R4ResourceType resourceType,
    String? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
    FhirCode? language,
    @JsonKey(name: '_language') PrimitiveElement? languageElement,
    Narrative? text,
    List<Resource>? contained,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    FhirCode? actuality,
    @JsonKey(name: '_actuality') PrimitiveElement? actualityElement,
    List<CodeableConcept>? category,
    CodeableConcept? event,
    required Reference subject,
    Reference? encounter,
    FhirDateTime? date,
    @JsonKey(name: '_date') PrimitiveElement? dateElement,
    FhirDateTime? detected,
    @JsonKey(name: '_detected') PrimitiveElement? detectedElement,
    FhirDateTime? recordedDate,
    @JsonKey(name: '_recordedDate') PrimitiveElement? recordedDateElement,
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
  }) = _AdverseEvent;

  @override
  String get fhirType => 'AdverseEvent';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AdverseEvent.fromYaml(dynamic yaml) => yaml is String
      ? AdverseEvent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AdverseEvent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AdverseEvent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AdverseEvent.fromJson(Map<String, dynamic> json) =>
      _$AdverseEventFromJson(json);

  /// Acts like a constructor, returns a [AdverseEvent], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AdverseEvent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdverseEventFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta));
}

/// [AdverseEventSuspectEntity] Actual or  potential/avoided event causing
@freezed

/// [AdverseEventSuspectEntity] Actual or  potential/avoided event causing
@freezed
class AdverseEventSuspectEntity
    with _$AdverseEventSuspectEntity
    implements BackboneElement {
  /// [AdverseEventSuspectEntity] Actual or  potential/avoided event causing
  const AdverseEventSuspectEntity._();

  /// [AdverseEventSuspectEntity] Actual or  potential/avoided event causing
  /// unintended physical injury resulting from or contributed to by medical
  /// care, a research study or other healthcare setting factors that requires
  /// additional monitoring, treatment, or hospitalization, or that results in
  ///  death.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [instance] Identifies the actual instance of what caused the adverse
  /// event.  May be a substance, medication, medication administration,
  ///  medication statement or a device.
  ///
  /// [causality] Information on the possible cause of the event.
  const factory AdverseEventSuspectEntity({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    required Reference instance,
    List<AdverseEventCausality>? causality,
  }) = _AdverseEventSuspectEntity;

  @override
  String get fhirType => 'AdverseEventSuspectEntity';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AdverseEventSuspectEntity.fromYaml(dynamic yaml) => yaml is String
      ? AdverseEventSuspectEntity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AdverseEventSuspectEntity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AdverseEventSuspectEntity cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AdverseEventSuspectEntity.fromJson(Map<String, dynamic> json) =>
      _$AdverseEventSuspectEntityFromJson(json);

  /// Acts like a constructor, returns a [AdverseEventSuspectEntity], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AdverseEventSuspectEntity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdverseEventSuspectEntityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [AdverseEventCausality] Actual or  potential/avoided event causing
@freezed

/// [AdverseEventCausality] Actual or  potential/avoided event causing
@freezed
class AdverseEventCausality
    with _$AdverseEventCausality
    implements BackboneElement {
  /// [AdverseEventCausality] Actual or  potential/avoided event causing
  const AdverseEventCausality._();

  /// [AdverseEventCausality] Actual or  potential/avoided event causing
  /// unintended physical injury resulting from or contributed to by medical
  /// care, a research study or other healthcare setting factors that requires
  /// additional monitoring, treatment, or hospitalization, or that results in
  ///  death.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [assessment] Assessment of if the entity caused the event.
  ///
  /// [productRelatedness]
  ///  AdverseEvent.suspectEntity.causalityProductRelatedness.
  ///
  /// [productRelatednessElement] Extensions for productRelatedness
  ///
  /// [author] AdverseEvent.suspectEntity.causalityAuthor.
  ///
  /// [method] ProbabilityScale | Bayesian | Checklist.
  const factory AdverseEventCausality({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? assessment,
    String? productRelatedness,
    @JsonKey(name: '_productRelatedness')
    PrimitiveElement? productRelatednessElement,
    Reference? author,
    CodeableConcept? method,
  }) = _AdverseEventCausality;

  @override
  String get fhirType => 'AdverseEventCausality';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AdverseEventCausality.fromYaml(dynamic yaml) => yaml is String
      ? AdverseEventCausality.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AdverseEventCausality.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AdverseEventCausality cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AdverseEventCausality.fromJson(Map<String, dynamic> json) =>
      _$AdverseEventCausalityFromJson(json);

  /// Acts like a constructor, returns a [AdverseEventCausality], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AdverseEventCausality.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdverseEventCausalityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
