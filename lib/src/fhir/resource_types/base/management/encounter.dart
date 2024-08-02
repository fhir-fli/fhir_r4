// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'encounter.freezed.dart';
part 'encounter.g.dart';

/// [Encounter] An interaction between a patient and healthcare provider(s)
@freezed
class Encounter with _$Encounter implements DomainResource {
  /// [Encounter] An interaction between a patient and healthcare provider(s)
  const Encounter._();

  /// [Encounter] An interaction between a patient and healthcare provider(s)
  /// for the purpose of providing healthcare service(s) or assessing the health
  ///  status of a patient.
  ///
  /// [resourceType] This is a Encounter resource
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
  /// [identifier] Identifier(s) by which this encounter is known.
  ///
  /// [status] planned | arrived | triaged | in-progress | onleave | finished |
  ///  cancelled +.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [statusHistory] The status history permits the encounter resource to
  /// contain the status history without needing to read through the historical
  ///  versions of the resource, or even have the server store them.
  ///
  /// [class] Concepts representing classification of patient encounter such as
  /// ambulatory (outpatient), inpatient, emergency, home health or others due
  ///  to local variations.
  ///
  /// [classHistory] The class history permits the tracking of the encounters
  /// transitions without needing to go  through the resource history.  This
  /// would be used for a case where an admission starts of as an emergency
  /// encounter, then transitions into an inpatient scenario. Doing this and not
  /// restarting a new encounter ensures that any lab/diagnostic results can
  /// more easily follow the patient and not require re-processing and not get
  ///  lost or cancelled during a kind of discharge from emergency to inpatient.
  ///
  /// [type] Specific type of encounter (e.g. e-mail consultation, surgical
  ///  day-care, skilled nursing, rehabilitation).
  ///
  /// [serviceType] Broad categorization of the service that is to be provided
  ///  (e.g. cardiology).
  ///
  /// [priority] Indicates the urgency of the encounter.
  ///
  /// [subject] The patient or group present at the encounter.
  ///
  /// [episodeOfCare] Where a specific encounter should be classified as a part
  /// of a specific episode(s) of care this field should be used. This
  /// association can facilitate grouping of related encounters together for a
  /// specific purpose, such as government reporting, issue tracking,
  /// association via a common problem.  The association is recorded on the
  /// encounter as these are typically created after the episode of care and
  /// grouped on entry rather than editing the episode of care to append another
  ///  encounter to it (the episode of care could span years).
  ///
  /// [basedOn] The request this encounter satisfies (e.g. incoming referral or
  ///  procedure request).
  ///
  /// [participant] The list of people responsible for providing the service.
  ///
  /// [appointment] The appointment that scheduled this encounter.
  ///
  /// [period] The start and end time of the encounter.
  ///
  /// [length] Quantity of time the encounter lasted. This excludes the time
  ///  during leaves of absence.
  ///
  /// [reasonCode] Reason the encounter takes place, expressed as a code. For
  ///  admissions, this can be used for a coded admission diagnosis.
  ///
  /// [reasonReference] Reason the encounter takes place, expressed as a code.
  ///  For admissions, this can be used for a coded admission diagnosis.
  ///
  /// [diagnosis] The list of diagnosis relevant to this encounter.
  ///
  /// [account] The set of accounts that may be used for billing for this
  ///  Encounter.
  ///
  /// [hospitalization] Details about the admission to a healthcare service.
  ///
  /// [location] List of locations where  the patient has been during this
  ///  encounter.
  ///
  /// [serviceProvider] The organization that is primarily responsible for this
  /// Encounter's services. This MAY be the same as the organization on the
  /// Patient record, however it could be different, such as if the actor
  /// performing the services was from an external organization (which may be
  /// billed seperately) for an external consultation.  Refer to the example
  ///  bundle showing an abbreviated set of Encounters for a colonoscopy.
  ///
  /// [partOf] Another Encounter of which this encounter is a part of
  ///  (administratively or in time).
  const factory Encounter({
    @Default(R4ResourceType.Encounter)
    @JsonKey(unknownEnumValue: R4ResourceType.Encounter)

    /// [resourceType] This is a Encounter resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [identifier] Identifier(s) by which this encounter is known.
    List<Identifier>? identifier,

    /// [status] planned | arrived | triaged | in-progress | onleave | finished |
    ///  cancelled +.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [statusHistory] The status history permits the encounter resource to
    /// contain the status history without needing to read through the historical
    ///  versions of the resource, or even have the server store them.
    List<EncounterStatusHistory>? statusHistory,

    /// [class] Concepts representing classification of patient encounter such as
    /// ambulatory (outpatient), inpatient, emergency, home health or others due
    ///  to local variations.
    @JsonKey(name: 'class') required Coding class_,

    /// [classHistory] The class history permits the tracking of the encounters
    /// transitions without needing to go  through the resource history.  This
    /// would be used for a case where an admission starts of as an emergency
    /// encounter, then transitions into an inpatient scenario. Doing this and not
    /// restarting a new encounter ensures that any lab/diagnostic results can
    /// more easily follow the patient and not require re-processing and not get
    ///  lost or cancelled during a kind of discharge from emergency to inpatient.
    List<EncounterClassHistory>? classHistory,

    /// [type] Specific type of encounter (e.g. e-mail consultation, surgical
    ///  day-care, skilled nursing, rehabilitation).
    List<CodeableConcept>? type,

    /// [serviceType] Broad categorization of the service that is to be provided
    ///  (e.g. cardiology).
    CodeableConcept? serviceType,

    /// [priority] Indicates the urgency of the encounter.
    CodeableConcept? priority,

    /// [subject] The patient or group present at the encounter.
    Reference? subject,

    /// [episodeOfCare] Where a specific encounter should be classified as a part
    /// of a specific episode(s) of care this field should be used. This
    /// association can facilitate grouping of related encounters together for a
    /// specific purpose, such as government reporting, issue tracking,
    /// association via a common problem.  The association is recorded on the
    /// encounter as these are typically created after the episode of care and
    /// grouped on entry rather than editing the episode of care to append another
    ///  encounter to it (the episode of care could span years).
    List<Reference>? episodeOfCare,

    /// [basedOn] The request this encounter satisfies (e.g. incoming referral or
    ///  procedure request).
    List<Reference>? basedOn,

    /// [participant] The list of people responsible for providing the service.
    List<EncounterParticipant>? participant,

    /// [appointment] The appointment that scheduled this encounter.
    List<Reference>? appointment,

    /// [period] The start and end time of the encounter.
    Period? period,

    /// [length] Quantity of time the encounter lasted. This excludes the time
    ///  during leaves of absence.
    FhirDuration? length,

    /// [reasonCode] Reason the encounter takes place, expressed as a code. For
    ///  admissions, this can be used for a coded admission diagnosis.
    List<CodeableConcept>? reasonCode,

    /// [reasonReference] Reason the encounter takes place, expressed as a code.
    ///  For admissions, this can be used for a coded admission diagnosis.
    List<Reference>? reasonReference,

    /// [diagnosis] The list of diagnosis relevant to this encounter.
    List<EncounterDiagnosis>? diagnosis,

    /// [account] The set of accounts that may be used for billing for this
    ///  Encounter.
    List<Reference>? account,

    /// [hospitalization] Details about the admission to a healthcare service.
    EncounterHospitalization? hospitalization,

    /// [location] List of locations where  the patient has been during this
    ///  encounter.
    List<EncounterLocation>? location,

    /// [serviceProvider] The organization that is primarily responsible for this
    /// Encounter's services. This MAY be the same as the organization on the
    /// Patient record, however it could be different, such as if the actor
    /// performing the services was from an external organization (which may be
    /// billed seperately) for an external consultation.  Refer to the example
    ///  bundle showing an abbreviated set of Encounters for a colonoscopy.
    Reference? serviceProvider,

    /// [partOf] Another Encounter of which this encounter is a part of
    ///  (administratively or in time).
    Reference? partOf,
  }) = _Encounter;

