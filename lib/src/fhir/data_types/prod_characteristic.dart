import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
  });
  @override
  String get fhirType => 'ProdCharacteristic';
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
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (height != null) {
      json['height'] = height!.toJson();
    }
    if (width != null) {
      json['width'] = width!.toJson();
    }
    if (depth != null) {
      json['depth'] = depth!.toJson();
    }
    if (weight != null) {
      json['weight'] = weight!.toJson();
    }
    if (nominalVolume != null) {
      json['nominalVolume'] = nominalVolume!.toJson();
    }
    if (externalDiameter != null) {
      json['externalDiameter'] = externalDiameter!.toJson();
    }
    if (shape?.value != null) {
      json['shape'] = shape!.value;
    }
    if (shapeElement != null) {
      json['_shape'] = shapeElement!.toJson();
    }
    if (color != null && color!.isNotEmpty) {
      json['color'] = color!.map((FhirString v) => v.value).toList();
    }
    if (colorElement != null && colorElement!.isNotEmpty) {
      json['_color'] = colorElement!.map((Element v) => v.toJson()).toList();
    }
    if (imprint != null && imprint!.isNotEmpty) {
      json['imprint'] = imprint!.map((FhirString v) => v.value).toList();
    }
    if (imprintElement != null && imprintElement!.isNotEmpty) {
      json['_imprint'] =
          imprintElement!.map((Element v) => v.toJson()).toList();
    }
    if (image != null && image!.isNotEmpty) {
      json['image'] =
          image!.map<dynamic>((Attachment v) => v.toJson()).toList();
    }
    if (scoring != null) {
      json['scoring'] = scoring!.toJson();
    }
    return json;
  }

  factory ProdCharacteristic.fromJson(Map<String, dynamic> json) {
    return ProdCharacteristic(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      height: json['height'] != null
          ? Quantity.fromJson(json['height'] as Map<String, dynamic>)
          : null,
      width: json['width'] != null
          ? Quantity.fromJson(json['width'] as Map<String, dynamic>)
          : null,
      depth: json['depth'] != null
          ? Quantity.fromJson(json['depth'] as Map<String, dynamic>)
          : null,
      weight: json['weight'] != null
          ? Quantity.fromJson(json['weight'] as Map<String, dynamic>)
          : null,
      nominalVolume: json['nominalVolume'] != null
          ? Quantity.fromJson(json['nominalVolume'] as Map<String, dynamic>)
          : null,
      externalDiameter: json['externalDiameter'] != null
          ? Quantity.fromJson(json['externalDiameter'] as Map<String, dynamic>)
          : null,
      shape: json['shape'] != null ? FhirString(json['shape']) : null,
      shapeElement: json['_shape'] != null
          ? Element.fromJson(json['_shape'] as Map<String, dynamic>)
          : null,
      color: json['color'] != null
          ? (json['color'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString(v))
              .toList()
          : null,
      colorElement: json['_color'] != null
          ? (json['_color'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      imprint: json['imprint'] != null
          ? (json['imprint'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString(v))
              .toList()
          : null,
      imprintElement: json['_imprint'] != null
          ? (json['_imprint'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      image: json['image'] != null
          ? (json['image'] as List<dynamic>)
              .map<Attachment>(
                  (dynamic v) => Attachment.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      scoring: json['scoring'] != null
          ? CodeableConcept.fromJson(json['scoring'] as Map<String, dynamic>)
          : null,
    );
  }
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
