import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [GraphDefinition_Compartment] A formal computable definition of a graph
/// of resources - that is, a coherent set of resources that form a graph by
/// following references. The Graph Definition resource defines a set and makes
/// rules about the set.

@freezed
class GraphDefinition_Compartment with _$GraphDefinition_Compartment {
  const GraphDefinition_Compartment._();

  const factory GraphDefinition_Compartment({
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
/// [use] Defines how the compartment rule is used - whether it it is used
/// to test whether resources are subject to the rule, or whether it is a rule
/// that must be followed.

    @JsonKey(name: 'use') FhirCode? use,
/// [_use] Extensions for use

    @JsonKey(name: '_use') PrimitiveElement? useElement,
/// [rule] identical | matching | different | no-rule | custom.

    @JsonKey(name: 'rule') FhirCode? rule,
/// [_rule] Extensions for rule

    @JsonKey(name: '_rule') PrimitiveElement? ruleElement,
/// [code] Identifies the compartment.

    @JsonKey(name: 'code') FhirCode? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [expression] Custom rule, as a FHIRPath expression.

    @JsonKey(name: 'expression') String? expression,
/// [_expression] Extensions for expression

    @JsonKey(name: '_expression') PrimitiveElement? expressionElement,
/// [description] Documentation for FHIRPath expression.

    @JsonKey(name: 'description') String? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
  }) = _$GraphDefinition_Compartment;

  @override
  String get fhirType => 'GraphDefinition_Compartment';

  factory GraphDefinition_Compartment.fromJson(Map<String, dynamic> json) =>
      _$GraphDefinition_CompartmentFromJson(json);

  factory GraphDefinition_Compartment.fromYaml(dynamic yaml) => yaml is String
      ? GraphDefinition_Compartment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? GraphDefinition_Compartment.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'GraphDefinition_Compartment cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory GraphDefinition_Compartment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$GraphDefinition_CompartmentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
