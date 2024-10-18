import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Identifier]
/// An identifier - identifies some entity uniquely and unambiguously.
/// Typically this is used for business identifiers.
class Identifier extends DataType {
  /// Primary constructor for [Identifier]

  Identifier({
    super.id,
    super.extension_,
    this.use,
    this.type,
    this.system,
    this.value,
    this.period,
    this.assigner,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Identifier.fromJson(
    Map<String, dynamic> json,
  ) {
    return Identifier(
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
      use: json['use'] != null
          ? IdentifierUse.fromJson({
              'value': json['use'],
              '_value': json['_use'],
            })
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      system: json['system'] != null
          ? FhirUri.fromJson({
              'value': json['system'],
              '_value': json['_system'],
            })
          : null,
      value: json['value'] != null
          ? FhirString.fromJson({
              'value': json['value'],
              '_value': json['_value'],
            })
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      assigner: json['assigner'] != null
          ? Reference.fromJson(
              json['assigner'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Identifier] from a [String]
  /// or [YamlMap] object
  factory Identifier.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? Identifier.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? Identifier.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'Identifier cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [Identifier]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Identifier.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Identifier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Identifier';

  /// [use]
  /// The purpose of this identifier.
  final IdentifierUse? use;

  /// [type]
  /// A coded type for the identifier that can be used to determine which
  /// identifier to use for a specific purpose.
  final CodeableConcept? type;

  /// [system]
  /// Establishes the namespace for the value - that is, a URL that describes
  /// a set values that are unique.
  final FhirUri? system;

  /// [value]
  /// The portion of the identifier typically relevant to the user and which
  /// is unique within the context of the system.
  final FhirString? value;

  /// [period]
  /// Time period during which identifier is/was valid for use.
  final Period? period;

  /// [assigner]
  /// Organization that issued/manages the identifier.
  final Reference? assigner;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (use != null) {
      json['use'] = use!.toJson();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (system != null) {
      final fieldJson3 = system!.toJson();
      json['system'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_system'] = fieldJson3['_value'];
      }
    }

    if (value != null) {
      final fieldJson4 = value!.toJson();
      json['value'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_value'] = fieldJson4['_value'];
      }
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    if (assigner != null) {
      json['assigner'] = assigner!.toJson();
    }

    return json;
  }

  @override
  Identifier clone() => throw UnimplementedError();
  @override
  Identifier copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    IdentifierUse? use,
    CodeableConcept? type,
    FhirUri? system,
    FhirString? value,
    Period? period,
    Reference? assigner,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Identifier(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      use: use ?? this.use,
      type: type ?? this.type,
      system: system ?? this.system,
      value: value ?? this.value,
      period: period ?? this.period,
      assigner: assigner ?? this.assigner,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
