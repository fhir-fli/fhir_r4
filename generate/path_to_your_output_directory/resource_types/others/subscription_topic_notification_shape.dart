import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubscriptionTopic_NotificationShape] Describes a stream of resource
/// state changes or events and annotated with labels useful to filter
/// projections from this topic.

@freezed
class SubscriptionTopic_NotificationShape with _$SubscriptionTopic_NotificationShape {
  const SubscriptionTopic_NotificationShape._();

  const factory SubscriptionTopic_NotificationShape({
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
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [resource] URL of the Resource that is the type used in this shape.
/// This is the 'focus' resource of the topic (or one of them if there are more
/// than one) and the root resource for this shape definition. It will be the
/// same, a generality, or a specificity of
/// SubscriptionTopic.resourceTrigger.resource or
/// SubscriptionTopic.eventTrigger.resource when they are present.

    @JsonKey(name: 'resource') FhirUri? resource,
/// [_resource] Extensions for resource

    @JsonKey(name: '_resource') PrimitiveElement? resourceElement,
/// [include] Search-style _include directives, rooted in the resource for
/// this shape. Servers SHOULD include resources listed here, if they exist and
/// the user is authorized to receive them.  Clients SHOULD be prepared to
/// receive these additional resources, but SHALL function properly without
/// them.

    @JsonKey(name: 'include') List<List<String>>? include,
/// [_include] Extensions for include

    @JsonKey(name: '_include') List<PrimitiveElement>? includeElement,
/// [revInclude] Search-style _revinclude directives, rooted in the
/// resource for this shape. Servers SHOULD include resources listed here, if
/// they exist and the user is authorized to receive them.  Clients SHOULD be
/// prepared to receive these additional resources, but SHALL function properly
/// without them.

    @JsonKey(name: 'revInclude') List<List<String>>? revInclude,
/// [_revInclude] Extensions for revInclude

    @JsonKey(name: '_revInclude') List<PrimitiveElement>? revIncludeElement,
  }) = _$SubscriptionTopic_NotificationShape;

  @override
  String get fhirType => 'SubscriptionTopic_NotificationShape';

  factory SubscriptionTopic_NotificationShape.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionTopic_NotificationShapeFromJson(json);

  factory SubscriptionTopic_NotificationShape.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionTopic_NotificationShape.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubscriptionTopic_NotificationShape.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubscriptionTopic_NotificationShape cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubscriptionTopic_NotificationShape.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubscriptionTopic_NotificationShapeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
