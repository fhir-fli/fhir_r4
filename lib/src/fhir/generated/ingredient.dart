import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Ingredient {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<Reference> for_;
  final CodeableConcept role;
  final List<CodeableConcept> function_;
  final FhirBoolean allergenicIndicator;
  final PrimitiveElement allergenicIndicatorElement;
  final List<IngredientManufacturer> manufacturer;
  final IngredientSubstance substance;
}

@Data()
@JsonCodable()
class IngredientManufacturer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode role;
  final PrimitiveElement roleElement;
  final Reference manufacturer;
}

@Data()
@JsonCodable()
class IngredientSubstance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableReference code;
  final List<IngredientStrength> strength;
}

@Data()
@JsonCodable()
class IngredientStrength {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Ratio presentationRatio;
  final RatioRange presentationRatioRange;
  final String textPresentation;
  final PrimitiveElement textPresentationElement;
  final Ratio concentrationRatio;
  final RatioRange concentrationRatioRange;
  final String textConcentration;
  final PrimitiveElement textConcentrationElement;
  final String measurementPoint;
  final PrimitiveElement measurementPointElement;
  final List<CodeableConcept> country;
  final List<IngredientReferenceStrength> referenceStrength;
}

@Data()
@JsonCodable()
class IngredientReferenceStrength {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableReference substance;
  final Ratio strengthRatio;
  final RatioRange strengthRatioRange;
  final String measurementPoint;
  final PrimitiveElement measurementPointElement;
  final List<CodeableConcept> country;
}


