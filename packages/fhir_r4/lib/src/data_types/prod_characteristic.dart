import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'prod_characteristic.g.dart';

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return ProdCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'height',
      height,
    );
    addField(
      'width',
      width,
    );
    addField(
      'depth',
      depth,
    );
    addField(
      'weight',
      weight,
    );
    addField(
      'nominalVolume',
      nominalVolume,
    );
    addField(
      'externalDiameter',
      externalDiameter,
    );
    addField(
      'shape',
      shape,
    );
    addField(
      'color',
      color,
    );
    addField(
      'imprint',
      imprint,
    );
    addField(
      'image',
      image,
    );
    addField(
      'scoring',
      scoring,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'height',
      'width',
      'depth',
      'weight',
      'nominalVolume',
      'externalDiameter',
      'shape',
      'color',
      'imprint',
      'image',
      'scoring',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'height':
        if (height != null) {
          fields.add(height!);
        }
      case 'width':
        if (width != null) {
          fields.add(width!);
        }
      case 'depth':
        if (depth != null) {
          fields.add(depth!);
        }
      case 'weight':
        if (weight != null) {
          fields.add(weight!);
        }
      case 'nominalVolume':
        if (nominalVolume != null) {
          fields.add(nominalVolume!);
        }
      case 'externalDiameter':
        if (externalDiameter != null) {
          fields.add(externalDiameter!);
        }
      case 'shape':
        if (shape != null) {
          fields.add(shape!);
        }
      case 'color':
        if (color != null) {
          fields.addAll(color!);
        }
      case 'imprint':
        if (imprint != null) {
          fields.addAll(imprint!);
        }
      case 'image':
        if (image != null) {
          fields.addAll(image!);
        }
      case 'scoring':
        if (scoring != null) {
          fields.add(scoring!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ProdCharacteristic clone() => copyWith();

  /// Copy function for [ProdCharacteristic]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ProdCharacteristicCopyWith<ProdCharacteristic> get copyWith =>
      _$ProdCharacteristicCopyWithImpl<ProdCharacteristic>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ProdCharacteristic) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      height,
      o.height,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      width,
      o.width,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      depth,
      o.depth,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      weight,
      o.weight,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      nominalVolume,
      o.nominalVolume,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      externalDiameter,
      o.externalDiameter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      shape,
      o.shape,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      color,
      o.color,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      imprint,
      o.imprint,
    )) {
      return false;
    }
    if (!listEquals<Attachment>(
      image,
      o.image,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      scoring,
      o.scoring,
    )) {
      return false;
    }
    return true;
  }
}
