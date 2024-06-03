import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CapabilityStatement_SearchParam] A Capability Statement documents a
/// set of capabilities (behaviors) of a FHIR Server or Client for a particular
/// version of FHIR that may be used as a statement of actual server
/// functionality or a statement of required or desired server implementation.

@freezed
class CapabilityStatement_SearchParam with _$CapabilityStatement_SearchParam {
  const CapabilityStatement_SearchParam._();

  const factory CapabilityStatement_SearchParam({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [name] The label used for the search parameter in this particular
/// system's API - i.e. the 'name' portion of the name-value pair that will
/// appear as part of the search URL.  This SHOULD be the same as the
/// SearchParameter.code of the defining SearchParameter.  However, it can
/// sometimes differ if necessary to disambiguate when a server supports
/// multiple SearchParameters that happen to share the same code.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [definition] An absolute URI that is a formal reference to where this
/// parameter was first defined, so that a client can be confident of the
/// meaning of the search parameter (a reference to
/// [SearchParameter.url](searchparameter-definitions.html#SearchParameter.url)).
/// This element SHALL be populated if the search parameter refers to a
/// SearchParameter defined by the FHIR core specification or externally
/// defined IGs.

    @JsonKey(name: 'definition') FhirCanonical? definition,
/// [type] The type of value a search parameter refers to, and how the
/// content is interpreted.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [documentation] This allows documentation of any distinct behaviors
/// about how the search parameter is used.  For example, text matching
/// algorithms.

    @JsonKey(name: 'documentation') FhirMarkdown? documentation,
/// [_documentation] Extensions for documentation

    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
  }) = _$CapabilityStatement_SearchParam;

  @override
  String get fhirType => 'CapabilityStatement_SearchParam';

  factory CapabilityStatement_SearchParam.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_SearchParamFromJson(json);

  factory CapabilityStatement_SearchParam.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatement_SearchParam.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatement_SearchParam.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatement_SearchParam cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CapabilityStatement_SearchParam.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatement_SearchParamFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
