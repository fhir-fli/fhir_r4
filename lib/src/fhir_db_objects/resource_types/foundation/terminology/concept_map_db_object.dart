import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ConceptMapDbObject {
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
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> experimental = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> experimentalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> publisher = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> publisherElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ContactDetailDbObject> contact = ToMany<ContactDetailDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<UsageContextDbObject> useContext =
      ToMany<UsageContextDbObject>();
  final ToMany<CodeableConceptDbObject> jurisdiction =
      ToMany<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> purpose = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> purposeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> sourceUri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> sourceUriElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> sourceCanonical =
      ToOne<FhirCanonicalDbObject>();
  final ToOne<PrimitiveElementDbObject> sourceCanonicalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> targetUri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> targetUriElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> targetCanonical =
      ToOne<FhirCanonicalDbObject>();
  final ToOne<PrimitiveElementDbObject> targetCanonicalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ConceptMapGroupDbObject> group =
      ToMany<ConceptMapGroupDbObject>();
  ConceptMapDbObject({required this.id});
}

@Entity()
class ConceptMapGroupDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUriDbObject> source = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> sourceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> sourceVersion = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> sourceVersionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> target = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> targetElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> targetVersion = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> targetVersionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ConceptMapElementDbObject> element =
      ToMany<ConceptMapElementDbObject>();
  final ToOne<ConceptMapUnmappedDbObject> unmapped =
      ToOne<ConceptMapUnmappedDbObject>();
  ConceptMapGroupDbObject({required this.id});
}

@Entity()
class ConceptMapElementDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> display = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> displayElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ConceptMapTargetDbObject> target =
      ToMany<ConceptMapTargetDbObject>();
  ConceptMapElementDbObject({required this.id});
}

@Entity()
class ConceptMapTargetDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> display = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> displayElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> equivalence = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> equivalenceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> comment = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> commentElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ConceptMapDependsOnDbObject> dependsOn =
      ToMany<ConceptMapDependsOnDbObject>();
  final ToMany<ConceptMapDependsOnDbObject> product =
      ToMany<ConceptMapDependsOnDbObject>();
  ConceptMapTargetDbObject({required this.id});
}

@Entity()
class ConceptMapDependsOnDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUriDbObject> property = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> propertyElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> system = ToOne<FhirCanonicalDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> display = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> displayElement =
      ToOne<PrimitiveElementDbObject>();
  ConceptMapDependsOnDbObject({required this.id});
}

@Entity()
class ConceptMapUnmappedDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> mode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> modeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> display = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> displayElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> url = ToOne<FhirCanonicalDbObject>();
  ConceptMapUnmappedDbObject({required this.id});
}
