import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class SpecimenDefinition extends DomainResource {
  final Identifier? identifier;
  final CodeableConcept? typeCollected;
  final List<CodeableConcept>? patientPreparation;
  final FhirString? timeAspect;
  final Element? timeAspectElement;
  final List<CodeableConcept>? collection;
  final List<SpecimenDefinitionTypeTested>? typeTested;

  SpecimenDefinition({
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
    this.typeCollected,
    this.patientPreparation,
    this.timeAspect,
    this.timeAspectElement,
    this.collection,
    this.typeTested,
  }): super(resourceType: R4ResourceType.SpecimenDefinition);

@override
SpecimenDefinition clone() => this;

}


@Data()
@JsonCodable()
class SpecimenDefinitionTypeTested {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirBoolean? isDerived;
  final Element? isDerivedElement;
  final CodeableConcept? type;
  final FhirCode? preference;
  final Element? preferenceElement;
  final SpecimenDefinitionContainer? container;
  final FhirString? requirement;
  final Element? requirementElement;
  final FhirDuration? retentionTime;
  final List<CodeableConcept>? rejectionCriterion;
  final List<SpecimenDefinitionHandling>? handling;

  SpecimenDefinitionTypeTested({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.isDerived,
    this.isDerivedElement,
    this.type,
    this.preference,
    this.preferenceElement,
    this.container,
    this.requirement,
    this.requirementElement,
    this.retentionTime,
    this.rejectionCriterion,
    this.handling,
  });

}


@Data()
@JsonCodable()
class SpecimenDefinitionContainer {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? material;
  final CodeableConcept? type;
  final CodeableConcept? cap;
  final FhirString? description;
  final Element? descriptionElement;
  final Quantity? capacity;
  final Quantity? minimumVolumeQuantity;
  final FhirString? minimumVolumeString;
  final Element? minimumVolumeStringElement;
  final List<SpecimenDefinitionAdditive>? additive;
  final FhirString? preparation;
  final Element? preparationElement;

  SpecimenDefinitionContainer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.material,
    this.type,
    this.cap,
    this.description,
    this.descriptionElement,
    this.capacity,
    this.minimumVolumeQuantity,
    this.minimumVolumeString,
    this.minimumVolumeStringElement,
    this.additive,
    this.preparation,
    this.preparationElement,
  });

}


@Data()
@JsonCodable()
class SpecimenDefinitionAdditive {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? additiveCodeableConcept;
  final Reference? additiveReference;

  SpecimenDefinitionAdditive({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.additiveCodeableConcept,
    this.additiveReference,
  });

}


@Data()
@JsonCodable()
class SpecimenDefinitionHandling {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? temperatureQualifier;
  final Range? temperatureRange;
  final FhirDuration? maxDuration;
  final FhirString? instruction;
  final Element? instructionElement;

  SpecimenDefinitionHandling({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.temperatureQualifier,
    this.temperatureRange,
    this.maxDuration,
    this.instruction,
    this.instructionElement,
  });

}



