import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubstanceDefinitionStructure {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept stereochemistry;
  final CodeableConcept opticalActivity;
  final String molecularFormula;
  final PrimitiveElement MolecularFormula;
  final String molecularFormulaByMoiety;
  final PrimitiveElement MolecularFormulaByMoiety;
  final SubstanceDefinition_MolecularWeight molecularWeight;
  final List<CodeableConcept> technique;
  final List<Reference> sourceDocument;
  final List<SubstanceDefinitionRepresentation> representation;
  const SubstanceDefinitionStructure({
    this.id,
    this.extension,
    this.modifierExtension,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    this.MolecularFormula,
    this.molecularFormulaByMoiety,
    this.MolecularFormulaByMoiety,
    this.molecularWeight,
    this.technique,
    this.sourceDocument,
    this.representation,
  });
}
