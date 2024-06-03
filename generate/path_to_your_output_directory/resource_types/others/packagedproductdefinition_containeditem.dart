/// /// [PackagedProductDefinition_ContainedItem] A medically related item or
/// items, in a container or package.

@freezed
class PackagedProductDefinition_ContainedItem with _$PackagedProductDefinition_ContainedItem {
  const PackagedProductDefinition_ContainedItem._();

  const factory PackagedProductDefinition_ContainedItem({
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
/// /// [item] The actual item(s) of medication, as manufactured, or a device
/// (typically, but not necessarily, a co-packaged one), or other medically
/// related item (such as food, biologicals, raw materials, medical fluids,
/// gases etc.), as contained in the package. This also allows another whole
/// packaged product to be included, which is solely for the case where a
/// package of other entire packages is wanted - such as a wholesale or
/// distribution pack (for layers within one package, use
/// PackagedProductDefinition.packaging.packaging).

    @JsonKey(name: 'item') CodeableReference? item,
/// /// [amount] The number of this type of item within this packaging or for
/// continuous items such as liquids it is the quantity (for example 25ml). See
/// also PackagedProductDefinition.containedItemQuantity (especially the long
/// definition).

    @JsonKey(name: 'amount') Quantity? amount,
  }) = _$PackagedProductDefinition_ContainedItem;

  @override
  String get fhirType => 'PackagedProductDefinition_ContainedItem';

  factory PackagedProductDefinition_ContainedItem.fromJson(Map<String, dynamic> json) =>
      _$PackagedProductDefinition_ContainedItemFromJson(json);

  factory PackagedProductDefinition_ContainedItem.fromYaml(dynamic yaml) => yaml is String
      ? PackagedProductDefinition_ContainedItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PackagedProductDefinition_ContainedItem.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PackagedProductDefinition_ContainedItem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory PackagedProductDefinition_ContainedItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PackagedProductDefinition_ContainedItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
