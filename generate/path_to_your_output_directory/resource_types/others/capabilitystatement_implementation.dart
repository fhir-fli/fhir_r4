/// /// [CapabilityStatement_Implementation] A Capability Statement documents a
/// set of capabilities (behaviors) of a FHIR Server or Client for a particular
/// version of FHIR that may be used as a statement of actual server
/// functionality or a statement of required or desired server implementation.

@freezed
class CapabilityStatement_Implementation with _$CapabilityStatement_Implementation {
  const CapabilityStatement_Implementation._();

  const factory CapabilityStatement_Implementation({
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
/// /// [description] Information about the specific installation that this
/// capability statement relates to.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [url] An absolute base URL for the implementation.  This forms the base
/// for REST interfaces as well as the mailbox and document interfaces.

    @JsonKey(name: 'url') FhirUrl? url,
/// /// [_url] Extensions for url

    @JsonKey(name: '_url') FhirElement? urlElement,
/// /// [custodian] The organization responsible for the management of the
/// instance and oversight of the data on the server at the specified URL.

    @JsonKey(name: 'custodian') Reference? custodian,
  }) = _$CapabilityStatement_Implementation;

  @override
  String get fhirType => 'CapabilityStatement_Implementation';

  factory CapabilityStatement_Implementation.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_ImplementationFromJson(json);

  factory CapabilityStatement_Implementation.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatement_Implementation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatement_Implementation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatement_Implementation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CapabilityStatement_Implementation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatement_ImplementationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
