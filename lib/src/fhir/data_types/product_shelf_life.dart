import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ProductShelfLife]
/// The shelf-life and storage information for a medicinal product item or
/// container can be described using this class.
class ProductShelfLife extends BackboneType {
  /// Primary constructor for [ProductShelfLife]

  ProductShelfLife({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    required this.type,
    required this.period,
    this.specialPrecautionsForStorage,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProductShelfLife.fromJson(Map<String, dynamic> json) {
    return ProductShelfLife(
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
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      period: Quantity.fromJson(
        json['period'] as Map<String, dynamic>,
      ),
      specialPrecautionsForStorage: json['specialPrecautionsForStorage'] != null
          ? (json['specialPrecautionsForStorage'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ProductShelfLife] from a [String]
  /// or [YamlMap] object
  factory ProductShelfLife.fromYaml(dynamic yaml) => yaml is String
      ? ProductShelfLife.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ProductShelfLife.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ProductShelfLife cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ProductShelfLife]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProductShelfLife.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ProductShelfLife.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ProductShelfLife';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null) {
      final fieldJson3 = identifier!.toJson();
      json['identifier'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_identifier'] = fieldJson3['_value'];
      }
    }

    final fieldJson4 = type.toJson();
    json['type'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_type'] = fieldJson4['_value'];
    }

    final fieldJson5 = period.toJson();
    json['period'] = fieldJson5['value'];
    if (fieldJson5['_value'] != null) {
      json['_period'] = fieldJson5['_value'];
    }

    if (specialPrecautionsForStorage != null &&
        specialPrecautionsForStorage!.isNotEmpty) {
      final fieldJson6 =
          specialPrecautionsForStorage!.map((e) => e.toJson()).toList();
      json['specialPrecautionsForStorage'] =
          fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_specialPrecautionsForStorage'] =
            fieldJson6.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ProductShelfLife(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      period: period ?? this.period,
      specialPrecautionsForStorage:
          specialPrecautionsForStorage ?? this.specialPrecautionsForStorage,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
