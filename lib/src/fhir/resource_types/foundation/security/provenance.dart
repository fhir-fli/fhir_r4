// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'provenance.freezed.dart';
part 'provenance.g.dart';

/// [Provenance] Provenance of a resource is a record that describes entities
@freezed
class Provenance extends DomainResource with _$Provenance {
  /// [Provenance] Provenance of a resource is a record that describes entities
  Provenance._();

  /// [Provenance] Provenance of a resource is a record that describes entities
  /// and processes involved in producing and delivering or otherwise
  /// influencing that resource. Provenance provides a critical foundation for
  /// assessing authenticity, enabling trust, and allowing reproducibility.
  /// Provenance assertions are a form of contextual metadata and can themselves
  /// become important records with their own provenance. Provenance statement
  /// indicates clinical significance in terms of confidence in authenticity,
  /// reliability, and trustworthiness, integrity, and stage in lifecycle (e.g.
  /// Document Completion - has the artifact been legally authenticated), all of
  ///  which may impact security, privacy, and trust policies.
  ///
  /// [resourceType] This is a Provenance resource
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
  /// [target] The Reference(s) that were generated or updated by  the activity
  /// described in this resource. A provenance can point to more than one target
  ///  if multiple resources were created/updated by the same activity.
  ///
  /// [occurredPeriod] The period during which the activity occurred.
  ///
  /// [occurredDateTime] The period during which the activity occurred.
  ///
  /// [occurredDateTimeElement] Extensions for occurredDateTime
  ///
  /// [recorded] The instant of time at which the activity was recorded.
  ///
  /// [recordedElement] Extensions for recorded
  ///
  /// [policy] Policy or plan the activity was defined by. Typically, a single
  /// activity may have multiple applicable policy documents, such as patient
  ///  consent, guarantor funding, etc.
  ///
  /// [policyElement] Extensions for policy
  ///
  /// [location] Where the activity occurred, if relevant.
  ///
  /// [reason] The reason that the activity was taking place.
  ///
  /// [activity] An activity is something that occurs over a period of time and
  /// acts upon or with entities; it may include consuming, processing,
  ///  transforming, modifying, relocating, using, or generating entities.
  ///
  /// [agent] An actor taking a role in an activity  for which it can be
  ///  assigned some degree of responsibility for the activity taking place.
  ///
  /// [entity] An entity used in this activity.
  ///
  /// [signature] A digital signature on the target Reference(s). The signer
  /// should match a Provenance.agent. The purpose of the signature is
  ///  indicated.
  const factory Provenance({
    @Default(R4ResourceType.Provenance)
    @JsonKey(unknownEnumValue: R4ResourceType.Provenance)

    /// [resourceType] This is a Provenance resource
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

    /// [target] The Reference(s) that were generated or updated by  the activity
    /// described in this resource. A provenance can point to more than one target
    ///  if multiple resources were created/updated by the same activity.
    required List<Reference> target,

    /// [occurredPeriod] The period during which the activity occurred.
    Period? occurredPeriod,

    /// [occurredDateTime] The period during which the activity occurred.
    FhirDateTime? occurredDateTime,

    /// [occurredDateTimeElement] Extensions for occurredDateTime
    @JsonKey(name: '_occurredDateTime')
    PrimitiveElement? occurredDateTimeElement,

    /// [recorded] The instant of time at which the activity was recorded.
    FhirInstant? recorded,

    /// [recordedElement] Extensions for recorded
    @JsonKey(name: '_recorded') PrimitiveElement? recordedElement,

    /// [policy] Policy or plan the activity was defined by. Typically, a single
    /// activity may have multiple applicable policy documents, such as patient
    ///  consent, guarantor funding, etc.
    List<FhirUri>? policy,

    /// [policyElement] Extensions for policy
    @JsonKey(name: '_policy') List<PrimitiveElement>? policyElement,

    /// [location] Where the activity occurred, if relevant.
    Reference? location,

    /// [reason] The reason that the activity was taking place.
    List<CodeableConcept>? reason,

    /// [activity] An activity is something that occurs over a period of time and
    /// acts upon or with entities; it may include consuming, processing,
    ///  transforming, modifying, relocating, using, or generating entities.
    CodeableConcept? activity,

    /// [agent] An actor taking a role in an activity  for which it can be
    ///  assigned some degree of responsibility for the activity taking place.
    required List<ProvenanceAgent> agent,

    /// [entity] An entity used in this activity.
    List<ProvenanceEntity>? entity,

    /// [signature] A digital signature on the target Reference(s). The signer
    /// should match a Provenance.agent. The purpose of the signature is
    ///  indicated.
    List<Signature>? signature,
  }) = _Provenance;

  @override
  String get fhirType => 'Provenance';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Provenance.fromYaml(dynamic yaml) => yaml is String
      ? Provenance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Provenance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Provenance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Provenance.fromJson(Map<String, dynamic> json) =>
      _$ProvenanceFromJson(json);

