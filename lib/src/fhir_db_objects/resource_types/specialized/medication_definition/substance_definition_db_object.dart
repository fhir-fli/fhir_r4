import 'package:objectbox/objectbox.dart';
@Entity()
class SubstanceDefinitionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> status = ToOne<CodeableConceptDbObject>();
@Entity()
class classification,DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<CodeableConceptDbObject> domain = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> grade = ToMany<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> informationSource = ToMany<ReferenceDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<ReferenceDbObject> manufacturer = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> supplier = ToMany<ReferenceDbObject>();
  final ToMany<SubstanceDefinitionMoietyDbObject> moiety = ToMany<SubstanceDefinitionMoietyDbObject>();
  final ToMany<SubstanceDefinitionPropertyDbObject> property = ToMany<SubstanceDefinitionPropertyDbObject>();
  final ToMany<SubstanceDefinitionMolecularWeightDbObject> molecularWeight = ToMany<SubstanceDefinitionMolecularWeightDbObject>();
  final ToOne<SubstanceDefinitionStructureDbObject> structure = ToOne<SubstanceDefinitionStructureDbObject>();
  final ToMany<SubstanceDefinitionCodeDbObject> code = ToMany<SubstanceDefinitionCodeDbObject>();
  final ToMany<SubstanceDefinitionNameDbObject> name = ToMany<SubstanceDefinitionNameDbObject>();
  final ToMany<SubstanceDefinitionRelationshipDbObject> relationship = ToMany<SubstanceDefinitionRelationshipDbObject>();
  final ToOne<SubstanceDefinitionSourceMaterialDbObject> sourceMaterial = ToOne<SubstanceDefinitionSourceMaterialDbObject>();
  classification,DbObject(<>{required this.id});
}
@Entity()
class SubstanceDefinitionMoietyDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> role = ToOne<CodeableConceptDbObject>();
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> stereochemistry = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> opticalActivity = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> molecularFormula = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> molecularFormulaElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> amountQuantity = ToOne<QuantityDbObject>();
  final ToOne<FhirMarkdownDbObject> amountString = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> amountStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> measurementType = ToOne<CodeableConceptDbObject>();
  SubstanceDefinitionMoietyDbObject({required this.id});
}
@Entity()
class SubstanceDefinitionPropertyDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> valueCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> valueQuantity = ToOne<QuantityDbObject>();
  final ToOne<FhirDateDbObject> valueDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> valueBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBooleanElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<AttachmentDbObject> valueAttachment = ToOne<AttachmentDbObject>();
  SubstanceDefinitionPropertyDbObject({required this.id});
}
@Entity()
class SubstanceDefinitionMolecularWeightDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> method = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> amount = ToOne<QuantityDbObject>();
  SubstanceDefinitionMolecularWeightDbObject({required this.id});
}
@Entity()
class SubstanceDefinitionStructureDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> stereochemistry = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> opticalActivity = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> molecularFormula = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> molecularFormulaElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> molecularFormulaByMoiety = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> molecularFormulaByMoietyElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<SubstanceDefinitionMolecularWeightDbObject> molecularWeight = ToOne<SubstanceDefinitionMolecularWeightDbObject>();
  final ToMany<CodeableConceptDbObject> technique = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> sourceDocument = ToMany<ReferenceDbObject>();
  final ToMany<SubstanceDefinitionRepresentationDbObject> representation = ToMany<SubstanceDefinitionRepresentationDbObject>();
  SubstanceDefinitionStructureDbObject({required this.id});
}
@Entity()
class SubstanceDefinitionRepresentationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> representation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> representationElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> format = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> document = ToOne<ReferenceDbObject>();
  SubstanceDefinitionRepresentationDbObject({required this.id});
}
@Entity()
class SubstanceDefinitionCodeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> status = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDateTimeDbObject> statusDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusDateElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<ReferenceDbObject> source = ToMany<ReferenceDbObject>();
  SubstanceDefinitionCodeDbObject({required this.id});
}
@Entity()
class SubstanceDefinitionNameDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> status = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> preferred = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> preferredElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> language = ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> domain = ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> jurisdiction = ToMany<CodeableConceptDbObject>();
  final ToMany<SubstanceDefinitionNameDbObject> synonym = ToMany<SubstanceDefinitionNameDbObject>();
  final ToMany<SubstanceDefinitionNameDbObject> translation = ToMany<SubstanceDefinitionNameDbObject>();
  final ToMany<SubstanceDefinitionOfficialDbObject> official = ToMany<SubstanceDefinitionOfficialDbObject>();
  final ToMany<ReferenceDbObject> source = ToMany<ReferenceDbObject>();
  SubstanceDefinitionNameDbObject({required this.id});
}
@Entity()
class SubstanceDefinitionOfficialDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> authority = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> status = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement = ToOne<PrimitiveElementDbObject>();
  SubstanceDefinitionOfficialDbObject({required this.id});
}
@Entity()
class SubstanceDefinitionRelationshipDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> substanceDefinitionReference = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> substanceDefinitionCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> isDefining = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> isDefiningElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> amountQuantity = ToOne<QuantityDbObject>();
  final ToOne<RatioDbObject> amountRatio = ToOne<RatioDbObject>();
  final ToOne<FhirMarkdownDbObject> amountString = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> amountStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<RatioDbObject> ratioHighLimitAmount = ToOne<RatioDbObject>();
  final ToOne<CodeableConceptDbObject> comparator = ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> source = ToMany<ReferenceDbObject>();
  SubstanceDefinitionRelationshipDbObject({required this.id});
}
@Entity()
class SubstanceDefinitionSourceMaterialDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> genus = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> species = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> part_ = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> countryOfOrigin = ToMany<CodeableConceptDbObject>();
  SubstanceDefinitionSourceMaterialDbObject({required this.id});
}
