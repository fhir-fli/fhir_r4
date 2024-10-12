import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ContactPoint]
/// Details for all kinds of technology mediated contact points for a
/// person or organization, including telephone, email, etc.
class ContactPoint extends DataType {
  /// Primary constructor for [ContactPoint]

  ContactPoint({
    super.id,
    super.extension_,
    this.system,

    /// Extensions for [system]
    this.systemElement,
    this.value,

    /// Extensions for [value]
    this.valueElement,
    this.use,

    /// Extensions for [use]
    this.useElement,
    this.rank,

    /// Extensions for [rank]
    this.rankElement,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContactPoint.fromJson(Map<String, dynamic> json) {
    return ContactPoint(
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
      system: json['system'] != null
          ? ContactPointSystem.fromJson(json['system'])
          : null,
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
      use: json['use'] != null ? ContactPointUse.fromJson(json['use']) : null,
      useElement: json['_use'] != null
          ? Element.fromJson(
              json['_use'] as Map<String, dynamic>,
            )
          : null,
      rank:
          json['rank'] != null ? FhirPositiveInt.fromJson(json['rank']) : null,
      rankElement: json['_rank'] != null
          ? Element.fromJson(
              json['_rank'] as Map<String, dynamic>,
            )
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ContactPoint] from a [String] or [YamlMap] object
  factory ContactPoint.fromYaml(dynamic yaml) => yaml is String
      ? ContactPoint.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContactPoint.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ContactPoint cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContactPoint] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContactPoint.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContactPoint.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContactPoint';

  /// [system]
  /// Telecommunications form for contact point - what communications system
  /// is required to make use of the contact.
  final ContactPointSystem? system;

  /// Extensions for [system]
  final Element? systemElement;

  /// [value]
  /// The actual contact point details, in a form that is meaningful to the
  /// designated communication system (i.e. phone number or email address).
  final FhirString? value;

  /// Extensions for [value]
  final Element? valueElement;

  /// [use]
  /// Identifies the purpose for the contact point.
  final ContactPointUse? use;

  /// Extensions for [use]
  final Element? useElement;

  /// [rank]
  /// Specifies a preferred order in which to use a set of contacts.
  /// ContactPoints with lower rank values are more preferred than those with
  /// higher rank values.
  final FhirPositiveInt? rank;

  /// Extensions for [rank]
  final Element? rankElement;

  /// [period]
  /// Time period when the contact point was/is in use.
  final Period? period;
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
    if (system != null) {
      json['system'] = system!.toJson();
    }
    if (value?.value != null) {
      json['value'] = value!.toJson();
    }
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    if (use != null) {
      json['use'] = use!.toJson();
    }
    if (rank?.value != null) {
      json['rank'] = rank!.toJson();
    }
    if (rankElement != null) {
      json['_rank'] = rankElement!.toJson();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    return json;
  }

  @override
  ContactPoint clone() => throw UnimplementedError();
  @override
  ContactPoint copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    ContactPointSystem? system,
    Element? systemElement,
    FhirString? value,
    Element? valueElement,
    ContactPointUse? use,
    Element? useElement,
    FhirPositiveInt? rank,
    Element? rankElement,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContactPoint(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      use: use ?? this.use,
      useElement: useElement ?? this.useElement,
      rank: rank ?? this.rank,
      rankElement: rankElement ?? this.rankElement,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
