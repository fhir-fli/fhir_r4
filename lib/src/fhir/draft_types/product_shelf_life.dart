// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'product_shelf_life.freezed.dart';
part 'product_shelf_life.g.dart';

/// [ProductShelfLife] The shelf-life and storage information for a medicinal product item or container can be described using this class.
@freezed
class ProductShelfLife extends Element with _$ProductShelfLife {
  /// [ProductShelfLife] The shelf-life and storage information for a medicinal product item or container can be described using this class.
  ProductShelfLife._();

  /// [ProductShelfLife] The shelf-life and storage information for a medicinal product item or container can be described using this class.
  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] This describes the shelf life, taking into account various scenarios such as shelf life of the packaged Medicinal Product itself, shelf life after transformation where necessary and shelf life after the first opening of a bottle, etc. The shelf life type shall be specified using an appropriate controlled vocabulary The controlled term and the controlled term identifier shall be specified.;
  ///
  /// [specialPrecautionsForStorage] Special precautions for storage, if any, can be specified using an appropriate controlled vocabulary The controlled term and the controlled term identifier shall be specified.;
  const factory ProductShelfLife({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,

    /// [type] This describes the shelf life, taking into account various scenarios such as shelf life of the packaged Medicinal Product itself, shelf life after transformation where necessary and shelf life after the first opening of a bottle, etc. The shelf life type shall be specified using an appropriate controlled vocabulary The controlled term and the controlled term identifier shall be specified.;
    CodeableConcept? type,
    Quantity? period,

    /// [specialPrecautionsForStorage] Special precautions for storage, if any, can be specified using an appropriate controlled vocabulary The controlled term and the controlled term identifier shall be specified.;
    List<CodeableConcept>? specialPrecautionsForStorage,
  }) = _ProductShelfLife;

  @override
  String get fhirType => 'ProductShelfLife';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ProductShelfLife.fromYaml(dynamic yaml) => yaml is String
      ? ProductShelfLife.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ProductShelfLife.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ProductShelfLife cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ProductShelfLife.fromJson(Map<String, dynamic> json) =>
      _$ProductShelfLifeFromJson(json);

  /// Acts like a constructor, returns a [ProductShelfLife], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ProductShelfLife.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ProductShelfLifeFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
