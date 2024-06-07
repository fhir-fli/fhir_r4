import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class MolecularSequenceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> coordinateSystem =
      ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> coordinateSystemElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> specimen = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> device = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> performer = ToOne<ReferenceDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<MolecularSequenceReferenceSeqDbObject> referenceSeq =
      ToOne<MolecularSequenceReferenceSeqDbObject>();
  final ToMany<MolecularSequenceVariantDbObject> variant =
      ToMany<MolecularSequenceVariantDbObject>();
  final ToOne<StringDbObject> observedSeq = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> observedSeqElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<MolecularSequenceQualityDbObject> quality =
      ToMany<MolecularSequenceQualityDbObject>();
  final ToOne<FhirIntegerDbObject> readCoverage = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> readCoverageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<MolecularSequenceRepositoryDbObject> repository =
      ToMany<MolecularSequenceRepositoryDbObject>();
  final ToMany<ReferenceDbObject> pointer = ToMany<ReferenceDbObject>();
  final ToMany<MolecularSequenceStructureVariantDbObject> structureVariant =
      ToMany<MolecularSequenceStructureVariantDbObject>();
  MolecularSequenceDbObject({required this.id});
}

@Entity()
class MolecularSequenceReferenceSeqDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> chromosome =
      ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> genomeBuild = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> genomeBuildElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> orientation = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> orientationElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> referenceSeqId =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> referenceSeqPointer =
      ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> referenceSeqString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> referenceSeqStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> strand = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> strandElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> windowStart = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> windowStartElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> windowEnd = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> windowEndElement =
      ToOne<PrimitiveElementDbObject>();
  MolecularSequenceReferenceSeqDbObject({required this.id});
}

@Entity()
class MolecularSequenceVariantDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIntegerDbObject> start = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> startElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> end = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> endElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> observedAllele = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> observedAlleleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> referenceAllele = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> referenceAlleleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> cigar = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> cigarElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> variantPointer = ToOne<ReferenceDbObject>();
  MolecularSequenceVariantDbObject({required this.id});
}

@Entity()
class MolecularSequenceQualityDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> standardSequence =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirIntegerDbObject> start = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> startElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> end = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> endElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> score = ToOne<QuantityDbObject>();
  final ToOne<CodeableConceptDbObject> method =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDecimalDbObject> truthTP = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> truthTPElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> queryTP = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> queryTPElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> truthFN = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> truthFNElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> queryFP = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> queryFPElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> gtFP = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> gtFPElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> precision = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> precisionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> recall = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> recallElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> fScore = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> fScoreElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MolecularSequenceRocDbObject> roc =
      ToOne<MolecularSequenceRocDbObject>();
  MolecularSequenceQualityDbObject({required this.id});
}

@Entity()
class MolecularSequenceRocDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirIntegerDbObject> score = ToMany<FhirIntegerDbObject>();
  final ToMany<PrimitiveElementDbObject> scoreElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirIntegerDbObject> numTP = ToMany<FhirIntegerDbObject>();
  final ToMany<PrimitiveElementDbObject> numTPElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirIntegerDbObject> numFP = ToMany<FhirIntegerDbObject>();
  final ToMany<PrimitiveElementDbObject> numFPElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirIntegerDbObject> numFN = ToMany<FhirIntegerDbObject>();
  final ToMany<PrimitiveElementDbObject> numFNElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirDecimalDbObject> precision = ToMany<FhirDecimalDbObject>();
  final ToMany<PrimitiveElementDbObject> precisionElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirDecimalDbObject> sensitivity = ToMany<FhirDecimalDbObject>();
  final ToMany<PrimitiveElementDbObject> sensitivityElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirDecimalDbObject> fMeasure = ToMany<FhirDecimalDbObject>();
  final ToMany<PrimitiveElementDbObject> fMeasureElement =
      ToMany<PrimitiveElementDbObject>();
  MolecularSequenceRocDbObject({required this.id});
}

@Entity()
class MolecularSequenceRepositoryDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> datasetId = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> datasetIdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> variantsetId = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> variantsetIdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> readsetId = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> readsetIdElement =
      ToOne<PrimitiveElementDbObject>();
  MolecularSequenceRepositoryDbObject({required this.id});
}

@Entity()
class MolecularSequenceStructureVariantDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> variantType =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> exact = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> exactElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> length = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> lengthElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MolecularSequenceOuterDbObject> outer =
      ToOne<MolecularSequenceOuterDbObject>();
  final ToOne<MolecularSequenceInnerDbObject> inner =
      ToOne<MolecularSequenceInnerDbObject>();
  MolecularSequenceStructureVariantDbObject({required this.id});
}

@Entity()
class MolecularSequenceOuterDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIntegerDbObject> start = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> startElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> end = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> endElement =
      ToOne<PrimitiveElementDbObject>();
  MolecularSequenceOuterDbObject({required this.id});
}

@Entity()
class MolecularSequenceInnerDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIntegerDbObject> start = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> startElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> end = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> endElement =
      ToOne<PrimitiveElementDbObject>();
  MolecularSequenceInnerDbObject({required this.id});
}
