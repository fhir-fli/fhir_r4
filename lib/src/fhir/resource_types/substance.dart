import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Substance extends DomainResource {
  Substance({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.statusElement,
    this.category,
    required this.code,
    this.description,
    this.descriptionElement,
    this.instance,
    this.ingredient,
  }) : super(resourceType: R4ResourceType.Substance);

  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final List<CodeableConcept>? category;
  final CodeableConcept code;
  final FhirString? description;
  final Element? descriptionElement;
  final List<SubstanceInstance>? instance;
  final List<SubstanceIngredient>? ingredient;
  @override
  Substance clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class SubstanceInstance extends BackboneElement {
  SubstanceInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.expiry,
    this.expiryElement,
    this.quantity,
  });

  final Identifier? identifier;
  final FhirDateTime? expiry;
  final Element? expiryElement;
  final Quantity? quantity;
  @override
  SubstanceInstance clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class SubstanceIngredient extends BackboneElement {
  SubstanceIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    required this.substanceCodeableConcept,
    required this.substanceReference,
  });

  final Ratio? quantity;
  final CodeableConcept substanceCodeableConcept;
  final Reference substanceReference;
  @override
  SubstanceIngredient clone() => throw UnimplementedError();
}
