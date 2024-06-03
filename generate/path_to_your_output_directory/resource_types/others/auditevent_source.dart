import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [AuditEvent_Source] A record of an event relevant for purposes such as
/// operations, privacy, security, maintenance, and performance analysis.

@freezed
class AuditEvent_Source with _$AuditEvent_Source {
  const AuditEvent_Source._();

  const factory AuditEvent_Source({
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
/// [site] Logical source location within the healthcare enterprise
/// network.  For example, a hospital or other provider location within a
/// multi-entity provider group.

    @JsonKey(name: 'site') Reference? site,
/// [observer] Identifier of the source where the event was detected.

    @JsonKey(name: 'observer') Reference? observer,
/// [type] Code specifying the type of source where event originated.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
  }) = _$AuditEvent_Source;

  @override
  String get fhirType => 'AuditEvent_Source';

  factory AuditEvent_Source.fromJson(Map<String, dynamic> json) =>
      _$AuditEvent_SourceFromJson(json);

  factory AuditEvent_Source.fromYaml(dynamic yaml) => yaml is String
      ? AuditEvent_Source.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AuditEvent_Source.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AuditEvent_Source cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AuditEvent_Source.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AuditEvent_SourceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
