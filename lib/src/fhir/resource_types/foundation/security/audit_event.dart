// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'audit_event.freezed.dart';
part 'audit_event.g.dart';

/// [AuditEvent] A record of an event made for purposes of maintaining a
@freezed
class AuditEvent with _$AuditEvent implements DomainResource {
  /// [AuditEvent] A record of an event made for purposes of maintaining a
  const AuditEvent._();

  /// [AuditEvent] A record of an event made for purposes of maintaining a
  /// security log. Typical uses include detection of intrusion attempts and
  ///  monitoring for inappropriate usage.
  ///
  /// [resourceType] This is a AuditEvent resource
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
  /// [type] Identifier for a family of the event.  For example, a menu item,
  /// program, rule, policy, function code, application name or URL. It
  ///  identifies the performed function.
  ///
  /// [subtype] Identifier for the category of event.
  ///
  /// [action] Indicator for type of action performed during the event that
  ///  generated the audit.
  ///
  /// [actionElement] Extensions for action
  ///
  /// [period] The period during which the activity occurred.
  ///
  /// [recorded] The time when the event was recorded.
  ///
  /// [recordedElement] Extensions for recorded
  ///
  /// [outcome] Indicates whether the event succeeded or failed.
  ///
  /// [outcomeElement] Extensions for outcome
  ///
  /// [outcomeDesc] A free text description of the outcome of the event.
  ///
  /// [outcomeDescElement] Extensions for outcomeDesc
  ///
  /// [purposeOfEvent] The purposeOfUse (reason) that was used during the event
  ///  being recorded.
  ///
  /// [agent] An actor taking an active role in the event or activity that is
  ///  logged.
  ///
  /// [source] The system that is reporting the event.
  ///
  /// [entity] Specific instances of data or objects that have been accessed.
  const factory AuditEvent({
    @Default(R4ResourceType.AuditEvent)
    @JsonKey(unknownEnumValue: R4ResourceType.AuditEvent)

    /// [resourceType] This is a AuditEvent resource
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

    /// [type] Identifier for a family of the event.  For example, a menu item,
    /// program, rule, policy, function code, application name or URL. It
    ///  identifies the performed function.
    required Coding type,

    /// [subtype] Identifier for the category of event.
    List<Coding>? subtype,

    /// [action] Indicator for type of action performed during the event that
    ///  generated the audit.
    FhirCode? action,

    /// [actionElement] Extensions for action
    @JsonKey(name: '_action') PrimitiveElement? actionElement,

    /// [period] The period during which the activity occurred.
    Period? period,

    /// [recorded] The time when the event was recorded.
    FhirInstant? recorded,

    /// [recordedElement] Extensions for recorded
    @JsonKey(name: '_recorded') PrimitiveElement? recordedElement,

    /// [outcome] Indicates whether the event succeeded or failed.
    FhirCode? outcome,

    /// [outcomeElement] Extensions for outcome
    @JsonKey(name: '_outcome') PrimitiveElement? outcomeElement,

    /// [outcomeDesc] A free text description of the outcome of the event.
    String? outcomeDesc,

    /// [outcomeDescElement] Extensions for outcomeDesc
    @JsonKey(name: '_outcomeDesc') PrimitiveElement? outcomeDescElement,

    /// [purposeOfEvent] The purposeOfUse (reason) that was used during the event
    ///  being recorded.
    List<CodeableConcept>? purposeOfEvent,

    /// [agent] An actor taking an active role in the event or activity that is
    ///  logged.
    required List<AuditEventAgent> agent,

    /// [source] The system that is reporting the event.
    required AuditEventSource source,

    /// [entity] Specific instances of data or objects that have been accessed.
    List<AuditEventEntity>? entity,
  }) = _AuditEvent;

  @override
  String get fhirType => 'AuditEvent';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AuditEvent.fromYaml(dynamic yaml) => yaml is String
      ? AuditEvent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AuditEvent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AuditEvent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AuditEvent.fromJson(Map<String, dynamic> json) =>
      _$AuditEventFromJson(json);

