import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [InventoryItem_Association] A functional description of an inventory
/// item used in inventory and supply-related workflows.

@freezed
class InventoryItem_Association with _$InventoryItem_Association {
  const InventoryItem_Association._();

  const factory InventoryItem_Association({
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
/// [associationType] This attribute defined the type of association when
/// establishing associations or relations between items, e.g. 'packaged
/// within' or 'used with' or 'to be mixed with.

    @JsonKey(name: 'associationType') CodeableConcept? associationType,
/// [relatedItem] The related item or product.

    @JsonKey(name: 'relatedItem') Reference? relatedItem,
/// [quantity] The quantity of the related product in this product -
/// Numerator is the quantity of the related product. Denominator is the
/// quantity of the present product. For example a value of 20 means that this
/// product contains 20 units of the related product; a value of 1:20 means the
/// inverse - that the contained product contains 20 units of the present
/// product.

    @JsonKey(name: 'quantity') Ratio? quantity,
  }) = _$InventoryItem_Association;

  @override
  String get fhirType => 'InventoryItem_Association';

  factory InventoryItem_Association.fromJson(Map<String, dynamic> json) =>
      _$InventoryItem_AssociationFromJson(json);

  factory InventoryItem_Association.fromYaml(dynamic yaml) => yaml is String
      ? InventoryItem_Association.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InventoryItem_Association.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InventoryItem_Association cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory InventoryItem_Association.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InventoryItem_AssociationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
