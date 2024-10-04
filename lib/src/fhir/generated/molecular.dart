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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirInteger coordinateSystem;
  final PrimitiveElement CoordinateSystem;
  final Reference patient;
  final Reference specimen;
  final Reference device;
  final Reference performer;
  final Quantity quantity;
  final MolecularSequenceReferenceSeq referenceSeq;
  final List<MolecularSequenceVariant> variant;
  final String observedSeq;
  final PrimitiveElement ObservedSeq;
  final List<MolecularSequenceQuality> quality;
  final FhirInteger readCoverage;
  final PrimitiveElement ReadCoverage;
  final List<MolecularSequenceRepository> repository;
  final List<Reference> pointer;
  final List<MolecularSequenceStructureVariant> structureVariant;
}

@Data()
@JsonCodable()
class MolecularSequenceReferenceSeq {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept chromosome;
  final String genomeBuild;
  final PrimitiveElement GenomeBuild;
  final FhirCode orientation;
  final PrimitiveElement Orientation;
  final CodeableConcept referenceSeqId;
  final Reference referenceSeqPointer;
  final String referenceSeqString;
  final PrimitiveElement ReferenceSeqString;
  final FhirCode strand;
  final PrimitiveElement Strand;
  final FhirInteger windowStart;
  final PrimitiveElement WindowStart;
  final FhirInteger windowEnd;
  final PrimitiveElement WindowEnd;
}

@Data()
@JsonCodable()
class MolecularSequenceVariant {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirInteger start;
  final PrimitiveElement Start;
  final FhirInteger end;
  final PrimitiveElement End;
  final String observedAllele;
  final PrimitiveElement ObservedAllele;
  final String referenceAllele;
  final PrimitiveElement ReferenceAllele;
  final String cigar;
  final PrimitiveElement Cigar;
  final Reference variantPointer;
}

@Data()
@JsonCodable()
class MolecularSequenceQuality {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final CodeableConcept standardSequence;
  final FhirInteger start;
  final PrimitiveElement Start;
  final FhirInteger end;
  final PrimitiveElement End;
  final Quantity score;
  final CodeableConcept method;
  final FhirDecimal truthTP;
  final PrimitiveElement TruthTP;
  final FhirDecimal queryTP;
  final PrimitiveElement QueryTP;
  final FhirDecimal truthFN;
  final PrimitiveElement TruthFN;
  final FhirDecimal queryFP;
  final PrimitiveElement QueryFP;
  final FhirDecimal gtFP;
  final PrimitiveElement GtFP;
  final FhirDecimal precision;
  final PrimitiveElement Precision;
  final FhirDecimal recall;
  final PrimitiveElement Recall;
  final FhirDecimal fScore;
  final PrimitiveElement FScore;
  final MolecularSequenceRoc roc;
}

@Data()
@JsonCodable()
class MolecularSequenceRoc {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<FhirInteger> score;
  final List<PrimitiveElement> Score;
  final List<FhirInteger> numTP;
  final List<PrimitiveElement> NumTP;
  final List<FhirInteger> numFP;
  final List<PrimitiveElement> NumFP;
  final List<FhirInteger> numFN;
  final List<PrimitiveElement> NumFN;
  final List<FhirDecimal> precision;
  final List<PrimitiveElement> Precision;
  final List<FhirDecimal> sensitivity;
  final List<PrimitiveElement> Sensitivity;
  final List<FhirDecimal> fMeasure;
  final List<PrimitiveElement> FMeasure;
}

@Data()
@JsonCodable()
class MolecularSequenceRepository {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirUri url;
  final PrimitiveElement Url;
  final String name;
  final PrimitiveElement Name;
  final String datasetId;
  final PrimitiveElement DatasetId;
  final String variantsetId;
  final PrimitiveElement VariantsetId;
  final String readsetId;
  final PrimitiveElement ReadsetId;
}

@Data()
@JsonCodable()
class MolecularSequenceStructureVariant {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept variantType;
  final FhirBoolean exact;
  final PrimitiveElement Exact;
  final FhirInteger length;
  final PrimitiveElement Length;
  final MolecularSequenceOuter outer;
  final MolecularSequenceInner inner;
}

@Data()
@JsonCodable()
class MolecularSequenceOuter {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirInteger start;
  final PrimitiveElement Start;
  final FhirInteger end;
  final PrimitiveElement End;
}

@Data()
@JsonCodable()
class MolecularSequenceInner {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirInteger start;
  final PrimitiveElement Start;
  final FhirInteger end;
  final PrimitiveElement End;
}


