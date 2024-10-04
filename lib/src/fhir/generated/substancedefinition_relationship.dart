import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubstanceDefinitionRelationship {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference substanceDefinitionReference;
  final CodeableConcept substanceDefinitionCodeableConcept;
  final CodeableConcept type;
  final FhirBoolean isDefining;
  final PrimitiveElement IsDefining;
  final Quantity amountQuantity;
  final Ratio amountRatio;
  final String amountString;
  final PrimitiveElement AmountString;
  final Ratio ratioHighLimitAmount;
  final CodeableConcept comparator;
  final List<Reference> source;
  const SubstanceDefinitionRelationship({
    this.id,
    this.extension,
    this.modifierExtension,
    this.substanceDefinitionReference,
    this.substanceDefinitionCodeableConcept,
    required this.type,
    this.isDefining,
    this.IsDefining,
    this.amountQuantity,
    this.amountRatio,
    this.amountString,
    this.AmountString,
    this.ratioHighLimitAmount,
    this.comparator,
    this.source,
  });
}
