import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Specimen] /// A sample to be used for analysis.
class Specimen extends DomainResource {
  Specimen({
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
    this.accessionIdentifier,
    this.status,
    this.statusElement,
    this.type,
    this.subject,
    this.receivedTime,
    this.receivedTimeElement,
    this.parent,
    this.request,
    this.collection,
    this.processing,
    this.container,
    this.condition,
    this.note,
  }) : super(resourceType: R4ResourceType.Specimen);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Id for specimen.
  final List<Identifier>? identifier;

  /// [accessionIdentifier] /// The identifier assigned by the lab when accessioning specimen(s). This is
  /// not necessarily the same as the specimen identifier, depending on local lab
  /// procedures.
  final Identifier? accessionIdentifier;

  /// [status] /// The availability of the specimen.
  final FhirCode? status;
  final Element? statusElement;

  /// [type] /// The kind of material that forms the specimen.
  final CodeableConcept? type;

  /// [subject] /// Where the specimen came from. This may be from patient(s), from a location
  /// (e.g., the source of an environmental sample), or a sampling of a substance
  /// or a device.
  final Reference? subject;

  /// [receivedTime] /// Time when specimen was received for processing or testing.
  final FhirDateTime? receivedTime;
  final Element? receivedTimeElement;

  /// [parent] /// Reference to the parent (source) specimen which is used when the specimen
  /// was either derived from or a component of another specimen.
  final List<Reference>? parent;

  /// [request] /// Details concerning a service request that required a specimen to be
  /// collected.
  final List<Reference>? request;

  /// [collection] /// Details concerning the specimen collection.
  final SpecimenCollection? collection;

  /// [processing] /// Details concerning processing and processing steps for the specimen.
  final List<SpecimenProcessing>? processing;

  /// [container] /// The container holding the specimen. The recursive nature of containers;
  /// i.e. blood in tube in tray in rack is not addressed here.
  final List<SpecimenContainer>? container;

  /// [condition] /// A mode or state of being that describes the nature of the specimen.
  final List<CodeableConcept>? condition;

