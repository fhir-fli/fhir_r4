import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [TestScript_Fixture] A structured set of tests against a FHIR server or
/// client implementation to determine compliance against the FHIR
/// specification.

@freezed
class TestScript_Fixture with _$TestScript_Fixture {
  const TestScript_Fixture._();

  const factory TestScript_Fixture({
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
/// [autocreate] Whether or not to implicitly create the fixture during
/// setup. If true, the fixture is automatically created on each server being
/// tested during setup, therefore no create operation is required for this
/// fixture in the TestScript.setup section.

    @JsonKey(name: 'autocreate') FhirBoolean? autocreate,
/// [_autocreate] Extensions for autocreate

    @JsonKey(name: '_autocreate') PrimitiveElement? autocreateElement,
/// [autodelete] Whether or not to implicitly delete the fixture during
/// teardown. If true, the fixture is automatically deleted on each server
/// being tested during teardown, therefore no delete operation is required for
/// this fixture in the TestScript.teardown section.

    @JsonKey(name: 'autodelete') FhirBoolean? autodelete,
/// [_autodelete] Extensions for autodelete

    @JsonKey(name: '_autodelete') PrimitiveElement? autodeleteElement,
/// [resource] Reference to the resource (containing the contents of the
/// resource needed for operations). This is allowed to be a Parameters
/// resource.

    @JsonKey(name: 'resource') Reference? resource,
  }) = _$TestScript_Fixture;

  @override
  String get fhirType => 'TestScript_Fixture';

  factory TestScript_Fixture.fromJson(Map<String, dynamic> json) =>
      _$TestScript_FixtureFromJson(json);

  factory TestScript_Fixture.fromYaml(dynamic yaml) => yaml is String
      ? TestScript_Fixture.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScript_Fixture.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScript_Fixture cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TestScript_Fixture.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScript_FixtureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
