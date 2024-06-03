import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [InventoryItem_Instance] A functional description of an inventory item
/// used in inventory and supply-related workflows.

@freezed
class InventoryItem_Instance with _$InventoryItem_Instance {
  const InventoryItem_Instance._();

  const factory InventoryItem_Instance({
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
/// [identifier] The identifier for the physical instance, typically a
/// serial number.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [lotNumber] The lot or batch number of the item.

    @JsonKey(name: 'lotNumber') String? lotNumber,
/// [_lotNumber] Extensions for lotNumber

    @JsonKey(name: '_lotNumber') PrimitiveElement? lotNumberElement,
/// [expiry] The expiry date or date and time for the product.

    @JsonKey(name: 'expiry') FhirDateTime? expiry,
/// [_expiry] Extensions for expiry

    @JsonKey(name: '_expiry') PrimitiveElement? expiryElement,
/// [subject] The subject that the item is associated with.

    @JsonKey(name: 'subject') Reference? subject,
/// [location] The location that the item is associated with.

    @JsonKey(name: 'location') Reference? location,
  }) = _$InventoryItem_Instance;

  @override
  String get fhirType => 'InventoryItem_Instance';

  factory InventoryItem_Instance.fromJson(Map<String, dynamic> json) =>
      _$InventoryItem_InstanceFromJson(json);

  factory InventoryItem_Instance.fromYaml(dynamic yaml) => yaml is String
      ? InventoryItem_Instance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InventoryItem_Instance.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InventoryItem_Instance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory InventoryItem_Instance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InventoryItem_InstanceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
