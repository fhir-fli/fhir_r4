// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMolecularSequence {
  ObjectBoxMolecularSequence({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    this.type,
    ObjectBoxElement? typeElement,
    required this.coordinateSystem,
    ObjectBoxElement? coordinateSystemElement,
    ObjectBoxReference? patient,
    ObjectBoxReference? specimen,
    ObjectBoxReference? device,
    ObjectBoxReference? performer,
    ObjectBoxQuantity? quantity,
    ObjectBoxMolecularSequenceReferenceSeq? referenceSeq,
    List<ObjectBoxMolecularSequenceVariant>? variant,
    this.observedSeq,
    ObjectBoxElement? observedSeqElement,
    List<ObjectBoxMolecularSequenceQuality>? quality,
    this.readCoverage,
    ObjectBoxElement? readCoverageElement,
    List<ObjectBoxMolecularSequenceRepository>? repository,
    List<ObjectBoxReference>? pointer,
    List<ObjectBoxMolecularSequenceStructureVariant>? structureVariant,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.typeElement.target = typeElement;
    this.coordinateSystemElement.target = coordinateSystemElement;
    this.patient.target = patient;
    this.specimen.target = specimen;
    this.device.target = device;
    this.performer.target = performer;
    this.quantity.target = quantity;
    this.referenceSeq.target = referenceSeq;
    this.variant.addAll(variant ?? []);
    this.observedSeqElement.target = observedSeqElement;
    this.quality.addAll(quality ?? []);
    this.readCoverageElement.target = readCoverageElement;
    this.repository.addAll(repository ?? []);
    this.pointer.addAll(pointer ?? []);
    this.structureVariant.addAll(structureVariant ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  int coordinateSystem;
  ToOne<ObjectBoxElement> coordinateSystemElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> specimen = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> device = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> performer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMolecularSequenceReferenceSeq> referenceSeq =
      ToOne<ObjectBoxMolecularSequenceReferenceSeq>();
  ToMany<ObjectBoxMolecularSequenceVariant> variant =
      ToMany<ObjectBoxMolecularSequenceVariant>();
  String? observedSeq;
  ToOne<ObjectBoxElement> observedSeqElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxMolecularSequenceQuality> quality =
      ToMany<ObjectBoxMolecularSequenceQuality>();
  int? readCoverage;
  ToOne<ObjectBoxElement> readCoverageElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxMolecularSequenceRepository> repository =
      ToMany<ObjectBoxMolecularSequenceRepository>();
  ToMany<ObjectBoxReference> pointer = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxMolecularSequenceStructureVariant> structureVariant =
      ToMany<ObjectBoxMolecularSequenceStructureVariant>();
}

@Entity()
class ObjectBoxMolecularSequenceReferenceSeq {
  ObjectBoxMolecularSequenceReferenceSeq({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? chromosome,
    this.genomeBuild,
    ObjectBoxElement? genomeBuildElement,
    this.orientation,
    ObjectBoxElement? orientationElement,
    ObjectBoxCodeableConcept? referenceSeqId,
    ObjectBoxReference? referenceSeqPointer,
    this.referenceSeqString,
    ObjectBoxElement? referenceSeqStringElement,
    this.strand,
    ObjectBoxElement? strandElement,
    this.windowStart,
    ObjectBoxElement? windowStartElement,
    this.windowEnd,
    ObjectBoxElement? windowEndElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.chromosome.target = chromosome;
    this.genomeBuildElement.target = genomeBuildElement;
    this.orientationElement.target = orientationElement;
    this.referenceSeqId.target = referenceSeqId;
    this.referenceSeqPointer.target = referenceSeqPointer;
    this.referenceSeqStringElement.target = referenceSeqStringElement;
    this.strandElement.target = strandElement;
    this.windowStartElement.target = windowStartElement;
    this.windowEndElement.target = windowEndElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> chromosome =
      ToOne<ObjectBoxCodeableConcept>();
  String? genomeBuild;
  ToOne<ObjectBoxElement> genomeBuildElement = ToOne<ObjectBoxElement>();
  String? orientation;
  ToOne<ObjectBoxElement> orientationElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> referenceSeqId =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> referenceSeqPointer = ToOne<ObjectBoxReference>();
  String? referenceSeqString;
  ToOne<ObjectBoxElement> referenceSeqStringElement = ToOne<ObjectBoxElement>();
  String? strand;
  ToOne<ObjectBoxElement> strandElement = ToOne<ObjectBoxElement>();
  int? windowStart;
  ToOne<ObjectBoxElement> windowStartElement = ToOne<ObjectBoxElement>();
  int? windowEnd;
  ToOne<ObjectBoxElement> windowEndElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMolecularSequenceVariant {
  ObjectBoxMolecularSequenceVariant({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.start,
    ObjectBoxElement? startElement,
    this.end,
    ObjectBoxElement? endElement,
    this.observedAllele,
    ObjectBoxElement? observedAlleleElement,
    this.referenceAllele,
    ObjectBoxElement? referenceAlleleElement,
    this.cigar,
    ObjectBoxElement? cigarElement,
    ObjectBoxReference? variantPointer,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.startElement.target = startElement;
    this.endElement.target = endElement;
    this.observedAlleleElement.target = observedAlleleElement;
    this.referenceAlleleElement.target = referenceAlleleElement;
    this.cigarElement.target = cigarElement;
    this.variantPointer.target = variantPointer;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? start;
  ToOne<ObjectBoxElement> startElement = ToOne<ObjectBoxElement>();
  int? end;
  ToOne<ObjectBoxElement> endElement = ToOne<ObjectBoxElement>();
  String? observedAllele;
  ToOne<ObjectBoxElement> observedAlleleElement = ToOne<ObjectBoxElement>();
  String? referenceAllele;
  ToOne<ObjectBoxElement> referenceAlleleElement = ToOne<ObjectBoxElement>();
  String? cigar;
  ToOne<ObjectBoxElement> cigarElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> variantPointer = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMolecularSequenceQuality {
  ObjectBoxMolecularSequenceQuality({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.type,
    ObjectBoxElement? typeElement,
    ObjectBoxCodeableConcept? standardSequence,
    this.start,
    ObjectBoxElement? startElement,
    this.end,
    ObjectBoxElement? endElement,
    ObjectBoxQuantity? score,
    ObjectBoxCodeableConcept? method,
    this.truthTP,
    ObjectBoxElement? truthTPElement,
    this.queryTP,
    ObjectBoxElement? queryTPElement,
    this.truthFN,
    ObjectBoxElement? truthFNElement,
    this.queryFP,
    ObjectBoxElement? queryFPElement,
    this.gtFP,
    ObjectBoxElement? gtFPElement,
    this.precision,
    ObjectBoxElement? precisionElement,
    this.recall,
    ObjectBoxElement? recallElement,
    this.fScore,
    ObjectBoxElement? fScoreElement,
    ObjectBoxMolecularSequenceRoc? roc,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.standardSequence.target = standardSequence;
    this.startElement.target = startElement;
    this.endElement.target = endElement;
    this.score.target = score;
    this.method.target = method;
    this.truthTPElement.target = truthTPElement;
    this.queryTPElement.target = queryTPElement;
    this.truthFNElement.target = truthFNElement;
    this.queryFPElement.target = queryFPElement;
    this.gtFPElement.target = gtFPElement;
    this.precisionElement.target = precisionElement;
    this.recallElement.target = recallElement;
    this.fScoreElement.target = fScoreElement;
    this.roc.target = roc;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> standardSequence =
      ToOne<ObjectBoxCodeableConcept>();
  int? start;
  ToOne<ObjectBoxElement> startElement = ToOne<ObjectBoxElement>();
  int? end;
  ToOne<ObjectBoxElement> endElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> score = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept> method = ToOne<ObjectBoxCodeableConcept>();
  double? truthTP;
  ToOne<ObjectBoxElement> truthTPElement = ToOne<ObjectBoxElement>();
  double? queryTP;
  ToOne<ObjectBoxElement> queryTPElement = ToOne<ObjectBoxElement>();
  double? truthFN;
  ToOne<ObjectBoxElement> truthFNElement = ToOne<ObjectBoxElement>();
  double? queryFP;
  ToOne<ObjectBoxElement> queryFPElement = ToOne<ObjectBoxElement>();
  double? gtFP;
  ToOne<ObjectBoxElement> gtFPElement = ToOne<ObjectBoxElement>();
  double? precision;
  ToOne<ObjectBoxElement> precisionElement = ToOne<ObjectBoxElement>();
  double? recall;
  ToOne<ObjectBoxElement> recallElement = ToOne<ObjectBoxElement>();
  double? fScore;
  ToOne<ObjectBoxElement> fScoreElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMolecularSequenceRoc> roc =
      ToOne<ObjectBoxMolecularSequenceRoc>();
}

@Entity()
class ObjectBoxMolecularSequenceRoc {
  ObjectBoxMolecularSequenceRoc({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.score,
    List<ObjectBoxElement>? scoreElement,
    this.numTP,
    List<ObjectBoxElement>? numTPElement,
    this.numFP,
    List<ObjectBoxElement>? numFPElement,
    this.numFN,
    List<ObjectBoxElement>? numFNElement,
    this.precision,
    List<ObjectBoxElement>? precisionElement,
    this.sensitivity,
    List<ObjectBoxElement>? sensitivityElement,
    this.fMeasure,
    List<ObjectBoxElement>? fMeasureElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.scoreElement.addAll(scoreElement ?? []);
    this.numTPElement.addAll(numTPElement ?? []);
    this.numFPElement.addAll(numFPElement ?? []);
    this.numFNElement.addAll(numFNElement ?? []);
    this.precisionElement.addAll(precisionElement ?? []);
    this.sensitivityElement.addAll(sensitivityElement ?? []);
    this.fMeasureElement.addAll(fMeasureElement ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<int>? score;
  ToMany<ObjectBoxElement> scoreElement = ToMany<ObjectBoxElement>();
  List<int>? numTP;
  ToMany<ObjectBoxElement> numTPElement = ToMany<ObjectBoxElement>();
  List<int>? numFP;
  ToMany<ObjectBoxElement> numFPElement = ToMany<ObjectBoxElement>();
  List<int>? numFN;
  ToMany<ObjectBoxElement> numFNElement = ToMany<ObjectBoxElement>();
  List<double>? precision;
  ToMany<ObjectBoxElement> precisionElement = ToMany<ObjectBoxElement>();
  List<double>? sensitivity;
  ToMany<ObjectBoxElement> sensitivityElement = ToMany<ObjectBoxElement>();
  List<double>? fMeasure;
  ToMany<ObjectBoxElement> fMeasureElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMolecularSequenceRepository {
  ObjectBoxMolecularSequenceRepository({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.type,
    ObjectBoxElement? typeElement,
    this.url,
    ObjectBoxElement? urlElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.datasetId,
    ObjectBoxElement? datasetIdElement,
    this.variantsetId,
    ObjectBoxElement? variantsetIdElement,
    this.readsetId,
    ObjectBoxElement? readsetIdElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.urlElement.target = urlElement;
    this.nameElement.target = nameElement;
    this.datasetIdElement.target = datasetIdElement;
    this.variantsetIdElement.target = variantsetIdElement;
    this.readsetIdElement.target = readsetIdElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? datasetId;
  ToOne<ObjectBoxElement> datasetIdElement = ToOne<ObjectBoxElement>();
  String? variantsetId;
  ToOne<ObjectBoxElement> variantsetIdElement = ToOne<ObjectBoxElement>();
  String? readsetId;
  ToOne<ObjectBoxElement> readsetIdElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMolecularSequenceStructureVariant {
  ObjectBoxMolecularSequenceStructureVariant({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? variantType,
    this.exact,
    ObjectBoxElement? exactElement,
    this.length,
    ObjectBoxElement? lengthElement,
    ObjectBoxMolecularSequenceOuter? outer,
    ObjectBoxMolecularSequenceInner? inner,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.variantType.target = variantType;
    this.exactElement.target = exactElement;
    this.lengthElement.target = lengthElement;
    this.outer.target = outer;
    this.inner.target = inner;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> variantType =
      ToOne<ObjectBoxCodeableConcept>();
  bool? exact;
  ToOne<ObjectBoxElement> exactElement = ToOne<ObjectBoxElement>();
  int? length;
  ToOne<ObjectBoxElement> lengthElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMolecularSequenceOuter> outer =
      ToOne<ObjectBoxMolecularSequenceOuter>();
  ToOne<ObjectBoxMolecularSequenceInner> inner =
      ToOne<ObjectBoxMolecularSequenceInner>();
}

@Entity()
class ObjectBoxMolecularSequenceOuter {
  ObjectBoxMolecularSequenceOuter({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.start,
    ObjectBoxElement? startElement,
    this.end,
    ObjectBoxElement? endElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.startElement.target = startElement;
    this.endElement.target = endElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? start;
  ToOne<ObjectBoxElement> startElement = ToOne<ObjectBoxElement>();
  int? end;
  ToOne<ObjectBoxElement> endElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMolecularSequenceInner {
  ObjectBoxMolecularSequenceInner({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.start,
    ObjectBoxElement? startElement,
    this.end,
    ObjectBoxElement? endElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.startElement.target = startElement;
    this.endElement.target = endElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? start;
  ToOne<ObjectBoxElement> startElement = ToOne<ObjectBoxElement>();
  int? end;
  ToOne<ObjectBoxElement> endElement = ToOne<ObjectBoxElement>();
}
