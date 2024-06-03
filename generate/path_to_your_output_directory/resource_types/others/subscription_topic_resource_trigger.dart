import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubscriptionTopic_ResourceTrigger] Describes a stream of resource
/// state changes or events and annotated with labels useful to filter
/// projections from this topic.

@freezed
class SubscriptionTopic_ResourceTrigger with _$SubscriptionTopic_ResourceTrigger {
  const SubscriptionTopic_ResourceTrigger._();

  const factory SubscriptionTopic_ResourceTrigger({
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
/// [description] The human readable description of this resource trigger
/// for the SubscriptionTopic -  for example, "An Encounter enters the
/// 'in-progress' state".

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [resource] URL of the Resource that is the type used in this resource
/// trigger.  Relative URLs are relative to the StructureDefinition root of the
/// implemented FHIR version (e.g., http://hl7.org/fhir/StructureDefinition).
/// For example, "Patient" maps to
/// http://hl7.org/fhir/StructureDefinition/Patient.  For more information, see
/// <a
/// href="elementdefinition-definitions.html#ElementDefinition.type.code">ElementDefinition.type.code</a>.

    @JsonKey(name: 'resource') FhirUri? resource,
/// [_resource] Extensions for resource

    @JsonKey(name: '_resource') PrimitiveElement? resourceElement,
/// [supportedInteraction] The FHIR RESTful interaction which can be used
/// to trigger a notification for the SubscriptionTopic. Multiple values are
/// considered OR joined (e.g., CREATE or UPDATE). If not present, all
/// supported interactions are assumed.

    @JsonKey(name: 'supportedInteraction') List<List<FhirCode>>? supportedInteraction,
/// [_supportedInteraction] Extensions for supportedInteraction

    @JsonKey(name: '_supportedInteraction') List<PrimitiveElement>? supportedInteractionElement,
/// [queryCriteria] The FHIR query based rules that the server should use
/// to determine when to trigger a notification for this subscription topic.

    @JsonKey(name: 'queryCriteria') SubscriptionTopic_QueryCriteria? queryCriteria,
/// [fhirPathCriteria] The FHIRPath based rules that the server should use
/// to determine when to trigger a notification for this topic.

    @JsonKey(name: 'fhirPathCriteria') String? fhirPathCriteria,
/// [_fhirPathCriteria] Extensions for fhirPathCriteria

    @JsonKey(name: '_fhirPathCriteria') PrimitiveElement? fhirPathCriteriaElement,
  }) = _$SubscriptionTopic_ResourceTrigger;

  @override
  String get fhirType => 'SubscriptionTopic_ResourceTrigger';

  factory SubscriptionTopic_ResourceTrigger.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionTopic_ResourceTriggerFromJson(json);

  factory SubscriptionTopic_ResourceTrigger.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionTopic_ResourceTrigger.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubscriptionTopic_ResourceTrigger.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubscriptionTopic_ResourceTrigger cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubscriptionTopic_ResourceTrigger.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubscriptionTopic_ResourceTriggerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
