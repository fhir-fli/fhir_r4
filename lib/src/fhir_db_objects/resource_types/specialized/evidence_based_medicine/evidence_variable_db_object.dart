import 'package:objectbox/objectbox.dart';
@Entity()
class EvidenceVariableDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<R4ResourceTypeDbObject> resourceType = ToOne<R4ResourceTypeDbObject>();
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
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> shortTitle = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> shortTitleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> subtitle = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> subtitleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<UsageContextDbObject> useContext = ToMany<UsageContextDbObject>();
  final ToOne<StringDbObject> publisher = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> publisherElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ContactDetailDbObject> contact = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> author = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> editor = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> reviewer = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> endorser = ToMany<ContactDetailDbObject>();
  final ToMany<RelatedArtifactDbObject> relatedArtifact = ToMany<RelatedArtifactDbObject>();
  final ToOne<FhirBooleanDbObject> actual = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> actualElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> characteristicCombination = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> characteristicCombinationElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<EvidenceVariableCharacteristicDbObject> characteristic = ToMany<EvidenceVariableCharacteristicDbObject>();
  final ToOne<FhirCodeDbObject> handling = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> handlingElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<EvidenceVariableCategoryDbObject> category = ToMany<EvidenceVariableCategoryDbObject>();
  EvidenceVariableDbObject({required this.id});
}
@Entity()
class EvidenceVariableCharacteristicDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> definitionReference = ToOne<ReferenceDbObject>();
  final ToOne<FhirCanonicalDbObject> definitionCanonical = ToOne<FhirCanonicalDbObject>();
  final ToOne<PrimitiveElementDbObject> definitionCanonicalElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> definitionCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirExpressionDbObject> definitionExpression = ToOne<FhirExpressionDbObject>();
  final ToOne<FhirBooleanDbObject> exclude = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> excludeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<EvidenceVariableTimeFromStartDbObject> timeFromStart = ToOne<EvidenceVariableTimeFromStartDbObject>();
  final ToOne<FhirCodeDbObject> groupMeasure = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> groupMeasureElement = ToOne<PrimitiveElementDbObject>();
  EvidenceVariableCharacteristicDbObject({required this.id});
}
@Entity()
class EvidenceVariableTimeFromStartDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<RangeDbObject> range = ToOne<RangeDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  EvidenceVariableTimeFromStartDbObject({required this.id});
}
@Entity()
class EvidenceVariableCategoryDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> valueCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> valueQuantity = ToOne<QuantityDbObject>();
  final ToOne<RangeDbObject> valueRange = ToOne<RangeDbObject>();
  EvidenceVariableCategoryDbObject({required this.id});
}
