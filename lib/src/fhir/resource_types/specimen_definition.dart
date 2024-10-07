import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [SpecimenDefinition] /// A kind of specimen with associated set of requirements.
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

  /// [identifier] /// A business identifier associated with the kind of specimen.
  final Identifier? identifier;

  /// [typeCollected] /// The kind of material to be collected.
  final CodeableConcept? typeCollected;

  /// [patientPreparation] /// Preparation of the patient for specimen collection.
  final List<CodeableConcept>? patientPreparation;

  /// [timeAspect] /// Time aspect of specimen collection (duration or offset).
  final FhirString? timeAspect;
  final Element? timeAspectElement;

  /// [collection] /// The action to be performed for collecting the specimen.
  final List<CodeableConcept>? collection;

  /// [typeTested] /// Specimen conditioned in a container as expected by the testing laboratory.
  final List<SpecimenDefinitionTypeTested>? typeTested;
  @override
  SpecimenDefinition clone() => throw UnimplementedError();
  SpecimenDefinition copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    CodeableConcept? typeCollected,
    List<CodeableConcept>? patientPreparation,
    FhirString? timeAspect,
    Element? timeAspectElement,
    List<CodeableConcept>? collection,
    List<SpecimenDefinitionTypeTested>? typeTested,
  }) {
    return SpecimenDefinition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      typeCollected: typeCollected ?? this.typeCollected,
      patientPreparation: patientPreparation ?? this.patientPreparation,
      timeAspect: timeAspect ?? this.timeAspect,
      timeAspectElement: timeAspectElement ?? this.timeAspectElement,
      collection: collection ?? this.collection,
      typeTested: typeTested ?? this.typeTested,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SpecimenDefinitionTypeTested] /// Specimen conditioned in a container as expected by the testing laboratory.
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

  /// [isDerived] /// Primary of secondary specimen.
  final FhirBoolean? isDerived;
  final Element? isDerivedElement;

  /// [type] /// The kind of specimen conditioned for testing expected by lab.
  final CodeableConcept? type;

  /// [preference] /// The preference for this type of conditioned specimen.
  final FhirCode preference;
  final Element? preferenceElement;

  /// [container] /// The specimen's container.
  final SpecimenDefinitionContainer? container;

  /// [requirement] /// Requirements for delivery and special handling of this kind of conditioned
  /// specimen.
  final FhirString? requirement;
  final Element? requirementElement;

  /// [retentionTime] /// The usual time that a specimen of this kind is retained after the ordered
  /// tests are completed, for the purpose of additional testing.
  final FhirDuration? retentionTime;

  /// [rejectionCriterion] /// Criterion for rejection of the specimen in its container by the laboratory.
  final List<CodeableConcept>? rejectionCriterion;

  /// [handling] /// Set of instructions for preservation/transport of the specimen at a defined
  /// temperature interval, prior the testing process.
  final List<SpecimenDefinitionHandling>? handling;
  @override
  SpecimenDefinitionTypeTested clone() => throw UnimplementedError();
  SpecimenDefinitionTypeTested copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? isDerived,
    Element? isDerivedElement,
    CodeableConcept? type,
    FhirCode? preference,
    Element? preferenceElement,
    SpecimenDefinitionContainer? container,
    FhirString? requirement,
    Element? requirementElement,
    FhirDuration? retentionTime,
    List<CodeableConcept>? rejectionCriterion,
    List<SpecimenDefinitionHandling>? handling,
  }) {
    return SpecimenDefinitionTypeTested(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      isDerived: isDerived ?? this.isDerived,
      isDerivedElement: isDerivedElement ?? this.isDerivedElement,
      type: type ?? this.type,
      preference: preference ?? this.preference,
      preferenceElement: preferenceElement ?? this.preferenceElement,
      container: container ?? this.container,
      requirement: requirement ?? this.requirement,
      requirementElement: requirementElement ?? this.requirementElement,
      retentionTime: retentionTime ?? this.retentionTime,
      rejectionCriterion: rejectionCriterion ?? this.rejectionCriterion,
      handling: handling ?? this.handling,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SpecimenDefinitionContainer] /// The specimen's container.
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

  /// [material] /// The type of material of the container.
  final CodeableConcept? material;

  /// [type] /// The type of container used to contain this kind of specimen.
  final CodeableConcept? type;

  /// [cap] /// Color of container cap.
  final CodeableConcept? cap;

  /// [description] /// The textual description of the kind of container.
  final FhirString? description;
  final Element? descriptionElement;

  /// [capacity] /// The capacity (volume or other measure) of this kind of container.
  final Quantity? capacity;

  /// [minimumVolumeQuantity] /// The minimum volume to be conditioned in the container.
  final Quantity? minimumVolumeQuantity;

  /// [minimumVolumeString] /// The minimum volume to be conditioned in the container.
  final FhirString? minimumVolumeString;
  final Element? minimumVolumeStringElement;

  /// [additive] /// Substance introduced in the kind of container to preserve, maintain or
  /// enhance the specimen. Examples: Formalin, Citrate, EDTA.
  final List<SpecimenDefinitionAdditive>? additive;

  /// [preparation] /// Special processing that should be applied to the container for this kind of
  /// specimen.
  final FhirString? preparation;
  final Element? preparationElement;
  @override
  SpecimenDefinitionContainer clone() => throw UnimplementedError();
  SpecimenDefinitionContainer copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? material,
    CodeableConcept? type,
    CodeableConcept? cap,
    FhirString? description,
    Element? descriptionElement,
    Quantity? capacity,
    Quantity? minimumVolumeQuantity,
    FhirString? minimumVolumeString,
    Element? minimumVolumeStringElement,
    List<SpecimenDefinitionAdditive>? additive,
    FhirString? preparation,
    Element? preparationElement,
  }) {
    return SpecimenDefinitionContainer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      material: material ?? this.material,
      type: type ?? this.type,
      cap: cap ?? this.cap,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      capacity: capacity ?? this.capacity,
      minimumVolumeQuantity:
          minimumVolumeQuantity ?? this.minimumVolumeQuantity,
      minimumVolumeString: minimumVolumeString ?? this.minimumVolumeString,
      minimumVolumeStringElement:
          minimumVolumeStringElement ?? this.minimumVolumeStringElement,
      additive: additive ?? this.additive,
      preparation: preparation ?? this.preparation,
      preparationElement: preparationElement ?? this.preparationElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SpecimenDefinitionAdditive] /// Substance introduced in the kind of container to preserve, maintain or
