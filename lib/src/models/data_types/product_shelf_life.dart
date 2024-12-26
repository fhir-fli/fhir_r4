import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ProductShelfLife]
/// The shelf-life and storage information for a medicinal product item or
/// container can be described using this class.
class ProductShelfLife extends BackboneType {
  /// Primary constructor for
  /// [ProductShelfLife]

  const ProductShelfLife({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.type,
    required this.period,
    this.specialPrecautionsForStorage,
    super.disallowExtensions,
    super.objectPath = 'ProductShelfLife',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProductShelfLife.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'ProductShelfLife';
    return ProductShelfLife(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
        '$objectPath.identifier',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      period: JsonParser.parseObject<Quantity>(
        json,
        'period',
        Quantity.fromJson,
        '$objectPath.period',
      )!,
      specialPrecautionsForStorage:
          (json['specialPrecautionsForStorage'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.specialPrecautionsForStorage',
                  },
                ),
              )
              .toList(),
    );
  }

  /// Deserialize [ProductShelfLife]
  /// from a [String] or [YamlMap] object
  factory ProductShelfLife.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProductShelfLife.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProductShelfLife.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProductShelfLife '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProductShelfLife]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProductShelfLife.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ProductShelfLife.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ProductShelfLife';

  /// [identifier]
  /// Unique identifier for the packaged Medicinal Product.
  final Identifier? identifier;

  /// [type]
  /// This describes the shelf life, taking into account various scenarios
  /// such as shelf life of the packaged Medicinal Product itself, shelf life
  /// after transformation where necessary and shelf life after the first
  /// opening of a bottle, etc. The shelf life type shall be specified using
  /// an appropriate controlled vocabulary The controlled term and the
  /// controlled term identifier shall be specified.
  final CodeableConcept type;

  /// [period]
  /// The shelf life time period can be specified using a numerical value for
  /// the period of time and its unit of time measurement The unit of
  /// measurement shall be specified in accordance with ISO 11240 and the
  /// resulting terminology The symbol and the symbol identifier shall be
  /// used.
  final Quantity period;

  /// [specialPrecautionsForStorage]
  /// Special precautions for storage, if any, can be specified using an
  /// appropriate controlled vocabulary The controlled term and the
  /// controlled term identifier shall be specified.
  final List<CodeableConcept>? specialPrecautionsForStorage;
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
    addField('identifier', identifier);
    addField('type', type);
    addField('period', period);
    addField('specialPrecautionsForStorage', specialPrecautionsForStorage);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'identifier',
      'type',
      'period',
      'specialPrecautionsForStorage',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'type':
        fields.add(type);
      case 'period':
        fields.add(period);
      case 'specialPrecautionsForStorage':
        if (specialPrecautionsForStorage != null) {
          fields.addAll(specialPrecautionsForStorage!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ProductShelfLife clone() => throw UnimplementedError();
  @override
  ProductShelfLife copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    CodeableConcept? type,
    Quantity? period,
    List<CodeableConcept>? specialPrecautionsForStorage,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return ProductShelfLife(
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
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      specialPrecautionsForStorage: specialPrecautionsForStorage
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.specialPrecautionsForStorage',
                ),
              )
              .toList() ??
          this.specialPrecautionsForStorage,
    );
  }
}
