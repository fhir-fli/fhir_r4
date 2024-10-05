import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class MolecularSequence extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? type;
  final Element? typeElement;
  final FhirInteger? coordinateSystem;
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
    this.coordinateSystem,
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
  }): super(resourceType: R4ResourceType.MolecularSequence);

@override
MolecularSequence clone() => this;

}


@Data()
@JsonCodable()
class MolecularSequenceReferenceSeq {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
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

}


@Data()
@JsonCodable()
class MolecularSequenceVariant {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
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

}


@Data()
@JsonCodable()
class MolecularSequenceQuality {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? type;
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

  MolecularSequenceQuality({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
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

}


@Data()
@JsonCodable()
class MolecularSequenceRoc {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
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

}


@Data()
@JsonCodable()
class MolecularSequenceRepository {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? type;
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

  MolecularSequenceRepository({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
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

}


@Data()
@JsonCodable()
class MolecularSequenceStructureVariant {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? variantType;
  final FhirBoolean? exact;
  final Element? exactElement;
  final FhirInteger? length;
  final Element? lengthElement;
  final MolecularSequenceOuter? outer;
  final MolecularSequenceInner? inner;

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

}


@Data()
@JsonCodable()
class MolecularSequenceOuter {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirInteger? start;
  final Element? startElement;
  final FhirInteger? end;
  final Element? endElement;

  MolecularSequenceOuter({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
  });

}


@Data()
@JsonCodable()
class MolecularSequenceInner {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirInteger? start;
  final Element? startElement;
  final FhirInteger? end;
  final Element? endElement;

  MolecularSequenceInner({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
  });

}



