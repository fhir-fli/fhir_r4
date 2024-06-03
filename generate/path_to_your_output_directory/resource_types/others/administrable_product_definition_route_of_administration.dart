import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [AdministrableProductDefinition_RouteOfAdministration] A medicinal
/// product in the final form which is suitable for administering to a patient
/// (after any mixing of multiple components, dissolution etc. has been
/// performed).

@freezed
class AdministrableProductDefinition_RouteOfAdministration with _$AdministrableProductDefinition_RouteOfAdministration {
  const AdministrableProductDefinition_RouteOfAdministration._();

  const factory AdministrableProductDefinition_RouteOfAdministration({
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
/// [code] Coded expression for the route.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [firstDose] The first dose (dose quantity) administered can be
/// specified for the product, using a numerical value and its unit of
/// measurement.

    @JsonKey(name: 'firstDose') Quantity? firstDose,
/// [maxSingleDose] The maximum single dose that can be administered,
/// specified using a numerical value and its unit of measurement.

    @JsonKey(name: 'maxSingleDose') Quantity? maxSingleDose,
/// [maxDosePerDay] The maximum dose per day (maximum dose quantity to be
/// administered in any one 24-h period) that can be administered.

    @JsonKey(name: 'maxDosePerDay') Quantity? maxDosePerDay,
/// [maxDosePerTreatmentPeriod] The maximum dose per treatment period that
/// can be administered.

    @JsonKey(name: 'maxDosePerTreatmentPeriod') Ratio? maxDosePerTreatmentPeriod,
/// [maxTreatmentPeriod] The maximum treatment period during which the
/// product can be administered.

    @JsonKey(name: 'maxTreatmentPeriod') FhirDuration? maxTreatmentPeriod,
/// [targetSpecies] A species for which this route applies.

    @JsonKey(name: 'targetSpecies') List<List<AdministrableProductDefinition_TargetSpecies>>? targetSpecies,
  }) = _$AdministrableProductDefinition_RouteOfAdministration;

  @override
  String get fhirType => 'AdministrableProductDefinition_RouteOfAdministration';

  factory AdministrableProductDefinition_RouteOfAdministration.fromJson(Map<String, dynamic> json) =>
      _$AdministrableProductDefinition_RouteOfAdministrationFromJson(json);

  factory AdministrableProductDefinition_RouteOfAdministration.fromYaml(dynamic yaml) => yaml is String
      ? AdministrableProductDefinition_RouteOfAdministration.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AdministrableProductDefinition_RouteOfAdministration.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AdministrableProductDefinition_RouteOfAdministration cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AdministrableProductDefinition_RouteOfAdministration.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdministrableProductDefinition_RouteOfAdministrationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
