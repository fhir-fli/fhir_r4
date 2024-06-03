import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Citation_Entry] The Citation Resource enables reference to any
/// knowledge artifact for purposes of identification and attribution. The
/// Citation Resource supports existing reference structures and developing
/// publication practices such as versioning, expressing complex
/// contributorship roles, and referencing computable resources.

@freezed
class Citation_Entry with _$Citation_Entry {
  const Citation_Entry._();

  const factory Citation_Entry({
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
/// [contributor] The identity of the individual contributor.

    @JsonKey(name: 'contributor') Reference? contributor,
/// [forenameInitials] For citation styles that use initials.

    @JsonKey(name: 'forenameInitials') String? forenameInitials,
/// [_forenameInitials] Extensions for forenameInitials

    @JsonKey(name: '_forenameInitials') PrimitiveElement? forenameInitialsElement,
/// [affiliation] Organization affiliated with the contributor.

    @JsonKey(name: 'affiliation') List<List<Reference>>? affiliation,
/// [contributionType] This element identifies the specific nature of an
/// individual’s contribution with respect to the cited work.

    @JsonKey(name: 'contributionType') List<List<CodeableConcept>>? contributionType,
/// [role] The role of the contributor (e.g. author, editor, reviewer,
/// funder).

    @JsonKey(name: 'role') CodeableConcept? role,
/// [contributionInstance] Contributions with accounting for time or
/// number.

    @JsonKey(name: 'contributionInstance') List<List<Citation_ContributionInstance>>? contributionInstance,
/// [correspondingContact] Whether the contributor is the corresponding
/// contributor for the role.

    @JsonKey(name: 'correspondingContact') FhirBoolean? correspondingContact,
/// [_correspondingContact] Extensions for correspondingContact

    @JsonKey(name: '_correspondingContact') PrimitiveElement? correspondingContactElement,
/// [rankingOrder] Provides a numerical ranking to represent the degree of
/// contributorship relative to other contributors, such as 1 for first author
/// and 2 for second author.

    @JsonKey(name: 'rankingOrder') FhirPositiveInt? rankingOrder,
/// [_rankingOrder] Extensions for rankingOrder

    @JsonKey(name: '_rankingOrder') PrimitiveElement? rankingOrderElement,
  }) = _$Citation_Entry;

  @override
  String get fhirType => 'Citation_Entry';

  factory Citation_Entry.fromJson(Map<String, dynamic> json) =>
      _$Citation_EntryFromJson(json);

  factory Citation_Entry.fromYaml(dynamic yaml) => yaml is String
      ? Citation_Entry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Citation_Entry.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Citation_Entry cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Citation_Entry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Citation_EntryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
