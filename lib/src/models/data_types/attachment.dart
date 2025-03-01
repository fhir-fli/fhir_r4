import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Attachment]
/// For referring to data content defined in other formats.
class Attachment extends DataType
    implements
        ValueXAdministrableProductDefinitionProperty,
        TargetXCitationRelatesTo,
        TargetXCitationRelatesTo1,
        ValueXClaimSupportingInfo,
        ContentXCommunicationPayload,
        ContentXCommunicationRequestPayload,
        SourceXConsent,
        LegallyBindingXContract,
        ValueXContractAnswer,
        ContentXContractFriendly,
        ContentXContractLegal,
        ContentXContractRule,
        ValueXExplanationOfBenefitSupportingInfo,
        ValueXManufacturedItemDefinitionProperty,
        ValueXMedicinalProductDefinitionCharacteristic,
        ValueXNutritionProductProductCharacteristic,
        ValueXPackagedProductDefinitionProperty,
        ValueXParametersParameter,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        DefaultValueXStructureMapSource,
        ValueXSubstanceDefinitionProperty,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [Attachment]

  const Attachment({
    super.id,
    super.extension_,
    this.contentType,
    this.language,
    this.data,
    this.url,
    this.size,
    this.hash,
    this.title,
    this.creation,
    super.disallowExtensions,
    super.objectPath = 'Attachment',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Attachment.empty() => const Attachment();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Attachment.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Attachment';
    return Attachment(
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
      contentType: JsonParser.parsePrimitive<FhirCode>(
        json,
        'contentType',
        FhirCode.fromJson,
        '$objectPath.contentType',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      data: JsonParser.parsePrimitive<FhirBase64Binary>(
        json,
        'data',
        FhirBase64Binary.fromJson,
        '$objectPath.data',
      ),
      url: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'url',
        FhirUrl.fromJson,
        '$objectPath.url',
      ),
      size: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'size',
        FhirUnsignedInt.fromJson,
        '$objectPath.size',
      ),
      hash: JsonParser.parsePrimitive<FhirBase64Binary>(
        json,
        'hash',
        FhirBase64Binary.fromJson,
        '$objectPath.hash',
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      creation: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'creation',
        FhirDateTime.fromJson,
        '$objectPath.creation',
      ),
    );
  }

  /// Deserialize [Attachment]
  /// from a [String] or [YamlMap] object
  factory Attachment.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Attachment.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Attachment.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Attachment '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Attachment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Attachment.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Attachment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Attachment';

  /// [contentType]
  /// Identifies the type of the data in the attachment and allows a method
  /// to be chosen to interpret or render the data. Includes mime type
  /// parameters such as charset where appropriate.
  final FhirCode? contentType;

  /// [language]
  /// The human language of the content. The value can be any valid value
  /// according to BCP 47.
  final CommonLanguages? language;

  /// [data]
  /// The actual data of the attachment - a sequence of bytes, base64
  /// encoded.
  final FhirBase64Binary? data;

  /// [url]
  /// A location where the data can be accessed.
  final FhirUrl? url;

  /// [size]
  /// The number of bytes of data that make up this attachment (before base64
  /// encoding, if that is done).
  final FhirUnsignedInt? size;

  /// [hash]
  /// The calculated hash of the data using SHA-1. Represented using base64.
  final FhirBase64Binary? hash;

  /// [title]
  /// A label or set of text to display in place of the data.
  final FhirString? title;

  /// [creation]
  /// The date that the attachment was first created.
  final FhirDateTime? creation;
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
    addField('contentType', contentType);
    addField('language', language);
    addField('data', data);
    addField('url', url);
    addField('size', size);
    addField('hash', hash);
    addField('title', title);
    addField('creation', creation);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'contentType',
      'language',
      'data',
      'url',
      'size',
      'hash',
      'title',
      'creation',
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
      case 'contentType':
        if (contentType != null) {
          fields.add(contentType!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'data':
        if (data != null) {
          fields.add(data!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'size':
        if (size != null) {
          fields.add(size!);
        }
      case 'hash':
        if (hash != null) {
          fields.add(hash!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'creation':
        if (creation != null) {
          fields.add(creation!);
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
      case 'contentType':
        {
          if (child is FhirCode) {
            return copyWith(contentType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'data':
        {
          if (child is FhirBase64Binary) {
            return copyWith(data: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'url':
        {
          if (child is FhirUrl) {
            return copyWith(url: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'size':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(size: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'hash':
        {
          if (child is FhirBase64Binary) {
            return copyWith(hash: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'creation':
        {
          if (child is FhirDateTime) {
            return copyWith(creation: child);
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
      case 'contentType':
        return ['FhirCode'];
      case 'language':
        return ['FhirCode'];
      case 'data':
        return ['FhirBase64Binary'];
      case 'url':
        return ['FhirUrl'];
      case 'size':
        return ['FhirUnsignedInt'];
      case 'hash':
        return ['FhirBase64Binary'];
      case 'title':
        return ['FhirString'];
      case 'creation':
        return ['FhirDateTime'];
      default:
        return <String>[];
    }
  }

  @override
  Attachment clone() => throw UnimplementedError();
  @override
  Attachment copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? contentType,
    CommonLanguages? language,
    FhirBase64Binary? data,
    FhirUrl? url,
    FhirUnsignedInt? size,
    FhirBase64Binary? hash,
    FhirString? title,
    FhirDateTime? creation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Attachment(
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
      contentType: contentType?.copyWith(
            objectPath: '$newObjectPath.contentType',
          ) ??
          this.contentType,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      data: data?.copyWith(
            objectPath: '$newObjectPath.data',
          ) ??
          this.data,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      size: size?.copyWith(
            objectPath: '$newObjectPath.size',
          ) ??
          this.size,
      hash: hash?.copyWith(
            objectPath: '$newObjectPath.hash',
          ) ??
          this.hash,
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      creation: creation?.copyWith(
            objectPath: '$newObjectPath.creation',
          ) ??
          this.creation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Attachment) {
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
    if (!equalsDeepWithNull(contentType, o.contentType)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(data, o.data)) {
      return false;
    }
    if (!equalsDeepWithNull(url, o.url)) {
      return false;
    }
    if (!equalsDeepWithNull(size, o.size)) {
      return false;
    }
    if (!equalsDeepWithNull(hash, o.hash)) {
      return false;
    }
    if (!equalsDeepWithNull(title, o.title)) {
      return false;
    }
    if (!equalsDeepWithNull(creation, o.creation)) {
      return false;
    }
    return true;
  }
}
