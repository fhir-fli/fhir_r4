import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ValueSet_Scope] A ValueSet resource instance specifies a set of codes
/// drawn from one or more code systems, intended for use in a particular
/// context. Value sets link between [CodeSystem](codesystem.html) definitions
/// and their use in [coded elements](terminologies.html).

@freezed
class ValueSet_Scope with _$ValueSet_Scope {
  const ValueSet_Scope._();

  const factory ValueSet_Scope({
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
/// [inclusionCriteria] Criteria describing which concepts or codes should
/// be included and why.

    @JsonKey(name: 'inclusionCriteria') String? inclusionCriteria,
/// [_inclusionCriteria] Extensions for inclusionCriteria

    @JsonKey(name: '_inclusionCriteria') PrimitiveElement? inclusionCriteriaElement,
/// [exclusionCriteria] Criteria describing which concepts or codes should
/// be excluded and why.

    @JsonKey(name: 'exclusionCriteria') String? exclusionCriteria,
/// [_exclusionCriteria] Extensions for exclusionCriteria

    @JsonKey(name: '_exclusionCriteria') PrimitiveElement? exclusionCriteriaElement,
  }) = _$ValueSet_Scope;

  @override
  String get fhirType => 'ValueSet_Scope';

  factory ValueSet_Scope.fromJson(Map<String, dynamic> json) =>
      _$ValueSet_ScopeFromJson(json);

  factory ValueSet_Scope.fromYaml(dynamic yaml) => yaml is String
      ? ValueSet_Scope.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ValueSet_Scope.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ValueSet_Scope cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ValueSet_Scope.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ValueSet_ScopeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
