import 'package:realm/realm.dart';
@RealmModel()
class _MolecularSequenceRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_IdentifierRealm> identifier;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _FhirIntegerRealm coordinateSystem;
  late _PrimitiveElementRealm coordinateSystemElement;
  late _ReferenceRealm patient;
  late _ReferenceRealm specimen;
  late _ReferenceRealm device;
  late _ReferenceRealm performer;
  late _QuantityRealm quantity;
  late _MolecularSequenceReferenceSeqRealm referenceSeq;
  late List<_MolecularSequenceVariantRealm> variant;
  late String observedSeq;
  late _PrimitiveElementRealm observedSeqElement;
  late List<_MolecularSequenceQualityRealm> quality;
  late _FhirIntegerRealm readCoverage;
  late _PrimitiveElementRealm readCoverageElement;
  late List<_MolecularSequenceRepositoryRealm> repository;
  late List<_ReferenceRealm> pointer;
  late List<_MolecularSequenceStructureVariantRealm> structureVariant;
}
@RealmModel()
class _MolecularSequenceReferenceSeqRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm chromosome;
  late String genomeBuild;
  late _PrimitiveElementRealm genomeBuildElement;
  late _FhirCodeRealm orientation;
  late _PrimitiveElementRealm orientationElement;
  late _CodeableConceptRealm referenceSeqId;
  late _ReferenceRealm referenceSeqPointer;
  late String referenceSeqString;
  late _PrimitiveElementRealm referenceSeqStringElement;
  late _FhirCodeRealm strand;
  late _PrimitiveElementRealm strandElement;
  late _FhirIntegerRealm windowStart;
  late _PrimitiveElementRealm windowStartElement;
  late _FhirIntegerRealm windowEnd;
  late _PrimitiveElementRealm windowEndElement;
}
@RealmModel()
class _MolecularSequenceVariantRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIntegerRealm start;
  late _PrimitiveElementRealm startElement;
  late _FhirIntegerRealm end;
  late _PrimitiveElementRealm endElement;
  late String observedAllele;
  late _PrimitiveElementRealm observedAlleleElement;
  late String referenceAllele;
  late _PrimitiveElementRealm referenceAlleleElement;
  late String cigar;
  late _PrimitiveElementRealm cigarElement;
  late _ReferenceRealm variantPointer;
}
@RealmModel()
class _MolecularSequenceQualityRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _CodeableConceptRealm standardSequence;
  late _FhirIntegerRealm start;
  late _PrimitiveElementRealm startElement;
  late _FhirIntegerRealm end;
  late _PrimitiveElementRealm endElement;
  late _QuantityRealm score;
  late _CodeableConceptRealm method;
  late _FhirDecimalRealm truthTP;
  late _PrimitiveElementRealm truthTPElement;
  late _FhirDecimalRealm queryTP;
  late _PrimitiveElementRealm queryTPElement;
  late _FhirDecimalRealm truthFN;
  late _PrimitiveElementRealm truthFNElement;
  late _FhirDecimalRealm queryFP;
  late _PrimitiveElementRealm queryFPElement;
  late _FhirDecimalRealm gtFP;
  late _PrimitiveElementRealm gtFPElement;
  late _FhirDecimalRealm precision;
  late _PrimitiveElementRealm precisionElement;
  late _FhirDecimalRealm recall;
  late _PrimitiveElementRealm recallElement;
  late _FhirDecimalRealm fScore;
  late _PrimitiveElementRealm fScoreElement;
  late _MolecularSequenceRocRealm roc;
}
@RealmModel()
class _MolecularSequenceRocRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_FhirIntegerRealm> score;
  late List<_PrimitiveElementRealm> scoreElement;
  late List<_FhirIntegerRealm> numTP;
  late List<_PrimitiveElementRealm> numTPElement;
  late List<_FhirIntegerRealm> numFP;
  late List<_PrimitiveElementRealm> numFPElement;
  late List<_FhirIntegerRealm> numFN;
  late List<_PrimitiveElementRealm> numFNElement;
  late List<_FhirDecimalRealm> precision;
  late List<_PrimitiveElementRealm> precisionElement;
  late List<_FhirDecimalRealm> sensitivity;
  late List<_PrimitiveElementRealm> sensitivityElement;
  late List<_FhirDecimalRealm> fMeasure;
  late List<_PrimitiveElementRealm> fMeasureElement;
}
@RealmModel()
class _MolecularSequenceRepositoryRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String datasetId;
  late _PrimitiveElementRealm datasetIdElement;
  late String variantsetId;
  late _PrimitiveElementRealm variantsetIdElement;
  late String readsetId;
  late _PrimitiveElementRealm readsetIdElement;
}
@RealmModel()
class _MolecularSequenceStructureVariantRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm variantType;
  late _FhirBooleanRealm exact;
  late _PrimitiveElementRealm exactElement;
  late _FhirIntegerRealm length;
  late _PrimitiveElementRealm lengthElement;
  late _MolecularSequenceOuterRealm outer;
  late _MolecularSequenceInnerRealm inner;
}
@RealmModel()
class _MolecularSequenceOuterRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIntegerRealm start;
  late _PrimitiveElementRealm startElement;
  late _FhirIntegerRealm end;
  late _PrimitiveElementRealm endElement;
}
@RealmModel()
class _MolecularSequenceInnerRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIntegerRealm start;
  late _PrimitiveElementRealm startElement;
  late _FhirIntegerRealm end;
  late _PrimitiveElementRealm endElement;
}
