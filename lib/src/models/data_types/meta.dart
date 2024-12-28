import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [FhirMeta]
/// The metadata about a resource. This is content in the resource that is
/// maintained by the infrastructure. Changes to the content might not
/// always be associated with version changes to the resource.
class FhirMeta extends DataType
    implements
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput {
  /// Primary constructor for
  /// [FhirMeta]

  const FhirMeta({
    super.id,
    super.extension_,
    this.versionId,
    this.lastUpdated,
    this.source,
    this.profile,
    this.security,
    this.tag,
    super.disallowExtensions,
    super.objectPath = 'FhirMeta',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirMeta.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'FhirMeta';
    return FhirMeta(
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
      versionId: JsonParser.parsePrimitive<FhirId>(
        json,
        'versionId',
        FhirId.fromJson,
        '$objectPath.versionId',
      ),
      lastUpdated: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'lastUpdated',
        FhirInstant.fromJson,
        '$objectPath.lastUpdated',
      ),
      source: JsonParser.parsePrimitive<FhirUri>(
        json,
        'source',
        FhirUri.fromJson,
        '$objectPath.source',
      ),
      profile: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
        '$objectPath.profile',
      ),
      security: (json['security'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.security',
              },
            ),
          )
          .toList(),
      tag: (json['tag'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.tag',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [FhirMeta]
  /// from a [String] or [YamlMap] object
  factory FhirMeta.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FhirMeta.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FhirMeta.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FhirMeta '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FhirMeta]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirMeta.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return FhirMeta.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Meta';

  /// [versionId]
  /// The version specific identifier, as it appears in the version portion
  /// of the URL. This value changes when the resource is created, updated,
  /// or deleted.
  final FhirId? versionId;

  /// [lastUpdated]
  /// When the resource last changed - e.g. when the version changed.
  final FhirInstant? lastUpdated;

  /// [source]
  /// A uri that identifies the source system of the resource. This provides
  /// a minimal amount of [Provenance](provenance.html#) information that can
  /// be used to track or differentiate the source of information in the
  /// resource. The source may identify another FHIR server, document,
  /// message, database, etc.
  final FhirUri? source;

  /// [profile]
  /// A list of profiles (references to
  /// [StructureDefinition](structuredefinition.html#) resources) that this
  /// resource claims to conform to. The URL is a reference to
  /// [StructureDefinition.url](structuredefinition-definitions.html#StructureDefinition.url).
  final List<FhirCanonical>? profile;

  /// [security]
  /// Security labels applied to this resource. These tags connect specific
  /// resources to the overall security policy and infrastructure.
  final List<Coding>? security;

  /// [tag]
  /// Tags applied to this resource. Tags are intended to be used to identify
  /// and relate resources to process and workflow, and applications are not
  /// required to consider the tags when interpreting the meaning of a
  /// resource.
  final List<Coding>? tag;
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
    addField('versionId', versionId);
    addField('lastUpdated', lastUpdated);
    addField('source', source);
    addField('profile', profile);
    addField('security', security);
    addField('tag', tag);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'versionId',
      'lastUpdated',
      'source',
      'profile',
      'security',
      'tag',
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
      case 'versionId':
        if (versionId != null) {
          fields.add(versionId!);
        }
      case 'lastUpdated':
        if (lastUpdated != null) {
          fields.add(lastUpdated!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'profile':
        if (profile != null) {
          fields.addAll(profile!);
        }
      case 'security':
        if (security != null) {
          fields.addAll(security!);
        }
      case 'tag':
        if (tag != null) {
          fields.addAll(tag!);
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
  FhirMeta clone() => throw UnimplementedError();
  @override
  FhirMeta copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirId? versionId,
    FhirInstant? lastUpdated,
    FhirUri? source,
    List<FhirCanonical>? profile,
    List<Coding>? security,
    List<Coding>? tag,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return FhirMeta(
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
      versionId: versionId?.copyWith(
            objectPath: '$newObjectPath.versionId',
          ) ??
          this.versionId,
      lastUpdated: lastUpdated?.copyWith(
            objectPath: '$newObjectPath.lastUpdated',
          ) ??
          this.lastUpdated,
      source: source?.copyWith(
            objectPath: '$newObjectPath.source',
          ) ??
          this.source,
      profile: profile
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.profile',
                ),
              )
              .toList() ??
          this.profile,
      security: security
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.security',
                ),
              )
              .toList() ??
          this.security,
      tag: tag
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.tag',
                ),
              )
              .toList() ??
          this.tag,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! FhirMeta) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (id != o.id) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (versionId != o.versionId) {
      return false;
    }
    if (lastUpdated != o.lastUpdated) {
      return false;
    }
    if (source != o.source) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      profile,
      o.profile,
    )) {
      return false;
    }
    if (!listEquals<Coding>(
      security,
      o.security,
    )) {
      return false;
    }
    if (!listEquals<Coding>(
      tag,
      o.tag,
    )) {
      return false;
    }
    return true;
  }
}
