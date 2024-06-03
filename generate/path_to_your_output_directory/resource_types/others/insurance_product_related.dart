import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [InsuranceProduct_Related] Details of a Health Insurance product
/// provided by an organization.

@freezed
class InsuranceProduct_Related with _$InsuranceProduct_Related {
  const InsuranceProduct_Related._();

  const factory InsuranceProduct_Related({
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
/// [product] The Related Product reference.

    @JsonKey(name: 'product') Reference? product,
/// [relationship] The relationship of this product to the related product.
/// an example would be 'sub-plan' where this product is a sub-plan of the
/// related.product.

    @JsonKey(name: 'relationship') CodeableConcept? relationship,
/// [period] Period of time that the product relationship is valid. The
/// start and/or end dates can be empty if this is an open ended relationship.

    @JsonKey(name: 'period') Period? period,
  }) = _$InsuranceProduct_Related;

  @override
  String get fhirType => 'InsuranceProduct_Related';

  factory InsuranceProduct_Related.fromJson(Map<String, dynamic> json) =>
      _$InsuranceProduct_RelatedFromJson(json);

  factory InsuranceProduct_Related.fromYaml(dynamic yaml) => yaml is String
      ? InsuranceProduct_Related.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InsuranceProduct_Related.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InsuranceProduct_Related cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory InsuranceProduct_Related.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InsuranceProduct_RelatedFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
