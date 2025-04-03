import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Signature]
/// A signature along with supporting context. The signature may be a
/// digital signature that is cryptographic in nature, or some other
/// signature acceptable to the domain. This other signature may be as
/// simple as a graphical image representing a hand-written signature, or a
/// signature ceremony Different signature approaches have different
/// utilities.
class Signature extends DataType
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
  /// [Signature]

  const Signature({
    super.id,
    super.extension_,
    required this.type,
    required this.when,
    required this.who,
    this.onBehalfOf,
    this.targetFormat,
    this.sigFormat,
    this.data,
    super.disallowExtensions,
    super.objectPath = 'Signature',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Signature.empty() => Signature(
        type: <Coding>[],
        when: FhirInstant.empty(),
        who: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Signature.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Signature';
    return Signature(
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
      type: (json['type'] as List<dynamic>)
          .map<Coding>(
            (v) => Coding.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      when: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'when',
        FhirInstant.fromJson,
        '$objectPath.when',
      )!,
      who: JsonParser.parseObject<Reference>(
        json,
        'who',
        Reference.fromJson,
        '$objectPath.who',
      )!,
      onBehalfOf: JsonParser.parseObject<Reference>(
        json,
        'onBehalfOf',
        Reference.fromJson,
        '$objectPath.onBehalfOf',
      ),
      targetFormat: JsonParser.parsePrimitive<FhirCode>(
        json,
        'targetFormat',
        FhirCode.fromJson,
        '$objectPath.targetFormat',
      ),
      sigFormat: JsonParser.parsePrimitive<FhirCode>(
        json,
        'sigFormat',
        FhirCode.fromJson,
        '$objectPath.sigFormat',
      ),
      data: JsonParser.parsePrimitive<FhirBase64Binary>(
        json,
        'data',
        FhirBase64Binary.fromJson,
        '$objectPath.data',
      ),
    );
  }

  /// Deserialize [Signature]
  /// from a [String] or [YamlMap] object
  factory Signature.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Signature.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Signature.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Signature '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Signature]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Signature.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Signature.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Signature';

  /// [type]
  /// An indication of the reason that the entity signed this document. This
  /// may be explicitly included as part of the signature information and can
  /// be used when determining accountability for various actions concerning
  /// the document.
  final List<Coding> type;

  /// [when]
  /// When the digital signature was signed.
  final FhirInstant when;

  /// [who]
  /// A reference to an application-usable description of the identity that
  /// signed (e.g. the signature used their private key).
  final Reference who;

  /// [onBehalfOf]
  /// A reference to an application-usable description of the identity that
  /// is represented by the signature.
  final Reference? onBehalfOf;

  /// [targetFormat]
  /// A mime type that indicates the technical format of the target resources
  /// signed by the signature.
  final FhirCode? targetFormat;

  /// [sigFormat]
  /// A mime type that indicates the technical format of the signature.
  /// Important mime types are application/signature+xml for X ML DigSig,
  /// application/jose for JWS, and image/* for a graphical image of a
  /// signature, etc.
  final FhirCode? sigFormat;

  /// [data]
  /// The base64 encoding of the Signature content. When signature is not
  /// recorded electronically this element would be empty.
  final FhirBase64Binary? data;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'type',
      type,
    );
    addField(
      'when',
      when,
    );
    addField(
      'who',
      who,
    );
    addField(
      'onBehalfOf',
      onBehalfOf,
    );
    addField(
      'targetFormat',
      targetFormat,
    );
    addField(
      'sigFormat',
      sigFormat,
    );
    addField(
      'data',
      data,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'type',
      'when',
      'who',
      'onBehalfOf',
      'targetFormat',
      'sigFormat',
      'data',
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
      case 'type':
        fields.addAll(type);
      case 'when':
        fields.add(when);
      case 'who':
        fields.add(who);
      case 'onBehalfOf':
        if (onBehalfOf != null) {
          fields.add(onBehalfOf!);
        }
      case 'targetFormat':
        if (targetFormat != null) {
          fields.add(targetFormat!);
        }
      case 'sigFormat':
        if (sigFormat != null) {
          fields.add(sigFormat!);
        }
      case 'data':
        if (data != null) {
          fields.add(data!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is List<Coding>) {
            // Add all elements from passed list
            final newList = [...type, ...child];
            return copyWith(type: newList);
          } else if (child is Coding) {
            // Add single element to existing list or create new list
            final newList = [
              ...type,
              child,
            ];
            return copyWith(type: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'when':
        {
          if (child is FhirInstant) {
            return copyWith(when: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'who':
        {
          if (child is Reference) {
            return copyWith(who: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onBehalfOf':
        {
          if (child is Reference) {
            return copyWith(onBehalfOf: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetFormat':
        {
          if (child is FhirCode) {
            return copyWith(targetFormat: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sigFormat':
        {
          if (child is FhirCode) {
            return copyWith(sigFormat: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'data':
        {
          if (child is FhirBase64Binary) {
            return copyWith(data: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'type':
        return ['Coding'];
      case 'when':
        return ['FhirInstant'];
      case 'who':
        return ['Reference'];
      case 'onBehalfOf':
        return ['Reference'];
      case 'targetFormat':
        return ['FhirCode'];
      case 'sigFormat':
        return ['FhirCode'];
      case 'data':
        return ['FhirBase64Binary'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Signature]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Signature createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: <Coding>[],
          );
        }
      case 'when':
        {
          return copyWith(
            when: FhirInstant.empty(),
          );
        }
      case 'who':
        {
          return copyWith(
            who: Reference.empty(),
          );
        }
      case 'onBehalfOf':
        {
          return copyWith(
            onBehalfOf: Reference.empty(),
          );
        }
      case 'targetFormat':
        {
          return copyWith(
            targetFormat: FhirCode.empty(),
          );
        }
      case 'sigFormat':
        {
          return copyWith(
            sigFormat: FhirCode.empty(),
          );
        }
      case 'data':
        {
          return copyWith(
            data: FhirBase64Binary.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Signature clear({
    bool id = false,
    bool extension_ = false,
    bool onBehalfOf = false,
    bool targetFormat = false,
    bool sigFormat = false,
    bool data = false,
  }) {
    return Signature(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      type: type,
      when: when,
      who: who,
      onBehalfOf: onBehalfOf ? null : this.onBehalfOf,
      targetFormat: targetFormat ? null : this.targetFormat,
      sigFormat: sigFormat ? null : this.sigFormat,
      data: data ? null : this.data,
    );
  }

  @override
  Signature clone() => throw UnimplementedError();
  @override
  Signature copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<Coding>? type,
    FhirInstant? when,
    Reference? who,
    Reference? onBehalfOf,
    FhirCode? targetFormat,
    FhirCode? sigFormat,
    FhirBase64Binary? data,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Signature(
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
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
      when: when?.copyWith(
            objectPath: '$newObjectPath.when',
          ) ??
          this.when,
      who: who?.copyWith(
            objectPath: '$newObjectPath.who',
          ) ??
          this.who,
      onBehalfOf: onBehalfOf?.copyWith(
            objectPath: '$newObjectPath.onBehalfOf',
          ) ??
          this.onBehalfOf,
      targetFormat: targetFormat?.copyWith(
            objectPath: '$newObjectPath.targetFormat',
          ) ??
          this.targetFormat,
      sigFormat: sigFormat?.copyWith(
            objectPath: '$newObjectPath.sigFormat',
          ) ??
          this.sigFormat,
      data: data?.copyWith(
            objectPath: '$newObjectPath.data',
          ) ??
          this.data,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Signature) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<Coding>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      when,
      o.when,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      who,
      o.who,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      onBehalfOf,
      o.onBehalfOf,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      targetFormat,
      o.targetFormat,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sigFormat,
      o.sigFormat,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      data,
      o.data,
    )) {
      return false;
    }
    return true;
  }
}
