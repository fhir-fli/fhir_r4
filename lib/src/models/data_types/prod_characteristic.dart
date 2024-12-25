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
    super.objectPath = 'ProdCharacteristic',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProdCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'ProdCharacteristic';
    return ProdCharacteristic(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      height: JsonParser.parseObject<Quantity>(
        json,
        'height',
        Quantity.fromJson,
        '$objectPath.height',
      ),
      width: JsonParser.parseObject<Quantity>(
        json,
        'width',
        Quantity.fromJson,
        '$objectPath.width',
      ),
      depth: JsonParser.parseObject<Quantity>(
        json,
        'depth',
        Quantity.fromJson,
        '$objectPath.depth',
      ),
      weight: JsonParser.parseObject<Quantity>(
        json,
        'weight',
        Quantity.fromJson,
        '$objectPath.weight',
      ),
      nominalVolume: JsonParser.parseObject<Quantity>(
        json,
        'nominalVolume',
        Quantity.fromJson,
        '$objectPath.nominalVolume',
      ),
      externalDiameter: JsonParser.parseObject<Quantity>(
        json,
        'externalDiameter',
        Quantity.fromJson,
        '$objectPath.externalDiameter',
      ),
      shape: JsonParser.parsePrimitive<FhirString>(
        json,
        'shape',
        FhirString.fromJson,
        '$objectPath.shape',
      ),
      color: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'color',
        FhirString.fromJson,
        '$objectPath.color',
      ),
      imprint: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'imprint',
        FhirString.fromJson,
        '$objectPath.imprint',
      ),
      image: (json['image'] as List<dynamic>?)
          ?.map<Attachment>(
            (v) => Attachment.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.image'}),
            ),
          )
          .toList(),
      scoring: JsonParser.parseObject<CodeableConcept>(
        json,
        'scoring',
        CodeableConcept.fromJson,
        '$objectPath.scoring',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('height', height);
    addField('width', width);
    addField('depth', depth);
    addField('weight', weight);
    addField('nominalVolume', nominalVolume);
    addField('externalDiameter', externalDiameter);
    addField('shape', shape);
    addField('color', color);
    addField('imprint', imprint);
    addField('image', image);
    addField('scoring', scoring);
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
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return ProdCharacteristic(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      height: height?.copyWith(
            objectPath: '$newObjectPath.height',
          ) ??
          this.height,
      width: width?.copyWith(
            objectPath: '$newObjectPath.width',
          ) ??
          this.width,
      depth: depth?.copyWith(
            objectPath: '$newObjectPath.depth',
          ) ??
          this.depth,
      weight: weight?.copyWith(
            objectPath: '$newObjectPath.weight',
          ) ??
          this.weight,
      nominalVolume: nominalVolume?.copyWith(
            objectPath: '$newObjectPath.nominalVolume',
          ) ??
          this.nominalVolume,
      externalDiameter: externalDiameter?.copyWith(
            objectPath: '$newObjectPath.externalDiameter',
          ) ??
          this.externalDiameter,
      shape: shape?.copyWith(
            objectPath: '$newObjectPath.shape',
          ) ??
          this.shape,
      color: color
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.color',
                ),
              )
              .toList() ??
          this.color,
      imprint: imprint
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.imprint',
                ),
              )
              .toList() ??
          this.imprint,
      image: image
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.image',
                ),
              )
              .toList() ??
          this.image,
      scoring: scoring?.copyWith(
            objectPath: '$newObjectPath.scoring',
          ) ??
          this.scoring,
    );
  }
}
