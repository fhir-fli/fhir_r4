import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Ingredient extends DomainResource {
  Ingredient({
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
    required this.status,
    this.statusElement,
    this.for_,
    required this.role,
    this.function_,
    this.allergenicIndicator,
    this.allergenicIndicatorElement,
    this.manufacturer,
    required this.substance,
  }) : super(resourceType: R4ResourceType.Ingredient);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Identifier? identifier;
  final FhirCode status;
  final Element? statusElement;
  final List<Reference>? for_;
  final CodeableConcept role;
  final List<CodeableConcept>? function_;
  final FhirBoolean? allergenicIndicator;
  final Element? allergenicIndicatorElement;
  final List<IngredientManufacturer>? manufacturer;
  final IngredientSubstance substance;
  @override
  Ingredient clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class IngredientManufacturer extends BackboneElement {
  IngredientManufacturer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.roleElement,
    required this.manufacturer,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode? role;
  final Element? roleElement;
  final Reference manufacturer;
  @override
  IngredientManufacturer clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class IngredientSubstance extends BackboneElement {
  IngredientSubstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.strength,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableReference code;
  final List<IngredientStrength>? strength;
  @override
  IngredientSubstance clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class IngredientStrength extends BackboneElement {
  IngredientStrength({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.presentationRatio,
    this.presentationRatioRange,
    this.textPresentation,
    this.textPresentationElement,
    this.concentrationRatio,
    this.concentrationRatioRange,
    this.textConcentration,
    this.textConcentrationElement,
    this.measurementPoint,
    this.measurementPointElement,
    this.country,
    this.referenceStrength,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Ratio? presentationRatio;
  final RatioRange? presentationRatioRange;
  final FhirString? textPresentation;
  final Element? textPresentationElement;
  final Ratio? concentrationRatio;
  final RatioRange? concentrationRatioRange;
  final FhirString? textConcentration;
  final Element? textConcentrationElement;
  final FhirString? measurementPoint;
  final Element? measurementPointElement;
  final List<CodeableConcept>? country;
  final List<IngredientReferenceStrength>? referenceStrength;
  @override
  IngredientStrength clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class IngredientReferenceStrength extends BackboneElement {
  IngredientReferenceStrength({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substance,
    required this.strengthRatio,
    required this.strengthRatioRange,
    this.measurementPoint,
    this.measurementPointElement,
    this.country,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableReference? substance;
  final Ratio strengthRatio;
  final RatioRange strengthRatioRange;
  final FhirString? measurementPoint;
  final Element? measurementPointElement;
  final List<CodeableConcept>? country;
  @override
  IngredientReferenceStrength clone() => throw UnimplementedError();
}
