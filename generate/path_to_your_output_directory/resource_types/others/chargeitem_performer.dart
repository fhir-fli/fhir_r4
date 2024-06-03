import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ChargeItem_Performer] The resource ChargeItem describes the provision
/// of healthcare provider products for a certain patient, therefore referring
/// not only to the product, but containing in addition details of the
/// provision, like date, time, amounts and participating organizations and
/// persons. Main Usage of the ChargeItem is to enable the billing process and
/// internal cost allocation.

@freezed
class ChargeItem_Performer with _$ChargeItem_Performer {
  const ChargeItem_Performer._();

  const factory ChargeItem_Performer({
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
/// [function] Describes the type of performance or participation(e.g.
/// primary surgeon, anesthesiologiest, etc.).

    @JsonKey(name: 'function') CodeableConcept? function,
/// [actor] The device, practitioner, etc. who performed or participated in
/// the service.

    @JsonKey(name: 'actor') Reference? actor,
  }) = _$ChargeItem_Performer;

  @override
  String get fhirType => 'ChargeItem_Performer';

  factory ChargeItem_Performer.fromJson(Map<String, dynamic> json) =>
      _$ChargeItem_PerformerFromJson(json);

  factory ChargeItem_Performer.fromYaml(dynamic yaml) => yaml is String
      ? ChargeItem_Performer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ChargeItem_Performer.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ChargeItem_Performer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ChargeItem_Performer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ChargeItem_PerformerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
