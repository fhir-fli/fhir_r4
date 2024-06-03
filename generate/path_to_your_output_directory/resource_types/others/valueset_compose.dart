import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ValueSet_Compose] A ValueSet resource instance specifies a set of
/// codes drawn from one or more code systems, intended for use in a particular
/// context. Value sets link between [CodeSystem](codesystem.html) definitions
/// and their use in [coded elements](terminologies.html).

@freezed
class ValueSet_Compose with _$ValueSet_Compose {
  const ValueSet_Compose._();

  const factory ValueSet_Compose({
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
/// [lockedDate] The Locked Date is  the effective date that is used to
/// determine the version of all referenced Code Systems and Value Set
/// Definitions included in the compose that are not already tied to a specific
/// version.

    @JsonKey(name: 'lockedDate') FhirDate? lockedDate,
/// [_lockedDate] Extensions for lockedDate

    @JsonKey(name: '_lockedDate') PrimitiveElement? lockedDateElement,
/// [inactive] Whether inactive codes - codes that are not approved for
/// current use - are in the value set. If inactive = true, inactive codes are
/// to be included in the expansion, if inactive = false, the inactive codes
/// will not be included in the expansion. If absent, the behavior is
/// determined by the implementation, or by the applicable $expand parameters
/// (but generally, inactive codes would be expected to be included).

    @JsonKey(name: 'inactive') FhirBoolean? inactive,
/// [_inactive] Extensions for inactive

    @JsonKey(name: '_inactive') PrimitiveElement? inactiveElement,
/// [include] Include one or more codes from a code system or other value
/// set(s).

    @JsonKey(name: 'include') List<List<ValueSet_Include>>? include,
/// [exclude] Exclude one or more codes from the value set based on code
/// system filters and/or other value sets.

    @JsonKey(name: 'exclude') List<List<ValueSet_Include>>? exclude,
/// [property] A property to return in the expansion, if the client doesn't
/// ask for any particular properties. May be either a code from the code
/// system definition (convenient) or a the formal URI that refers to the
/// property. The special value '*' means all properties known to the server.

    @JsonKey(name: 'property') List<List<String>>? property,
/// [_property] Extensions for property

    @JsonKey(name: '_property') List<PrimitiveElement>? propertyElement,
  }) = _$ValueSet_Compose;

  @override
  String get fhirType => 'ValueSet_Compose';

  factory ValueSet_Compose.fromJson(Map<String, dynamic> json) =>
      _$ValueSet_ComposeFromJson(json);

  factory ValueSet_Compose.fromYaml(dynamic yaml) => yaml is String
      ? ValueSet_Compose.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ValueSet_Compose.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ValueSet_Compose cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ValueSet_Compose.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ValueSet_ComposeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
