import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [PackagedProductDefinition_Packaging] A medically related item or
/// items, in a container or package.

@freezed
class PackagedProductDefinition_Packaging with _$PackagedProductDefinition_Packaging {
  const PackagedProductDefinition_Packaging._();

  const factory PackagedProductDefinition_Packaging({
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
/// [identifier] A business identifier that is specific to this particular
/// part of the packaging, often assigned by the manufacturer. Including
/// possibly Data Carrier Identifier (a GS1 barcode).

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [type] The physical type of the container of the items.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [componentPart] Is this a part of the packaging (e.g. a cap or bottle
/// stopper), rather than the packaging itself (e.g. a bottle or vial). The
/// latter type are designed be a container, but the former are not.

    @JsonKey(name: 'componentPart') FhirBoolean? componentPart,
/// [_componentPart] Extensions for componentPart

    @JsonKey(name: '_componentPart') PrimitiveElement? componentPartElement,
/// [quantity] The quantity of packaging items contained at this layer of
/// the package. This does not relate to the number of contained items but
/// relates solely to the number of packaging items. When looking at the
/// outermost layer it is always 1. If there are two boxes within, at the next
/// layer it would be 2.

    @JsonKey(name: 'quantity') FhirInteger? quantity,
/// [_quantity] Extensions for quantity

    @JsonKey(name: '_quantity') PrimitiveElement? quantityElement,
/// [material] Material type of the package item.

    @JsonKey(name: 'material') List<List<CodeableConcept>>? material,
/// [alternateMaterial] A possible alternate material for this part of the
/// packaging, that is allowed to be used instead of the usual material (e.g.
/// different types of plastic for a blister sleeve).

    @JsonKey(name: 'alternateMaterial') List<List<CodeableConcept>>? alternateMaterial,
/// [shelfLifeStorage] Shelf Life and storage information.

    @JsonKey(name: 'shelfLifeStorage') List<List<ProductShelfLife>>? shelfLifeStorage,
/// [manufacturer] Manufacturer of this packaging item. When there are
/// multiple values each one is a potential manufacturer of this packaging
/// item.

    @JsonKey(name: 'manufacturer') List<List<Reference>>? manufacturer,
/// [property] General characteristics of this item.

    @JsonKey(name: 'property') List<List<PackagedProductDefinition_Property>>? property,
/// [containedItem] The item(s) within the packaging.

    @JsonKey(name: 'containedItem') List<List<PackagedProductDefinition_ContainedItem>>? containedItem,
/// [packaging] Allows containers (and parts of containers) within
/// containers, still as a part of a single packaged product. See also
/// PackagedProductDefinition.packaging.containedItem.item(PackagedProductDefinition).

    @JsonKey(name: 'packaging') List<List<PackagedProductDefinition_Packaging>>? packaging,
  }) = _$PackagedProductDefinition_Packaging;

  @override
  String get fhirType => 'PackagedProductDefinition_Packaging';

  factory PackagedProductDefinition_Packaging.fromJson(Map<String, dynamic> json) =>
      _$PackagedProductDefinition_PackagingFromJson(json);

  factory PackagedProductDefinition_Packaging.fromYaml(dynamic yaml) => yaml is String
      ? PackagedProductDefinition_Packaging.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PackagedProductDefinition_Packaging.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PackagedProductDefinition_Packaging cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory PackagedProductDefinition_Packaging.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PackagedProductDefinition_PackagingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
