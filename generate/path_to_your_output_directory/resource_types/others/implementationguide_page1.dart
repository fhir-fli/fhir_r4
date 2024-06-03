/// /// [ImplementationGuide_Page1] A set of rules of how a particular
/// interoperability or standards problem is solved - typically through the use
/// of FHIR resources. This resource is used to gather all the parts of an
/// implementation guide into a logical whole and to publish a computable
/// definition of all the parts.

@freezed
class ImplementationGuide_Page1 with _$ImplementationGuide_Page1 {
  const ImplementationGuide_Page1._();

  const factory ImplementationGuide_Page1({
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
/// /// [name] Relative path to the page.

    @JsonKey(name: 'name') String? name,
/// /// [_name] Extensions for name

    @JsonKey(name: '_name') FhirElement? nameElement,
/// /// [title] Label for the page intended for human display.

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [anchor] The name of an anchor available on the page.

    @JsonKey(name: 'anchor') List<List<String>>? anchor,
/// /// [_anchor] Extensions for anchor

    @JsonKey(name: '_anchor') List<FhirElement>? anchorElement,
  }) = _$ImplementationGuide_Page1;

  @override
  String get fhirType => 'ImplementationGuide_Page1';

  factory ImplementationGuide_Page1.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_Page1FromJson(json);

  factory ImplementationGuide_Page1.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuide_Page1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuide_Page1.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuide_Page1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImplementationGuide_Page1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuide_Page1FromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