  /// Acts like a constructor, returns a [AuditEvent], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AuditEvent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AuditEventFromJson(json);
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

/// [AuditEventAgent] A record of an event made for purposes of maintaining
@freezed

/// [AuditEventAgent] A record of an event made for purposes of maintaining
@freezed
class AuditEventAgent with _$AuditEventAgent implements BackboneElement {
  /// [AuditEventAgent] A record of an event made for purposes of maintaining
  const AuditEventAgent._();

  /// [AuditEventAgent] A record of an event made for purposes of maintaining
  /// a security log. Typical uses include detection of intrusion attempts and
  ///  monitoring for inappropriate usage.
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
  /// [type] Specification of the participation type the user plays when
  ///  performing the event.
  ///
  /// [role] The security role that the user was acting under, that come from
  /// local codes defined by the access control security system (e.g. RBAC,
  ///  ABAC) used in the local context.
  ///
  /// [who] Reference to who this agent is that was involved in the event.
  ///
  /// [altId] Alternative agent Identifier. For a human, this should be a user
  /// identifier text string from authentication system. This identifier would
  /// be one known to a common authentication system (e.g. single sign-on), if
  ///  available.
  ///
  /// [altIdElement] Extensions for altId
  ///
  /// [name] Human-meaningful name for the agent.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [requestor] Indicator that the user is or is not the requestor, or
  ///  initiator, for the event being audited.
  ///
  /// [requestorElement] Extensions for requestor
  ///
  /// [location] Where the event occurred.
  ///
  /// [policy] The policy or plan that authorized the activity being recorded.
  /// Typically, a single activity may have multiple applicable policies, such
  /// as patient consent, guarantor funding, etc. The policy would also indicate
  ///  the security token used.
  ///
  /// [policyElement] Extensions for policy
  ///
  /// [media] Type of media involved. Used when the event is about
  ///  exporting/importing onto media.
  ///
  /// [network] Logical network location for application activity, if the
  ///  activity has a network location.
  ///
  /// [purposeOfUse] The reason (purpose of use), specific to this agent, that
  ///  was used during the event being recorded.
  const factory AuditEventAgent({
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

    /// [type] Specification of the participation type the user plays when
    ///  performing the event.
    CodeableConcept? type,

    /// [role] The security role that the user was acting under, that come from
    /// local codes defined by the access control security system (e.g. RBAC,
    ///  ABAC) used in the local context.
    List<CodeableConcept>? role,

    /// [who] Reference to who this agent is that was involved in the event.
    Reference? who,

    /// [altId] Alternative agent Identifier. For a human, this should be a user
    /// identifier text string from authentication system. This identifier would
    /// be one known to a common authentication system (e.g. single sign-on), if
    ///  available.
    String? altId,

    /// [altIdElement] Extensions for altId
    @JsonKey(name: '_altId') PrimitiveElement? altIdElement,

    /// [name] Human-meaningful name for the agent.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [requestor] Indicator that the user is or is not the requestor, or
    ///  initiator, for the event being audited.
    FhirBoolean? requestor,

    /// [requestorElement] Extensions for requestor
    @JsonKey(name: '_requestor') PrimitiveElement? requestorElement,

    /// [location] Where the event occurred.
    Reference? location,

    /// [policy] The policy or plan that authorized the activity being recorded.
    /// Typically, a single activity may have multiple applicable policies, such
    /// as patient consent, guarantor funding, etc. The policy would also indicate
    ///  the security token used.
    List<FhirUri>? policy,

    /// [policyElement] Extensions for policy
    @JsonKey(name: '_policy') List<PrimitiveElement>? policyElement,

    /// [media] Type of media involved. Used when the event is about
    ///  exporting/importing onto media.
    Coding? media,

    /// [network] Logical network location for application activity, if the
    ///  activity has a network location.
    AuditEventNetwork? network,

    /// [purposeOfUse] The reason (purpose of use), specific to this agent, that
    ///  was used during the event being recorded.
    List<CodeableConcept>? purposeOfUse,
  }) = _AuditEventAgent;

