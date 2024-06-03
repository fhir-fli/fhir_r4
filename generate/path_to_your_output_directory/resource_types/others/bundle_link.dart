/// /// [Bundle_Link] A container for a collection of resources.

@freezed
class Bundle_Link with _$Bundle_Link {
  const Bundle_Link._();

  const factory Bundle_Link({
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
/// /// [relation] A name which details the functional use for this link - see
/// [http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1](http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1).

    @JsonKey(name: 'relation') FhirCode? relation,
/// /// [_relation] Extensions for relation

    @JsonKey(name: '_relation') FhirElement? relationElement,
/// /// [url] The reference details for the link.

    @JsonKey(name: 'url') FhirUri? url,
/// /// [_url] Extensions for url

    @JsonKey(name: '_url') FhirElement? urlElement,
  }) = _$Bundle_Link;

  @override
  String get fhirType => 'Bundle_Link';

  factory Bundle_Link.fromJson(Map<String, dynamic> json) =>
      _$Bundle_LinkFromJson(json);

  factory Bundle_Link.fromYaml(dynamic yaml) => yaml is String
      ? Bundle_Link.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Bundle_Link.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Bundle_Link cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Bundle_Link.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Bundle_LinkFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
