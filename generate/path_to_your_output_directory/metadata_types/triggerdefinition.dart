import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [TriggerDefinition] A description of a triggering event. Triggering
/// events can be named events, data events, or periodic, as determined by the
/// type element.

@freezed
class TriggerDefinition with _$TriggerDefinition {
  const TriggerDefinition._();

  const factory TriggerDefinition({
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
/// [type] The type of triggering event.

    @JsonKey(name: 'type') dynamic? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [name] A formal name for the event. This may be an absolute URI that
/// identifies the event formally (e.g. from a trigger registry), or a simple
/// relative URI that identifies the event in a local context.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [code] A code that identifies the event.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [subscriptionTopic] A reference to a SubscriptionTopic resource that
/// defines the event. If this element is provided, no other information about
/// the trigger definition may be supplied.

    @JsonKey(name: 'subscriptionTopic') FhirCanonical? subscriptionTopic,
/// [timingTiming] The timing of the event (if this is a periodic trigger).

    @JsonKey(name: 'timingTiming') Timing? timingTiming,
/// [timingReference] The timing of the event (if this is a periodic
/// trigger).

    @JsonKey(name: 'timingReference') Reference? timingReference,
/// [timingDate] The timing of the event (if this is a periodic trigger).

    @JsonKey(name: 'timingDate') FhirDate? timingDate,
/// [_timingDate] Extensions for timingDate

    @JsonKey(name: '_timingDate') PrimitiveElement? timingDateElement,
/// [timingDateTime] The timing of the event (if this is a periodic
/// trigger).

    @JsonKey(name: 'timingDateTime') FhirDateTime? timingDateTime,
/// [_timingDateTime] Extensions for timingDateTime

    @JsonKey(name: '_timingDateTime') PrimitiveElement? timingDateTimeElement,
/// [data] The triggering data of the event (if this is a data trigger). If
/// more than one data is requirement is specified, then all the data
/// requirements must be true.

    @JsonKey(name: 'data') List<List<DataRequirement>>? data,
/// [condition] A boolean-valued expression that is evaluated in the
/// context of the container of the trigger definition and returns whether or
/// not the trigger fires.

    @JsonKey(name: 'condition') FhirExpression? condition,
  }) = _$TriggerDefinition;

  @override
  String get fhirType => 'TriggerDefinition';

  factory TriggerDefinition.fromJson(Map<String, dynamic> json) =>
      _$TriggerDefinitionFromJson(json);

  factory TriggerDefinition.fromYaml(dynamic yaml) => yaml is String
      ? TriggerDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TriggerDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TriggerDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TriggerDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TriggerDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