  @override
  String get fhirType => 'AuditEventAgent';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AuditEventAgent.fromYaml(dynamic yaml) => yaml is String
      ? AuditEventAgent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AuditEventAgent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AuditEventAgent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AuditEventAgent.fromJson(Map<String, dynamic> json) =>
      _$AuditEventAgentFromJson(json);

  /// Acts like a constructor, returns a [AuditEventAgent], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AuditEventAgent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AuditEventAgentFromJson(json);
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

/// [AuditEventNetwork] A record of an event made for purposes of
@freezed

/// [AuditEventNetwork] A record of an event made for purposes of
@freezed
class AuditEventNetwork with _$AuditEventNetwork implements BackboneElement {
  /// [AuditEventNetwork] A record of an event made for purposes of
  const AuditEventNetwork._();

  /// [AuditEventNetwork] A record of an event made for purposes of
  /// maintaining a security log. Typical uses include detection of intrusion
  ///  attempts and monitoring for inappropriate usage.
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
  /// [address] An identifier for the network access point of the user device
  ///  for the audit event.
  ///
  /// [addressElement] Extensions for address
  ///
  /// [type] An identifier for the type of network access point that originated
  ///  the audit event.
  ///
  /// [typeElement] Extensions for type
  const factory AuditEventNetwork({
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

    /// [address] An identifier for the network access point of the user device
    ///  for the audit event.
    String? address,

    /// [addressElement] Extensions for address
    @JsonKey(name: '_address') PrimitiveElement? addressElement,

    /// [type] An identifier for the type of network access point that originated
    ///  the audit event.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,
  }) = _AuditEventNetwork;

  @override
  String get fhirType => 'AuditEventNetwork';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AuditEventNetwork.fromYaml(dynamic yaml) => yaml is String
      ? AuditEventNetwork.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AuditEventNetwork.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AuditEventNetwork cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AuditEventNetwork.fromJson(Map<String, dynamic> json) =>
      _$AuditEventNetworkFromJson(json);

  /// Acts like a constructor, returns a [AuditEventNetwork], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AuditEventNetwork.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AuditEventNetworkFromJson(json);
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

/// [AuditEventSource] A record of an event made for purposes of maintaining
@freezed

/// [AuditEventSource] A record of an event made for purposes of maintaining
@freezed
class AuditEventSource with _$AuditEventSource implements BackboneElement {
  /// [AuditEventSource] A record of an event made for purposes of maintaining
  const AuditEventSource._();

  /// [AuditEventSource] A record of an event made for purposes of maintaining
  /// a security log. Typical uses include detection of intrusion attempts and
  ///  monitoring for inappropriate usage.
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
  /// [site] Logical source location within the healthcare enterprise network.
  /// For example, a hospital or other provider location within a multi-entity
  ///  provider group.
  ///
  /// [siteElement] Extensions for site
  ///
  /// [observer] Identifier of the source where the event was detected.
  ///
  /// [type] Code specifying the type of source where event originated.
  const factory AuditEventSource({
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

    /// [site] Logical source location within the healthcare enterprise network.
    /// For example, a hospital or other provider location within a multi-entity
    ///  provider group.
    String? site,

    /// [siteElement] Extensions for site
    @JsonKey(name: '_site') PrimitiveElement? siteElement,

    /// [observer] Identifier of the source where the event was detected.
    required Reference observer,

    /// [type] Code specifying the type of source where event originated.
    List<Coding>? type,
  }) = _AuditEventSource;

  @override
  String get fhirType => 'AuditEventSource';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AuditEventSource.fromYaml(dynamic yaml) => yaml is String
      ? AuditEventSource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AuditEventSource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AuditEventSource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AuditEventSource.fromJson(Map<String, dynamic> json) =>
      _$AuditEventSourceFromJson(json);

  /// Acts like a constructor, returns a [AuditEventSource], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AuditEventSource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AuditEventSourceFromJson(json);
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

/// [AuditEventEntity] A record of an event made for purposes of maintaining
@freezed

/// [AuditEventEntity] A record of an event made for purposes of maintaining
@freezed
class AuditEventEntity with _$AuditEventEntity implements BackboneElement {
  /// [AuditEventEntity] A record of an event made for purposes of maintaining
  const AuditEventEntity._();

