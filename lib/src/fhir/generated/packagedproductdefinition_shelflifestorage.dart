import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PackagedProductDefinitionShelfLifeStorage {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final FhirDuration periodDuration;
  final String periodString;
  final PrimitiveElement PeriodString;
  final List<CodeableConcept> specialPrecautionsForStorage;
  const PackagedProductDefinitionShelfLifeStorage({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.periodDuration,
    this.periodString,
    this.PeriodString,
    this.specialPrecautionsForStorage,
  });
}
