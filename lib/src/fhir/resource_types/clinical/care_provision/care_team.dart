// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'care_team.freezed.dart';
part 'care_team.g.dart';

/// [CareTeam] The Care Team includes all the people and organizations who
@freezed
class CareTeam with _$CareTeam implements DomainResource {
  /// [CareTeam] The Care Team includes all the people and organizations who
  const CareTeam._();

  /// [CareTeam] The Care Team includes all the people and organizations who
  /// plan to participate in the coordination and delivery of care for a
  ///  patient.
  ///
  /// [resourceType] This is a CareTeam resource
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
  /// [identifier] Business identifiers assigned to this care team by the
  /// performer or other systems which remain constant as the resource is
  ///  updated and propagates from server to server.
  ///
  /// [status] Indicates the current state of the care team.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [category] Identifies what kind of team.  This is to support
  /// differentiation between multiple co-existing teams, such as care plan
  ///  team, episode of care team, longitudinal care team.
  ///
  /// [name] A label for human use intended to distinguish like teams.  E.g.
  ///  the "red" vs. "green" trauma teams.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [subject] Identifies the patient or group whose intended care is handled
  ///  by the team.
  ///
  /// [encounter] The Encounter during which this CareTeam was created or to
  ///  which the creation of this record is tightly associated.
  ///
  /// [period] Indicates when the team did (or is intended to) come into effect
  ///  and end.
  ///
  /// [participant] Identifies all people and organizations who are expected to
  ///  be involved in the care team.
  ///
  /// [reasonCode] Describes why the care team exists.
  ///
  /// [reasonReference] Condition(s) that this care team addresses.
  ///
  /// [managingOrganization] The organization responsible for the care team.
  ///
  /// [telecom] A central contact detail for the care team (that applies to all
  ///  members).
  ///
  /// [note] Comments made about the CareTeam.
  const factory CareTeam({
    @Default(R4ResourceType.CareTeam)
    @JsonKey(unknownEnumValue: R4ResourceType.CareTeam)

    /// [resourceType] This is a CareTeam resource
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

    /// [identifier] Business identifiers assigned to this care team by the
    /// performer or other systems which remain constant as the resource is
    ///  updated and propagates from server to server.
    List<Identifier>? identifier,

    /// [status] Indicates the current state of the care team.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [category] Identifies what kind of team.  This is to support
    /// differentiation between multiple co-existing teams, such as care plan
    ///  team, episode of care team, longitudinal care team.
    List<CodeableConcept>? category,

    /// [name] A label for human use intended to distinguish like teams.  E.g.
    ///  the "red" vs. "green" trauma teams.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [subject] Identifies the patient or group whose intended care is handled
    ///  by the team.
    Reference? subject,

    /// [encounter] The Encounter during which this CareTeam was created or to
    ///  which the creation of this record is tightly associated.
    Reference? encounter,

    /// [period] Indicates when the team did (or is intended to) come into effect
    ///  and end.
    Period? period,

    /// [participant] Identifies all people and organizations who are expected to
    ///  be involved in the care team.
    List<CareTeamParticipant>? participant,

    /// [reasonCode] Describes why the care team exists.
    List<CodeableConcept>? reasonCode,

    /// [reasonReference] Condition(s) that this care team addresses.
    List<Reference>? reasonReference,

    /// [managingOrganization] The organization responsible for the care team.
    List<Reference>? managingOrganization,

    /// [telecom] A central contact detail for the care team (that applies to all
    ///  members).
    List<ContactPoint>? telecom,

    /// [note] Comments made about the CareTeam.
    List<Annotation>? note,
  }) = _CareTeam;

  @override
  String get fhirType => 'CareTeam';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CareTeam.fromYaml(dynamic yaml) => yaml is String
      ? CareTeam.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CareTeam.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CareTeam cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CareTeam.fromJson(Map<String, dynamic> json) =>
      _$CareTeamFromJson(json);

  /// Acts like a constructor, returns a [CareTeam], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CareTeam.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CareTeamFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  CareTeam updateContactPointSystem(ContactPointSystem system,
      [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(system: system)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(system: system)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(system: system),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  CareTeam updateContactPointValue(String value, [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(value: value)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(value: value)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(value: value),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  CareTeam updateContactPointUse(ContactPointUse use, [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(use: use)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(use: use)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(use: use),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  CareTeam updateContactPointRank(FhirPositiveInt rank, [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(rank: rank)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(rank: rank)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(rank: rank),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  CareTeam updateContactPointPeriod(Period period, [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(period: period)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(period: period)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(period: period),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

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
      copyWith(meta: updateFhirMetaVersion(meta));
}

/// [CareTeamParticipant] The Care Team includes all the people and
@freezed

/// [CareTeamParticipant] The Care Team includes all the people and
@freezed
class CareTeamParticipant
    with _$CareTeamParticipant
    implements BackboneElement {
  /// [CareTeamParticipant] The Care Team includes all the people and
  const CareTeamParticipant._();

  /// [CareTeamParticipant] The Care Team includes all the people and
  /// organizations who plan to participate in the coordination and delivery of
  ///  care for a patient.
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
  /// [role] Indicates specific responsibility of an individual within the care
  /// team, such as "Primary care physician", "Trained social worker counselor",
  ///  "Caregiver", etc.
  ///
  /// [member] The specific person or organization who is
  ///  participating/expected to participate in the care team.
  ///
  /// [onBehalfOf] The organization of the practitioner.
  ///
  /// [period] Indicates when the specific member or organization did (or is
  ///  intended to) come into effect and end.
  const factory CareTeamParticipant({
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

    /// [role] Indicates specific responsibility of an individual within the care
    /// team, such as "Primary care physician", "Trained social worker counselor",
    ///  "Caregiver", etc.
    List<CodeableConcept>? role,

    /// [member] The specific person or organization who is
    ///  participating/expected to participate in the care team.
    Reference? member,

    /// [onBehalfOf] The organization of the practitioner.
    Reference? onBehalfOf,

    /// [period] Indicates when the specific member or organization did (or is
    ///  intended to) come into effect and end.
    Period? period,
  }) = _CareTeamParticipant;

  @override
  String get fhirType => 'CareTeamParticipant';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CareTeamParticipant.fromYaml(dynamic yaml) => yaml is String
      ? CareTeamParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CareTeamParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CareTeamParticipant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CareTeamParticipant.fromJson(Map<String, dynamic> json) =>
      _$CareTeamParticipantFromJson(json);

  /// Acts like a constructor, returns a [CareTeamParticipant], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CareTeamParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CareTeamParticipantFromJson(json);
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