  /// [AuditEventEntity] A record of an event made for purposes of maintaining
  /// a security log. Typical uses include detection of intrusion attempts and
  ///  monitoring for inappropriate usage.
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
  /// [what] Identifies a specific instance of the entity. The reference should
  ///  be version specific.
  ///
  /// [type] The type of the object that was involved in this audit event.
  ///
  /// [role] Code representing the role the entity played in the event being
  ///  audited.
  ///
  /// [lifecycle] Identifier for the data life-cycle stage for the entity.
  ///
  /// [securityLabel] Security labels for the identified entity.
  ///
  /// [name] A name of the entity in the audit event.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [description] Text that describes the entity in more detail.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [query] The query parameters for a query-type entities.
  ///
  /// [queryElement] Extensions for query
  ///
  /// [detail] Tagged value pairs for conveying additional information about
  ///  the entity.
  const factory AuditEventEntity({
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

    /// [what] Identifies a specific instance of the entity. The reference should
    ///  be version specific.
    Reference? what,

    /// [type] The type of the object that was involved in this audit event.
    Coding? type,

    /// [role] Code representing the role the entity played in the event being
    ///  audited.
    Coding? role,

    /// [lifecycle] Identifier for the data life-cycle stage for the entity.
    Coding? lifecycle,

    /// [securityLabel] Security labels for the identified entity.
    List<Coding>? securityLabel,

    /// [name] A name of the entity in the audit event.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [description] Text that describes the entity in more detail.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [query] The query parameters for a query-type entities.
    FhirBase64Binary? query,

    /// [queryElement] Extensions for query
    @JsonKey(name: '_query') PrimitiveElement? queryElement,

    /// [detail] Tagged value pairs for conveying additional information about
    ///  the entity.
    List<AuditEventDetail>? detail,
  }) = _AuditEventEntity;

  @override
  String get fhirType => 'AuditEventEntity';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AuditEventEntity.fromYaml(dynamic yaml) => yaml is String
      ? AuditEventEntity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AuditEventEntity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AuditEventEntity cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AuditEventEntity.fromJson(Map<String, dynamic> json) =>
      _$AuditEventEntityFromJson(json);

  /// Acts like a constructor, returns a [AuditEventEntity], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AuditEventEntity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AuditEventEntityFromJson(json);
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

/// [AuditEventDetail] A record of an event made for purposes of maintaining
@freezed

/// [AuditEventDetail] A record of an event made for purposes of maintaining
@freezed
class AuditEventDetail with _$AuditEventDetail implements BackboneElement {
  /// [AuditEventDetail] A record of an event made for purposes of maintaining
  const AuditEventDetail._();

  /// [AuditEventDetail] A record of an event made for purposes of maintaining
  /// a security log. Typical uses include detection of intrusion attempts and
  ///  monitoring for inappropriate usage.
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
  /// [type] The type of extra detail provided in the value.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [valueString] The  value of the extra detail.
  ///
  /// [valueStringElement] Extensions for valueString
  ///
  /// [valueBase64Binary] The  value of the extra detail.
  ///
  /// [valueBase64BinaryElement] Extensions for valueBase64Binary
  const factory AuditEventDetail({
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

    /// [type] The type of extra detail provided in the value.
    String? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [valueString] The  value of the extra detail.
    String? valueString,

    /// [valueStringElement] Extensions for valueString
    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,

    /// [valueBase64Binary] The  value of the extra detail.
    FhirBase64Binary? valueBase64Binary,

    /// [valueBase64BinaryElement] Extensions for valueBase64Binary
    @JsonKey(name: '_valueBase64Binary')
    PrimitiveElement? valueBase64BinaryElement,
  }) = _AuditEventDetail;

  @override
  String get fhirType => 'AuditEventDetail';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AuditEventDetail.fromYaml(dynamic yaml) => yaml is String
      ? AuditEventDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AuditEventDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AuditEventDetail cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AuditEventDetail.fromJson(Map<String, dynamic> json) =>
      _$AuditEventDetailFromJson(json);

  /// Acts like a constructor, returns a [AuditEventDetail], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AuditEventDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AuditEventDetailFromJson(json);
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
