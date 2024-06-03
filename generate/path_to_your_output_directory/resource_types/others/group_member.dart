import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Group_Member] Represents a defined collection of entities that may be
/// discussed or acted upon collectively but which are not expected to act
/// collectively, and are not formally or legally recognized; i.e. a collection
/// of entities that isn't an Organization.

@freezed
class Group_Member with _$Group_Member {
  const Group_Member._();

  const factory Group_Member({
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
/// [entity] A reference to the entity that is a member of the group. Must
/// be consistent with Group.type. If the entity is another group, then the
/// type must be the same.

    @JsonKey(name: 'entity') Reference? entity,
/// [period] The period that the member was in the group, if known.

    @JsonKey(name: 'period') Period? period,
/// [inactive] A flag to indicate that the member is no longer in the
/// group, but previously may have been a member.

    @JsonKey(name: 'inactive') FhirBoolean? inactive,
/// [_inactive] Extensions for inactive

    @JsonKey(name: '_inactive') PrimitiveElement? inactiveElement,
  }) = _$Group_Member;

  @override
  String get fhirType => 'Group_Member';

  factory Group_Member.fromJson(Map<String, dynamic> json) =>
      _$Group_MemberFromJson(json);

  factory Group_Member.fromYaml(dynamic yaml) => yaml is String
      ? Group_Member.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Group_Member.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Group_Member cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Group_Member.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Group_MemberFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
