import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class MolecularSequence extends Resource {
  MolecularSequence({
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
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  ToOne<Element>? implicitRulesElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? type;
  ToOne<Element>? typeElement = ToOne<Element>();
  int coordinateSystem;
  ToOne<Element>? coordinateSystemElement = ToOne<Element>();
  ToOne<Reference>? patient = ToOne<Reference>();
  ToOne<Reference>? specimen = ToOne<Reference>();
  ToOne<Reference>? device = ToOne<Reference>();
  ToOne<Reference>? performer = ToOne<Reference>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<MolecularSequenceReferenceSeq>? referenceSeq =
      ToOne<MolecularSequenceReferenceSeq>();
  ToMany<MolecularSequenceVariant>? variant =
      ToMany<MolecularSequenceVariant>();
  String? observedSeq;
  ToOne<Element>? observedSeqElement = ToOne<Element>();
  ToMany<MolecularSequenceQuality>? quality =
      ToMany<MolecularSequenceQuality>();
  int? readCoverage;
  ToOne<Element>? readCoverageElement = ToOne<Element>();
  ToMany<MolecularSequenceRepository>? repository =
      ToMany<MolecularSequenceRepository>();
  ToMany<Reference>? pointer = ToMany<Reference>();
  ToMany<MolecularSequenceStructureVariant>? structureVariant =
      ToMany<MolecularSequenceStructureVariant>();
}

@Entity()
class MolecularSequenceReferenceSeq {
  MolecularSequenceReferenceSeq({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? chromosome = ToOne<CodeableConcept>();
  String? genomeBuild;
  ToOne<Element>? genomeBuildElement = ToOne<Element>();
  String? orientation;
  ToOne<Element>? orientationElement = ToOne<Element>();
  ToOne<CodeableConcept>? referenceSeqId = ToOne<CodeableConcept>();
  ToOne<Reference>? referenceSeqPointer = ToOne<Reference>();
  String? referenceSeqString;
  ToOne<Element>? referenceSeqStringElement = ToOne<Element>();
  String? strand;
  ToOne<Element>? strandElement = ToOne<Element>();
  int? windowStart;
  ToOne<Element>? windowStartElement = ToOne<Element>();
  int? windowEnd;
  ToOne<Element>? windowEndElement = ToOne<Element>();
}

@Entity()
class MolecularSequenceVariant {
  MolecularSequenceVariant({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? start;
  ToOne<Element>? startElement = ToOne<Element>();
  int? end;
  ToOne<Element>? endElement = ToOne<Element>();
  String? observedAllele;
  ToOne<Element>? observedAlleleElement = ToOne<Element>();
  String? referenceAllele;
  ToOne<Element>? referenceAlleleElement = ToOne<Element>();
  String? cigar;
  ToOne<Element>? cigarElement = ToOne<Element>();
  ToOne<Reference>? variantPointer = ToOne<Reference>();
}

@Entity()
class MolecularSequenceQuality {
  MolecularSequenceQuality({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  ToOne<Element>? typeElement = ToOne<Element>();
  ToOne<CodeableConcept>? standardSequence = ToOne<CodeableConcept>();
  int? start;
  ToOne<Element>? startElement = ToOne<Element>();
  int? end;
  ToOne<Element>? endElement = ToOne<Element>();
  ToOne<Quantity>? score = ToOne<Quantity>();
  ToOne<CodeableConcept>? method = ToOne<CodeableConcept>();
  double? truthTP;
  ToOne<Element>? truthTPElement = ToOne<Element>();
  double? queryTP;
  ToOne<Element>? queryTPElement = ToOne<Element>();
  double? truthFN;
  ToOne<Element>? truthFNElement = ToOne<Element>();
  double? queryFP;
  ToOne<Element>? queryFPElement = ToOne<Element>();
  double? gtFP;
  ToOne<Element>? gtFPElement = ToOne<Element>();
  double? precision;
  ToOne<Element>? precisionElement = ToOne<Element>();
  double? recall;
  ToOne<Element>? recallElement = ToOne<Element>();
  double? fScore;
  ToOne<Element>? fScoreElement = ToOne<Element>();
  ToOne<MolecularSequenceRoc>? roc = ToOne<MolecularSequenceRoc>();
}

@Entity()
class MolecularSequenceRoc {
  MolecularSequenceRoc({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  List<int>? score;
  ToMany<Element>? scoreElement = ToMany<Element>();
  List<int>? numTP;
  ToMany<Element>? numTPElement = ToMany<Element>();
  List<int>? numFP;
  ToMany<Element>? numFPElement = ToMany<Element>();
  List<int>? numFN;
  ToMany<Element>? numFNElement = ToMany<Element>();
  List<double>? precision;
  ToMany<Element>? precisionElement = ToMany<Element>();
  List<double>? sensitivity;
  ToMany<Element>? sensitivityElement = ToMany<Element>();
  List<double>? fMeasure;
  ToMany<Element>? fMeasureElement = ToMany<Element>();
}

@Entity()
class MolecularSequenceRepository {
  MolecularSequenceRepository({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  ToOne<Element>? typeElement = ToOne<Element>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? datasetId;
  ToOne<Element>? datasetIdElement = ToOne<Element>();
  String? variantsetId;
  ToOne<Element>? variantsetIdElement = ToOne<Element>();
  String? readsetId;
  ToOne<Element>? readsetIdElement = ToOne<Element>();
}

@Entity()
class MolecularSequenceStructureVariant {
  MolecularSequenceStructureVariant({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? variantType = ToOne<CodeableConcept>();
  bool? exact;
  ToOne<Element>? exactElement = ToOne<Element>();
  int? length;
  ToOne<Element>? lengthElement = ToOne<Element>();
  ToOne<MolecularSequenceOuter>? outer = ToOne<MolecularSequenceOuter>();
  ToOne<MolecularSequenceInner>? inner = ToOne<MolecularSequenceInner>();
}

@Entity()
class MolecularSequenceOuter {
  MolecularSequenceOuter({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? start;
  ToOne<Element>? startElement = ToOne<Element>();
  int? end;
  ToOne<Element>? endElement = ToOne<Element>();
}

@Entity()
class MolecularSequenceInner {
  MolecularSequenceInner({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? start;
  ToOne<Element>? startElement = ToOne<Element>();
  int? end;
  ToOne<Element>? endElement = ToOne<Element>();
}
