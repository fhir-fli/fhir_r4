import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class MolecularSequence extends Resource {
  MolecularSequence({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.type,
    required this.coordinateSystem,
    this.patient,
    this.specimen,
    this.device,
    this.performer,
    this.quantity,
    this.referenceSeq,
    this.variant,
    this.observedSeq,
    this.quality,
    this.readCoverage,
    this.repository,
    this.pointer,
    this.structureVariant,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? type;
  int coordinateSystem;
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
  ToMany<MolecularSequenceQuality>? quality =
      ToMany<MolecularSequenceQuality>();
  int? readCoverage;
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
    this.orientation,
    this.referenceSeqId,
    this.referenceSeqPointer,
    this.referenceSeqString,
    this.strand,
    this.windowStart,
    this.windowEnd,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? chromosome = ToOne<CodeableConcept>();
  String? genomeBuild;
  String? orientation;
  ToOne<CodeableConcept>? referenceSeqId = ToOne<CodeableConcept>();
  ToOne<Reference>? referenceSeqPointer = ToOne<Reference>();
  String? referenceSeqString;
  String? strand;
  int? windowStart;
  int? windowEnd;
}

@Entity()
class MolecularSequenceVariant {
  MolecularSequenceVariant({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.start,
    this.end,
    this.observedAllele,
    this.referenceAllele,
    this.cigar,
    this.variantPointer,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? start;
  int? end;
  String? observedAllele;
  String? referenceAllele;
  String? cigar;
  ToOne<Reference>? variantPointer = ToOne<Reference>();
}

@Entity()
class MolecularSequenceQuality {
  MolecularSequenceQuality({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.standardSequence,
    this.start,
    this.end,
    this.score,
    this.method,
    this.truthTP,
    this.queryTP,
    this.truthFN,
    this.queryFP,
    this.gtFP,
    this.precision,
    this.recall,
    this.fScore,
    this.roc,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  ToOne<CodeableConcept>? standardSequence = ToOne<CodeableConcept>();
  int? start;
  int? end;
  ToOne<Quantity>? score = ToOne<Quantity>();
  ToOne<CodeableConcept>? method = ToOne<CodeableConcept>();
  double? truthTP;
  double? queryTP;
  double? truthFN;
  double? queryFP;
  double? gtFP;
  double? precision;
  double? recall;
  double? fScore;
  ToOne<MolecularSequenceRoc>? roc = ToOne<MolecularSequenceRoc>();
}

@Entity()
class MolecularSequenceRoc {
  MolecularSequenceRoc({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.score,
    this.numTP,
    this.numFP,
    this.numFN,
    this.precision,
    this.sensitivity,
    this.fMeasure,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  List<int>? score;
  List<int>? numTP;
  List<int>? numFP;
  List<int>? numFN;
  List<double>? precision;
  List<double>? sensitivity;
  List<double>? fMeasure;
}

@Entity()
class MolecularSequenceRepository {
  MolecularSequenceRepository({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.url,
    this.name,
    this.datasetId,
    this.variantsetId,
    this.readsetId,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  String? url;
  String? name;
  String? datasetId;
  String? variantsetId;
  String? readsetId;
}

@Entity()
class MolecularSequenceStructureVariant {
  MolecularSequenceStructureVariant({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.variantType,
    this.exact,
    this.length,
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
  int? length;
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
    this.end,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? start;
  int? end;
}

@Entity()
class MolecularSequenceInner {
  MolecularSequenceInner({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.start,
    this.end,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? start;
  int? end;
}
