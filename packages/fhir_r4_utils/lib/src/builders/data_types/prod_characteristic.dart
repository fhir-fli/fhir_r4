import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show ProdCharacteristic, StringExtensionForFHIR, yamlMapToJson, yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [ProdCharacteristicBuilder]
/// The marketing status describes the date when a medicinal product is
/// actually put on the market or the date as of which it is no longer
/// available.
class ProdCharacteristicBuilder extends BackboneTypeBuilder {
  /// Primary constructor for
  /// [ProdCharacteristicBuilder]

  ProdCharacteristicBuilder({
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
    super.objectPath = 'ProdCharacteristicBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ProdCharacteristicBuilder.empty() => ProdCharacteristicBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProdCharacteristicBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'ProdCharacteristic';
    return ProdCharacteristicBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      height: JsonParser.parseObject<QuantityBuilder>(
        json,
        'height',
        QuantityBuilder.fromJson,
        '$objectPath.height',
      ),
      width: JsonParser.parseObject<QuantityBuilder>(
        json,
        'width',
        QuantityBuilder.fromJson,
        '$objectPath.width',
      ),
      depth: JsonParser.parseObject<QuantityBuilder>(
        json,
        'depth',
        QuantityBuilder.fromJson,
        '$objectPath.depth',
      ),
      weight: JsonParser.parseObject<QuantityBuilder>(
        json,
        'weight',
        QuantityBuilder.fromJson,
        '$objectPath.weight',
      ),
      nominalVolume: JsonParser.parseObject<QuantityBuilder>(
        json,
        'nominalVolume',
        QuantityBuilder.fromJson,
        '$objectPath.nominalVolume',
      ),
      externalDiameter: JsonParser.parseObject<QuantityBuilder>(
        json,
        'externalDiameter',
        QuantityBuilder.fromJson,
        '$objectPath.externalDiameter',
      ),
      shape: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'shape',
        FhirStringBuilder.fromJson,
        '$objectPath.shape',
      ),
      color: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'color',
        FhirStringBuilder.fromJson,
        '$objectPath.color',
      ),
      imprint: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'imprint',
        FhirStringBuilder.fromJson,
        '$objectPath.imprint',
      ),
      image: (json['image'] as List<dynamic>?)
          ?.map<AttachmentBuilder>(
            (v) => AttachmentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.image',
              },
            ),
          )
          .toList(),
      scoring: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'scoring',
        CodeableConceptBuilder.fromJson,
        '$objectPath.scoring',
      ),
    );
  }

  /// Deserialize [ProdCharacteristicBuilder]
  /// from a [String] or [YamlMap] object
  factory ProdCharacteristicBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProdCharacteristicBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProdCharacteristicBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProdCharacteristicBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProdCharacteristicBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProdCharacteristicBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ProdCharacteristicBuilder.fromJson(json);
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
  QuantityBuilder? height;

  /// [width]
  /// Where applicable, the width can be specified using a numerical value
  /// and its unit of measurement The unit of measurement shall be specified
  /// in accordance with ISO 11240 and the resulting terminology The symbol
  /// and the symbol identifier shall be used.
  QuantityBuilder? width;

  /// [depth]
  /// Where applicable, the depth can be specified using a numerical value
  /// and its unit of measurement The unit of measurement shall be specified
  /// in accordance with ISO 11240 and the resulting terminology The symbol
  /// and the symbol identifier shall be used.
  QuantityBuilder? depth;

  /// [weight]
  /// Where applicable, the weight can be specified using a numerical value
  /// and its unit of measurement The unit of measurement shall be specified
  /// in accordance with ISO 11240 and the resulting terminology The symbol
  /// and the symbol identifier shall be used.
  QuantityBuilder? weight;

  /// [nominalVolume]
  /// Where applicable, the nominal volume can be specified using a numerical
  /// value and its unit of measurement The unit of measurement shall be
  /// specified in accordance with ISO 11240 and the resulting terminology
  /// The symbol and the symbol identifier shall be used.
  QuantityBuilder? nominalVolume;

  /// [externalDiameter]
  /// Where applicable, the external diameter can be specified using a
  /// numerical value and its unit of measurement The unit of measurement
  /// shall be specified in accordance with ISO 11240 and the resulting
  /// terminology The symbol and the symbol identifier shall be used.
  QuantityBuilder? externalDiameter;

  /// [shape]
  /// Where applicable, the shape can be specified An appropriate controlled
  /// vocabulary shall be used The term and the term identifier shall be
  /// used.
  FhirStringBuilder? shape;

  /// [color]
  /// Where applicable, the color can be specified An appropriate controlled
  /// vocabulary shall be used The term and the term identifier shall be
  /// used.
  List<FhirStringBuilder>? color;

  /// [imprint]
  /// Where applicable, the imprint can be specified as text.
  List<FhirStringBuilder>? imprint;

  /// [image]
  /// Where applicable, the image can be provided The format of the image
  /// attachment shall be specified by regional implementations.
  List<AttachmentBuilder>? image;

  /// [scoring]
  /// Where applicable, the scoring can be specified An appropriate
  /// controlled vocabulary shall be used The term and the term identifier
  /// shall be used.
  CodeableConceptBuilder? scoring;

  /// converts a [ProdCharacteristicBuilder]
  /// to [ProdCharacteristic]
  @override
  ProdCharacteristic build() => ProdCharacteristic.fromJson(toJson());

  /// converts a [ProdCharacteristicBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'height':
        {
          if (child is QuantityBuilder) {
            height = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'width':
        {
          if (child is QuantityBuilder) {
            width = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'depth':
        {
          if (child is QuantityBuilder) {
            depth = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'weight':
        {
          if (child is QuantityBuilder) {
            weight = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'nominalVolume':
        {
          if (child is QuantityBuilder) {
            nominalVolume = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'externalDiameter':
        {
          if (child is QuantityBuilder) {
            externalDiameter = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'shape':
        {
          if (child is FhirStringBuilder) {
            shape = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'color':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            color = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            color = [...(color ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'imprint':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            imprint = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            imprint = [...(imprint ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'image':
        {
          if (child is List<AttachmentBuilder>) {
            // Replace or create new list
            image = child;
            return;
          } else if (child is AttachmentBuilder) {
            // Add single element to existing list or create new list
            image = [...(image ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'scoring':
        {
          if (child is CodeableConceptBuilder) {
            scoring = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'height':
        return ['QuantityBuilder'];
      case 'width':
        return ['QuantityBuilder'];
      case 'depth':
        return ['QuantityBuilder'];
      case 'weight':
        return ['QuantityBuilder'];
      case 'nominalVolume':
        return ['QuantityBuilder'];
      case 'externalDiameter':
        return ['QuantityBuilder'];
      case 'shape':
        return ['FhirStringBuilder'];
      case 'color':
        return ['FhirStringBuilder'];
      case 'imprint':
        return ['FhirStringBuilder'];
      case 'image':
        return ['AttachmentBuilder'];
      case 'scoring':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ProdCharacteristicBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'height':
        {
          height = QuantityBuilder.empty();
          return;
        }
      case 'width':
        {
          width = QuantityBuilder.empty();
          return;
        }
      case 'depth':
        {
          depth = QuantityBuilder.empty();
          return;
        }
      case 'weight':
        {
          weight = QuantityBuilder.empty();
          return;
        }
      case 'nominalVolume':
        {
          nominalVolume = QuantityBuilder.empty();
          return;
        }
      case 'externalDiameter':
        {
          externalDiameter = QuantityBuilder.empty();
          return;
        }
      case 'shape':
        {
          shape = FhirStringBuilder.empty();
          return;
        }
      case 'color':
        {
          color = <FhirStringBuilder>[];
          return;
        }
      case 'imprint':
        {
          imprint = <FhirStringBuilder>[];
          return;
        }
      case 'image':
        {
          image = <AttachmentBuilder>[];
          return;
        }
      case 'scoring':
        {
          scoring = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool height = false,
    bool width = false,
    bool depth = false,
    bool weight = false,
    bool nominalVolume = false,
    bool externalDiameter = false,
    bool shape = false,
    bool color = false,
    bool imprint = false,
    bool image = false,
    bool scoring = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (height) this.height = null;
    if (width) this.width = null;
    if (depth) this.depth = null;
    if (weight) this.weight = null;
    if (nominalVolume) this.nominalVolume = null;
    if (externalDiameter) this.externalDiameter = null;
    if (shape) this.shape = null;
    if (color) this.color = null;
    if (imprint) this.imprint = null;
    if (image) this.image = null;
    if (scoring) this.scoring = null;
  }

  @override
  ProdCharacteristicBuilder clone() => throw UnimplementedError();
  @override
  ProdCharacteristicBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    QuantityBuilder? height,
    QuantityBuilder? width,
    QuantityBuilder? depth,
    QuantityBuilder? weight,
    QuantityBuilder? nominalVolume,
    QuantityBuilder? externalDiameter,
    FhirStringBuilder? shape,
    List<FhirStringBuilder>? color,
    List<FhirStringBuilder>? imprint,
    List<AttachmentBuilder>? image,
    CodeableConceptBuilder? scoring,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = ProdCharacteristicBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ProdCharacteristicBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<FhirStringBuilder>(
      color,
      o.color,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      imprint,
      o.imprint,
    )) {
      return false;
    }
    if (!listEquals<AttachmentBuilder>(
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
