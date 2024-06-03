import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ProductShelfLife] The shelf-life and storage information for a
/// medicinal product item or container can be described using this class.

@freezed
class ProductShelfLife with _$ProductShelfLife {
  const ProductShelfLife._();

  const factory ProductShelfLife({
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
/// [type] This describes the shelf life, taking into account various
/// scenarios such as shelf life of the packaged Medicinal Product itself,
/// shelf life after transformation where necessary and shelf life after the
/// first opening of a bottle, etc. The shelf life type shall be specified
/// using an appropriate controlled vocabulary The controlled term and the
/// controlled term identifier shall be specified.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [periodDuration] The shelf life time period can be specified using a
/// numerical value for the period of time and its unit of time measurement The
/// unit of measurement shall be specified in accordance with ISO 11240 and the
/// resulting terminology The symbol and the symbol identifier shall be used.

    @JsonKey(name: 'periodDuration') FhirDuration? periodDuration,
/// [periodString] The shelf life time period can be specified using a
/// numerical value for the period of time and its unit of time measurement The
/// unit of measurement shall be specified in accordance with ISO 11240 and the
/// resulting terminology The symbol and the symbol identifier shall be used.

    @JsonKey(name: 'periodString') String? periodString,
/// [_periodString] Extensions for periodString

    @JsonKey(name: '_periodString') PrimitiveElement? periodStringElement,
/// [specialPrecautionsForStorage] Special precautions for storage, if any,
/// can be specified using an appropriate controlled vocabulary The controlled
/// term and the controlled term identifier shall be specified.

    @JsonKey(name: 'specialPrecautionsForStorage') List<List<CodeableConcept>>? specialPrecautionsForStorage,
  }) = _$ProductShelfLife;

  @override
  String get fhirType => 'ProductShelfLife';

  factory ProductShelfLife.fromJson(Map<String, dynamic> json) =>
      _$ProductShelfLifeFromJson(json);

  factory ProductShelfLife.fromYaml(dynamic yaml) => yaml is String
      ? ProductShelfLife.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ProductShelfLife.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ProductShelfLife cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ProductShelfLife.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ProductShelfLifeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
