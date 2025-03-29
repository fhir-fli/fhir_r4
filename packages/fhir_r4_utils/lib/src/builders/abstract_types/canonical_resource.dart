import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart' show R4ResourceType;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [CanonicalResourceBuilder] Base definition for all FHIR elements.
abstract class CanonicalResourceBuilder extends DomainResourceBuilder {
  /// Main constructor for [CanonicalResourceBuilder]
  CanonicalResourceBuilder({
    required super.resourceType,
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.version,
    this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.objectPath = 'CanonicalResource',
  });

  /// Creates an empty [CanonicalResourceBuilder] object
  factory CanonicalResourceBuilder.empty() => throw UnimplementedError();

  /// Factory constructor for [CanonicalResourceBuilder] that takes in a
  /// [Map<String, dynamic>] and returns a [CanonicalResourceBuilder]
  factory CanonicalResourceBuilder.fromJson(Map<String, dynamic> json) =>
      DomainResourceBuilder.fromJson(json) as CanonicalResourceBuilder;

  @override
  String get fhirType => 'CanonicalResource';

  /// An absolute URI that is used to identify this canonical resource.
  FhirUriBuilder? url;

  /// The identifier for the specific version of the canonical resource.
  FhirStringBuilder? version;

  /// The publication status of the canonical resource.
  PublicationStatusBuilder? status;

  /// Indicates if the canonical resource is for testing purposes only.
  FhirBooleanBuilder? experimental;

  /// The date when the canonical resource was published.
  FhirDateTimeBuilder? date;

  /// The publisher of the canonical resource.
  FhirStringBuilder? publisher;

  /// Contact details for the publisher.
  List<ContactDetailBuilder>? contact;

  /// A description of the canonical resource.
  FhirMarkdownBuilder? description;

  /// The contexts the canonical resource is intended to support.
  List<UsageContextBuilder>? useContext;

  /// Legal or geographic regions in which the canonical resource is intended
  /// to be used.
  List<CodeableConceptBuilder>? jurisdiction;

  /// Converts a [CanonicalResourceBuilder] into a [Map<String, dynamic>].
  @override
  Map<String, dynamic> toJson() {
    final val = super.toJson();

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('url', url?.toJson());
    writeNotNull('version', version);
    writeNotNull('status', status?.toJson());
    writeNotNull('experimental', experimental);
    writeNotNull('date', date?.toJson());
    writeNotNull('publisher', publisher);
    writeNotNull('contact', contact?.map((e) => e.toJson()).toList());
    writeNotNull('description', description?.toJson());
    writeNotNull('useContext', useContext?.map((e) => e.toJson()).toList());
    writeNotNull('jurisdiction', jurisdiction?.map((e) => e.toJson()).toList());
    return val;
  }

  /// Factory constructor for [CanonicalResourceBuilder]
  /// that takes in a [YamlMap].
  static CanonicalResourceBuilder fromYaml(dynamic yaml) => yaml is String
      ? DomainResourceBuilder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        ) as CanonicalResourceBuilder
      : yaml is YamlMap
          ? DomainResourceBuilder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            ) as CanonicalResourceBuilder
          : throw ArgumentError(
              'CanonicalResource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CanonicalResourceBuilder]
  /// from a JSON-encoded string.
  static CanonicalResourceBuilder fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DomainResourceBuilder.fromJson(json) as CanonicalResourceBuilder;
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Returns a [R4ResourceType] from a [String]
  static R4ResourceType? resourceTypeFromString(String type) =>
      R4ResourceType.fromString(type);

  /// Returns a [String] from a [R4ResourceType]
  static String resourceTypeToString(R4ResourceType type) => type.toString();

  @override
  CanonicalResourceBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? url,
    FhirStringBuilder? version,
    PublicationStatusBuilder? status,
    FhirBooleanBuilder? experimental,
    FhirDateTimeBuilder? date,
    FhirStringBuilder? publisher,
    List<ContactDetailBuilder>? contact,
    FhirMarkdownBuilder? description,
    List<UsageContextBuilder>? useContext,
    List<CodeableConceptBuilder>? jurisdiction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  });

  /// Retrieves the type of the object by element name.
  @override
  List<String> typeByElementName(String elementName) {
    return <String>[];
  }

  /// Creates an empty property in the object
  @override
  void createProperty(String propertyName);

  @override
  void clear();
}
