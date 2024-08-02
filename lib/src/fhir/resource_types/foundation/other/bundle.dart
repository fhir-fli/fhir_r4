// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'bundle.freezed.dart';
part 'bundle.g.dart';

/// [Bundle] A container for a collection of resources.
@freezed
class Bundle with _$Bundle implements DomainResource {
  /// [Bundle] A container for a collection of resources.
  const Bundle._();

  /// [Bundle] A container for a collection of resources.
  ///
  /// [resourceType] This is a Bundle resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [identifier] A persistent identifier for the bundle that won't change as
  ///  a bundle is copied from server to server.
  ///
  /// [type] Indicates the purpose of this bundle - how it is intended to be
  ///  used.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [timestamp] The date/time that the bundle was assembled - i.e. when the
  ///  resources were placed in the bundle.
  ///
  /// [timestampElement] Extensions for timestamp
  ///
  /// [total] If a set of search matches, this is the total number of entries
  /// of type 'match' across all pages in the search.  It does not include
  /// search.mode = 'include' or 'outcome' entries and it does not provide a
  ///  count of the number of entries in the Bundle.
  ///
  /// [totalElement] Extensions for total
  ///
  /// [link] A series of links that provide context to this bundle.
  ///
  /// [entry] An entry in a bundle resource - will either contain a resource or
  ///  information about a resource (transactions and history only).
  ///
  /// [signature] Digital Signature - base64 encoded. XML-DSig or a JWT.
  const factory Bundle({
    @Default(R4ResourceType.Bundle)
    @JsonKey(unknownEnumValue: R4ResourceType.Bundle)

    /// [resourceType] This is a Bundle resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] A persistent identifier for the bundle that won't change as
    ///  a bundle is copied from server to server.
    Identifier? identifier,

    /// [type] Indicates the purpose of this bundle - how it is intended to be
    ///  used.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [timestamp] The date/time that the bundle was assembled - i.e. when the
    ///  resources were placed in the bundle.
    FhirInstant? timestamp,

    /// [timestampElement] Extensions for timestamp
    @JsonKey(name: '_timestamp') PrimitiveElement? timestampElement,

    /// [total] If a set of search matches, this is the total number of entries
    /// of type 'match' across all pages in the search.  It does not include
    /// search.mode = 'include' or 'outcome' entries and it does not provide a
    ///  count of the number of entries in the Bundle.
    FhirUnsignedInt? total,

    /// [totalElement] Extensions for total
    @JsonKey(name: '_total') PrimitiveElement? totalElement,

    /// [link] A series of links that provide context to this bundle.
    List<BundleLink>? link,

    /// [entry] An entry in a bundle resource - will either contain a resource or
    ///  information about a resource (transactions and history only).
    List<BundleEntry>? entry,

    /// [signature] Digital Signature - base64 encoded. XML-DSig or a JWT.
    Signature? signature,
  }) = _Bundle;

  @override
  String get fhirType => 'Bundle';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Bundle.fromYaml(dynamic yaml) => yaml is String
      ? Bundle.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Bundle.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Bundle cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);

  /// Acts like a constructor, returns a [Bundle], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Bundle.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BundleFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [BundleLink] A container for a collection of resources.
@freezed

/// [BundleLink] A container for a collection of resources.
@freezed
class BundleLink with _$BundleLink implements BackboneElement {
  /// [BundleLink] A container for a collection of resources.
  const BundleLink._();

  /// [BundleLink] A container for a collection of resources.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [relation] A name which details the functional use for this link - see
  /// (http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1).
  ///
  /// [relationElement] Extensions for relation
  ///
  /// [url] The reference details for the link.
  ///
  /// [urlElement] Extensions for url
  const factory BundleLink({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [relation] A name which details the functional use for this link - see
    /// (http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1).
    String? relation,

    /// [relationElement] Extensions for relation
    @JsonKey(name: '_relation') PrimitiveElement? relationElement,

    /// [url] The reference details for the link.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,
  }) = _BundleLink;

  @override
  String get fhirType => 'BundleLink';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory BundleLink.fromYaml(dynamic yaml) => yaml is String
      ? BundleLink.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BundleLink.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BundleLink cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory BundleLink.fromJson(Map<String, dynamic> json) =>
      _$BundleLinkFromJson(json);

  /// Acts like a constructor, returns a [BundleLink], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory BundleLink.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BundleLinkFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [BundleEntry] A container for a collection of resources.
@freezed

/// [BundleEntry] A container for a collection of resources.
@freezed
class BundleEntry with _$BundleEntry implements BackboneElement {
  /// [BundleEntry] A container for a collection of resources.
  const BundleEntry._();

