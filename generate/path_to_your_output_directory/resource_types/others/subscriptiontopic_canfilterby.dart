/// /// [SubscriptionTopic_CanFilterBy] Describes a stream of resource state
/// changes or events and annotated with labels useful to filter projections
/// from this topic.

@freezed
class SubscriptionTopic_CanFilterBy with _$SubscriptionTopic_CanFilterBy {
  const SubscriptionTopic_CanFilterBy._();

  const factory SubscriptionTopic_CanFilterBy({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
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
/// /// [description] Description of how this filtering parameter is intended
/// to be used.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [resource] URL of the Resource that is the type used in this filter.
/// This is the "focus" of the topic (or one of them if there are more than
/// one). It will be the same, a generality, or a specificity of
/// SubscriptionTopic.resourceTrigger.resource or
/// SubscriptionTopic.eventTrigger.resource when they are present.

    @JsonKey(name: 'resource') FhirUri? resource,
/// /// [_resource] Extensions for resource

    @JsonKey(name: '_resource') FhirElement? resourceElement,
/// /// [filterParameter] Either the canonical URL to a search parameter (like
/// "http://hl7.org/fhir/SearchParameter/encounter-patient") or topic-defined
/// parameter (like "hub.event") which is a label for the filter.

    @JsonKey(name: 'filterParameter') String? filterParameter,
/// /// [_filterParameter] Extensions for filterParameter

    @JsonKey(name: '_filterParameter') FhirElement? filterParameterElement,
/// /// [filterDefinition] Either the canonical URL to a search parameter (like
/// "http://hl7.org/fhir/SearchParameter/encounter-patient") or the
/// officially-defined URI for a shared filter concept (like
/// "http://example.org/concepts/shared-common-event").

    @JsonKey(name: 'filterDefinition') FhirUri? filterDefinition,
/// /// [_filterDefinition] Extensions for filterDefinition

    @JsonKey(name: '_filterDefinition') FhirElement? filterDefinitionElement,
/// /// [comparator] Comparators allowed for the filter parameter.

    @JsonKey(name: 'comparator') List<List<FhirCode>>? comparator,
/// /// [_comparator] Extensions for comparator

    @JsonKey(name: '_comparator') List<FhirElement>? comparatorElement,
/// /// [modifier] Modifiers allowed for the filter parameter.

    @JsonKey(name: 'modifier') List<List<FhirCode>>? modifier,
/// /// [_modifier] Extensions for modifier

    @JsonKey(name: '_modifier') List<FhirElement>? modifierElement,
  }) = _$SubscriptionTopic_CanFilterBy;

  @override
  String get fhirType => 'SubscriptionTopic_CanFilterBy';

  factory SubscriptionTopic_CanFilterBy.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionTopic_CanFilterByFromJson(json);

  factory SubscriptionTopic_CanFilterBy.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionTopic_CanFilterBy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubscriptionTopic_CanFilterBy.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubscriptionTopic_CanFilterBy cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubscriptionTopic_CanFilterBy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubscriptionTopic_CanFilterByFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
