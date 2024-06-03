import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [InventoryReport_InventoryListing] A report of inventory or stock
/// items.

@freezed
class InventoryReport_InventoryListing with _$InventoryReport_InventoryListing {
  const InventoryReport_InventoryListing._();

  const factory InventoryReport_InventoryListing({
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
/// [location] Location of the inventory items.

    @JsonKey(name: 'location') Reference? location,
/// [itemStatus] The status of the items.

    @JsonKey(name: 'itemStatus') CodeableConcept? itemStatus,
/// [countingDateTime] The date and time when the items were counted.

    @JsonKey(name: 'countingDateTime') FhirDateTime? countingDateTime,
/// [_countingDateTime] Extensions for countingDateTime

    @JsonKey(name: '_countingDateTime') PrimitiveElement? countingDateTimeElement,
/// [item] The item or items in this listing.

    @JsonKey(name: 'item') List<List<InventoryReport_Item>>? item,
  }) = _$InventoryReport_InventoryListing;

  @override
  String get fhirType => 'InventoryReport_InventoryListing';

  factory InventoryReport_InventoryListing.fromJson(Map<String, dynamic> json) =>
      _$InventoryReport_InventoryListingFromJson(json);

  factory InventoryReport_InventoryListing.fromYaml(dynamic yaml) => yaml is String
      ? InventoryReport_InventoryListing.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InventoryReport_InventoryListing.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InventoryReport_InventoryListing cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory InventoryReport_InventoryListing.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InventoryReport_InventoryListingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
