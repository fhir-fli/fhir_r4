import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Linkage]
/// Identifies two or more records (resource instances) that refer to the
/// same real-world "occurrence".
class Linkage extends DomainResource {
  /// Primary constructor for
  /// [Linkage]

  const Linkage({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.active,
    this.author,
    required this.item,
  }) : super(
          resourceType: R4ResourceType.Linkage,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Linkage.fromJson(
    Map<String, dynamic> json,
  ) {
    return Linkage(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      active: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'active',
        FhirBoolean.fromJson,
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
      ),
      item: (json['item'] as List<dynamic>)
          .map<LinkageItem>(
            (v) => LinkageItem.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Linkage]
  /// from a [String] or [YamlMap] object
  factory Linkage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Linkage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Linkage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Linkage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Linkage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Linkage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Linkage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Linkage';

  /// [active]
  /// Indicates whether the asserted set of linkages are considered to be "in
  /// effect".
  final FhirBoolean? active;

  /// [author]
  /// Identifies the user or organization responsible for asserting the
  /// linkages as well as the user or organization who establishes the
  /// context in which the nature of each linkage is evaluated.
  final Reference? author;

  /// [item]
  /// Identifies which record considered as the reference to the same
  /// real-world occurrence as well as how the items should be evaluated
  /// within the collection of linked items.
  final List<LinkageItem> item;
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

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (active != null) {
      addField('active', active);
    }

    if (author != null) {
      json['author'] = author!.toJson();
    }

    if (item.isNotEmpty) {
      json['item'] = item.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  Linkage clone() => throw UnimplementedError();
  @override
  Linkage copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? active,
    Reference? author,
    List<LinkageItem>? item,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Linkage(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      active: active ?? this.active,
      author: author ?? this.author,
      item: item ?? this.item,
    );
  }
}

/// [LinkageItem]
/// Identifies which record considered as the reference to the same
/// real-world occurrence as well as how the items should be evaluated
/// within the collection of linked items.
class LinkageItem extends BackboneElement {
  /// Primary constructor for
  /// [LinkageItem]

  const LinkageItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.resource,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory LinkageItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return LinkageItem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<LinkageType>(
        json,
        'type',
        LinkageType.fromJson,
      )!,
      resource: JsonParser.parseObject<Reference>(
        json,
        'resource',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [LinkageItem]
  /// from a [String] or [YamlMap] object
  factory LinkageItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return LinkageItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return LinkageItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'LinkageItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [LinkageItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory LinkageItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return LinkageItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'LinkageItem';

  /// [type]
  /// Distinguishes which item is "source of truth" (if any) and which items
  /// are no longer considered to be current representations.
  final LinkageType type;

  /// [resource]
  /// The resource instance being linked as part of the group.
  final Reference resource;
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

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    json['resource'] = resource.toJson();

    return json;
  }

  @override
  LinkageItem clone() => throw UnimplementedError();
  @override
  LinkageItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    LinkageType? type,
    Reference? resource,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return LinkageItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      resource: resource ?? this.resource,
    );
  }
}
