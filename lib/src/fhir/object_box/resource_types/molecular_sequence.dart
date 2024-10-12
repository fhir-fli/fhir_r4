// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMolecularSequence {
  ObjectBoxMolecularSequence({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.typeElement,
    required this.coordinateSystem,
    this.coordinateSystemElement,
    this.patient,
    this.specimen,
    this.device,
    this.performer,
    this.quantity,
    this.referenceSeq,
    this.variant,
    this.observedSeq,
    this.observedSeqElement,
    this.quality,
    this.readCoverage,
    this.readCoverageElement,
    this.repository,
    this.pointer,
    this.structureVariant,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  int coordinateSystem;
  ToOne<ObjectBoxElement>? coordinateSystemElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? specimen = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? device = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? performer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMolecularSequenceReferenceSeq>? referenceSeq =
      ToOne<ObjectBoxMolecularSequenceReferenceSeq>();
  ToMany<ObjectBoxMolecularSequenceVariant>? variant =
      ToMany<ObjectBoxMolecularSequenceVariant>();
  String? observedSeq;
  ToOne<ObjectBoxElement>? observedSeqElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxMolecularSequenceQuality>? quality =
      ToMany<ObjectBoxMolecularSequenceQuality>();
  int? readCoverage;
  ToOne<ObjectBoxElement>? readCoverageElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxMolecularSequenceRepository>? repository =
      ToMany<ObjectBoxMolecularSequenceRepository>();
  ToMany<ObjectBoxReference>? pointer = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxMolecularSequenceStructureVariant>? structureVariant =
      ToMany<ObjectBoxMolecularSequenceStructureVariant>();
}

@Entity()
class ObjectBoxMolecularSequenceReferenceSeq {
  ObjectBoxMolecularSequenceReferenceSeq({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.chromosome,
    this.genomeBuild,
    this.genomeBuildElement,
    this.orientation,
    this.orientationElement,
    this.referenceSeqId,
    this.referenceSeqPointer,
    this.referenceSeqString,
    this.referenceSeqStringElement,
    this.strand,
    this.strandElement,
    this.windowStart,
    this.windowStartElement,
    this.windowEnd,
    this.windowEndElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? chromosome =
      ToOne<ObjectBoxCodeableConcept>();
  String? genomeBuild;
  ToOne<ObjectBoxElement>? genomeBuildElement = ToOne<ObjectBoxElement>();
  String? orientation;
  ToOne<ObjectBoxElement>? orientationElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? referenceSeqId =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? referenceSeqPointer = ToOne<ObjectBoxReference>();
  String? referenceSeqString;
  ToOne<ObjectBoxElement>? referenceSeqStringElement =
      ToOne<ObjectBoxElement>();
  String? strand;
  ToOne<ObjectBoxElement>? strandElement = ToOne<ObjectBoxElement>();
  int? windowStart;
  ToOne<ObjectBoxElement>? windowStartElement = ToOne<ObjectBoxElement>();
  int? windowEnd;
  ToOne<ObjectBoxElement>? windowEndElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMolecularSequenceVariant {
  ObjectBoxMolecularSequenceVariant({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
    this.observedAllele,
    this.observedAlleleElement,
    this.referenceAllele,
    this.referenceAlleleElement,
    this.cigar,
    this.cigarElement,
    this.variantPointer,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? start;
  ToOne<ObjectBoxElement>? startElement = ToOne<ObjectBoxElement>();
  int? end;
  ToOne<ObjectBoxElement>? endElement = ToOne<ObjectBoxElement>();
  String? observedAllele;
  ToOne<ObjectBoxElement>? observedAlleleElement = ToOne<ObjectBoxElement>();
  String? referenceAllele;
  ToOne<ObjectBoxElement>? referenceAlleleElement = ToOne<ObjectBoxElement>();
  String? cigar;
  ToOne<ObjectBoxElement>? cigarElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? variantPointer = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMolecularSequenceQuality {
  ObjectBoxMolecularSequenceQuality({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.typeElement,
    this.standardSequence,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
    this.score,
    this.method,
    this.truthTP,
    this.truthTPElement,
    this.queryTP,
    this.queryTPElement,
    this.truthFN,
    this.truthFNElement,
    this.queryFP,
    this.queryFPElement,
    this.gtFP,
    this.gtFPElement,
    this.precision,
    this.precisionElement,
    this.recall,
    this.recallElement,
    this.fScore,
    this.fScoreElement,
    this.roc,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? standardSequence =
      ToOne<ObjectBoxCodeableConcept>();
  int? start;
  ToOne<ObjectBoxElement>? startElement = ToOne<ObjectBoxElement>();
  int? end;
  ToOne<ObjectBoxElement>? endElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity>? score = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept>? method = ToOne<ObjectBoxCodeableConcept>();
  double? truthTP;
  ToOne<ObjectBoxElement>? truthTPElement = ToOne<ObjectBoxElement>();
  double? queryTP;
  ToOne<ObjectBoxElement>? queryTPElement = ToOne<ObjectBoxElement>();
  double? truthFN;
  ToOne<ObjectBoxElement>? truthFNElement = ToOne<ObjectBoxElement>();
  double? queryFP;
  ToOne<ObjectBoxElement>? queryFPElement = ToOne<ObjectBoxElement>();
  double? gtFP;
  ToOne<ObjectBoxElement>? gtFPElement = ToOne<ObjectBoxElement>();
  double? precision;
  ToOne<ObjectBoxElement>? precisionElement = ToOne<ObjectBoxElement>();
  double? recall;
  ToOne<ObjectBoxElement>? recallElement = ToOne<ObjectBoxElement>();
  double? fScore;
  ToOne<ObjectBoxElement>? fScoreElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMolecularSequenceRoc>? roc =
      ToOne<ObjectBoxMolecularSequenceRoc>();
}

@Entity()
class ObjectBoxMolecularSequenceRoc {
  ObjectBoxMolecularSequenceRoc({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.score,
    this.scoreElement,
    this.numTP,
    this.numTPElement,
    this.numFP,
    this.numFPElement,
    this.numFN,
    this.numFNElement,
    this.precision,
    this.precisionElement,
    this.sensitivity,
    this.sensitivityElement,
    this.fMeasure,
    this.fMeasureElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<int>? score;
  ToMany<ObjectBoxElement>? scoreElement = ToMany<ObjectBoxElement>();
  List<int>? numTP;
  ToMany<ObjectBoxElement>? numTPElement = ToMany<ObjectBoxElement>();
  List<int>? numFP;
  ToMany<ObjectBoxElement>? numFPElement = ToMany<ObjectBoxElement>();
  List<int>? numFN;
  ToMany<ObjectBoxElement>? numFNElement = ToMany<ObjectBoxElement>();
  List<double>? precision;
  ToMany<ObjectBoxElement>? precisionElement = ToMany<ObjectBoxElement>();
  List<double>? sensitivity;
  ToMany<ObjectBoxElement>? sensitivityElement = ToMany<ObjectBoxElement>();
  List<double>? fMeasure;
  ToMany<ObjectBoxElement>? fMeasureElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMolecularSequenceRepository {
  ObjectBoxMolecularSequenceRepository({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.typeElement,
    this.url,
    this.urlElement,
    this.name,
    this.nameElement,
    this.datasetId,
    this.datasetIdElement,
    this.variantsetId,
    this.variantsetIdElement,
    this.readsetId,
    this.readsetIdElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? datasetId;
  ToOne<ObjectBoxElement>? datasetIdElement = ToOne<ObjectBoxElement>();
  String? variantsetId;
  ToOne<ObjectBoxElement>? variantsetIdElement = ToOne<ObjectBoxElement>();
  String? readsetId;
  ToOne<ObjectBoxElement>? readsetIdElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMolecularSequenceStructureVariant {
  ObjectBoxMolecularSequenceStructureVariant({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.variantType,
    this.exact,
    this.exactElement,
    this.length,
    this.lengthElement,
    this.outer,
    this.inner,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? variantType =
      ToOne<ObjectBoxCodeableConcept>();
  bool? exact;
  ToOne<ObjectBoxElement>? exactElement = ToOne<ObjectBoxElement>();
  int? length;
  ToOne<ObjectBoxElement>? lengthElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMolecularSequenceOuter>? outer =
      ToOne<ObjectBoxMolecularSequenceOuter>();
  ToOne<ObjectBoxMolecularSequenceInner>? inner =
      ToOne<ObjectBoxMolecularSequenceInner>();
}

@Entity()
class ObjectBoxMolecularSequenceOuter {
  ObjectBoxMolecularSequenceOuter({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? start;
  ToOne<ObjectBoxElement>? startElement = ToOne<ObjectBoxElement>();
  int? end;
  ToOne<ObjectBoxElement>? endElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMolecularSequenceInner {
  ObjectBoxMolecularSequenceInner({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? start;
  ToOne<ObjectBoxElement>? startElement = ToOne<ObjectBoxElement>();
  int? end;
  ToOne<ObjectBoxElement>? endElement = ToOne<ObjectBoxElement>();
}
