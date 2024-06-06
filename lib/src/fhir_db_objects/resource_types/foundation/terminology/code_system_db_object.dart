import 'package:objectbox/objectbox.dart';
@Entity()
class CodeSystemDbObject {
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
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> experimental = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> experimentalElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> publisher = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> publisherElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ContactDetailDbObject> contact = ToMany<ContactDetailDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<UsageContextDbObject> useContext = ToMany<UsageContextDbObject>();
  final ToMany<CodeableConceptDbObject> jurisdiction = ToMany<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> purpose = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> purposeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> caseSensitive = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> caseSensitiveElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> valueSet = ToOne<FhirCanonicalDbObject>();
  final ToOne<FhirCodeDbObject> hierarchyMeaning = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> hierarchyMeaningElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> compositional = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> compositionalElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> versionNeeded = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> versionNeededElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> content = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> contentElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> supplements = ToOne<FhirCanonicalDbObject>();
  final ToOne<FhirUnsignedIntDbObject> count = ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> countElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeSystemFilterDbObject> filter = ToMany<CodeSystemFilterDbObject>();
  final ToMany<CodeSystemPropertyDbObject> property = ToMany<CodeSystemPropertyDbObject>();
  final ToMany<CodeSystemConceptDbObject> concept = ToMany<CodeSystemConceptDbObject>();
  CodeSystemDbObject({required this.id});
}
@Entity()
class CodeSystemFilterDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> operator_ = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> operatorElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement = ToOne<PrimitiveElementDbObject>();
  CodeSystemFilterDbObject({required this.id});
}
@Entity()
class CodeSystemPropertyDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> uri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> uriElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  CodeSystemPropertyDbObject({required this.id});
}
@Entity()
class CodeSystemConceptDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> display = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> displayElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> definition = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> definitionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeSystemDesignationDbObject> designation = ToMany<CodeSystemDesignationDbObject>();
  final ToMany<CodeSystemProperty1DbObject> property = ToMany<CodeSystemProperty1DbObject>();
  final ToMany<CodeSystemConceptDbObject> concept = ToMany<CodeSystemConceptDbObject>();
  CodeSystemConceptDbObject({required this.id});
}
@Entity()
class CodeSystemDesignationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodingDbObject> use = ToOne<CodingDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement = ToOne<PrimitiveElementDbObject>();
  CodeSystemDesignationDbObject({required this.id});
}
@Entity()
class CodeSystemProperty1DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> valueCode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueCodeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodingDbObject> valueCoding = ToOne<CodingDbObject>();
  final ToOne<StringDbObject> valueString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> valueInteger = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> valueIntegerElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> valueBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBooleanElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> valueDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> valueDecimal = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDecimalElement = ToOne<PrimitiveElementDbObject>();
  CodeSystemProperty1DbObject({required this.id});
}
