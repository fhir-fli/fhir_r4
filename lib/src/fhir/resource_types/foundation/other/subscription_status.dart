// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'subscription_status.freezed.dart';
part 'subscription_status.g.dart';

/// [SubscriptionStatus] The SubscriptionStatus resource describes the state of a Subscription during notifications.
@freezed
class SubscriptionStatus with _$SubscriptionStatus implements DomainResource {
  /// [SubscriptionStatus] The SubscriptionStatus resource describes the state of a Subscription during notifications.
  const SubscriptionStatus._();

  /// [SubscriptionStatus] The SubscriptionStatus resource describes the state of a Subscription during notifications.

  ///
  /// [resourceType] This is a SubscriptionStatus resource;
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  ///
  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  ///
  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  ///
  /// [language] The base language in which the resource is written.;
  ///
  /// [languageElement] (_language): Extensions for language;
  ///
  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  ///
  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [status] The status of the subscription, which marks the server state for managing the subscription.;
  ///
  /// [statusElement] (_status): Extensions for status;
  ///
  /// [type] The type of event being conveyed with this notificaiton.;
  ///
  /// [typeElement] (_type): Extensions for type;
  ///
  /// [eventsSinceSubscriptionStart] The total number of actual events which have been generated since the Subscription was created (inclusive of this notification) - regardless of how many have been successfully communicated.  This number is NOT incremented for handshake and heartbeat notifications.;
  ///
  /// [eventsSinceSubscriptionStartElement] (_eventsSinceSubscriptionStart): Extensions for eventsSinceSubscriptionStart;
  ///
  /// [notificationEvent] Detailed information about events relevant to this subscription notification.;
  ///
  /// [subscription] The reference to the Subscription which generated this notification.;
  ///
  /// [topic] The reference to the SubscriptionTopic for the Subscription which generated this notification.;
  ///
  /// [error] A record of errors that occurred when the server processed a notification.;
  const factory SubscriptionStatus({
    /// [resourceType] This is a SubscriptionStatus resource;
    @Default(R4ResourceType.SubscriptionStatus) R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
    String? id,

    /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
    FhirUri? implicitRules,

    /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.;
    FhirCode? language,

    /// [languageElement] (_language): Extensions for language;
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [status] The status of the subscription, which marks the server state for managing the subscription.;
    FhirCode? status,

    /// [statusElement] (_status): Extensions for status;
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [type] The type of event being conveyed with this notificaiton.;
    FhirCode? type,

    /// [typeElement] (_type): Extensions for type;
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [eventsSinceSubscriptionStart] The total number of actual events which have been generated since the Subscription was created (inclusive of this notification) - regardless of how many have been successfully communicated.  This number is NOT incremented for handshake and heartbeat notifications.;
    FhirInteger64? eventsSinceSubscriptionStart,
    @JsonKey(name: '_eventsSinceSubscriptionStart')

    /// [eventsSinceSubscriptionStartElement] (_eventsSinceSubscriptionStart): Extensions for eventsSinceSubscriptionStart;
    PrimitiveElement? eventsSinceSubscriptionStartElement,

    /// [notificationEvent] Detailed information about events relevant to this subscription notification.;
    List<SubscriptionStatusNotificationEvent>? notificationEvent,

    /// [subscription] The reference to the Subscription which generated this notification.;
    required Reference subscription,

    /// [topic] The reference to the SubscriptionTopic for the Subscription which generated this notification.;
    FhirCanonical? topic,

    /// [error] A record of errors that occurred when the server processed a notification.;
    List<CodeableConcept>? error,
  }) = _SubscriptionStatus;

  @override
  String get fhirType => 'SubscriptionStatus';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubscriptionStatus.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionStatus.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubscriptionStatus.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubscriptionStatus cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubscriptionStatus.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionStatusFromJson(json);

  /// Acts like a constructor, returns a [SubscriptionStatus], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubscriptionStatus.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubscriptionStatusFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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
      copyWith(meta: updateFhirMetaVersion(meta));
}

@freezed
@freezed
class SubscriptionStatusNotificationEvent
    with _$SubscriptionStatusNotificationEvent
    implements BackboneElement {
  const SubscriptionStatusNotificationEvent._();

  /// [SubscriptionStatusNotificationEvent] The SubscriptionStatus resource describes the state of a Subscription during notifications.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [eventNumber] The sequential number of this event in this subscription context.;
  ///
  /// [eventNumberElement] (_eventNumber): Extensions for eventNumber;
  ///
  /// [timestamp] The actual time this event occured on the server.;
  ///
  /// [timestampElement] (_timestamp): Extensions for timestamp;
  ///
  /// [focus] The focus of this event. While this will usually be a reference to the focus resource of the event, it MAY contain a reference to a non-FHIR object.;
  ///
  /// [additionalContext] Additional context information for this event. Generally, this will contain references to additional resources included with the event (e.g., the Patient relevant to an Encounter), however it MAY refer to non-FHIR objects.;
  const factory SubscriptionStatusNotificationEvent({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [eventNumber] The sequential number of this event in this subscription context.;
    FhirInteger64? eventNumber,

    /// [eventNumberElement] (_eventNumber): Extensions for eventNumber;
    @JsonKey(name: '_eventNumber') PrimitiveElement? eventNumberElement,

    /// [timestamp] The actual time this event occured on the server.;
    FhirInstant? timestamp,

    /// [timestampElement] (_timestamp): Extensions for timestamp;
    @JsonKey(name: '_timestamp') PrimitiveElement? timestampElement,

    /// [focus] The focus of this event. While this will usually be a reference to the focus resource of the event, it MAY contain a reference to a non-FHIR object.;
    Reference? focus,

    /// [additionalContext] Additional context information for this event. Generally, this will contain references to additional resources included with the event (e.g., the Patient relevant to an Encounter), however it MAY refer to non-FHIR objects.;
    List<Reference>? additionalContext,
  }) = _SubscriptionStatusNotificationEvent;

  @override
  String get fhirType => 'SubscriptionStatusNotificationEvent';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubscriptionStatusNotificationEvent.fromYaml(dynamic yaml) => yaml
          is String
      ? SubscriptionStatusNotificationEvent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubscriptionStatusNotificationEvent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubscriptionStatusNotificationEvent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubscriptionStatusNotificationEvent.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionStatusNotificationEventFromJson(json);

  /// Acts like a constructor, returns a [SubscriptionStatusNotificationEvent], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubscriptionStatusNotificationEvent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubscriptionStatusNotificationEventFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
