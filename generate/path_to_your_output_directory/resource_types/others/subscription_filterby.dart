/// /// [Subscription_FilterBy] The subscription resource describes a
/// particular client's request to be notified about a SubscriptionTopic.

@freezed
class Subscription_FilterBy with _$Subscription_FilterBy {
  const Subscription_FilterBy._();

  const factory Subscription_FilterBy({
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
/// /// [resource] A resource listed in the `SubscriptionTopic` this
/// `Subscription` references (`SubscriptionTopic.canFilterBy.resource`). This
/// element can be used to differentiate filters for topics that include more
/// than one resource type.

    @JsonKey(name: 'resource') FhirUri? resource,
/// /// [_resource] Extensions for resource

    @JsonKey(name: '_resource') FhirElement? resourceElement,
/// /// [filterParameter] The filter as defined in the
/// `SubscriptionTopic.canFilterBy.filterParameter` element.

    @JsonKey(name: 'filterParameter') String? filterParameter,
/// /// [_filterParameter] Extensions for filterParameter

    @JsonKey(name: '_filterParameter') FhirElement? filterParameterElement,
/// /// [comparator] Comparator applied to this filter parameter.

    @JsonKey(name: 'comparator') FhirCode? comparator,
/// /// [_comparator] Extensions for comparator

    @JsonKey(name: '_comparator') FhirElement? comparatorElement,
/// /// [modifier] Modifier applied to this filter parameter.

    @JsonKey(name: 'modifier') FhirCode? modifier,
/// /// [_modifier] Extensions for modifier

    @JsonKey(name: '_modifier') FhirElement? modifierElement,
/// /// [value] The literal value or resource path as is legal in search - for
/// example, `Patient/123` or `le1950`.

    @JsonKey(name: 'value') String? value,
/// /// [_value] Extensions for value

    @JsonKey(name: '_value') FhirElement? valueElement,
  }) = _$Subscription_FilterBy;

  @override
  String get fhirType => 'Subscription_FilterBy';

  factory Subscription_FilterBy.fromJson(Map<String, dynamic> json) =>
      _$Subscription_FilterByFromJson(json);

  factory Subscription_FilterBy.fromYaml(dynamic yaml) => yaml is String
      ? Subscription_FilterBy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Subscription_FilterBy.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Subscription_FilterBy cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Subscription_FilterBy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Subscription_FilterByFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