/// enhance the specimen. Examples: Formalin, Citrate, EDTA.
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

  /// [additiveCodeableConcept] /// Substance introduced in the kind of container to preserve, maintain or
  /// enhance the specimen. Examples: Formalin, Citrate, EDTA.
  final CodeableConcept additiveCodeableConcept;

  /// [additiveReference] /// Substance introduced in the kind of container to preserve, maintain or
  /// enhance the specimen. Examples: Formalin, Citrate, EDTA.
  final Reference additiveReference;
  @override
  SpecimenDefinitionAdditive clone() => throw UnimplementedError();
  SpecimenDefinitionAdditive copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? additiveCodeableConcept,
    Reference? additiveReference,
  }) {
    return SpecimenDefinitionAdditive(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      additiveCodeableConcept:
          additiveCodeableConcept ?? this.additiveCodeableConcept,
      additiveReference: additiveReference ?? this.additiveReference,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SpecimenDefinitionHandling] /// Set of instructions for preservation/transport of the specimen at a defined
/// temperature interval, prior the testing process.
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

  /// [temperatureQualifier] /// It qualifies the interval of temperature, which characterizes an occurrence
  /// of handling. Conditions that are not related to temperature may be handled
  /// in the instruction element.
  final CodeableConcept? temperatureQualifier;

  /// [temperatureRange] /// The temperature interval for this set of handling instructions.
  final Range? temperatureRange;

  /// [maxDuration] /// The maximum time interval of preservation of the specimen with these
  /// conditions.
  final FhirDuration? maxDuration;

  /// [instruction] /// Additional textual instructions for the preservation or transport of the
  /// specimen. For instance, 'Protect from light exposure'.
  final FhirString? instruction;
  final Element? instructionElement;
  @override
  SpecimenDefinitionHandling clone() => throw UnimplementedError();
  SpecimenDefinitionHandling copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? temperatureQualifier,
    Range? temperatureRange,
    FhirDuration? maxDuration,
    FhirString? instruction,
    Element? instructionElement,
  }) {
    return SpecimenDefinitionHandling(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      temperatureQualifier: temperatureQualifier ?? this.temperatureQualifier,
      temperatureRange: temperatureRange ?? this.temperatureRange,
      maxDuration: maxDuration ?? this.maxDuration,
      instruction: instruction ?? this.instruction,
      instructionElement: instructionElement ?? this.instructionElement,
    );
  }
}
