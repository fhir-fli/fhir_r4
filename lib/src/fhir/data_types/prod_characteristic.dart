import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'prod_characteristic.g.dart';

/// [ProdCharacteristic] /// The marketing status describes the date when a medicinal product is
/// actually put on the market or the date as of which it is no longer
/// available.
@JsonSerializable()
class ProdCharacteristic extends BackboneType {
  ProdCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.height,
    this.width,
    this.depth,
    this.weight,
    this.nominalVolume,
    this.externalDiameter,
    this.shape,
    this.shapeElement,
    this.color,
    this.colorElement,
    this.imprint,
    this.imprintElement,
    this.image,
    this.scoring,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ProdCharacteristic');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [height] /// Where applicable, the height can be specified using a numerical value and
  /// its unit of measurement The unit of measurement shall be specified in
  /// accordance with ISO 11240 and the resulting terminology The symbol and the
  /// symbol identifier shall be used.
  @JsonKey(name: 'height')
  final Quantity? height;

  /// [width] /// Where applicable, the width can be specified using a numerical value and
  /// its unit of measurement The unit of measurement shall be specified in
  /// accordance with ISO 11240 and the resulting terminology The symbol and the
  /// symbol identifier shall be used.
  @JsonKey(name: 'width')
  final Quantity? width;

  /// [depth] /// Where applicable, the depth can be specified using a numerical value and
  /// its unit of measurement The unit of measurement shall be specified in
  /// accordance with ISO 11240 and the resulting terminology The symbol and the
  /// symbol identifier shall be used.
  @JsonKey(name: 'depth')
  final Quantity? depth;

  /// [weight] /// Where applicable, the weight can be specified using a numerical value and
  /// its unit of measurement The unit of measurement shall be specified in
  /// accordance with ISO 11240 and the resulting terminology The symbol and the
  /// symbol identifier shall be used.
  @JsonKey(name: 'weight')
  final Quantity? weight;

  /// [nominalVolume] /// Where applicable, the nominal volume can be specified using a numerical
  /// value and its unit of measurement The unit of measurement shall be
  /// specified in accordance with ISO 11240 and the resulting terminology The
  /// symbol and the symbol identifier shall be used.
  @JsonKey(name: 'nominalVolume')
  final Quantity? nominalVolume;

  /// [externalDiameter] /// Where applicable, the external diameter can be specified using a numerical
  /// value and its unit of measurement The unit of measurement shall be
  /// specified in accordance with ISO 11240 and the resulting terminology The
  /// symbol and the symbol identifier shall be used.
  @JsonKey(name: 'externalDiameter')
  final Quantity? externalDiameter;

  /// [shape] /// Where applicable, the shape can be specified An appropriate controlled
  /// vocabulary shall be used The term and the term identifier shall be used.
  @JsonKey(name: 'shape')
  final FhirString? shape;
  @JsonKey(name: '_shape')
  final Element? shapeElement;

  /// [color] /// Where applicable, the color can be specified An appropriate controlled
  /// vocabulary shall be used The term and the term identifier shall be used.
  @JsonKey(name: 'color')
  final List<FhirString>? color;
  @JsonKey(name: '_color')
  final List<Element>? colorElement;

  /// [imprint] /// Where applicable, the imprint can be specified as text.
  @JsonKey(name: 'imprint')
  final List<FhirString>? imprint;
  @JsonKey(name: '_imprint')
  final List<Element>? imprintElement;

  /// [image] /// Where applicable, the image can be provided The format of the image
  /// attachment shall be specified by regional implementations.
  @JsonKey(name: 'image')
  final List<Attachment>? image;

  /// [scoring] /// Where applicable, the scoring can be specified An appropriate controlled
  /// vocabulary shall be used The term and the term identifier shall be used.
  @JsonKey(name: 'scoring')
  final CodeableConcept? scoring;
  factory ProdCharacteristic.fromJson(Map<String, dynamic> json) =>
      _$ProdCharacteristicFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProdCharacteristicToJson(this);

  @override
  ProdCharacteristic clone() => throw UnimplementedError();
  @override
  ProdCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? height,
    Quantity? width,
    Quantity? depth,
    Quantity? weight,
    Quantity? nominalVolume,
    Quantity? externalDiameter,
    FhirString? shape,
    Element? shapeElement,
    List<FhirString>? color,
    List<Element>? colorElement,
    List<FhirString>? imprint,
    List<Element>? imprintElement,
    List<Attachment>? image,
    CodeableConcept? scoring,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ProdCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      height: height ?? this.height,
      width: width ?? this.width,
      depth: depth ?? this.depth,
      weight: weight ?? this.weight,
      nominalVolume: nominalVolume ?? this.nominalVolume,
      externalDiameter: externalDiameter ?? this.externalDiameter,
      shape: shape ?? this.shape,
      shapeElement: shapeElement ?? this.shapeElement,
      color: color ?? this.color,
      colorElement: colorElement ?? this.colorElement,
      imprint: imprint ?? this.imprint,
      imprintElement: imprintElement ?? this.imprintElement,
      image: image ?? this.image,
      scoring: scoring ?? this.scoring,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ProdCharacteristic.fromYaml(dynamic yaml) => yaml is String
      ? ProdCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ProdCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ProdCharacteristic cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ProdCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ProdCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
