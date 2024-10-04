import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class MolecularSequence {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final FhirInteger coordinateSystem;
  final PrimitiveElement coordinateSystemElement;
  final Reference patient;
  final Reference specimen;
  final Reference device;
  final Reference performer;
  final Quantity quantity;
  final MolecularSequenceReferenceSeq referenceSeq;
  final List<MolecularSequenceVariant> variant;
  final String observedSeq;
  final PrimitiveElement observedSeqElement;
  final List<MolecularSequenceQuality> quality;
  final FhirInteger readCoverage;
  final PrimitiveElement readCoverageElement;
  final List<MolecularSequenceRepository> repository;
  final List<Reference> pointer;
  final List<MolecularSequenceStructureVariant> structureVariant;
  const MolecularSequence({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.type,
    required this.typeElement,
    required this.coordinateSystem,
    required this.coordinateSystemElement,
    required this.patient,
    required this.specimen,
    required this.device,
    required this.performer,
    required this.quantity,
    required this.referenceSeq,
    required this.variant,
    required this.observedSeq,
    required this.observedSeqElement,
    required this.quality,
    required this.readCoverage,
    required this.readCoverageElement,
    required this.repository,
    required this.pointer,
    required this.structureVariant,
  });
}

@Data()
@JsonCodable()
class MolecularSequenceReferenceSeq {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept chromosome;
  final String genomeBuild;
  final PrimitiveElement genomeBuildElement;
  final FhirCode orientation;
  final PrimitiveElement orientationElement;
  final CodeableConcept referenceSeqId;
  final Reference referenceSeqPointer;
  final String referenceSeqString;
  final PrimitiveElement referenceSeqStringElement;
  final FhirCode strand;
  final PrimitiveElement strandElement;
  final FhirInteger windowStart;
  final PrimitiveElement windowStartElement;
  final FhirInteger windowEnd;
  final PrimitiveElement windowEndElement;
  const MolecularSequenceReferenceSeq({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.chromosome,
    required this.genomeBuild,
    required this.genomeBuildElement,
    required this.orientation,
    required this.orientationElement,
    required this.referenceSeqId,
    required this.referenceSeqPointer,
    required this.referenceSeqString,
    required this.referenceSeqStringElement,
    required this.strand,
    required this.strandElement,
    required this.windowStart,
    required this.windowStartElement,
    required this.windowEnd,
    required this.windowEndElement,
  });
}

@Data()
@JsonCodable()
class MolecularSequenceVariant {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirInteger start;
  final PrimitiveElement startElement;
  final FhirInteger end;
  final PrimitiveElement endElement;
  final String observedAllele;
  final PrimitiveElement observedAlleleElement;
  final String referenceAllele;
  final PrimitiveElement referenceAlleleElement;
  final String cigar;
  final PrimitiveElement cigarElement;
  final Reference variantPointer;
  const MolecularSequenceVariant({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.start,
    required this.startElement,
    required this.end,
    required this.endElement,
    required this.observedAllele,
    required this.observedAlleleElement,
    required this.referenceAllele,
    required this.referenceAlleleElement,
    required this.cigar,
    required this.cigarElement,
    required this.variantPointer,
  });
}

