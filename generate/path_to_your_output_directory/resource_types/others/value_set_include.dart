import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ValueSet_Include] A ValueSet resource instance specifies a set of
/// codes drawn from one or more code systems, intended for use in a particular
/// context. Value sets link between [CodeSystem](codesystem.html) definitions
/// and their use in [coded elements](terminologies.html).

@freezed
class ValueSet_Include with _$ValueSet_Include {
  const ValueSet_Include._();

  const factory ValueSet_Include({
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
/// [system] An absolute URI which is the code system from which the
/// selected codes come from.

    @JsonKey(name: 'system') FhirUri? system,
/// [_system] Extensions for system

    @JsonKey(name: '_system') PrimitiveElement? systemElement,
/// [version] The version of the code system that the codes are selected
/// from, or the special version '*' for all versions.

    @JsonKey(name: 'version') String? version,
/// [_version] Extensions for version

    @JsonKey(name: '_version') PrimitiveElement? versionElement,
/// [concept] Specifies a concept to be included or excluded.

    @JsonKey(name: 'concept') List<List<ValueSet_Concept>>? concept,
/// [filter] Select concepts by specifying a matching criterion based on
/// the properties (including relationships) defined by the system, or on
/// filters defined by the system. If multiple filters are specified within the
/// include, they SHALL all be true.

    @JsonKey(name: 'filter') List<List<ValueSet_Filter>>? filter,
/// [valueSet] Selects the concepts found in this value set (based on its
/// value set definition). This is an absolute URI that is a reference to
/// ValueSet.url.  If multiple value sets are specified this includes the
/// intersection of the contents of all of the referenced value sets.

    @JsonKey(name: 'valueSet') List<List<FhirCanonical>>? valueSet,
/// [copyright] A copyright statement for the specific code system asserted
/// by the containing ValueSet.compose.include element's system value (if the
/// associated ValueSet.compose.include.version element is not present); or the
/// code system and version combination (if the associated
/// ValueSet.compose.include.version element is present).

    @JsonKey(name: 'copyright') String? copyright,
/// [_copyright] Extensions for copyright

    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
  }) = _$ValueSet_Include;

  @override
  String get fhirType => 'ValueSet_Include';

  factory ValueSet_Include.fromJson(Map<String, dynamic> json) =>
      _$ValueSet_IncludeFromJson(json);

  factory ValueSet_Include.fromYaml(dynamic yaml) => yaml is String
      ? ValueSet_Include.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ValueSet_Include.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ValueSet_Include cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ValueSet_Include.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ValueSet_IncludeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
