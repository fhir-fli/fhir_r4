import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Substance extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final List<CodeableConcept>? category;
  final CodeableConcept code;
  final FhirString? description;
  final Element? descriptionElement;
  final List<SubstanceInstance>? instance;
  final List<SubstanceIngredient>? ingredient;

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

@override
Substance clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubstanceInstance extends BackboneElement {
  final Identifier? identifier;
  final FhirDateTime? expiry;
  final Element? expiryElement;
  final Quantity? quantity;

  SubstanceInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.expiry,
this.expiryElement,
    this.quantity,
  });

@override
SubstanceInstance clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubstanceIngredient extends BackboneElement {
  final Ratio? quantity;
  final CodeableConcept substanceCodeableConcept;
  final Reference substanceReference;

  SubstanceIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    required this.substanceCodeableConcept,
    required this.substanceReference,
  });

@override
SubstanceIngredient clone() => throw UnimplementedError();
}

