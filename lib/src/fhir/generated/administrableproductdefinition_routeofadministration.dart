import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AdministrableProductDefinitionRouteOfAdministration {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final Quantity firstDose;
  final Quantity maxSingleDose;
  final Quantity maxDosePerDay;
  final Ratio maxDosePerTreatmentPeriod;
  final FhirDuration maxTreatmentPeriod;
  final List<AdministrableProductDefinitionTargetSpecies> targetSpecies;
  const AdministrableProductDefinitionRouteOfAdministration({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.code,
    this.firstDose,
    this.maxSingleDose,
    this.maxDosePerDay,
    this.maxDosePerTreatmentPeriod,
    this.maxTreatmentPeriod,
    this.targetSpecies,
  });
}
