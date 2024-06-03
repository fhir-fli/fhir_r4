import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ImplementationGuide_Template] A set of rules of how a particular
/// interoperability or standards problem is solved - typically through the use
/// of FHIR resources. This resource is used to gather all the parts of an
/// implementation guide into a logical whole and to publish a computable
/// definition of all the parts.

@freezed
class ImplementationGuide_Template with _$ImplementationGuide_Template {
  const ImplementationGuide_Template._();

  const factory ImplementationGuide_Template({
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
/// [code] Type of template specified.

    @JsonKey(name: 'code') FhirCode? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [source] The source location for the template.

    @JsonKey(name: 'source') String? source,
/// [_source] Extensions for source

    @JsonKey(name: '_source') PrimitiveElement? sourceElement,
/// [scope] The scope in which the template applies.

    @JsonKey(name: 'scope') String? scope,
/// [_scope] Extensions for scope

    @JsonKey(name: '_scope') PrimitiveElement? scopeElement,
  }) = _$ImplementationGuide_Template;

  @override
  String get fhirType => 'ImplementationGuide_Template';

  factory ImplementationGuide_Template.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_TemplateFromJson(json);

  factory ImplementationGuide_Template.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuide_Template.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuide_Template.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuide_Template cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImplementationGuide_Template.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuide_TemplateFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