  /// [BundleEntry] A container for a collection of resources.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [link] A series of links that provide context to this entry.
  ///
  /// [fullUrl] The Absolute URL for the resource.  The fullUrl SHALL NOT
  /// disagree with the id in the resource - i.e. if the fullUrl is not a
  /// urn:uuid, the URL shall be version-independent URL consistent with the
  /// Resource.id. The fullUrl is a version independent reference to the
  ///  resource. The fullUrl element SHALL have a value except that:
  /// * fullUrl can be empty on a POST (although it does not need to when
  ///  specifying a temporary id for reference in the bundle)
  /// * Results from operations might involve resources that are not identified.
  ///
  /// [fullUrlElement] Extensions for fullUrl
  ///
  /// [resource] The Resource for the entry. The purpose/meaning of the
  ///  resource is determined by the Bundle.type.
  ///
  /// [search] Information about the search process that lead to the creation
  ///  of this entry.
  ///
  /// [request] Additional information about how this entry should be processed
  /// as part of a transaction or batch.  For history, it shows how the entry
  ///  was processed to create the version contained in the entry.
  ///
  /// [response] Indicates the results of processing the corresponding
  /// 'request' entry in the batch or transaction being responded to or what the
  ///  results of an operation where when returning history.
  const factory BundleEntry({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [link] A series of links that provide context to this entry.
    List<BundleLink>? link,

    /// [fullUrl] The Absolute URL for the resource.  The fullUrl SHALL NOT
    /// disagree with the id in the resource - i.e. if the fullUrl is not a
    /// urn:uuid, the URL shall be version-independent URL consistent with the
    /// Resource.id. The fullUrl is a version independent reference to the
    ///  resource. The fullUrl element SHALL have a value except that:
    /// * fullUrl can be empty on a POST (although it does not need to when
    ///  specifying a temporary id for reference in the bundle)
    /// * Results from operations might involve resources that are not identified.
    FhirUri? fullUrl,

    /// [fullUrlElement] Extensions for fullUrl
    @JsonKey(name: '_fullUrl') PrimitiveElement? fullUrlElement,

    /// [resource] The Resource for the entry. The purpose/meaning of the
    ///  resource is determined by the Bundle.type.
    Resource? resource,

    /// [search] Information about the search process that lead to the creation
    ///  of this entry.
    BundleSearch? search,

    /// [request] Additional information about how this entry should be processed
    /// as part of a transaction or batch.  For history, it shows how the entry
    ///  was processed to create the version contained in the entry.
    BundleRequest? request,

    /// [response] Indicates the results of processing the corresponding
    /// 'request' entry in the batch or transaction being responded to or what the
    ///  results of an operation where when returning history.
    BundleResponse? response,
  }) = _BundleEntry;

  @override
  String get fhirType => 'BundleEntry';

  factory BundleEntry.get(String resourcePath, [FhirUri? canonicalBaseUrl]) =>
      BundleEntry(
          fullUrl: canonicalBaseUrl == null
              ? null
              : FhirUri('$canonicalBaseUrl/$resourcePath'),
          request: BundleRequest(
            method: FhirCode('GET'),
            url: FhirUri(resourcePath),
          ));

  factory BundleEntry.post(Resource resource, [FhirUri? canonicalBaseUrl]) =>
      BundleEntry(
          resource: resource,
          fullUrl: canonicalBaseUrl == null
              ? null
              : FhirUri('$canonicalBaseUrl/${resource.path}'),
          request: BundleRequest(
            method: FhirCode('POST'),
            url: FhirUri(resource.path),
          ));

  factory BundleEntry.put(Resource resource, [FhirUri? canonicalBaseUrl]) =>
      BundleEntry(
          resource: resource,
          fullUrl: canonicalBaseUrl == null
              ? null
              : FhirUri('$canonicalBaseUrl/${resource.path}'),
          request: BundleRequest(
            method: FhirCode('PUT'),
            url: FhirUri(resource.path),
          ));

  factory BundleEntry.delete(
    String resourcePath, [
    FhirUri? canonicalBaseUrl,
  ]) =>
      BundleEntry(
          fullUrl: canonicalBaseUrl == null
              ? null
              : FhirUri('$canonicalBaseUrl/$resourcePath'),
          request: BundleRequest(
            method: FhirCode('DELETE'),
            url: FhirUri(resourcePath),
          ));

