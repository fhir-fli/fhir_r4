/// /// [PackagedProductDefinition] A medically related item or items, in a
/// container or package.

@freezed
class PackagedProductDefinition with _$PackagedProductDefinition {
  const PackagedProductDefinition._();

  const factory PackagedProductDefinition({
/// /// [resourceType] This is a PackagedProductDefinition resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// /// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [identifier] A unique identifier for this package as whole - not the
/// the content of the package. Unique instance identifiers assigned to a
/// package by manufacturers, regulators, drug catalogue custodians or other
/// organizations.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [name] A name for this package. Typically what it would be listed as in
/// a drug formulary or catalogue, inventory etc.

    @JsonKey(name: 'name') String? name,
/// /// [_name] Extensions for name

    @JsonKey(name: '_name') FhirElement? nameElement,
/// /// [type] A high level category e.g. medicinal product, raw material,
/// shipping/transport container, etc.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [packageFor] The product this package model relates to, not the
/// contents of the package (for which see package.containedItem).

    @JsonKey(name: 'packageFor') List<List<Reference>>? packageFor,
/// /// [status] The status within the lifecycle of this item. A high level
/// status, this is not intended to duplicate details carried elsewhere such as
/// legal status, or authorization or marketing status.

    @JsonKey(name: 'status') CodeableConcept? status,
/// /// [statusDate] The date at which the given status became applicable.

    @JsonKey(name: 'statusDate') FhirDateTime? statusDate,
/// /// [_statusDate] Extensions for statusDate

    @JsonKey(name: '_statusDate') FhirElement? statusDateElement,
/// /// [containedItemQuantity] A total of the complete count of contained
/// items of a particular type/form, independent of sub-packaging or
/// organization. This can be considered as the pack size. This attribute
/// differs from containedItem.amount in that it can give a single aggregated
/// count of all tablet types in a pack, even when these are different
/// manufactured items. For example a pill pack of 21 tablets plus 7 sugar
/// tablets, can be denoted here as '28 tablets'. This attribute is repeatable
/// so that the different item types in one pack type can be counted (e.g. a
/// count of vials and count of syringes). Each repeat must have different
/// units, so that it is clear what the different sets of counted items are,
/// and it is not intended to allow different counts of similar items (e.g. not
/// '2 tubes and 3 tubes'). Repeats are not to be used to represent different
/// pack sizes (e.g. 20 pack vs. 50 pack) - which would be different instances
/// of this resource.

    @JsonKey(name: 'containedItemQuantity') List<List<Quantity>>? containedItemQuantity,
/// /// [description] Textual description. Note that this is not the name of
/// the package or product.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [legalStatusOfSupply] The legal status of supply of the packaged item
/// as classified by the regulator.

    @JsonKey(name: 'legalStatusOfSupply') List<List<PackagedProductDefinition_LegalStatusOfSupply>>? legalStatusOfSupply,
/// /// [marketingStatus] Allows specifying that an item is on the market for
/// sale, or that it is not available, and the dates and locations associated.

    @JsonKey(name: 'marketingStatus') List<List<MarketingStatus>>? marketingStatus,
/// /// [copackagedIndicator] Identifies if the package contains different
/// items, such as when a drug product is supplied with another item e.g. a
/// diluent or adjuvant.

    @JsonKey(name: 'copackagedIndicator') FhirBoolean? copackagedIndicator,
/// /// [_copackagedIndicator] Extensions for copackagedIndicator

    @JsonKey(name: '_copackagedIndicator') FhirElement? copackagedIndicatorElement,
/// /// [manufacturer] Manufacturer of this package type. When there are
/// multiple it means these are all possible manufacturers.

    @JsonKey(name: 'manufacturer') List<List<Reference>>? manufacturer,
/// /// [attachedDocument] Additional information or supporting documentation
/// about the packaged product.

    @JsonKey(name: 'attachedDocument') List<List<Reference>>? attachedDocument,
/// /// [packaging] A packaging item, as a container for medically related
/// items, possibly with other packaging items within, or a packaging
/// component, such as bottle cap (which is not a device or a medication
/// manufactured item).

    @JsonKey(name: 'packaging') PackagedProductDefinition_Packaging? packaging,
/// /// [characteristic] Allows the key features to be recorded, such as
/// "hospital pack", "nurse prescribable", "calendar pack".

    @JsonKey(name: 'characteristic') List<List<PackagedProductDefinition_Property>>? characteristic,
  }) = _$PackagedProductDefinition;

  @override
  String get fhirType => 'PackagedProductDefinition';

  factory PackagedProductDefinition.fromJson(Map<String, dynamic> json) =>
      _$PackagedProductDefinitionFromJson(json);

  factory PackagedProductDefinition.fromYaml(dynamic yaml) => yaml is String
      ? PackagedProductDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PackagedProductDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PackagedProductDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory PackagedProductDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PackagedProductDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
