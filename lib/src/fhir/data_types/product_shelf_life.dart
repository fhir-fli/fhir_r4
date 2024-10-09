import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [ProductShelfLife] /// The shelf-life and storage information for a medicinal product item or
/// container can be described using this class.
class ProductShelfLife extends BackboneType {
  ProductShelfLife({
    super.id,
    super.extension_,
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

  @override
  String get fhirType => 'ProductShelfLife';

  @Id()
  int dbId = 0;

  /// [identifier] /// Unique identifier for the packaged Medicinal Product.
  final Identifier? identifier;

  /// [type] /// This describes the shelf life, taking into account various scenarios such
  /// as shelf life of the packaged Medicinal Product itself, shelf life after
  /// transformation where necessary and shelf life after the first opening of a
  /// bottle, etc. The shelf life type shall be specified using an appropriate
  /// controlled vocabulary The controlled term and the controlled term
  /// identifier shall be specified.
  final CodeableConcept type;

  /// [period] /// The shelf life time period can be specified using a numerical value for the
  /// period of time and its unit of time measurement The unit of measurement
  /// shall be specified in accordance with ISO 11240 and the resulting
  /// terminology The symbol and the symbol identifier shall be used.
  final Quantity period;

  /// [specialPrecautionsForStorage] /// Special precautions for storage, if any, can be specified using an
  /// appropriate controlled vocabulary The controlled term and the controlled
  /// term identifier shall be specified.
  final List<CodeableConcept>? specialPrecautionsForStorage;
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
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    json['type'] = type.toJson();
    json['period'] = period.toJson();
    if (specialPrecautionsForStorage != null &&
        specialPrecautionsForStorage!.isNotEmpty) {
      json['specialPrecautionsForStorage'] = specialPrecautionsForStorage!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ProductShelfLife.fromJson(Map<String, dynamic> json) {
    return ProductShelfLife(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      period: Quantity.fromJson(json['period'] as Map<String, dynamic>),
      specialPrecautionsForStorage: json['specialPrecautionsForStorage'] != null
          ? (json['specialPrecautionsForStorage'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
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

  factory ProductShelfLife.fromYaml(dynamic yaml) => yaml is String
      ? ProductShelfLife.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ProductShelfLife.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ProductShelfLife cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ProductShelfLife.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ProductShelfLife.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
