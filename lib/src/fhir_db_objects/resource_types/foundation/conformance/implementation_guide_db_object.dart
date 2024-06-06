import 'package:objectbox/objectbox.dart';
@Entity()
class ImplementationGuideDbObject {
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
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> packageId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> packageIdElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> license = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> licenseElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> fhirVersion = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> fhirVersionElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<ImplementationGuideDependsOnDbObject> dependsOn = ToMany<ImplementationGuideDependsOnDbObject>();
  final ToMany<ImplementationGuideGlobalDbObject> global = ToMany<ImplementationGuideGlobalDbObject>();
  final ToOne<ImplementationGuideDefinitionDbObject> definition = ToOne<ImplementationGuideDefinitionDbObject>();
  final ToOne<ImplementationGuideManifestDbObject> manifest = ToOne<ImplementationGuideManifestDbObject>();
  ImplementationGuideDbObject({required this.id});
}
@Entity()
class ImplementationGuideDependsOnDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCanonicalDbObject> uri = ToOne<FhirCanonicalDbObject>();
  final ToOne<FhirIdDbObject> packageId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> packageIdElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement = ToOne<PrimitiveElementDbObject>();
  ImplementationGuideDependsOnDbObject({required this.id});
}
@Entity()
class ImplementationGuideGlobalDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> profile = ToOne<FhirCanonicalDbObject>();
  ImplementationGuideGlobalDbObject({required this.id});
}
@Entity()
class ImplementationGuideDefinitionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<ImplementationGuideGroupingDbObject> grouping = ToMany<ImplementationGuideGroupingDbObject>();
  final ToMany<ImplementationGuideResourceDbObject> resource = ToMany<ImplementationGuideResourceDbObject>();
  final ToOne<ImplementationGuidePageDbObject> page = ToOne<ImplementationGuidePageDbObject>();
  final ToMany<ImplementationGuideParameterDbObject> parameter = ToMany<ImplementationGuideParameterDbObject>();
  final ToMany<ImplementationGuideTemplateDbObject> template = ToMany<ImplementationGuideTemplateDbObject>();
  ImplementationGuideDefinitionDbObject({required this.id});
}
@Entity()
class ImplementationGuideGroupingDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  ImplementationGuideGroupingDbObject({required this.id});
}
@Entity()
class ImplementationGuideResourceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> reference = ToOne<ReferenceDbObject>();
  final ToMany<FhirCodeDbObject> fhirVersion = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> fhirVersionElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> exampleBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> exampleBooleanElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> exampleCanonical = ToOne<FhirCanonicalDbObject>();
  final ToOne<PrimitiveElementDbObject> exampleCanonicalElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> groupingId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> groupingIdElement = ToOne<PrimitiveElementDbObject>();
  ImplementationGuideResourceDbObject({required this.id});
}
@Entity()
class ImplementationGuidePageDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUrlDbObject> nameUrl = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> nameUrlElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> nameReference = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> generation = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> generationElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ImplementationGuidePageDbObject> page = ToMany<ImplementationGuidePageDbObject>();
  ImplementationGuidePageDbObject({required this.id});
}
@Entity()
class ImplementationGuideParameterDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement = ToOne<PrimitiveElementDbObject>();
  ImplementationGuideParameterDbObject({required this.id});
}
@Entity()
class ImplementationGuideTemplateDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> source = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> sourceElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> scope = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> scopeElement = ToOne<PrimitiveElementDbObject>();
  ImplementationGuideTemplateDbObject({required this.id});
}
@Entity()
class ImplementationGuideManifestDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUrlDbObject> rendering = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> renderingElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ImplementationGuideResource1DbObject> resource = ToMany<ImplementationGuideResource1DbObject>();
  final ToMany<ImplementationGuidePage1DbObject> page = ToMany<ImplementationGuidePage1DbObject>();
  final ToOne<StringDbObject> image = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> imageElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> other = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> otherElement = ToMany<PrimitiveElementDbObject>();
  ImplementationGuideManifestDbObject({required this.id});
}
@Entity()
class ImplementationGuideResource1DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> reference = ToOne<ReferenceDbObject>();
  final ToOne<FhirBooleanDbObject> exampleBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> exampleBooleanElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> exampleCanonical = ToOne<FhirCanonicalDbObject>();
  final ToOne<PrimitiveElementDbObject> exampleCanonicalElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUrlDbObject> relativePath = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> relativePathElement = ToOne<PrimitiveElementDbObject>();
  ImplementationGuideResource1DbObject({required this.id});
}
@Entity()
class ImplementationGuidePage1DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> anchor = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> anchorElement = ToMany<PrimitiveElementDbObject>();
  ImplementationGuidePage1DbObject({required this.id});
}