  factory BundleEntry.patch(Resource resource, [FhirUri? canonicalBaseUrl]) =>
      BundleEntry(
          resource: resource,
          fullUrl: canonicalBaseUrl == null
              ? null
              : FhirUri('$canonicalBaseUrl/${resource.path}'),
          request: BundleRequest(
            method: FhirCode('PATCH'),
            url: FhirUri(resource.path),
          ));

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory BundleEntry.fromYaml(dynamic yaml) => yaml is String
      ? BundleEntry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BundleEntry.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BundleEntry cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory BundleEntry.fromJson(Map<String, dynamic> json) =>
      _$BundleEntryFromJson(json);

  /// Acts like a constructor, returns a [BundleEntry], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory BundleEntry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BundleEntryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [BundleSearch] A container for a collection of resources.
@freezed

/// [BundleSearch] A container for a collection of resources.
@freezed
class BundleSearch with _$BundleSearch implements BackboneElement {
  /// [BundleSearch] A container for a collection of resources.
  const BundleSearch._();

  /// [BundleSearch] A container for a collection of resources.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [mode] Why this entry is in the result set - whether it's included as a
  /// match or because of an _include requirement, or to convey information or
  ///  warning information about the search process.
  ///
  /// [modeElement] Extensions for mode
  ///
  /// [score] When searching, the server's search ranking score for the entry.
  ///
  /// [scoreElement] Extensions for score
  const factory BundleSearch({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [mode] Why this entry is in the result set - whether it's included as a
    /// match or because of an _include requirement, or to convey information or
    ///  warning information about the search process.
    FhirCode? mode,

    /// [modeElement] Extensions for mode
    @JsonKey(name: '_mode') PrimitiveElement? modeElement,

    /// [score] When searching, the server's search ranking score for the entry.
    FhirDecimal? score,

    /// [scoreElement] Extensions for score
    @JsonKey(name: '_score') PrimitiveElement? scoreElement,
  }) = _BundleSearch;

  @override
  String get fhirType => 'BundleSearch';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory BundleSearch.fromYaml(dynamic yaml) => yaml is String
      ? BundleSearch.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BundleSearch.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BundleSearch cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory BundleSearch.fromJson(Map<String, dynamic> json) =>
      _$BundleSearchFromJson(json);

  /// Acts like a constructor, returns a [BundleSearch], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory BundleSearch.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BundleSearchFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [BundleRequest] A container for a collection of resources.
@freezed

/// [BundleRequest] A container for a collection of resources.
@freezed
class BundleRequest with _$BundleRequest implements BackboneElement {
  /// [BundleRequest] A container for a collection of resources.
  const BundleRequest._();

  /// [BundleRequest] A container for a collection of resources.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [method] In a transaction or batch, this is the HTTP action to be
  /// executed for this entry. In a history bundle, this indicates the HTTP
  ///  action that occurred.
  ///
  /// [methodElement] Extensions for method
  ///
  /// [url] The URL for this entry, relative to the root (the address to which
  ///  the request is posted).
  ///
  /// [urlElement] Extensions for url
  ///
  /// [ifNoneMatch] If the ETag values match, return a 304 Not Modified status.
  ///  See the API documentation for ["Conditional Read"](http.html#cread).
  ///
  /// [ifNoneMatchElement] Extensions for ifNoneMatch
  ///
  /// [ifModifiedSince] Only perform the operation if the last updated date
  /// matches. See the API documentation for ["Conditional
  ///  Read"](http.html#cread).
  ///
  /// [ifModifiedSinceElement] Extensions for ifModifiedSince
  ///
  /// [ifMatch] Only perform the operation if the Etag value matches. For more
  /// information, see the API section ["Managing Resource
  ///  Contention"](http.html#concurrency).
  ///
  /// [ifMatchElement] Extensions for ifMatch
  ///
  /// [ifNoneExist] Instruct the server not to perform the create if a
  /// specified resource already exists. For further information, see the API
  /// documentation for ["Conditional Create"](http.html#ccreate). This is just
  /// the query portion of the URL - what follows the "?" (not including the
  ///  "?").
  ///
  /// [ifNoneExistElement] Extensions for ifNoneExist
  const factory BundleRequest({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [method] In a transaction or batch, this is the HTTP action to be
    /// executed for this entry. In a history bundle, this indicates the HTTP
    ///  action that occurred.
    FhirCode? method,

    /// [methodElement] Extensions for method
    @JsonKey(name: '_method') PrimitiveElement? methodElement,

    /// [url] The URL for this entry, relative to the root (the address to which
    ///  the request is posted).
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [ifNoneMatch] If the ETag values match, return a 304 Not Modified status.
    ///  See the API documentation for ["Conditional Read"](http.html#cread).
    String? ifNoneMatch,

    /// [ifNoneMatchElement] Extensions for ifNoneMatch
    @JsonKey(name: '_ifNoneMatch') PrimitiveElement? ifNoneMatchElement,

    /// [ifModifiedSince] Only perform the operation if the last updated date
    /// matches. See the API documentation for ["Conditional
    ///  Read"](http.html#cread).
    FhirInstant? ifModifiedSince,

    /// [ifModifiedSinceElement] Extensions for ifModifiedSince
    @JsonKey(name: '_ifModifiedSince') PrimitiveElement? ifModifiedSinceElement,

    /// [ifMatch] Only perform the operation if the Etag value matches. For more
    /// information, see the API section ["Managing Resource
    ///  Contention"](http.html#concurrency).
    String? ifMatch,

    /// [ifMatchElement] Extensions for ifMatch
    @JsonKey(name: '_ifMatch') PrimitiveElement? ifMatchElement,

    /// [ifNoneExist] Instruct the server not to perform the create if a
    /// specified resource already exists. For further information, see the API
    /// documentation for ["Conditional Create"](http.html#ccreate). This is just
    /// the query portion of the URL - what follows the "?" (not including the
    ///  "?").
    String? ifNoneExist,

    /// [ifNoneExistElement] Extensions for ifNoneExist
    @JsonKey(name: '_ifNoneExist') PrimitiveElement? ifNoneExistElement,
  }) = _BundleRequest;

