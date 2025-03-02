import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ContactDetail]
/// Specifies contact information for a person or organization.
class ContactDetail extends DataType
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
  /// [ContactDetail]

  const ContactDetail({
    super.id,
    super.extension_,
    this.name,
    this.telecom,
    super.disallowExtensions,
    super.objectPath = 'ContactDetail',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContactDetail.empty() => const ContactDetail();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContactDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'ContactDetail';
    return ContactDetail(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.telecom',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ContactDetail]
  /// from a [String] or [YamlMap] object
  factory ContactDetail.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContactDetail.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContactDetail.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContactDetail '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContactDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContactDetail.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContactDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContactDetail';

  /// [name]
  /// The name of an individual to contact.
  final FhirString? name;

  /// [telecom]
  /// The contact details for the individual (if a name was provided) or the
  /// organization.
  final List<ContactPoint>? telecom;
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
    addField('name', name);
    addField('telecom', telecom);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'name',
      'telecom',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'telecom':
        if (telecom != null) {
          fields.addAll(telecom!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'telecom':
        {
          if (child is List<ContactPoint>) {
            return copyWith(telecom: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'name':
        return ['FhirString'];
      case 'telecom':
        return ['ContactPoint'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContactDetail]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContactDetail createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'name':
        {
          return copyWith(name: FhirString.empty());
        }
      case 'telecom':
        {
          return copyWith(telecom: <ContactPoint>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContactDetail clone() => throw UnimplementedError();
  @override
  ContactDetail copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? name,
    List<ContactPoint>? telecom,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return ContactDetail(
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
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      telecom: telecom
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.telecom',
                ),
              )
              .toList() ??
          this.telecom,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContactDetail) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!listEquals<ContactPoint>(
      telecom,
      o.telecom,
    )) {
      return false;
    }
    return true;
  }
}
