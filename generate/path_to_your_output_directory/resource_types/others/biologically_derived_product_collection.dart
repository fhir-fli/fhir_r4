import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [BiologicallyDerivedProduct_Collection] This resource reflects an
/// instance of a biologically derived product. A material substance
/// originating from a biological entity intended to be transplanted or infused
/// into another (possibly the same) biological entity.

@freezed
class BiologicallyDerivedProduct_Collection with _$BiologicallyDerivedProduct_Collection {
  const BiologicallyDerivedProduct_Collection._();

  const factory BiologicallyDerivedProduct_Collection({
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
/// [collector] Healthcare professional who is performing the collection.

    @JsonKey(name: 'collector') Reference? collector,
/// [source] The patient or entity, such as a hospital or vendor in the
/// case of a processed/manipulated/manufactured product, providing the
/// product.

    @JsonKey(name: 'source') Reference? source,
/// [collectedDateTime] Time of product collection.

    @JsonKey(name: 'collectedDateTime') FhirDateTime? collectedDateTime,
/// [_collectedDateTime] Extensions for collectedDateTime

    @JsonKey(name: '_collectedDateTime') PrimitiveElement? collectedDateTimeElement,
/// [collectedPeriod] Time of product collection.

    @JsonKey(name: 'collectedPeriod') Period? collectedPeriod,
/// [procedure] The procedure performed to collect the biologically derived
/// product.

    @JsonKey(name: 'procedure') Reference? procedure,
  }) = _$BiologicallyDerivedProduct_Collection;

  @override
  String get fhirType => 'BiologicallyDerivedProduct_Collection';

  factory BiologicallyDerivedProduct_Collection.fromJson(Map<String, dynamic> json) =>
      _$BiologicallyDerivedProduct_CollectionFromJson(json);

  factory BiologicallyDerivedProduct_Collection.fromYaml(dynamic yaml) => yaml is String
      ? BiologicallyDerivedProduct_Collection.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BiologicallyDerivedProduct_Collection.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BiologicallyDerivedProduct_Collection cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory BiologicallyDerivedProduct_Collection.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BiologicallyDerivedProduct_CollectionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
