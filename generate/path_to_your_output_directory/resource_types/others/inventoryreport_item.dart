import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [InventoryReport_Item] A report of inventory or stock items.

@freezed
class InventoryReport_Item with _$InventoryReport_Item {
  const InventoryReport_Item._();

  const factory InventoryReport_Item({
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
/// [category] The inventory category or classification of the items being
/// reported. This is meant not for defining the product, but for inventory
/// categories e.g. 'pending recount' or 'damaged'.

    @JsonKey(name: 'category') CodeableConcept? category,
/// [quantity] The quantity of the item or items being reported.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// [item] The code or reference to the item type.

    @JsonKey(name: 'item') CodeableReference? item,
  }) = _$InventoryReport_Item;

  @override
  String get fhirType => 'InventoryReport_Item';

  factory InventoryReport_Item.fromJson(Map<String, dynamic> json) =>
      _$InventoryReport_ItemFromJson(json);

  factory InventoryReport_Item.fromYaml(dynamic yaml) => yaml is String
      ? InventoryReport_Item.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InventoryReport_Item.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InventoryReport_Item cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory InventoryReport_Item.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InventoryReport_ItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
