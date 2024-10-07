import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class SpecimenDefinition extends DomainResource {
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
  }) : super(resourceType: R4ResourceType.SpecimenDefinition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Identifier? identifier;
  final CodeableConcept? typeCollected;
  final List<CodeableConcept>? patientPreparation;
  final FhirString? timeAspect;
  final Element? timeAspectElement;
  final List<CodeableConcept>? collection;
  final List<SpecimenDefinitionTypeTested>? typeTested;
  @override
  SpecimenDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SpecimenDefinitionTypeTested extends BackboneElement {
  SpecimenDefinitionTypeTested({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.isDerived,
    this.isDerivedElement,
    this.type,
    required this.preference,
    this.preferenceElement,
    this.container,
    this.requirement,
    this.requirementElement,
    this.retentionTime,
    this.rejectionCriterion,
    this.handling,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirBoolean? isDerived;
  final Element? isDerivedElement;
  final CodeableConcept? type;
  final FhirCode preference;
  final Element? preferenceElement;
  final SpecimenDefinitionContainer? container;
  final FhirString? requirement;
  final Element? requirementElement;
  final FhirDuration? retentionTime;
  final List<CodeableConcept>? rejectionCriterion;
  final List<SpecimenDefinitionHandling>? handling;
  @override
  SpecimenDefinitionTypeTested clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SpecimenDefinitionContainer extends BackboneElement {
  SpecimenDefinitionContainer({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  SpecimenDefinitionContainer clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SpecimenDefinitionAdditive extends BackboneElement {
  SpecimenDefinitionAdditive({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.additiveCodeableConcept,
    required this.additiveReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept additiveCodeableConcept;
  final Reference additiveReference;
  @override
  SpecimenDefinitionAdditive clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SpecimenDefinitionHandling extends BackboneElement {
  SpecimenDefinitionHandling({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.temperatureQualifier,
    this.temperatureRange,
    this.maxDuration,
    this.instruction,
    this.instructionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? temperatureQualifier;
  final Range? temperatureRange;
  final FhirDuration? maxDuration;
  final FhirString? instruction;
  final Element? instructionElement;
  @override
  SpecimenDefinitionHandling clone() => throw UnimplementedError();
}
