import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class SearchParameterDbObject {
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
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> derivedFrom =
      ToOne<FhirCanonicalDbObject>();
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
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> base = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> baseElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> expression = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> expressionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> xpath = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> xpathElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> xpathUsage = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> xpathUsageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> target = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> targetElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> multipleOr = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> multipleOrElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> multipleAnd = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> multipleAndElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> comparator = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> comparatorElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> modifier = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> modifierElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> chain = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> chainElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<SearchParameterComponentDbObject> component =
      ToMany<SearchParameterComponentDbObject>();
  SearchParameterDbObject({required this.id});
}

@Entity()
class SearchParameterComponentDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCanonicalDbObject> definition =
      ToOne<FhirCanonicalDbObject>();
  final ToOne<StringDbObject> expression = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> expressionElement =
      ToOne<PrimitiveElementDbObject>();
  SearchParameterComponentDbObject({required this.id});
}