  /// [note] /// To communicate any details or issues about the specimen or during the
  /// specimen collection. (for example: broken vial, sent with patient, frozen).
  final List<Annotation>? note;
  @override
  Specimen clone() => throw UnimplementedError();
  Specimen copy({
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
    List<Identifier>? identifier,
    Identifier? accessionIdentifier,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? type,
    Reference? subject,
    FhirDateTime? receivedTime,
    Element? receivedTimeElement,
    List<Reference>? parent,
    List<Reference>? request,
    SpecimenCollection? collection,
    List<SpecimenProcessing>? processing,
    List<SpecimenContainer>? container,
    List<CodeableConcept>? condition,
    List<Annotation>? note,
  }) {
    return Specimen(
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
      accessionIdentifier: accessionIdentifier ?? this.accessionIdentifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      type: type ?? this.type,
      subject: subject ?? this.subject,
      receivedTime: receivedTime ?? this.receivedTime,
      receivedTimeElement: receivedTimeElement ?? this.receivedTimeElement,
      parent: parent ?? this.parent,
      request: request ?? this.request,
      collection: collection ?? this.collection,
      processing: processing ?? this.processing,
      container: container ?? this.container,
      condition: condition ?? this.condition,
      note: note ?? this.note,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SpecimenCollection] /// Details concerning the specimen collection.
class SpecimenCollection extends BackboneElement {
  SpecimenCollection({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.collector,
    this.collectedDateTime,
    this.collectedDateTimeElement,
    this.collectedPeriod,
    this.duration,
    this.quantity,
    this.method,
    this.bodySite,
    this.fastingStatusCodeableConcept,
    this.fastingStatusDuration,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [collector] /// Person who collected the specimen.
  final Reference? collector;

  /// [collectedDateTime] /// Time when specimen was collected from subject - the physiologically
  /// relevant time.
  final FhirDateTime? collectedDateTime;
  final Element? collectedDateTimeElement;

  /// [collectedPeriod] /// Time when specimen was collected from subject - the physiologically
  /// relevant time.
  final Period? collectedPeriod;

  /// [duration] /// The span of time over which the collection of a specimen occurred.
  final FhirDuration? duration;

  /// [quantity] /// The quantity of specimen collected; for instance the volume of a blood
  /// sample, or the physical measurement of an anatomic pathology sample.
  final Quantity? quantity;

  /// [method] /// A coded value specifying the technique that is used to perform the
  /// procedure.
  final CodeableConcept? method;

  /// [bodySite] /// Anatomical location from which the specimen was collected (if subject is a
  /// patient). This is the target site. This element is not used for
  /// environmental specimens.
  final CodeableConcept? bodySite;

  /// [fastingStatusCodeableConcept] /// Abstinence or reduction from some or all food, drink, or both, for a period
  /// of time prior to sample collection.
  final CodeableConcept? fastingStatusCodeableConcept;

  /// [fastingStatusDuration] /// Abstinence or reduction from some or all food, drink, or both, for a period
  /// of time prior to sample collection.
  final FhirDuration? fastingStatusDuration;
  @override
  SpecimenCollection clone() => throw UnimplementedError();
  SpecimenCollection copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? collector,
    FhirDateTime? collectedDateTime,
    Element? collectedDateTimeElement,
    Period? collectedPeriod,
    FhirDuration? duration,
    Quantity? quantity,
    CodeableConcept? method,
    CodeableConcept? bodySite,
    CodeableConcept? fastingStatusCodeableConcept,
    FhirDuration? fastingStatusDuration,
  }) {
    return SpecimenCollection(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      collector: collector ?? this.collector,
      collectedDateTime: collectedDateTime ?? this.collectedDateTime,
      collectedDateTimeElement:
          collectedDateTimeElement ?? this.collectedDateTimeElement,
      collectedPeriod: collectedPeriod ?? this.collectedPeriod,
      duration: duration ?? this.duration,
      quantity: quantity ?? this.quantity,
      method: method ?? this.method,
      bodySite: bodySite ?? this.bodySite,
      fastingStatusCodeableConcept:
          fastingStatusCodeableConcept ?? this.fastingStatusCodeableConcept,
      fastingStatusDuration:
          fastingStatusDuration ?? this.fastingStatusDuration,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SpecimenProcessing] /// Details concerning processing and processing steps for the specimen.
class SpecimenProcessing extends BackboneElement {
  SpecimenProcessing({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.procedure,
    this.additive,
    this.timeDateTime,
    this.timeDateTimeElement,
    this.timePeriod,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Textual description of procedure.
  final FhirString? description;
  final Element? descriptionElement;

  /// [procedure] /// A coded value specifying the procedure used to process the specimen.
  final CodeableConcept? procedure;

  /// [additive] /// Material used in the processing step.
  final List<Reference>? additive;

  /// [timeDateTime] /// A record of the time or period when the specimen processing occurred. For
  /// example the time of sample fixation or the period of time the sample was in
  /// formalin.
  final FhirDateTime? timeDateTime;
  final Element? timeDateTimeElement;

  /// [timePeriod] /// A record of the time or period when the specimen processing occurred. For
  /// example the time of sample fixation or the period of time the sample was in
  /// formalin.
  final Period? timePeriod;
  @override
  SpecimenProcessing clone() => throw UnimplementedError();
  SpecimenProcessing copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    CodeableConcept? procedure,
    List<Reference>? additive,
    FhirDateTime? timeDateTime,
    Element? timeDateTimeElement,
    Period? timePeriod,
  }) {
    return SpecimenProcessing(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      procedure: procedure ?? this.procedure,
      additive: additive ?? this.additive,
      timeDateTime: timeDateTime ?? this.timeDateTime,
      timeDateTimeElement: timeDateTimeElement ?? this.timeDateTimeElement,
      timePeriod: timePeriod ?? this.timePeriod,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SpecimenContainer] /// The container holding the specimen. The recursive nature of containers;
/// i.e. blood in tube in tray in rack is not addressed here.
class SpecimenContainer extends BackboneElement {
  SpecimenContainer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.description,
    this.descriptionElement,
    this.type,
    this.capacity,
    this.specimenQuantity,
    this.additiveCodeableConcept,
    this.additiveReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Id for container. There may be multiple; a manufacturer's bar code, lab
  /// assigned identifier, etc. The container ID may differ from the specimen id
  /// in some circumstances.
  final List<Identifier>? identifier;

  /// [description] /// Textual description of the container.
  final FhirString? description;
  final Element? descriptionElement;

  /// [type] /// The type of container associated with the specimen (e.g. slide, aliquot,
  /// etc.).
  final CodeableConcept? type;

  /// [capacity] /// The capacity (volume or other measure) the container may contain.
  final Quantity? capacity;

  /// [specimenQuantity] /// The quantity of specimen in the container; may be volume, dimensions, or
  /// other appropriate measurements, depending on the specimen type.
  final Quantity? specimenQuantity;

  /// [additiveCodeableConcept] /// Introduced substance to preserve, maintain or enhance the specimen.
  /// Examples: Formalin, Citrate, EDTA.
  final CodeableConcept? additiveCodeableConcept;

  /// [additiveReference] /// Introduced substance to preserve, maintain or enhance the specimen.
  /// Examples: Formalin, Citrate, EDTA.
  final Reference? additiveReference;
  @override
  SpecimenContainer clone() => throw UnimplementedError();
  SpecimenContainer copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirString? description,
    Element? descriptionElement,
    CodeableConcept? type,
    Quantity? capacity,
    Quantity? specimenQuantity,
    CodeableConcept? additiveCodeableConcept,
    Reference? additiveReference,
  }) {
    return SpecimenContainer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      type: type ?? this.type,
      capacity: capacity ?? this.capacity,
      specimenQuantity: specimenQuantity ?? this.specimenQuantity,
      additiveCodeableConcept:
          additiveCodeableConcept ?? this.additiveCodeableConcept,
      additiveReference: additiveReference ?? this.additiveReference,
    );
  }
}
