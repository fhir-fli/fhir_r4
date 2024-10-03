import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class MolecularSequenceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'MolecularSequence';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  int? coordinateSystem;

  @ToOne()
  PrimitiveElementEntity? coordinateSystemElement;

  @ToOne()
  ReferenceEntity? patient;

  @ToOne()
  ReferenceEntity? specimen;

  @ToOne()
  ReferenceEntity? device;

  @ToOne()
  ReferenceEntity? performer;

  @ToOne()
  QuantityEntity? quantity;

  @ToOne()
  MolecularSequenceReferenceSeqEntity? referenceSeq;

  @ToMany()
  List<MolecularSequenceVariantEntity>? variant;

  String? observedSeq;

  @ToOne()
  PrimitiveElementEntity? observedSeqElement;

  @ToMany()
  List<MolecularSequenceQualityEntity>? quality;

  int? readCoverage;

  @ToOne()
  PrimitiveElementEntity? readCoverageElement;

  @ToMany()
  List<MolecularSequenceRepositoryEntity>? repository;

  @ToMany()
  List<ReferenceEntity>? pointer;

  @ToMany()
  List<MolecularSequenceStructureVariantEntity>? structureVariant;
}

class MolecularSequenceReferenceSeqEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? chromosome;

  String? genomeBuild;

  @ToOne()
  PrimitiveElementEntity? genomeBuildElement;

  String? orientation;

  @ToOne()
  PrimitiveElementEntity? orientationElement;

  @ToOne()
  CodeableConceptEntity? referenceSeqId;

  @ToOne()
  ReferenceEntity? referenceSeqPointer;

  String? referenceSeqString;

  @ToOne()
  PrimitiveElementEntity? referenceSeqStringElement;

  String? strand;

  @ToOne()
  PrimitiveElementEntity? strandElement;

  int? windowStart;

  @ToOne()
  PrimitiveElementEntity? windowStartElement;

  int? windowEnd;

  @ToOne()
  PrimitiveElementEntity? windowEndElement;
}

class MolecularSequenceVariantEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  int? start;

  @ToOne()
  PrimitiveElementEntity? startElement;

  int? end;

  @ToOne()
  PrimitiveElementEntity? endElement;

  String? observedAllele;

  @ToOne()
  PrimitiveElementEntity? observedAlleleElement;

  String? referenceAllele;

  @ToOne()
  PrimitiveElementEntity? referenceAlleleElement;

  String? cigar;

  @ToOne()
  PrimitiveElementEntity? cigarElement;

  @ToOne()
  ReferenceEntity? variantPointer;
}

class MolecularSequenceQualityEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  @ToOne()
  CodeableConceptEntity? standardSequence;

  int? start;

  @ToOne()
  PrimitiveElementEntity? startElement;

  int? end;

  @ToOne()
  PrimitiveElementEntity? endElement;

  @ToOne()
  QuantityEntity? score;

  @ToOne()
  CodeableConceptEntity? method;

  double? truthTP;

  @ToOne()
  PrimitiveElementEntity? truthTPElement;

  double? queryTP;

  @ToOne()
  PrimitiveElementEntity? queryTPElement;

  double? truthFN;

  @ToOne()
  PrimitiveElementEntity? truthFNElement;

  double? queryFP;

  @ToOne()
  PrimitiveElementEntity? queryFPElement;

  double? gtFP;

  @ToOne()
  PrimitiveElementEntity? gtFPElement;

  double? precision;

  @ToOne()
  PrimitiveElementEntity? precisionElement;

  double? recall;

  @ToOne()
  PrimitiveElementEntity? recallElement;

  double? fScore;

  @ToOne()
  PrimitiveElementEntity? fScoreElement;

  @ToOne()
  MolecularSequenceRocEntity? roc;
}

class MolecularSequenceRocEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  List<FhirInteger>? score;

  @ToMany()
  List<PrimitiveElementEntity>? scoreElement;

  List<FhirInteger>? numTP;

  @ToMany()
  List<PrimitiveElementEntity>? numTPElement;

  List<FhirInteger>? numFP;

  @ToMany()
  List<PrimitiveElementEntity>? numFPElement;

  List<FhirInteger>? numFN;

  @ToMany()
  List<PrimitiveElementEntity>? numFNElement;

  List<FhirDecimal>? precision;

  @ToMany()
  List<PrimitiveElementEntity>? precisionElement;

  List<FhirDecimal>? sensitivity;

  @ToMany()
  List<PrimitiveElementEntity>? sensitivityElement;

  List<FhirDecimal>? fMeasure;

  @ToMany()
  List<PrimitiveElementEntity>? fMeasureElement;
}

class MolecularSequenceRepositoryEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? datasetId;

  @ToOne()
  PrimitiveElementEntity? datasetIdElement;

  String? variantsetId;

  @ToOne()
  PrimitiveElementEntity? variantsetIdElement;

  String? readsetId;

  @ToOne()
  PrimitiveElementEntity? readsetIdElement;
}

class MolecularSequenceStructureVariantEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? variantType;

  bool? exact;

  @ToOne()
  PrimitiveElementEntity? exactElement;

  int? length;

  @ToOne()
  PrimitiveElementEntity? lengthElement;

  @ToOne()
  MolecularSequenceOuterEntity? outer;

  @ToOne()
  MolecularSequenceInnerEntity? inner;
}

class MolecularSequenceOuterEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  int? start;

  @ToOne()
  PrimitiveElementEntity? startElement;

  int? end;

  @ToOne()
  PrimitiveElementEntity? endElement;
}

class MolecularSequenceInnerEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  int? start;

  @ToOne()
  PrimitiveElementEntity? startElement;

  int? end;

  @ToOne()
  PrimitiveElementEntity? endElement;
}
