/// /// [CapabilityStatement_Document] A Capability Statement documents a set
/// of capabilities (behaviors) of a FHIR Server or Client for a particular
/// version of FHIR that may be used as a statement of actual server
/// functionality or a statement of required or desired server implementation.

@freezed
class CapabilityStatement_Document with _$CapabilityStatement_Document {
  const CapabilityStatement_Document._();

  const factory CapabilityStatement_Document({
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
/// /// [mode] Mode of this document declaration - whether an application is a
/// producer or consumer.

    @JsonKey(name: 'mode') FhirCode? mode,
/// /// [_mode] Extensions for mode

    @JsonKey(name: '_mode') FhirElement? modeElement,
/// /// [documentation] A description of how the application supports or uses
/// the specified document profile.  For example, when documents are created,
/// what action is taken with consumed documents, etc.

    @JsonKey(name: 'documentation') FhirMarkdown? documentation,
/// /// [_documentation] Extensions for documentation

    @JsonKey(name: '_documentation') FhirElement? documentationElement,
/// /// [profile] A profile on the document Bundle that constrains which
/// resources are present, and their contents.

    @JsonKey(name: 'profile') FhirCanonical? profile,
  }) = _$CapabilityStatement_Document;

  @override
  String get fhirType => 'CapabilityStatement_Document';

  factory CapabilityStatement_Document.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_DocumentFromJson(json);

  factory CapabilityStatement_Document.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatement_Document.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatement_Document.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatement_Document cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CapabilityStatement_Document.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatement_DocumentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
