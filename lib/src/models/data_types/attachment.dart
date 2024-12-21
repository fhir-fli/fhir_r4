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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Attachment.fromJson(
    Map<String, dynamic> json,
  ) {
    return Attachment(
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
      contentType: JsonParser.parsePrimitive<FhirCode>(
        json,
        'contentType',
        FhirCode.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      data: JsonParser.parsePrimitive<FhirBase64Binary>(
        json,
        'data',
        FhirBase64Binary.fromJson,
      ),
      url: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'url',
        FhirUrl.fromJson,
      ),
      size: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'size',
        FhirUnsignedInt.fromJson,
      ),
      hash: JsonParser.parsePrimitive<FhirBase64Binary>(
        json,
        'hash',
        FhirBase64Binary.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      creation: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'creation',
        FhirDateTime.fromJson,
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
    if (json is Map<String, Object?>) {
      return Attachment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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

    if (contentType != null) {
      addField('contentType', contentType);
    }

    if (language != null) {
      addField('language', language);
    }

    if (data != null) {
      addField('data', data);
    }

    if (url != null) {
      addField('url', url);
    }

    if (size != null) {
      addField('size', size);
    }

    if (hash != null) {
      addField('hash', hash);
    }

    if (title != null) {
      addField('title', title);
    }

    if (creation != null) {
      addField('creation', creation);
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Attachment(
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
  }
}
