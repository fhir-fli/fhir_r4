import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExplanationOfBenefitBenefitBalance {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept category;
  final FhirBoolean excluded;
  final PrimitiveElement Excluded;
  final String name;
  final PrimitiveElement Name;
  final String description;
  final PrimitiveElement Description;
  final CodeableConcept network;
  final CodeableConcept unit;
  final CodeableConcept term;
  final List<ExplanationOfBenefitFinancial> financial;
  const ExplanationOfBenefitBenefitBalance({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.category,
    this.excluded,
    this.Excluded,
    this.name,
    this.Name,
    this.description,
    this.Description,
    this.network,
    this.unit,
    this.term,
    this.financial,
  });
}
