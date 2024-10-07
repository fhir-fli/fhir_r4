import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
@Entity()
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Identifier? identifier;
  final FhirDateTime? expiry;
  final Element? expiryElement;
  final Quantity? quantity;
  @override
  SubstanceInstance clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SubstanceIngredient extends BackboneElement {
  SubstanceIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    required this.substanceCodeableConcept,
    required this.substanceReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Ratio? quantity;
  final CodeableConcept substanceCodeableConcept;
  final Reference substanceReference;
  @override
  SubstanceIngredient clone() => throw UnimplementedError();
}
