import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ValueSet_Contains] A ValueSet resource instance specifies a set of
/// codes drawn from one or more code systems, intended for use in a particular
/// context. Value sets link between [CodeSystem](codesystem.html) definitions
/// and their use in [coded elements](terminologies.html).

@freezed
class ValueSet_Contains with _$ValueSet_Contains {
  const ValueSet_Contains._();

  const factory ValueSet_Contains({
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
/// [system] An absolute URI which is the code system in which the code for
/// this item in the expansion is defined.

    @JsonKey(name: 'system') FhirUri? system,
/// [_system] Extensions for system

    @JsonKey(name: '_system') PrimitiveElement? systemElement,
/// [abstract] If true, this entry is included in the expansion for
/// navigational purposes, and the user cannot select the code directly as a
/// proper value.

    @JsonKey(name: 'abstract') FhirBoolean? abstract,
/// [_abstract] Extensions for abstract

    @JsonKey(name: '_abstract') PrimitiveElement? abstractElement,
/// [inactive] If the concept is inactive in the code system that defines
/// it. Inactive codes are those that are no longer to be used, but are
/// maintained by the code system for understanding legacy data. It might not
/// be known or specified whether a concept is inactive (and it may depend on
/// the context of use).

    @JsonKey(name: 'inactive') FhirBoolean? inactive,
/// [_inactive] Extensions for inactive

    @JsonKey(name: '_inactive') PrimitiveElement? inactiveElement,
/// [version] The version of the code system from this code was taken. Note
/// that a well-maintained code system does not need the version reported,
/// because the meaning of codes is consistent across versions. However this
/// cannot consistently be assured, and when the meaning is not guaranteed to
/// be consistent, the version SHOULD be exchanged.

    @JsonKey(name: 'version') String? version,
/// [_version] Extensions for version

    @JsonKey(name: '_version') PrimitiveElement? versionElement,
/// [code] The code for this item in the expansion hierarchy. If this code
/// is missing the entry in the hierarchy is a place holder (abstract) and does
/// not represent a valid code in the value set.

    @JsonKey(name: 'code') FhirCode? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [display] The recommended display for this item in the expansion.

    @JsonKey(name: 'display') String? display,
/// [_display] Extensions for display

    @JsonKey(name: '_display') PrimitiveElement? displayElement,
/// [designation] Additional representations for this item - other
/// languages, aliases, specialized purposes, used for particular purposes,
/// etc. These are relevant when the conditions of the expansion do not fix to
/// a single correct representation.

    @JsonKey(name: 'designation') List<List<ValueSet_Designation>>? designation,
/// [property] A property value for this concept.

    @JsonKey(name: 'property') List<List<ValueSet_Property1>>? property,
/// [contains] Other codes and entries contained under this entry in the
/// hierarchy.

    @JsonKey(name: 'contains') List<List<ValueSet_Contains>>? contains,
  }) = _$ValueSet_Contains;

  @override
  String get fhirType => 'ValueSet_Contains';

  factory ValueSet_Contains.fromJson(Map<String, dynamic> json) =>
      _$ValueSet_ContainsFromJson(json);

  factory ValueSet_Contains.fromYaml(dynamic yaml) => yaml is String
      ? ValueSet_Contains.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ValueSet_Contains.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ValueSet_Contains cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ValueSet_Contains.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ValueSet_ContainsFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
