import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Requirements_Statement] A set of requirements - a list of features or
/// behaviors of designed systems that are necessary to achieve organizational
/// or regulatory goals.

@freezed
class Requirements_Statement with _$Requirements_Statement {
  const Requirements_Statement._();

  const factory Requirements_Statement({
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

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [key] Key that identifies this statement (unique within this resource).

    @JsonKey(name: 'key') FhirId? key,
/// [_key] Extensions for key

    @JsonKey(name: '_key') PrimitiveElement? keyElement,
/// [label] A short human usable label for this statement.

    @JsonKey(name: 'label') String? label,
/// [_label] Extensions for label

    @JsonKey(name: '_label') PrimitiveElement? labelElement,
/// [conformance] A short human usable label for this statement.

    @JsonKey(name: 'conformance') List<List<FhirCode>>? conformance,
/// [_conformance] Extensions for conformance

    @JsonKey(name: '_conformance') List<PrimitiveElement>? conformanceElement,
/// [conditionality] This boolean flag is set to true of the text of the
/// requirement is conditional on something e.g. it includes lanauage like 'if
/// x then y'. This conditionality flag is introduced for purposes of filtering
/// and colour highlighting etc.

    @JsonKey(name: 'conditionality') FhirBoolean? conditionality,
/// [_conditionality] Extensions for conditionality

    @JsonKey(name: '_conditionality') PrimitiveElement? conditionalityElement,
/// [requirement] The actual requirement for human consumption.

    @JsonKey(name: 'requirement') FhirMarkdown? requirement,
/// [_requirement] Extensions for requirement

    @JsonKey(name: '_requirement') PrimitiveElement? requirementElement,
/// [derivedFrom] Another statement on one of the requirements that this
/// requirement clarifies or restricts.

    @JsonKey(name: 'derivedFrom') String? derivedFrom,
/// [_derivedFrom] Extensions for derivedFrom

    @JsonKey(name: '_derivedFrom') PrimitiveElement? derivedFromElement,
/// [parent] A larger requirement that this requirement helps to refine and
/// enable.

    @JsonKey(name: 'parent') String? parent,
/// [_parent] Extensions for parent

    @JsonKey(name: '_parent') PrimitiveElement? parentElement,
/// [satisfiedBy] A reference to another artifact that satisfies this
/// requirement. This could be a Profile, extension, or an element in one of
/// those, or a CapabilityStatement, OperationDefinition, SearchParameter,
/// CodeSystem(/code), ValueSet, Libary etc.

    @JsonKey(name: 'satisfiedBy') List<List<FhirUrl>>? satisfiedBy,
/// [_satisfiedBy] Extensions for satisfiedBy

    @JsonKey(name: '_satisfiedBy') List<PrimitiveElement>? satisfiedByElement,
/// [reference] A reference to another artifact that created this
/// requirement. This could be a Profile, etc., or external regulation, or
/// business requirements expressed elsewhere.

    @JsonKey(name: 'reference') List<List<FhirUrl>>? reference,
/// [_reference] Extensions for reference

    @JsonKey(name: '_reference') List<PrimitiveElement>? referenceElement,
/// [source] Who asked for this statement to be a requirement. By default,
/// it's assumed that the publisher knows who it is if it matters.

    @JsonKey(name: 'source') List<List<Reference>>? source,
  }) = _$Requirements_Statement;

  @override
  String get fhirType => 'Requirements_Statement';

  factory Requirements_Statement.fromJson(Map<String, dynamic> json) =>
      _$Requirements_StatementFromJson(json);

  factory Requirements_Statement.fromYaml(dynamic yaml) => yaml is String
      ? Requirements_Statement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Requirements_Statement.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Requirements_Statement cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Requirements_Statement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Requirements_StatementFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