  @override
  String get fhirType => 'Encounter';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Encounter.fromYaml(dynamic yaml) => yaml is String
      ? Encounter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Encounter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Encounter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Encounter.fromJson(Map<String, dynamic> json) =>
      _$EncounterFromJson(json);

  /// Acts like a constructor, returns a [Encounter], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Encounter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterFromJson(json);
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
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [EncounterStatusHistory] An interaction between a patient and healthcare
@freezed

/// [EncounterStatusHistory] An interaction between a patient and healthcare
@freezed
class EncounterStatusHistory
    with _$EncounterStatusHistory
    implements BackboneElement {
  /// [EncounterStatusHistory] An interaction between a patient and healthcare
  const EncounterStatusHistory._();

  /// [EncounterStatusHistory] An interaction between a patient and healthcare
  /// provider(s) for the purpose of providing healthcare service(s) or
  ///  assessing the health status of a patient.
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
  /// [status] planned | arrived | triaged | in-progress | onleave | finished |
  ///  cancelled +.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [period] The time that the episode was in the specified status.
  const factory EncounterStatusHistory({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [status] planned | arrived | triaged | in-progress | onleave | finished |
    ///  cancelled +.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [period] The time that the episode was in the specified status.
    required Period period,
  }) = _EncounterStatusHistory;

  @override
  String get fhirType => 'EncounterStatusHistory';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EncounterStatusHistory.fromYaml(dynamic yaml) => yaml is String
      ? EncounterStatusHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EncounterStatusHistory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EncounterStatusHistory cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EncounterStatusHistory.fromJson(Map<String, dynamic> json) =>
      _$EncounterStatusHistoryFromJson(json);

  /// Acts like a constructor, returns a [EncounterStatusHistory], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EncounterStatusHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterStatusHistoryFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}

/// [EncounterClassHistory] An interaction between a patient and healthcare
@freezed

/// [EncounterClassHistory] An interaction between a patient and healthcare
@freezed
class EncounterClassHistory
    with _$EncounterClassHistory
    implements BackboneElement {
  /// [EncounterClassHistory] An interaction between a patient and healthcare
  const EncounterClassHistory._();

  /// [EncounterClassHistory] An interaction between a patient and healthcare
  /// provider(s) for the purpose of providing healthcare service(s) or
  ///  assessing the health status of a patient.
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
  /// [class] inpatient | outpatient | ambulatory | emergency +.
  ///
  /// [period] The time that the episode was in the specified class.
  const factory EncounterClassHistory({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [class] inpatient | outpatient | ambulatory | emergency +.
    @JsonKey(name: 'class') required Coding class_,

    /// [period] The time that the episode was in the specified class.
    required Period period,
  }) = _EncounterClassHistory;

  @override
  String get fhirType => 'EncounterClassHistory';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EncounterClassHistory.fromYaml(dynamic yaml) => yaml is String
      ? EncounterClassHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EncounterClassHistory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EncounterClassHistory cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EncounterClassHistory.fromJson(Map<String, dynamic> json) =>
      _$EncounterClassHistoryFromJson(json);

  /// Acts like a constructor, returns a [EncounterClassHistory], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EncounterClassHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterClassHistoryFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}

/// [EncounterParticipant] An interaction between a patient and healthcare
@freezed

/// [EncounterParticipant] An interaction between a patient and healthcare
@freezed
class EncounterParticipant
    with _$EncounterParticipant
    implements BackboneElement {
  /// [EncounterParticipant] An interaction between a patient and healthcare
  const EncounterParticipant._();

  /// [EncounterParticipant] An interaction between a patient and healthcare
  /// provider(s) for the purpose of providing healthcare service(s) or
  ///  assessing the health status of a patient.
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
  /// [type] Role of participant in encounter.
  ///
  /// [period] The period of time that the specified participant participated
  /// in the encounter. These can overlap or be sub-sets of the overall
  ///  encounter's period.
  ///
  /// [individual] Persons involved in the encounter other than the patient.
  const factory EncounterParticipant({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [type] Role of participant in encounter.
    List<CodeableConcept>? type,

    /// [period] The period of time that the specified participant participated
    /// in the encounter. These can overlap or be sub-sets of the overall
    ///  encounter's period.
    Period? period,

    /// [individual] Persons involved in the encounter other than the patient.
    Reference? individual,
  }) = _EncounterParticipant;

  @override
  String get fhirType => 'EncounterParticipant';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EncounterParticipant.fromYaml(dynamic yaml) => yaml is String
      ? EncounterParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EncounterParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EncounterParticipant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EncounterParticipant.fromJson(Map<String, dynamic> json) =>
      _$EncounterParticipantFromJson(json);

  /// Acts like a constructor, returns a [EncounterParticipant], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EncounterParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterParticipantFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}

/// [EncounterDiagnosis] An interaction between a patient and healthcare
@freezed

/// [EncounterDiagnosis] An interaction between a patient and healthcare
@freezed
class EncounterDiagnosis with _$EncounterDiagnosis implements BackboneElement {
  /// [EncounterDiagnosis] An interaction between a patient and healthcare
  const EncounterDiagnosis._();

  /// [EncounterDiagnosis] An interaction between a patient and healthcare
  /// provider(s) for the purpose of providing healthcare service(s) or
  ///  assessing the health status of a patient.
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
  /// [condition] Reason the encounter takes place, as specified using
  /// information from another resource. For admissions, this is the admission
  /// diagnosis. The indication will typically be a Condition (with other
  ///  resources referenced in the evidence.detail), or a Procedure.
  ///
  /// [use] Role that this diagnosis has within the encounter (e.g. admission,
  ///  billing, discharge …).
  ///
  /// [rank] Ranking of the diagnosis (for each role type).
  ///
  /// [rankElement] Extensions for rank
  const factory EncounterDiagnosis({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [condition] Reason the encounter takes place, as specified using
    /// information from another resource. For admissions, this is the admission
    /// diagnosis. The indication will typically be a Condition (with other
    ///  resources referenced in the evidence.detail), or a Procedure.
    required Reference condition,

    /// [use] Role that this diagnosis has within the encounter (e.g. admission,
    ///  billing, discharge …).
    CodeableConcept? use,

    /// [rank] Ranking of the diagnosis (for each role type).
    FhirPositiveInt? rank,

    /// [rankElement] Extensions for rank
    @JsonKey(name: '_rank') PrimitiveElement? rankElement,
  }) = _EncounterDiagnosis;

  @override
  String get fhirType => 'EncounterDiagnosis';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EncounterDiagnosis.fromYaml(dynamic yaml) => yaml is String
      ? EncounterDiagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EncounterDiagnosis.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EncounterDiagnosis cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EncounterDiagnosis.fromJson(Map<String, dynamic> json) =>
      _$EncounterDiagnosisFromJson(json);

  /// Acts like a constructor, returns a [EncounterDiagnosis], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EncounterDiagnosis.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterDiagnosisFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}

/// [EncounterHospitalization] An interaction between a patient and
@freezed

/// [EncounterHospitalization] An interaction between a patient and
@freezed
class EncounterHospitalization
    with _$EncounterHospitalization
    implements BackboneElement {
  /// [EncounterHospitalization] An interaction between a patient and
  const EncounterHospitalization._();

  /// [EncounterHospitalization] An interaction between a patient and
  /// healthcare provider(s) for the purpose of providing healthcare service(s)
  ///  or assessing the health status of a patient.
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
  /// [preAdmissionIdentifier] Pre-admission identifier.
  ///
  /// [origin] The location/organization from which the patient came before
  ///  admission.
  ///
  /// [admitSource] From where patient was admitted (physician referral,
  ///  transfer).
  ///
  /// [reAdmission] Whether this hospitalization is a readmission and why if
  ///  known.
  ///
  /// [dietPreference] Diet preferences reported by the patient.
  ///
  /// [specialCourtesy] Special courtesies (VIP, board member).
  ///
  /// [specialArrangement] Any special requests that have been made for this
  /// hospitalization encounter, such as the provision of specific equipment or
  ///  other things.
  ///
  /// [destination] Location/organization to which the patient is discharged.
  ///
  /// [dischargeDisposition] Category or kind of location after discharge.
  const factory EncounterHospitalization({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [preAdmissionIdentifier] Pre-admission identifier.
    Identifier? preAdmissionIdentifier,

    /// [origin] The location/organization from which the patient came before
    ///  admission.
    Reference? origin,

    /// [admitSource] From where patient was admitted (physician referral,
    ///  transfer).
    CodeableConcept? admitSource,

    /// [reAdmission] Whether this hospitalization is a readmission and why if
    ///  known.
    CodeableConcept? reAdmission,

    /// [dietPreference] Diet preferences reported by the patient.
    List<CodeableConcept>? dietPreference,

    /// [specialCourtesy] Special courtesies (VIP, board member).
    List<CodeableConcept>? specialCourtesy,

    /// [specialArrangement] Any special requests that have been made for this
    /// hospitalization encounter, such as the provision of specific equipment or
    ///  other things.
    List<CodeableConcept>? specialArrangement,

    /// [destination] Location/organization to which the patient is discharged.
    Reference? destination,

    /// [dischargeDisposition] Category or kind of location after discharge.
    CodeableConcept? dischargeDisposition,
  }) = _EncounterHospitalization;

  @override
  String get fhirType => 'EncounterHospitalization';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EncounterHospitalization.fromYaml(dynamic yaml) => yaml is String
      ? EncounterHospitalization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EncounterHospitalization.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EncounterHospitalization cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EncounterHospitalization.fromJson(Map<String, dynamic> json) =>
      _$EncounterHospitalizationFromJson(json);

  /// Acts like a constructor, returns a [EncounterHospitalization], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EncounterHospitalization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterHospitalizationFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}

/// [EncounterLocation] An interaction between a patient and healthcare
@freezed

/// [EncounterLocation] An interaction between a patient and healthcare
@freezed
class EncounterLocation with _$EncounterLocation implements BackboneElement {
  /// [EncounterLocation] An interaction between a patient and healthcare
  const EncounterLocation._();

  /// [EncounterLocation] An interaction between a patient and healthcare
  /// provider(s) for the purpose of providing healthcare service(s) or
  ///  assessing the health status of a patient.
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
  /// [location] The location where the encounter takes place.
  ///
  /// [status] The status of the participants' presence at the specified
  /// location during the period specified. If the participant is no longer at
  ///  the location, then the period will have an end date/time.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [physicalType] This will be used to specify the required levels
  /// (bed/ward/room/etc.) desired to be recorded to simplify either messaging
  ///  or query.
  ///
  /// [period] Time period during which the patient was present at the
  ///  location.
  const factory EncounterLocation({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [location] The location where the encounter takes place.
    required Reference location,

    /// [status] The status of the participants' presence at the specified
    /// location during the period specified. If the participant is no longer at
    ///  the location, then the period will have an end date/time.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [physicalType] This will be used to specify the required levels
    /// (bed/ward/room/etc.) desired to be recorded to simplify either messaging
    ///  or query.
    CodeableConcept? physicalType,

    /// [period] Time period during which the patient was present at the
    ///  location.
    Period? period,
  }) = _EncounterLocation;

  @override
  String get fhirType => 'EncounterLocation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EncounterLocation.fromYaml(dynamic yaml) => yaml is String
      ? EncounterLocation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EncounterLocation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EncounterLocation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EncounterLocation.fromJson(Map<String, dynamic> json) =>
      _$EncounterLocationFromJson(json);

  /// Acts like a constructor, returns a [EncounterLocation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EncounterLocation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterLocationFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}
