/// /// [Bundle_Entry] A container for a collection of resources.

@freezed
class Bundle_Entry with _$Bundle_Entry {
  const Bundle_Entry._();

  const factory Bundle_Entry({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [link] A series of links that provide context to this entry.

    @JsonKey(name: 'link') List<List<Bundle_Link>>? link,
/// /// [fullUrl] The Absolute URL for the resource. Except for transactions
/// and batches, each entry in a Bundle must have a fullUrl. The fullUrl SHALL
/// NOT disagree with the id in the resource - i.e. if the fullUrl is not a
/// urn:uuid, the URL shall be version-independent URL consistent with the
/// Resource.id. The fullUrl is a version independent reference to the
/// resource. Even when not required, fullUrl MAY be set to a urn:uuid to allow
/// referencing entries in a transaction. The fullUrl can be an arbitrary URI
/// and is not limited to urn:uuid, urn:oid, http, and https. The fullUrl
/// element SHALL have a value except when: 
* invoking a create
* invoking or
/// responding to an operation where the body is not a single identified
/// resource
* invoking or returning the results of a search or history
/// operation.

    @JsonKey(name: 'fullUrl') FhirUri? fullUrl,
/// /// [_fullUrl] Extensions for fullUrl

    @JsonKey(name: '_fullUrl') FhirElement? fullUrlElement,
/// /// [resource] The Resource for the entry. The purpose/meaning of the
/// resource is determined by the Bundle.type. This is allowed to be a
/// Parameters resource if and only if it is referenced by something else
/// within the Bundle that provides context/meaning.

    @JsonKey(name: 'resource') ResourceList? resource,
/// /// [search] Information about the search process that lead to the creation
/// of this entry.

    @JsonKey(name: 'search') Bundle_Search? search,
/// /// [request] Additional information about how this entry should be
/// processed as part of a transaction or batch.  For history, it shows how the
/// entry was processed to create the version contained in the entry.

    @JsonKey(name: 'request') Bundle_Request? request,
/// /// [response] Indicates the results of processing the corresponding
/// 'request' entry in the batch or transaction being responded to or what the
/// results of an operation where when returning history.

    @JsonKey(name: 'response') Bundle_Response? response,
  }) = _$Bundle_Entry;

  @override
  String get fhirType => 'Bundle_Entry';

  factory Bundle_Entry.fromJson(Map<String, dynamic> json) =>
      _$Bundle_EntryFromJson(json);

  factory Bundle_Entry.fromYaml(dynamic yaml) => yaml is String
      ? Bundle_Entry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Bundle_Entry.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Bundle_Entry cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Bundle_Entry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Bundle_EntryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
