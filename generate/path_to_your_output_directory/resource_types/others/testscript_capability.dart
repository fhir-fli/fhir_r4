/// /// [TestScript_Capability] A structured set of tests against a FHIR server
/// or client implementation to determine compliance against the FHIR
/// specification.

@freezed
class TestScript_Capability with _$TestScript_Capability {
  const TestScript_Capability._();

  const factory TestScript_Capability({
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
/// /// [required] Whether or not the test execution will require the given
/// capabilities of the server in order for this test script to execute.

    @JsonKey(name: 'required') FhirBoolean? required,
/// /// [_required] Extensions for required

    @JsonKey(name: '_required') FhirElement? requiredElement,
/// /// [validated] Whether or not the test execution will validate the given
/// capabilities of the server in order for this test script to execute.

    @JsonKey(name: 'validated') FhirBoolean? validated,
/// /// [_validated] Extensions for validated

    @JsonKey(name: '_validated') FhirElement? validatedElement,
/// /// [description] Description of the capabilities that this test script is
/// requiring the server to support.

    @JsonKey(name: 'description') String? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [origin] Which origin server these requirements apply to.

    @JsonKey(name: 'origin') List<List<FhirInteger>>? origin,
/// /// [_origin] Extensions for origin

    @JsonKey(name: '_origin') List<FhirElement>? originElement,
/// /// [destination] Which server these requirements apply to.

    @JsonKey(name: 'destination') FhirInteger? destination,
/// /// [_destination] Extensions for destination

    @JsonKey(name: '_destination') FhirElement? destinationElement,
/// /// [link] Links to the FHIR specification that describes this interaction
/// and the resources involved in more detail.

    @JsonKey(name: 'link') List<List<FhirUri>>? link,
/// /// [_link] Extensions for link

    @JsonKey(name: '_link') List<FhirElement>? linkElement,
/// /// [capabilities] Minimum capabilities required of server for test script
/// to execute successfully.   If server does not meet at a minimum the
/// referenced capability statement, then all tests in this script are skipped.

    @JsonKey(name: 'capabilities') FhirCanonical? capabilities,
  }) = _$TestScript_Capability;

  @override
  String get fhirType => 'TestScript_Capability';

  factory TestScript_Capability.fromJson(Map<String, dynamic> json) =>
      _$TestScript_CapabilityFromJson(json);

  factory TestScript_Capability.fromYaml(dynamic yaml) => yaml is String
      ? TestScript_Capability.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScript_Capability.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScript_Capability cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TestScript_Capability.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScript_CapabilityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
