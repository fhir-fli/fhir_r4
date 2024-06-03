import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubscriptionStatus_NotificationEvent] The SubscriptionStatus resource
/// describes the state of a Subscription during notifications.

@freezed
class SubscriptionStatus_NotificationEvent with _$SubscriptionStatus_NotificationEvent {
  const SubscriptionStatus_NotificationEvent._();

  const factory SubscriptionStatus_NotificationEvent({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [eventNumber] Either the sequential number of this event in this
/// subscription context or a relative event number for this notification.

    @JsonKey(name: 'eventNumber') FhirInteger64? eventNumber,
/// [_eventNumber] Extensions for eventNumber

    @JsonKey(name: '_eventNumber') PrimitiveElement? eventNumberElement,
/// [timestamp] The actual time this event occurred on the server.

    @JsonKey(name: 'timestamp') FhirInstant? timestamp,
/// [_timestamp] Extensions for timestamp

    @JsonKey(name: '_timestamp') PrimitiveElement? timestampElement,
/// [focus] The focus of this event. While this will usually be a reference
/// to the focus resource of the event, it MAY contain a reference to a
/// non-FHIR object.

    @JsonKey(name: 'focus') Reference? focus,
/// [additionalContext] Additional context information for this event.
/// Generally, this will contain references to additional resources included
/// with the event (e.g., the Patient relevant to an Encounter), however it MAY
/// refer to non-FHIR objects.

    @JsonKey(name: 'additionalContext') List<List<Reference>>? additionalContext,
  }) = _$SubscriptionStatus_NotificationEvent;

  @override
  String get fhirType => 'SubscriptionStatus_NotificationEvent';

  factory SubscriptionStatus_NotificationEvent.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionStatus_NotificationEventFromJson(json);

  factory SubscriptionStatus_NotificationEvent.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionStatus_NotificationEvent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubscriptionStatus_NotificationEvent.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubscriptionStatus_NotificationEvent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubscriptionStatus_NotificationEvent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubscriptionStatus_NotificationEventFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
