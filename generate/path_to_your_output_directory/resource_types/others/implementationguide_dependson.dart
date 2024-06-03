/// /// [ImplementationGuide_DependsOn] A set of rules of how a particular
/// interoperability or standards problem is solved - typically through the use
/// of FHIR resources. This resource is used to gather all the parts of an
/// implementation guide into a logical whole and to publish a computable
/// definition of all the parts.

@freezed
class ImplementationGuide_DependsOn with _$ImplementationGuide_DependsOn {
  const ImplementationGuide_DependsOn._();

  const factory ImplementationGuide_DependsOn({
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
/// /// [uri] A canonical reference to the Implementation guide for the
/// dependency.

    @JsonKey(name: 'uri') FhirCanonical? uri,
/// /// [packageId] The NPM package name for the Implementation Guide that this
/// IG depends on.

    @JsonKey(name: 'packageId') FhirId? packageId,
/// /// [_packageId] Extensions for packageId

    @JsonKey(name: '_packageId') FhirElement? packageIdElement,
/// /// [version] The version of the IG that is depended on, when the correct
/// version is required to understand the IG correctly.

    @JsonKey(name: 'version') String? version,
/// /// [_version] Extensions for version

    @JsonKey(name: '_version') FhirElement? versionElement,
/// /// [reason] A description explaining the nature of the dependency on the
/// listed IG.

    @JsonKey(name: 'reason') FhirMarkdown? reason,
/// /// [_reason] Extensions for reason

    @JsonKey(name: '_reason') FhirElement? reasonElement,
  }) = _$ImplementationGuide_DependsOn;

  @override
  String get fhirType => 'ImplementationGuide_DependsOn';

  factory ImplementationGuide_DependsOn.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_DependsOnFromJson(json);

  factory ImplementationGuide_DependsOn.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuide_DependsOn.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuide_DependsOn.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuide_DependsOn cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImplementationGuide_DependsOn.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuide_DependsOnFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
