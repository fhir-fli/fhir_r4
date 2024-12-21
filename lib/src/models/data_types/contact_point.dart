import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ContactPoint]
/// Details for all kinds of technology mediated contact points for a
/// person or organization, including telephone, email, etc.
class ContactPoint extends DataType
    implements
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [ContactPoint]

  const ContactPoint({
    super.id,
    super.extension_,
    this.system,
    this.value,
    this.use,
    this.rank,
    this.period,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContactPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContactPoint(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      system: (json['system'] != null || json['_system'] != null)
          ? ContactPointSystem.fromJson({
              'value': json['system'],
              '_value': json['_system'],
            })
          : null,
      value: (json['value'] != null || json['_value'] != null)
          ? FhirString.fromJson({
              'value': json['value'],
              '_value': json['_value'],
            })
          : null,
      use: (json['use'] != null || json['_use'] != null)
          ? ContactPointUse.fromJson({
              'value': json['use'],
              '_value': json['_use'],
            })
          : null,
      rank: (json['rank'] != null || json['_rank'] != null)
          ? FhirPositiveInt.fromJson({
              'value': json['rank'],
              '_value': json['_rank'],
            })
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ContactPoint]
  /// from a [String] or [YamlMap] object
  factory ContactPoint.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContactPoint.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContactPoint.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContactPoint '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContactPoint]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContactPoint.fromJsonString(
    String source,
  ) {
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

  /// [value]
  /// The actual contact point details, in a form that is meaningful to the
  /// designated communication system (i.e. phone number or email address).
  final FhirString? value;

  /// [use]
  /// Identifies the purpose for the contact point.
  final ContactPointUse? use;

  /// [rank]
  /// Specifies a preferred order in which to use a set of contacts.
  /// ContactPoints with lower rank values are more preferred than those with
  /// higher rank values.
  final FhirPositiveInt? rank;

  /// [period]
  /// Time period when the contact point was/is in use.
  final Period? period;
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

    if (system != null) {
      addField('system', system);
    }

    if (value != null) {
      addField('value', value);
    }

    if (use != null) {
      addField('use', use);
    }

    if (rank != null) {
      addField('rank', rank);
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
    FhirString? value,
    ContactPointUse? use,
    FhirPositiveInt? rank,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ContactPoint(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      system: system ?? this.system,
      value: value ?? this.value,
      use: use ?? this.use,
      rank: rank ?? this.rank,
      period: period ?? this.period,
    );
  }
}
