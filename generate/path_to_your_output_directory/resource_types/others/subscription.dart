import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Subscription] The subscription resource describes a particular
/// client's request to be notified about a SubscriptionTopic.

@freezed
class Subscription with _$Subscription {
  const Subscription._();

  const factory Subscription({
/// [resourceType] This is a Subscription resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] A formal identifier that is used to identify this code
/// system when it is represented in other formats, or referenced in a
/// specification, model, design or an instance.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [name] A natural language name identifying the subscription.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [status] The status of the subscription, which marks the server state
/// for managing the subscription.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [topic] The reference to the subscription topic to be notified about.

    @JsonKey(name: 'topic') FhirCanonical? topic,
/// [contact] Contact details for a human to contact about the
/// subscription. The primary use of this for system administrator
/// troubleshooting.

    @JsonKey(name: 'contact') List<List<ContactPoint>>? contact,
/// [end] The time for the server to turn the subscription off.

    @JsonKey(name: 'end') FhirInstant? end,
/// [_end] Extensions for end

    @JsonKey(name: '_end') PrimitiveElement? endElement,
/// [managingEntity] Entity with authorization to make subsequent revisions
/// to the Subscription and also determines what data the subscription is
/// authorized to disclose.

    @JsonKey(name: 'managingEntity') Reference? managingEntity,
/// [reason] A description of why this subscription is defined.

    @JsonKey(name: 'reason') String? reason,
/// [_reason] Extensions for reason

    @JsonKey(name: '_reason') PrimitiveElement? reasonElement,
/// [filterBy] The filter properties to be applied to narrow the
/// subscription topic stream.  When multiple filters are applied, evaluates to
/// true if all the conditions applicable to that resource are met; otherwise
/// it returns false (i.e., logical AND).

    @JsonKey(name: 'filterBy') List<List<Subscription_FilterBy>>? filterBy,
/// [channelType] The type of channel to send notifications on.

    @JsonKey(name: 'channelType') Coding? channelType,
/// [endpoint] The url that describes the actual end-point to send
/// notifications to.

    @JsonKey(name: 'endpoint') FhirUrl? endpoint,
/// [_endpoint] Extensions for endpoint

    @JsonKey(name: '_endpoint') PrimitiveElement? endpointElement,
/// [parameter] Channel-dependent information to send as part of the
/// notification (e.g., HTTP Headers).

    @JsonKey(name: 'parameter') List<List<Subscription_Parameter>>? parameter,
/// [heartbeatPeriod] If present, a 'heartbeat' notification (keep-alive)
/// is sent via this channel with an interval period equal to this elements
/// integer value in seconds.  If not present, a heartbeat notification is not
/// sent.

    @JsonKey(name: 'heartbeatPeriod') FhirUnsignedInt? heartbeatPeriod,
/// [_heartbeatPeriod] Extensions for heartbeatPeriod

    @JsonKey(name: '_heartbeatPeriod') PrimitiveElement? heartbeatPeriodElement,
/// [timeout] If present, the maximum amount of time a server will allow
/// before failing a notification attempt.

    @JsonKey(name: 'timeout') FhirUnsignedInt? timeout,
/// [_timeout] Extensions for timeout

    @JsonKey(name: '_timeout') PrimitiveElement? timeoutElement,
/// [contentType] The MIME type to send the payload in - e.g.,
/// `application/fhir+xml` or `application/fhir+json`. Note that:
///
/// * clients may request notifications in a specific FHIR version by using the
/// [FHIR Version Parameter](http.html#version-parameter) - e.g.,
/// `application/fhir+json; fhirVersion=4.0`.
///
/// * additional MIME types can be allowed by channels - e.g., `text/plain` and
/// `text/html` are defined by the Email channel.

    @JsonKey(name: 'contentType') FhirCode? contentType,
/// [_contentType] Extensions for contentType

    @JsonKey(name: '_contentType') PrimitiveElement? contentTypeElement,
/// [content] How much of the resource content to deliver in the
/// notification payload. The choices are an empty payload, only the resource
/// id, or the full resource content.

    @JsonKey(name: 'content') FhirCode? content,
/// [_content] Extensions for content

    @JsonKey(name: '_content') PrimitiveElement? contentElement,
/// [maxCount] If present, the maximum number of events that will be
/// included in a notification bundle. Note that this is not a strict limit on
/// the number of entries in a bundle, as dependent resources can be included.

    @JsonKey(name: 'maxCount') FhirPositiveInt? maxCount,
/// [_maxCount] Extensions for maxCount

    @JsonKey(name: '_maxCount') PrimitiveElement? maxCountElement,
  }) = _$Subscription;

  @override
  String get fhirType => 'Subscription';

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);

  factory Subscription.fromYaml(dynamic yaml) => yaml is String
      ? Subscription.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Subscription.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Subscription cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Subscription.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubscriptionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