@Data()
@JsonCodable()
class MolecularSequenceQuality {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final CodeableConcept standardSequence;
  final FhirInteger start;
  final PrimitiveElement startElement;
  final FhirInteger end;
  final PrimitiveElement endElement;
  final Quantity score;
  final CodeableConcept method;
  final FhirDecimal truthTP;
  final PrimitiveElement truthTPElement;
  final FhirDecimal queryTP;
  final PrimitiveElement queryTPElement;
  final FhirDecimal truthFN;
  final PrimitiveElement truthFNElement;
  final FhirDecimal queryFP;
  final PrimitiveElement queryFPElement;
  final FhirDecimal gtFP;
  final PrimitiveElement gtFPElement;
  final FhirDecimal precision;
  final PrimitiveElement precisionElement;
  final FhirDecimal recall;
  final PrimitiveElement recallElement;
  final FhirDecimal fScore;
  final PrimitiveElement fScoreElement;
  final MolecularSequenceRoc roc;
  const MolecularSequenceQuality({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.typeElement,
    required this.standardSequence,
    required this.start,
    required this.startElement,
    required this.end,
    required this.endElement,
    required this.score,
    required this.method,
    required this.truthTP,
    required this.truthTPElement,
    required this.queryTP,
    required this.queryTPElement,
    required this.truthFN,
    required this.truthFNElement,
    required this.queryFP,
    required this.queryFPElement,
    required this.gtFP,
    required this.gtFPElement,
    required this.precision,
    required this.precisionElement,
    required this.recall,
    required this.recallElement,
    required this.fScore,
    required this.fScoreElement,
    required this.roc,
  });
}

@Data()
@JsonCodable()
class MolecularSequenceRoc {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<FhirInteger> score;
  final List<PrimitiveElement> scoreElement;
  final List<FhirInteger> numTP;
  final List<PrimitiveElement> numTPElement;
  final List<FhirInteger> numFP;
  final List<PrimitiveElement> numFPElement;
  final List<FhirInteger> numFN;
  final List<PrimitiveElement> numFNElement;
  final List<FhirDecimal> precision;
  final List<PrimitiveElement> precisionElement;
  final List<FhirDecimal> sensitivity;
  final List<PrimitiveElement> sensitivityElement;
  final List<FhirDecimal> fMeasure;
  final List<PrimitiveElement> fMeasureElement;
  const MolecularSequenceRoc({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.score,
    required this.scoreElement,
    required this.numTP,
    required this.numTPElement,
    required this.numFP,
    required this.numFPElement,
    required this.numFN,
    required this.numFNElement,
    required this.precision,
    required this.precisionElement,
    required this.sensitivity,
    required this.sensitivityElement,
    required this.fMeasure,
    required this.fMeasureElement,
  });
}

@Data()
@JsonCodable()
class MolecularSequenceRepository {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final String name;
  final PrimitiveElement nameElement;
  final String datasetId;
  final PrimitiveElement datasetIdElement;
  final String variantsetId;
  final PrimitiveElement variantsetIdElement;
  final String readsetId;
  final PrimitiveElement readsetIdElement;
  const MolecularSequenceRepository({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.typeElement,
    required this.url,
    required this.urlElement,
    required this.name,
    required this.nameElement,
    required this.datasetId,
    required this.datasetIdElement,
    required this.variantsetId,
    required this.variantsetIdElement,
    required this.readsetId,
    required this.readsetIdElement,
  });
}

@Data()
@JsonCodable()
class MolecularSequenceStructureVariant {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept variantType;
  final FhirBoolean exact;
  final PrimitiveElement exactElement;
  final FhirInteger length;
  final PrimitiveElement lengthElement;
  final MolecularSequenceOuter outer;
  final MolecularSequenceInner inner;
  const MolecularSequenceStructureVariant({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.variantType,
    required this.exact,
    required this.exactElement,
    required this.length,
    required this.lengthElement,
    required this.outer,
    required this.inner,
  });
}

@Data()
@JsonCodable()
class MolecularSequenceOuter {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirInteger start;
  final PrimitiveElement startElement;
  final FhirInteger end;
  final PrimitiveElement endElement;
  const MolecularSequenceOuter({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.start,
    required this.startElement,
    required this.end,
    required this.endElement,
  });
}

@Data()
@JsonCodable()
class MolecularSequenceInner {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirInteger start;
  final PrimitiveElement startElement;
  final FhirInteger end;
  final PrimitiveElement endElement;
  const MolecularSequenceInner({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.start,
    required this.startElement,
    required this.end,
    required this.endElement,
  });
}