  @override
  String get fhirType => 'BundleRequest';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory BundleRequest.fromYaml(dynamic yaml) => yaml is String
      ? BundleRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BundleRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BundleRequest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory BundleRequest.fromJson(Map<String, dynamic> json) =>
      _$BundleRequestFromJson(json);

  /// Acts like a constructor, returns a [BundleRequest], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory BundleRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BundleRequestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [BundleResponse] A container for a collection of resources.
@freezed

/// [BundleResponse] A container for a collection of resources.
@freezed
class BundleResponse with _$BundleResponse implements BackboneElement {
  /// [BundleResponse] A container for a collection of resources.
  const BundleResponse._();

  /// [BundleResponse] A container for a collection of resources.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [status] The status code returned by processing this entry. The status
  /// SHALL start with a 3 digit HTTP code (e.g. 404) and may contain the
  ///  standard HTTP description associated with the status code.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [location] The location header created by processing this operation,
  ///  populated if the operation returns a location.
  ///
  /// [locationElement] Extensions for location
  ///
  /// [etag] The Etag for the resource, if the operation for the entry produced
  /// a versioned resource (see [Resource Metadata and
  /// Versioning](http.html#versioning) and [Managing Resource
  ///  Contention](http.html#concurrency)).
  ///
  /// [etagElement] Extensions for etag
  ///
  /// [lastModified] The date/time that the resource was modified on the
  ///  server.
  ///
  /// [lastModifiedElement] Extensions for lastModified
  ///
  /// [outcome] An OperationOutcome containing hints and warnings produced as
  ///  part of processing this entry in a batch or transaction.
  const factory BundleResponse({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [status] The status code returned by processing this entry. The status
    /// SHALL start with a 3 digit HTTP code (e.g. 404) and may contain the
    ///  standard HTTP description associated with the status code.
    String? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [location] The location header created by processing this operation,
    ///  populated if the operation returns a location.
    FhirUri? location,

    /// [locationElement] Extensions for location
    @JsonKey(name: '_location') PrimitiveElement? locationElement,

    /// [etag] The Etag for the resource, if the operation for the entry produced
    /// a versioned resource (see [Resource Metadata and
    /// Versioning](http.html#versioning) and [Managing Resource
    ///  Contention](http.html#concurrency)).
    String? etag,

    /// [etagElement] Extensions for etag
    @JsonKey(name: '_etag') PrimitiveElement? etagElement,

    /// [lastModified] The date/time that the resource was modified on the
    ///  server.
    FhirInstant? lastModified,

    /// [lastModifiedElement] Extensions for lastModified
    @JsonKey(name: '_lastModified') PrimitiveElement? lastModifiedElement,

    /// [outcome] An OperationOutcome containing hints and warnings produced as
    ///  part of processing this entry in a batch or transaction.
    Resource? outcome,
  }) = _BundleResponse;

  @override
  String get fhirType => 'BundleResponse';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory BundleResponse.fromYaml(dynamic yaml) => yaml is String
      ? BundleResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BundleResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BundleResponse cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory BundleResponse.fromJson(Map<String, dynamic> json) =>
      _$BundleResponseFromJson(json);

  /// Acts like a constructor, returns a [BundleResponse], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory BundleResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BundleResponseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
