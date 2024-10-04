import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubstanceDefinitionMoiety {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept role;
  final Identifier identifier;
  final String name;
  final PrimitiveElement Name;
  final CodeableConcept stereochemistry;
  final CodeableConcept opticalActivity;
  final String molecularFormula;
  final PrimitiveElement MolecularFormula;
  final Quantity amountQuantity;
  final String amountString;
  final PrimitiveElement AmountString;
  final CodeableConcept measurementType;
  const SubstanceDefinitionMoiety({
    this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    this.identifier,
    this.name,
    this.Name,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    this.MolecularFormula,
    this.amountQuantity,
    this.amountString,
    this.AmountString,
    this.measurementType,
  });
}
