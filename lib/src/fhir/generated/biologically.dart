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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode productCategory;
  final PrimitiveElement ProductCategory;
  final CodeableConcept productCode;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<Reference> request;
  final FhirInteger quantity;
  final PrimitiveElement Quantity;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference collector;
  final Reference source;
  final String collectedDateTime;
  final PrimitiveElement CollectedDateTime;
  final Period collectedPeriod;
}

@Data()
@JsonCodable()
class BiologicallyDerivedProductProcessing {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final CodeableConcept procedure;
  final Reference additive;
  final String timeDateTime;
  final PrimitiveElement TimeDateTime;
  final Period timePeriod;
}

@Data()
@JsonCodable()
class BiologicallyDerivedProductManipulation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final String timeDateTime;
  final PrimitiveElement TimeDateTime;
  final Period timePeriod;
}

@Data()
@JsonCodable()
class BiologicallyDerivedProductStorage {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final FhirDecimal temperature;
  final PrimitiveElement Temperature;
  final FhirCode scale;
  final PrimitiveElement Scale;
  final Period duration;
}


