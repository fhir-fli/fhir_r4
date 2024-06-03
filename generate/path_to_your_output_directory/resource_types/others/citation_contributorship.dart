import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Citation_Contributorship] The Citation Resource enables reference to
/// any knowledge artifact for purposes of identification and attribution. The
/// Citation Resource supports existing reference structures and developing
/// publication practices such as versioning, expressing complex
/// contributorship roles, and referencing computable resources.

@freezed
class Citation_Contributorship with _$Citation_Contributorship {
  const Citation_Contributorship._();

  const factory Citation_Contributorship({
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
/// [complete] Indicates if the list includes all authors and/or
/// contributors.

    @JsonKey(name: 'complete') FhirBoolean? complete,
/// [_complete] Extensions for complete

    @JsonKey(name: '_complete') PrimitiveElement? completeElement,
/// [entry] An individual entity named as a contributor, for example in the
/// author list or contributor list.

    @JsonKey(name: 'entry') List<List<Citation_Entry>>? entry,
/// [summary] Used to record a display of the author/contributor list
/// without separate data element for each list member.

    @JsonKey(name: 'summary') List<List<Citation_Summary1>>? summary,
  }) = _$Citation_Contributorship;

  @override
  String get fhirType => 'Citation_Contributorship';

  factory Citation_Contributorship.fromJson(Map<String, dynamic> json) =>
      _$Citation_ContributorshipFromJson(json);

  factory Citation_Contributorship.fromYaml(dynamic yaml) => yaml is String
      ? Citation_Contributorship.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Citation_Contributorship.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Citation_Contributorship cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Citation_Contributorship.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Citation_ContributorshipFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
