import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class BiologicallyDerivedProduct {
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
  final List<Identifier> identifier;
  final FhirCode productCategory;
  final PrimitiveElement productCategoryElement;
  final CodeableConcept productCode;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<Reference> request;
  final FhirInteger quantity;
  final PrimitiveElement quantityElement;
  final List<Reference> parent;
  final BiologicallyDerivedProductCollection collection;
  final List<BiologicallyDerivedProductProcessing> processing;
  final BiologicallyDerivedProductManipulation manipulation;
  final List<BiologicallyDerivedProductStorage> storage;
}

@Data()
@JsonCodable()
class BiologicallyDerivedProductCollection {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference collector;
  final Reference source;
  final String collectedDateTime;
  final PrimitiveElement collectedDateTimeElement;
  final Period collectedPeriod;
}

@Data()
@JsonCodable()
class BiologicallyDerivedProductProcessing {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final CodeableConcept procedure;
  final Reference additive;
  final String timeDateTime;
  final PrimitiveElement timeDateTimeElement;
  final Period timePeriod;
}

@Data()
@JsonCodable()
class BiologicallyDerivedProductManipulation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final String timeDateTime;
  final PrimitiveElement timeDateTimeElement;
  final Period timePeriod;
}

@Data()
@JsonCodable()
class BiologicallyDerivedProductStorage {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirDecimal temperature;
  final PrimitiveElement temperatureElement;
  final FhirCode scale;
  final PrimitiveElement scaleElement;
  final Period duration;
}


