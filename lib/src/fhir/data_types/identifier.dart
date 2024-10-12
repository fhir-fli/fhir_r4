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

    /// Extensions for [use]
    this.useElement,
    this.type,
    this.system,

    /// Extensions for [system]
    this.systemElement,
    this.value,

    /// Extensions for [value]
    this.valueElement,
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
  factory Identifier.fromJson(Map<String, dynamic> json) {
    return Identifier(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      use: json['use'] != null ? IdentifierUse.fromJson(json['use']) : null,
      useElement: json['_use'] != null
          ? Element.fromJson(
              json['_use'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      system: json['system'] != null ? FhirUri.fromJson(json['system']) : null,
      systemElement: json['_system'] != null
          ? Element.fromJson(
              json['_system'] as Map<String, dynamic>,
            )
          : null,
      value: json['value'] != null ? FhirString.fromJson(json['value']) : null,
      valueElement: json['_value'] != null
          ? Element.fromJson(
              json['_value'] as Map<String, dynamic>,
            )
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

  /// Deserialize [Identifier] from a [String] or [YamlMap] object
  factory Identifier.fromYaml(dynamic yaml) => yaml is String
      ? Identifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Identifier.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Identifier cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Identifier] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Identifier.fromJsonString(String source) {
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

  /// Extensions for [use]
  final Element? useElement;

  /// [type]
  /// A coded type for the identifier that can be used to determine which
  /// identifier to use for a specific purpose.
  final CodeableConcept? type;

  /// [system]
  /// Establishes the namespace for the value - that is, a URL that describes
  /// a set values that are unique.
  final FhirUri? system;

  /// Extensions for [system]
  final Element? systemElement;

  /// [value]
  /// The portion of the identifier typically relevant to the user and which
  /// is unique within the context of the system.
  final FhirString? value;

  /// Extensions for [value]
  final Element? valueElement;

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
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (use != null) {
      json['use'] = use!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (system?.value != null) {
      json['system'] = system!.toJson();
    }
    if (systemElement != null) {
      json['_system'] = systemElement!.toJson();
    }
    if (value?.value != null) {
      json['value'] = value!.toJson();
    }
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
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
    Element? useElement,
    CodeableConcept? type,
    FhirUri? system,
    Element? systemElement,
    FhirString? value,
    Element? valueElement,
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
      useElement: useElement ?? this.useElement,
      type: type ?? this.type,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
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
