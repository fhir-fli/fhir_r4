import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Specimen {
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
  final Identifier accessionIdentifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept type;
  final Reference subject;
  final FhirDateTime receivedTime;
  final PrimitiveElement receivedTimeElement;
  final List<Reference> parent;
  final List<Reference> request;
  final SpecimenCollection collection;
  final List<SpecimenProcessing> processing;
  final List<SpecimenContainer> container;
  final List<CodeableConcept> condition;
  final List<Annotation> note;
}

@Data()
@JsonCodable()
class SpecimenCollection {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference collector;
  final String collectedDateTime;
  final PrimitiveElement collectedDateTimeElement;
  final Period collectedPeriod;
  final FhirDuration duration;
  final Quantity quantity;
  final CodeableConcept method;
  final CodeableConcept bodySite;
  final CodeableConcept fastingStatusCodeableConcept;
  final FhirDuration fastingStatusDuration;
}

@Data()
@JsonCodable()
class SpecimenProcessing {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final CodeableConcept procedure;
  final List<Reference> additive;
  final String timeDateTime;
  final PrimitiveElement timeDateTimeElement;
  final Period timePeriod;
}

@Data()
@JsonCodable()
class SpecimenContainer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final String description;
  final PrimitiveElement descriptionElement;
  final CodeableConcept type;
  final Quantity capacity;
  final Quantity specimenQuantity;
  final CodeableConcept additiveCodeableConcept;
  final Reference additiveReference;
}

@Data()
@JsonCodable()
class SpecimenDefinition {
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
  final CodeableConcept typeCollected;
  final List<CodeableConcept> patientPreparation;
  final String timeAspect;
  final PrimitiveElement timeAspectElement;
  final List<CodeableConcept> collection;
  final List<SpecimenDefinitionTypeTested> typeTested;
}

@Data()
@JsonCodable()
class SpecimenDefinitionTypeTested {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean isDerived;
  final PrimitiveElement isDerivedElement;
  final CodeableConcept type;
  final FhirCode preference;
  final PrimitiveElement preferenceElement;
  final SpecimenDefinitionContainer container;
  final String requirement;
  final PrimitiveElement requirementElement;
  final FhirDuration retentionTime;
  final List<CodeableConcept> rejectionCriterion;
  final List<SpecimenDefinitionHandling> handling;
}

@Data()
@JsonCodable()
class SpecimenDefinitionContainer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept material;
  final CodeableConcept type;
  final CodeableConcept cap;
  final String description;
  final PrimitiveElement descriptionElement;
  final Quantity capacity;
  final Quantity minimumVolumeQuantity;
  final String minimumVolumeString;
  final PrimitiveElement minimumVolumeStringElement;
  final List<SpecimenDefinitionAdditive> additive;
  final String preparation;
  final PrimitiveElement preparationElement;
}

@Data()
@JsonCodable()
class SpecimenDefinitionAdditive {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept additiveCodeableConcept;
  final Reference additiveReference;
}

@Data()
@JsonCodable()
class SpecimenDefinitionHandling {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept temperatureQualifier;
  final Range temperatureRange;
  final FhirDuration maxDuration;
  final String instruction;
  final PrimitiveElement instructionElement;
}

