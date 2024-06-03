import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [NamingSystem_UniqueId] A curated namespace that issues unique symbols
/// within that namespace for the identification of concepts, people, devices,
/// etc.  Represents a "System" used within the Identifier and Coding data
/// types.

@freezed
class NamingSystem_UniqueId with _$NamingSystem_UniqueId {
  const NamingSystem_UniqueId._();

  const factory NamingSystem_UniqueId({
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
/// [type] Identifies the unique identifier scheme used for this particular
/// identifier.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [value] The string that should be sent over the wire to identify the
/// code system or identifier system.

    @JsonKey(name: 'value') String? value,
/// [_value] Extensions for value

    @JsonKey(name: '_value') PrimitiveElement? valueElement,
/// [preferred] Indicates whether this identifier is the "preferred"
/// identifier of this type.

    @JsonKey(name: 'preferred') FhirBoolean? preferred,
/// [_preferred] Extensions for preferred

    @JsonKey(name: '_preferred') PrimitiveElement? preferredElement,
/// [comment] Notes about the past or intended usage of this identifier.

    @JsonKey(name: 'comment') String? comment,
/// [_comment] Extensions for comment

    @JsonKey(name: '_comment') PrimitiveElement? commentElement,
/// [period] Identifies the period of time over which this identifier is
/// considered appropriate to refer to the naming system.  Outside of this
/// window, the identifier might be non-deterministic.

    @JsonKey(name: 'period') Period? period,
/// [authoritative] Indicates whether this identifier ie endorsed by the
/// official owner of the associated naming system.

    @JsonKey(name: 'authoritative') FhirBoolean? authoritative,
/// [_authoritative] Extensions for authoritative

    @JsonKey(name: '_authoritative') PrimitiveElement? authoritativeElement,
  }) = _$NamingSystem_UniqueId;

  @override
  String get fhirType => 'NamingSystem_UniqueId';

  factory NamingSystem_UniqueId.fromJson(Map<String, dynamic> json) =>
      _$NamingSystem_UniqueIdFromJson(json);

  factory NamingSystem_UniqueId.fromYaml(dynamic yaml) => yaml is String
      ? NamingSystem_UniqueId.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NamingSystem_UniqueId.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NamingSystem_UniqueId cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory NamingSystem_UniqueId.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NamingSystem_UniqueIdFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
