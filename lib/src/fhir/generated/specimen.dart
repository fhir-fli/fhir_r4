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
  const Specimen({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.accessionIdentifier,
    required this.status,
    required this.statusElement,
    required this.type,
    required this.subject,
    required this.receivedTime,
    required this.receivedTimeElement,
    required this.parent,
    required this.request,
    required this.collection,
    required this.processing,
    required this.container,
    required this.condition,
    required this.note,
  });
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
  const SpecimenCollection({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.collector,
    required this.collectedDateTime,
    required this.collectedDateTimeElement,
    required this.collectedPeriod,
    required this.duration,
    required this.quantity,
    required this.method,
    required this.bodySite,
    required this.fastingStatusCodeableConcept,
    required this.fastingStatusDuration,
  });
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
  const SpecimenProcessing({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.procedure,
    required this.additive,
    required this.timeDateTime,
    required this.timeDateTimeElement,
    required this.timePeriod,
  });
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
  const SpecimenContainer({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.description,
    required this.descriptionElement,
    required this.type,
    required this.capacity,
    required this.specimenQuantity,
    required this.additiveCodeableConcept,
    required this.additiveReference,
  });
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
  const SpecimenDefinition({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.typeCollected,
    required this.patientPreparation,
    required this.timeAspect,
    required this.timeAspectElement,
    required this.collection,
    required this.typeTested,
  });
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
  const SpecimenDefinitionTypeTested({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.isDerived,
    required this.isDerivedElement,
    required this.type,
    required this.preference,
    required this.preferenceElement,
    required this.container,
    required this.requirement,
    required this.requirementElement,
    required this.retentionTime,
    required this.rejectionCriterion,
    required this.handling,
  });
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
  const SpecimenDefinitionContainer({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.material,
    required this.type,
    required this.cap,
    required this.description,
    required this.descriptionElement,
    required this.capacity,
    required this.minimumVolumeQuantity,
    required this.minimumVolumeString,
    required this.minimumVolumeStringElement,
    required this.additive,
    required this.preparation,
    required this.preparationElement,
  });
}

@Data()
@JsonCodable()
class SpecimenDefinitionAdditive {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept additiveCodeableConcept;
  final Reference additiveReference;
  const SpecimenDefinitionAdditive({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.additiveCodeableConcept,
    required this.additiveReference,
  });
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
  const SpecimenDefinitionHandling({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.temperatureQualifier,
    required this.temperatureRange,
    required this.maxDuration,
    required this.instruction,
    required this.instructionElement,
  });
}


