/// /// [Bundle] A container for a collection of resources.

@freezed
class Bundle with _$Bundle {
  const Bundle._();

  const factory Bundle({
/// /// [resourceType] This is a Bundle resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [identifier] A persistent identifier for the bundle that won't change
/// as a bundle is copied from server to server.

    @JsonKey(name: 'identifier') Identifier? identifier,
/// /// [type] Indicates the purpose of this bundle - how it is intended to be
/// used.

    @JsonKey(name: 'type') FhirCode? type,
/// /// [_type] Extensions for type

    @JsonKey(name: '_type') FhirElement? typeElement,
/// /// [timestamp] The date/time that the bundle was assembled - i.e. when the
/// resources were placed in the bundle.

    @JsonKey(name: 'timestamp') FhirInstant? timestamp,
/// /// [_timestamp] Extensions for timestamp

    @JsonKey(name: '_timestamp') FhirElement? timestampElement,
/// /// [total] If a set of search matches, this is the (potentially estimated)
/// total number of entries of type 'match' across all pages in the search.  It
/// does not include search.mode = 'include' or 'outcome' entries and it does
/// not provide a count of the number of entries in the Bundle.

    @JsonKey(name: 'total') FhirUnsignedInt? total,
/// /// [_total] Extensions for total

    @JsonKey(name: '_total') FhirElement? totalElement,
/// /// [link] A series of links that provide context to this bundle.

    @JsonKey(name: 'link') List<List<Bundle_Link>>? link,
/// /// [entry] An entry in a bundle resource - will either contain a resource
/// or information about a resource (transactions and history only).

    @JsonKey(name: 'entry') List<List<Bundle_Entry>>? entry,
/// /// [signature] Digital Signature - base64 encoded. XML-DSig or a JWS.

    @JsonKey(name: 'signature') Signature? signature,
/// /// [issues] Captures issues and warnings that relate to the construction
/// of the Bundle and the content within it.

    @JsonKey(name: 'issues') ResourceList? issues,
  }) = _$Bundle;

  @override
  String get fhirType => 'Bundle';

  factory Bundle.fromJson(Map<String, dynamic> json) =>
      _$BundleFromJson(json);

  factory Bundle.fromYaml(dynamic yaml) => yaml is String
      ? Bundle.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Bundle.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Bundle cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Bundle.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BundleFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
