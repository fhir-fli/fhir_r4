import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [TerminologyCapabilities_Expansion] A TerminologyCapabilities resource
/// documents a set of capabilities (behaviors) of a FHIR Terminology Server
/// that may be used as a statement of actual server functionality or a
/// statement of required or desired server implementation.

@freezed
class TerminologyCapabilities_Expansion with _$TerminologyCapabilities_Expansion {
  const TerminologyCapabilities_Expansion._();

  const factory TerminologyCapabilities_Expansion({
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
/// [hierarchical] Whether the server can return nested value sets.

    @JsonKey(name: 'hierarchical') FhirBoolean? hierarchical,
/// [_hierarchical] Extensions for hierarchical

    @JsonKey(name: '_hierarchical') PrimitiveElement? hierarchicalElement,
/// [paging] Whether the server supports paging on expansion.

    @JsonKey(name: 'paging') FhirBoolean? paging,
/// [_paging] Extensions for paging

    @JsonKey(name: '_paging') PrimitiveElement? pagingElement,
/// [incomplete] True if requests for incomplete expansions are allowed.

    @JsonKey(name: 'incomplete') FhirBoolean? incomplete,
/// [_incomplete] Extensions for incomplete

    @JsonKey(name: '_incomplete') PrimitiveElement? incompleteElement,
/// [parameter] Supported expansion parameter.

    @JsonKey(name: 'parameter') List<List<TerminologyCapabilities_Parameter>>? parameter,
/// [textFilter] Documentation about text searching works.

    @JsonKey(name: 'textFilter') FhirMarkdown? textFilter,
/// [_textFilter] Extensions for textFilter

    @JsonKey(name: '_textFilter') PrimitiveElement? textFilterElement,
  }) = _$TerminologyCapabilities_Expansion;

  @override
  String get fhirType => 'TerminologyCapabilities_Expansion';

  factory TerminologyCapabilities_Expansion.fromJson(Map<String, dynamic> json) =>
      _$TerminologyCapabilities_ExpansionFromJson(json);

  factory TerminologyCapabilities_Expansion.fromYaml(dynamic yaml) => yaml is String
      ? TerminologyCapabilities_Expansion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TerminologyCapabilities_Expansion.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TerminologyCapabilities_Expansion cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TerminologyCapabilities_Expansion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TerminologyCapabilities_ExpansionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
