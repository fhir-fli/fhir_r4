import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class MolecularSequence extends DomainResource {
  MolecularSequence({
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
  }) : super(resourceType: R4ResourceType.MolecularSequence);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final FhirCode? type;
  final Element? typeElement;
  final FhirInteger coordinateSystem;
  final Element? coordinateSystemElement;
  final Reference? patient;
  final Reference? specimen;
  final Reference? device;
  final Reference? performer;
  final Quantity? quantity;
  final MolecularSequenceReferenceSeq? referenceSeq;
  final List<MolecularSequenceVariant>? variant;
  final FhirString? observedSeq;
  final Element? observedSeqElement;
  final List<MolecularSequenceQuality>? quality;
  final FhirInteger? readCoverage;
  final Element? readCoverageElement;
  final List<MolecularSequenceRepository>? repository;
  final List<Reference>? pointer;
  final List<MolecularSequenceStructureVariant>? structureVariant;
  @override
  MolecularSequence clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class MolecularSequenceReferenceSeq extends BackboneElement {
  MolecularSequenceReferenceSeq({
    super.id,
    super.extension_,
    super.modifierExtension,
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
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? chromosome;
  final FhirString? genomeBuild;
  final Element? genomeBuildElement;
  final FhirCode? orientation;
  final Element? orientationElement;
  final CodeableConcept? referenceSeqId;
  final Reference? referenceSeqPointer;
  final FhirString? referenceSeqString;
  final Element? referenceSeqStringElement;
  final FhirCode? strand;
  final Element? strandElement;
  final FhirInteger? windowStart;
  final Element? windowStartElement;
  final FhirInteger? windowEnd;
  final Element? windowEndElement;
  @override
  MolecularSequenceReferenceSeq clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class MolecularSequenceVariant extends BackboneElement {
  MolecularSequenceVariant({
    super.id,
    super.extension_,
    super.modifierExtension,
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
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirInteger? start;
  final Element? startElement;
  final FhirInteger? end;
  final Element? endElement;
  final FhirString? observedAllele;
  final Element? observedAlleleElement;
  final FhirString? referenceAllele;
  final Element? referenceAlleleElement;
  final FhirString? cigar;
  final Element? cigarElement;
  final Reference? variantPointer;
  @override
  MolecularSequenceVariant clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class MolecularSequenceQuality extends BackboneElement {
  MolecularSequenceQuality({
    super.id,
    super.extension_,
    super.modifierExtension,
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
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode type;
  final Element? typeElement;
  final CodeableConcept? standardSequence;
  final FhirInteger? start;
  final Element? startElement;
  final FhirInteger? end;
  final Element? endElement;
  final Quantity? score;
  final CodeableConcept? method;
  final FhirDecimal? truthTP;
  final Element? truthTPElement;
  final FhirDecimal? queryTP;
  final Element? queryTPElement;
  final FhirDecimal? truthFN;
  final Element? truthFNElement;
  final FhirDecimal? queryFP;
  final Element? queryFPElement;
  final FhirDecimal? gtFP;
  final Element? gtFPElement;
  final FhirDecimal? precision;
  final Element? precisionElement;
  final FhirDecimal? recall;
  final Element? recallElement;
  final FhirDecimal? fScore;
  final Element? fScoreElement;
  final MolecularSequenceRoc? roc;
  @override
  MolecularSequenceQuality clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class MolecularSequenceRoc extends BackboneElement {
  MolecularSequenceRoc({
    super.id,
    super.extension_,
    super.modifierExtension,
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
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<FhirInteger>? score;
  final List<Element>? scoreElement;
  final List<FhirInteger>? numTP;
  final List<Element>? numTPElement;
  final List<FhirInteger>? numFP;
  final List<Element>? numFPElement;
  final List<FhirInteger>? numFN;
  final List<Element>? numFNElement;
  final List<FhirDecimal>? precision;
  final List<Element>? precisionElement;
  final List<FhirDecimal>? sensitivity;
  final List<Element>? sensitivityElement;
  final List<FhirDecimal>? fMeasure;
  final List<Element>? fMeasureElement;
  @override
  MolecularSequenceRoc clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class MolecularSequenceRepository extends BackboneElement {
  MolecularSequenceRepository({
    super.id,
    super.extension_,
    super.modifierExtension,
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
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode type;
  final Element? typeElement;
  final FhirUri? url;
  final Element? urlElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? datasetId;
  final Element? datasetIdElement;
  final FhirString? variantsetId;
  final Element? variantsetIdElement;
  final FhirString? readsetId;
  final Element? readsetIdElement;
  @override
  MolecularSequenceRepository clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class MolecularSequenceStructureVariant extends BackboneElement {
  MolecularSequenceStructureVariant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.variantType,
    this.exact,
    this.exactElement,
    this.length,
    this.lengthElement,
    this.outer,
    this.inner,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? variantType;
  final FhirBoolean? exact;
  final Element? exactElement;
  final FhirInteger? length;
  final Element? lengthElement;
  final MolecularSequenceOuter? outer;
  final MolecularSequenceInner? inner;
  @override
  MolecularSequenceStructureVariant clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class MolecularSequenceOuter extends BackboneElement {
  MolecularSequenceOuter({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirInteger? start;
  final Element? startElement;
  final FhirInteger? end;
  final Element? endElement;
  @override
  MolecularSequenceOuter clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class MolecularSequenceInner extends BackboneElement {
  MolecularSequenceInner({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirInteger? start;
  final Element? startElement;
  final FhirInteger? end;
  final Element? endElement;
  @override
  MolecularSequenceInner clone() => throw UnimplementedError();
}
