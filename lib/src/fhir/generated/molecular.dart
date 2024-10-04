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
}


