import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show yamlMapToJson, yamlToJson, StringExtensionForFHIR;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [AttachmentBuilder]
/// For referring to data content defined in other formats.
class AttachmentBuilder extends DataTypeBuilder
    implements
        ValueXAdministrableProductDefinitionPropertyBuilder,
        TargetXCitationRelatesToBuilder,
        TargetXCitationRelatesTo1Builder,
        ValueXClaimSupportingInfoBuilder,
        ContentXCommunicationPayloadBuilder,
        ContentXCommunicationRequestPayloadBuilder,
        SourceXConsentBuilder,
        LegallyBindingXContractBuilder,
        ValueXContractAnswerBuilder,
        ContentXContractFriendlyBuilder,
        ContentXContractLegalBuilder,
        ContentXContractRuleBuilder,
        ValueXExplanationOfBenefitSupportingInfoBuilder,
        ValueXManufacturedItemDefinitionPropertyBuilder,
        ValueXMedicinalProductDefinitionCharacteristicBuilder,
        ValueXNutritionProductProductCharacteristicBuilder,
        ValueXPackagedProductDefinitionPropertyBuilder,
        ValueXParametersParameterBuilder,
        ValueXQuestionnaireInitialBuilder,
        ValueXQuestionnaireResponseAnswerBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXSubstanceDefinitionPropertyBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Primary constructor for
  /// [AttachmentBuilder]

  AttachmentBuilder({
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
    super.objectPath = 'AttachmentBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AttachmentBuilder.empty() => AttachmentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AttachmentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Attachment';
    return AttachmentBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      contentType: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'contentType',
        FhirCodeBuilder.fromJson,
        '$objectPath.contentType',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      data: JsonParser.parsePrimitive<FhirBase64BinaryBuilder>(
        json,
        'data',
        FhirBase64BinaryBuilder.fromJson,
        '$objectPath.data',
      ),
      url: JsonParser.parsePrimitive<FhirUrlBuilder>(
        json,
        'url',
        FhirUrlBuilder.fromJson,
        '$objectPath.url',
      ),
      size: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'size',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.size',
      ),
      hash: JsonParser.parsePrimitive<FhirBase64BinaryBuilder>(
        json,
        'hash',
        FhirBase64BinaryBuilder.fromJson,
        '$objectPath.hash',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      creation: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'creation',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.creation',
      ),
    );
  }

  /// Deserialize [AttachmentBuilder]
  /// from a [String] or [YamlMap] object
  factory AttachmentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AttachmentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AttachmentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AttachmentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AttachmentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AttachmentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AttachmentBuilder.fromJson(json);
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
  FhirCodeBuilder? contentType;

  /// [language]
  /// The human language of the content. The value can be any valid value
  /// according to BCP 47.
  CommonLanguagesBuilder? language;

  /// [data]
  /// The actual data of the attachment - a sequence of bytes, base64
  /// encoded.
  FhirBase64BinaryBuilder? data;

  /// [url]
  /// A location where the data can be accessed.
  FhirUrlBuilder? url;

  /// [size]
  /// The number of bytes of data that make up this attachment (before base64
  /// encoding, if that is done).
  FhirUnsignedIntBuilder? size;

  /// [hash]
  /// The calculated hash of the data using SHA-1. Represented using base64.
  FhirBase64BinaryBuilder? hash;

  /// [title]
  /// A label or set of text to display in place of the data.
  FhirStringBuilder? title;

  /// [creation]
  /// The date that the attachment was first created.
  FhirDateTimeBuilder? creation;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contentType':
        {
          if (child is FhirCodeBuilder) {
            contentType = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'data':
        {
          if (child is FhirBase64BinaryBuilder) {
            data = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUrlBuilder) {
            url = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'size':
        {
          if (child is FhirUnsignedIntBuilder) {
            size = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'hash':
        {
          if (child is FhirBase64BinaryBuilder) {
            hash = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'title':
        {
          if (child is FhirStringBuilder) {
            title = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'creation':
        {
          if (child is FhirDateTimeBuilder) {
            creation = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'contentType':
        return ['FhirCodeBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'data':
        return ['FhirBase64BinaryBuilder'];
      case 'url':
        return ['FhirUrlBuilder'];
      case 'size':
        return ['FhirUnsignedIntBuilder'];
      case 'hash':
        return ['FhirBase64BinaryBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'creation':
        return ['FhirDateTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AttachmentBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'contentType':
        {
          contentType = FhirCodeBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'data':
        {
          data = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'url':
        {
          url = FhirUrlBuilder.empty();
          return;
        }
      case 'size':
        {
          size = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'hash':
        {
          hash = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'creation':
        {
          creation = FhirDateTimeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool contentType = false,
    bool language = false,
    bool data = false,
    bool url = false,
    bool size = false,
    bool hash = false,
    bool title = false,
    bool creation = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (contentType) this.contentType = null;
    if (language) this.language = null;
    if (data) this.data = null;
    if (url) this.url = null;
    if (size) this.size = null;
    if (hash) this.hash = null;
    if (title) this.title = null;
    if (creation) this.creation = null;
  }

  @override
  AttachmentBuilder clone() => throw UnimplementedError();
  @override
  AttachmentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirCodeBuilder? contentType,
    CommonLanguagesBuilder? language,
    FhirBase64BinaryBuilder? data,
    FhirUrlBuilder? url,
    FhirUnsignedIntBuilder? size,
    FhirBase64BinaryBuilder? hash,
    FhirStringBuilder? title,
    FhirDateTimeBuilder? creation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = AttachmentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      contentType: contentType ?? this.contentType,
      language: language ?? this.language,
      data: data ?? this.data,
      url: url ?? this.url,
      size: size ?? this.size,
      hash: hash ?? this.hash,
      title: title ?? this.title,
      creation: creation ?? this.creation,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! AttachmentBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contentType,
      o.contentType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      data,
      o.data,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      size,
      o.size,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      hash,
      o.hash,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      creation,
      o.creation,
    )) {
      return false;
    }
    return true;
  }
}
