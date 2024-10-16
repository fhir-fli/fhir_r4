import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ProdCharacteristic]
/// The marketing status describes the date when a medicinal product is
/// actually put on the market or the date as of which it is no longer
/// available.
class ProdCharacteristic extends BackboneType {
  /// Primary constructor for [ProdCharacteristic]

  ProdCharacteristic({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.height,
    this.width,
    this.depth,
    this.weight,
    this.nominalVolume,
    this.externalDiameter,
    this.shape,
    this.color,
    this.imprint,
    this.image,
    this.scoring,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProdCharacteristic.fromJson(Map<String, dynamic> json) {
    return ProdCharacteristic(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      height: json['height'] != null
          ? Quantity.fromJson(
              json['height'] as Map<String, dynamic>,
            )
          : null,
      width: json['width'] != null
          ? Quantity.fromJson(
              json['width'] as Map<String, dynamic>,
            )
          : null,
      depth: json['depth'] != null
          ? Quantity.fromJson(
              json['depth'] as Map<String, dynamic>,
            )
          : null,
      weight: json['weight'] != null
          ? Quantity.fromJson(
              json['weight'] as Map<String, dynamic>,
            )
          : null,
      nominalVolume: json['nominalVolume'] != null
          ? Quantity.fromJson(
              json['nominalVolume'] as Map<String, dynamic>,
            )
          : null,
      externalDiameter: json['externalDiameter'] != null
          ? Quantity.fromJson(
              json['externalDiameter'] as Map<String, dynamic>,
            )
          : null,
      shape: json['shape'] != null
          ? FhirString.fromJson({
              'value': json['shape'],
              '_value': json['_shape'],
            })
          : null,
      color: parsePrimitiveList<FhirString>(
          json['color'] as List<dynamic>?, json['_color'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      imprint: parsePrimitiveList<FhirString>(
          json['imprint'] as List<dynamic>?, json['_imprint'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      image: json['image'] != null
          ? (json['image'] as List<dynamic>)
              .map<Attachment>(
                (v) => Attachment.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      scoring: json['scoring'] != null
          ? CodeableConcept.fromJson(
              json['scoring'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ProdCharacteristic] from a [String]
  /// or [YamlMap] object
  factory ProdCharacteristic.fromYaml(dynamic yaml) => yaml is String
      ? ProdCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ProdCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ProdCharacteristic cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ProdCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProdCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ProdCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ProdCharacteristic';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [height]
  /// Where applicable, the height can be specified using a numerical value
  /// and its unit of measurement The unit of measurement shall be specified
  /// in accordance with ISO 11240 and the resulting terminology The symbol
  /// and the symbol identifier shall be used.
  final Quantity? height;

  /// [width]
  /// Where applicable, the width can be specified using a numerical value
  /// and its unit of measurement The unit of measurement shall be specified
  /// in accordance with ISO 11240 and the resulting terminology The symbol
  /// and the symbol identifier shall be used.
  final Quantity? width;

  /// [depth]
  /// Where applicable, the depth can be specified using a numerical value
  /// and its unit of measurement The unit of measurement shall be specified
  /// in accordance with ISO 11240 and the resulting terminology The symbol
  /// and the symbol identifier shall be used.
  final Quantity? depth;

  /// [weight]
  /// Where applicable, the weight can be specified using a numerical value
  /// and its unit of measurement The unit of measurement shall be specified
  /// in accordance with ISO 11240 and the resulting terminology The symbol
  /// and the symbol identifier shall be used.
  final Quantity? weight;

  /// [nominalVolume]
  /// Where applicable, the nominal volume can be specified using a numerical
  /// value and its unit of measurement The unit of measurement shall be
  /// specified in accordance with ISO 11240 and the resulting terminology
  /// The symbol and the symbol identifier shall be used.
  final Quantity? nominalVolume;

  /// [externalDiameter]
  /// Where applicable, the external diameter can be specified using a
  /// numerical value and its unit of measurement The unit of measurement
  /// shall be specified in accordance with ISO 11240 and the resulting
  /// terminology The symbol and the symbol identifier shall be used.
  final Quantity? externalDiameter;

  /// [shape]
  /// Where applicable, the shape can be specified An appropriate controlled
  /// vocabulary shall be used The term and the term identifier shall be
  /// used.
  final FhirString? shape;

  /// [color]
  /// Where applicable, the color can be specified An appropriate controlled
  /// vocabulary shall be used The term and the term identifier shall be
  /// used.
  final List<FhirString>? color;

  /// [imprint]
  /// Where applicable, the imprint can be specified as text.
  final List<FhirString>? imprint;

  /// [image]
  /// Where applicable, the image can be provided The format of the image
  /// attachment shall be specified by regional implementations.
  final List<Attachment>? image;

  /// [scoring]
  /// Where applicable, the scoring can be specified An appropriate
  /// controlled vocabulary shall be used The term and the term identifier
  /// shall be used.
  final CodeableConcept? scoring;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (height != null) {
      final primitiveJson = height!.toJson();
      json['height'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_height'] = primitiveJson['_value'];
      }
    }

    if (width != null) {
      final primitiveJson = width!.toJson();
      json['width'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_width'] = primitiveJson['_value'];
      }
    }

    if (depth != null) {
      final primitiveJson = depth!.toJson();
      json['depth'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_depth'] = primitiveJson['_value'];
      }
    }

    if (weight != null) {
      final primitiveJson = weight!.toJson();
      json['weight'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_weight'] = primitiveJson['_value'];
      }
    }

    if (nominalVolume != null) {
      final primitiveJson = nominalVolume!.toJson();
      json['nominalVolume'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_nominalVolume'] = primitiveJson['_value'];
      }
    }

    if (externalDiameter != null) {
      final primitiveJson = externalDiameter!.toJson();
      json['externalDiameter'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_externalDiameter'] = primitiveJson['_value'];
      }
    }

    if (shape != null) {
      final primitiveJson = shape!.toJson();
      json['shape'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_shape'] = primitiveJson['_value'];
      }
    }

    if (color != null && color!.isNotEmpty) {
      final primitiveList = color!.map((e) => e.toJson()).toList();
      json['color'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_color'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (imprint != null && imprint!.isNotEmpty) {
      final primitiveList = imprint!.map((e) => e.toJson()).toList();
      json['imprint'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_imprint'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (image != null && image!.isNotEmpty) {
      final primitiveList = image!.map((e) => e.toJson()).toList();
      json['image'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_image'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (scoring != null) {
      final primitiveJson = scoring!.toJson();
      json['scoring'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_scoring'] = primitiveJson['_value'];
      }
    }

    return json;
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
    List<FhirString>? color,
    List<FhirString>? imprint,
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
      color: color ?? this.color,
      imprint: imprint ?? this.imprint,
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
}
