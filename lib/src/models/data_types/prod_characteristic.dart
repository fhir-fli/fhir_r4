import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ProdCharacteristic]
/// The marketing status describes the date when a medicinal product is
/// actually put on the market or the date as of which it is no longer
/// available.
class ProdCharacteristic extends BackboneType {
  /// Primary constructor for
  /// [ProdCharacteristic]

  const ProdCharacteristic({
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
    this.color,
    this.imprint,
    this.image,
    this.scoring,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProdCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    return ProdCharacteristic(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      height: JsonParser.parseObject<Quantity>(
        json,
        'height',
        Quantity.fromJson,
      ),
      width: JsonParser.parseObject<Quantity>(
        json,
        'width',
        Quantity.fromJson,
      ),
      depth: JsonParser.parseObject<Quantity>(
        json,
        'depth',
        Quantity.fromJson,
      ),
      weight: JsonParser.parseObject<Quantity>(
        json,
        'weight',
        Quantity.fromJson,
      ),
      nominalVolume: JsonParser.parseObject<Quantity>(
        json,
        'nominalVolume',
        Quantity.fromJson,
      ),
      externalDiameter: JsonParser.parseObject<Quantity>(
        json,
        'externalDiameter',
        Quantity.fromJson,
      ),
      shape: JsonParser.parsePrimitive<FhirString>(
        json,
        'shape',
        FhirString.fromJson,
      ),
      color: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'color',
        FhirString.fromJson,
      ),
      imprint: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'imprint',
        FhirString.fromJson,
      ),
      image: (json['image'] as List<dynamic>?)
          ?.map<Attachment>(
            (v) => Attachment.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      scoring: JsonParser.parseObject<CodeableConcept>(
        json,
        'scoring',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [ProdCharacteristic]
  /// from a [String] or [YamlMap] object
  factory ProdCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProdCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProdCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProdCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProdCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProdCharacteristic.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
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

    if (shape != null) {
      addField('shape', shape);
    }

    if (color != null && color!.isNotEmpty) {
      final fieldJson0 = color!.map((e) => e.toJson()).toList();
      json['color'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_color'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (imprint != null && imprint!.isNotEmpty) {
      final fieldJson1 = imprint!.map((e) => e.toJson()).toList();
      json['imprint'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_imprint'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (image != null && image!.isNotEmpty) {
      json['image'] = image!.map((e) => e.toJson()).toList();
    }

    if (scoring != null) {
      json['scoring'] = scoring!.toJson();
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
    );
  }
}
