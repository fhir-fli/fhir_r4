import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubscriptionTopic_QueryCriteria] Describes a stream of resource state
/// changes or events and annotated with labels useful to filter projections
/// from this topic.

@freezed
class SubscriptionTopic_QueryCriteria with _$SubscriptionTopic_QueryCriteria {
  const SubscriptionTopic_QueryCriteria._();

  const factory SubscriptionTopic_QueryCriteria({
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
/// [previous] The FHIR query based rules are applied to the previous
/// resource state (e.g., state before an update).

    @JsonKey(name: 'previous') String? previous,
/// [_previous] Extensions for previous

    @JsonKey(name: '_previous') PrimitiveElement? previousElement,
/// [resultForCreate] For `create` interactions, should the `previous`
/// criteria count as an automatic pass or an automatic fail. If not present,
/// the testing behavior during `create` interactions is unspecified (server
/// discretion).

    @JsonKey(name: 'resultForCreate') FhirCode? resultForCreate,
/// [_resultForCreate] Extensions for resultForCreate

    @JsonKey(name: '_resultForCreate') PrimitiveElement? resultForCreateElement,
/// [current] The FHIR query based rules are applied to the current
/// resource state (e.g., state after an update).

    @JsonKey(name: 'current') String? current,
/// [_current] Extensions for current

    @JsonKey(name: '_current') PrimitiveElement? currentElement,
/// [resultForDelete] For 'delete' interactions, should the 'current' query
/// criteria count as an automatic pass or an automatic fail. If not present,
/// the testing behavior during `delete` interactions is unspecified (server
/// discretion).

    @JsonKey(name: 'resultForDelete') FhirCode? resultForDelete,
/// [_resultForDelete] Extensions for resultForDelete

    @JsonKey(name: '_resultForDelete') PrimitiveElement? resultForDeleteElement,
/// [requireBoth] If set to `true`, both the `current` and `previous` query
/// criteria must evaluate `true` to trigger a notification for this topic.  If
/// set to `false` or not present, a notification for this topic will be
/// triggered if either the `current` or `previous` tests evaluate to `true`.

    @JsonKey(name: 'requireBoth') FhirBoolean? requireBoth,
/// [_requireBoth] Extensions for requireBoth

    @JsonKey(name: '_requireBoth') PrimitiveElement? requireBothElement,
  }) = _$SubscriptionTopic_QueryCriteria;

  @override
  String get fhirType => 'SubscriptionTopic_QueryCriteria';

  factory SubscriptionTopic_QueryCriteria.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionTopic_QueryCriteriaFromJson(json);

  factory SubscriptionTopic_QueryCriteria.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionTopic_QueryCriteria.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubscriptionTopic_QueryCriteria.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubscriptionTopic_QueryCriteria cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubscriptionTopic_QueryCriteria.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubscriptionTopic_QueryCriteriaFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