  /// Acts like a constructor, returns a [Provenance], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Provenance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ProvenanceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

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

/// [ProvenanceAgent] Provenance of a resource is a record that describes
@freezed

/// [ProvenanceAgent] Provenance of a resource is a record that describes
@freezed
class ProvenanceAgent extends BackboneElement with _$ProvenanceAgent {
  /// [ProvenanceAgent] Provenance of a resource is a record that describes
  ProvenanceAgent._();

  /// [ProvenanceAgent] Provenance of a resource is a record that describes
  /// entities and processes involved in producing and delivering or otherwise
  /// influencing that resource. Provenance provides a critical foundation for
  /// assessing authenticity, enabling trust, and allowing reproducibility.
  /// Provenance assertions are a form of contextual metadata and can themselves
  /// become important records with their own provenance. Provenance statement
  /// indicates clinical significance in terms of confidence in authenticity,
  /// reliability, and trustworthiness, integrity, and stage in lifecycle (e.g.
  /// Document Completion - has the artifact been legally authenticated), all of
  ///  which may impact security, privacy, and trust policies.
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
  /// [type] The participation the agent had with respect to the activity.
  ///
  /// [role] The function of the agent with respect to the activity. The
  ///  security role enabling the agent with respect to the activity.
  ///
  /// [who] The individual, device or organization that participated in the
  ///  event.
  ///
  /// [onBehalfOf] The individual, device, or organization for whom the change
  ///  was made.
  const factory ProvenanceAgent({
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

    /// [type] The participation the agent had with respect to the activity.
    CodeableConcept? type,

    /// [role] The function of the agent with respect to the activity. The
    ///  security role enabling the agent with respect to the activity.
    List<CodeableConcept>? role,

    /// [who] The individual, device or organization that participated in the
    ///  event.
    required Reference who,

    /// [onBehalfOf] The individual, device, or organization for whom the change
    ///  was made.
    Reference? onBehalfOf,
  }) = _ProvenanceAgent;

  @override
  String get fhirType => 'ProvenanceAgent';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ProvenanceAgent.fromYaml(dynamic yaml) => yaml is String
      ? ProvenanceAgent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ProvenanceAgent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ProvenanceAgent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ProvenanceAgent.fromJson(Map<String, dynamic> json) =>
      _$ProvenanceAgentFromJson(json);

  /// Acts like a constructor, returns a [ProvenanceAgent], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ProvenanceAgent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ProvenanceAgentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ProvenanceEntity] Provenance of a resource is a record that describes
@freezed

/// [ProvenanceEntity] Provenance of a resource is a record that describes
@freezed
class ProvenanceEntity extends BackboneElement with _$ProvenanceEntity {
  /// [ProvenanceEntity] Provenance of a resource is a record that describes
  ProvenanceEntity._();

  /// [ProvenanceEntity] Provenance of a resource is a record that describes
  /// entities and processes involved in producing and delivering or otherwise
  /// influencing that resource. Provenance provides a critical foundation for
  /// assessing authenticity, enabling trust, and allowing reproducibility.
  /// Provenance assertions are a form of contextual metadata and can themselves
  /// become important records with their own provenance. Provenance statement
  /// indicates clinical significance in terms of confidence in authenticity,
  /// reliability, and trustworthiness, integrity, and stage in lifecycle (e.g.
  /// Document Completion - has the artifact been legally authenticated), all of
  ///  which may impact security, privacy, and trust policies.
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
  /// [role] How the entity was used during the activity.
  ///
  /// [roleElement] Extensions for role
  ///
  /// [what] Identity of the  Entity used. May be a logical or physical uri and
  ///  maybe absolute or relative.
  ///
  /// [agent] The entity is attributed to an agent to express the agent's
  /// responsibility for that entity, possibly along with other agents. This
  /// description can be understood as shorthand for saying that the agent was
  ///  responsible for the activity which generated the entity.
  const factory ProvenanceEntity({
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

    /// [role] How the entity was used during the activity.
    FhirCode? role,

    /// [roleElement] Extensions for role
    @JsonKey(name: '_role') PrimitiveElement? roleElement,

    /// [what] Identity of the  Entity used. May be a logical or physical uri and
    ///  maybe absolute or relative.
    required Reference what,

    /// [agent] The entity is attributed to an agent to express the agent's
    /// responsibility for that entity, possibly along with other agents. This
    /// description can be understood as shorthand for saying that the agent was
    ///  responsible for the activity which generated the entity.
    List<ProvenanceAgent>? agent,
  }) = _ProvenanceEntity;

  @override
  String get fhirType => 'ProvenanceEntity';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ProvenanceEntity.fromYaml(dynamic yaml) => yaml is String
      ? ProvenanceEntity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ProvenanceEntity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ProvenanceEntity cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ProvenanceEntity.fromJson(Map<String, dynamic> json) =>
      _$ProvenanceEntityFromJson(json);

  /// Acts like a constructor, returns a [ProvenanceEntity], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ProvenanceEntity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ProvenanceEntityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
