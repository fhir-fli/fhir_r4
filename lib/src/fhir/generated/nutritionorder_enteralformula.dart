import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class NutritionOrderEnteralFormula {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept baseFormulaType;
  final String baseFormulaProductName;
  final PrimitiveElement BaseFormulaProductName;
  final CodeableConcept additiveType;
  final String additiveProductName;
  final PrimitiveElement AdditiveProductName;
  final Quantity caloricDensity;
  final CodeableConcept routeofAdministration;
  final List<NutritionOrderAdministration> administration;
  final Quantity maxVolumeToDeliver;
  final String administrationInstruction;
  final PrimitiveElement AdministrationInstruction;
  const NutritionOrderEnteralFormula({
    this.id,
    this.extension,
    this.modifierExtension,
    this.baseFormulaType,
    this.baseFormulaProductName,
    this.BaseFormulaProductName,
    this.additiveType,
    this.additiveProductName,
    this.AdditiveProductName,
    this.caloricDensity,
    this.routeofAdministration,
    this.administration,
    this.maxVolumeToDeliver,
    this.administrationInstruction,
    this.AdministrationInstruction,
  });
}
