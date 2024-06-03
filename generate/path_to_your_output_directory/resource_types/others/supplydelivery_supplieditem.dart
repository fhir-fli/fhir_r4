/// /// [SupplyDelivery_SuppliedItem] Record of movement of supplies from one
/// location to another.

@freezed
class SupplyDelivery_SuppliedItem with _$SupplyDelivery_SuppliedItem {
  const SupplyDelivery_SuppliedItem._();

  const factory SupplyDelivery_SuppliedItem({
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
/// /// [quantity] The amount of the item that has been supplied. Unit of
/// measure may be included.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// /// [condition] The condition in which the supplied item was at the event
/// (shipment, or receipt, etc.).  For example, to indicate when the supplied
/// item is not suitable for use (e.g., damaged or out of temperature control).

    @JsonKey(name: 'condition') CodeableConcept? condition,
/// /// [itemCodeableConcept] Identifies the medication, substance, device or
/// biologically derived product being supplied. This is either a link to a
/// resource representing the details of the item or a code that identifies the
/// item from a known list.

    @JsonKey(name: 'itemCodeableConcept') CodeableConcept? itemCodeableConcept,
/// /// [itemReference] Identifies the medication, substance, device or
/// biologically derived product being supplied. This is either a link to a
/// resource representing the details of the item or a code that identifies the
/// item from a known list.

    @JsonKey(name: 'itemReference') Reference? itemReference,
  }) = _$SupplyDelivery_SuppliedItem;

  @override
  String get fhirType => 'SupplyDelivery_SuppliedItem';

  factory SupplyDelivery_SuppliedItem.fromJson(Map<String, dynamic> json) =>
      _$SupplyDelivery_SuppliedItemFromJson(json);

  factory SupplyDelivery_SuppliedItem.fromYaml(dynamic yaml) => yaml is String
      ? SupplyDelivery_SuppliedItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SupplyDelivery_SuppliedItem.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SupplyDelivery_SuppliedItem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SupplyDelivery_SuppliedItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SupplyDelivery_SuppliedItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
