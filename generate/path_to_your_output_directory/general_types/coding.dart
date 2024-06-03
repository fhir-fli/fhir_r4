import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Coding] A reference to a code defined by a terminology system.

@freezed
class Coding with _$Coding {
  const Coding._();

  const factory Coding({
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
/// [system] The identification of the code system that defines the meaning
/// of the symbol in the code.

    @JsonKey(name: 'system') FhirUri? system,
/// [_system] Extensions for system

    @JsonKey(name: '_system') PrimitiveElement? systemElement,
/// [version] The version of the code system which was used when choosing
/// this code. Note that a well-maintained code system does not need the
/// version reported, because the meaning of codes is consistent across
/// versions. However this cannot consistently be assured, and when the meaning
/// is not guaranteed to be consistent, the version SHOULD be exchanged.

    @JsonKey(name: 'version') String? version,
/// [_version] Extensions for version

    @JsonKey(name: '_version') PrimitiveElement? versionElement,
/// [code] A symbol in syntax defined by the system. The symbol may be a
/// predefined code or an expression in a syntax defined by the coding system
/// (e.g. post-coordination).

    @JsonKey(name: 'code') FhirCode? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [display] A representation of the meaning of the code in the system,
/// following the rules of the system.

    @JsonKey(name: 'display') String? display,
/// [_display] Extensions for display

    @JsonKey(name: '_display') PrimitiveElement? displayElement,
/// [userSelected] Indicates that this coding was chosen by a user directly
/// - e.g. off a pick list of available items (codes or displays).

    @JsonKey(name: 'userSelected') FhirBoolean? userSelected,
/// [_userSelected] Extensions for userSelected

    @JsonKey(name: '_userSelected') PrimitiveElement? userSelectedElement,
  }) = _$Coding;

  @override
  String get fhirType => 'Coding';

  factory Coding.fromJson(Map<String, dynamic> json) =>
      _$CodingFromJson(json);

  factory Coding.fromYaml(dynamic yaml) => yaml is String
      ? Coding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Coding.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Coding cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Coding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
