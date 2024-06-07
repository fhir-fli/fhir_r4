import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class TerminologyCapabilitiesDbObject {
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
  final ToOne<FhirCodeDbObject> kind = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> kindElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<TerminologyCapabilitiesSoftwareDbObject> software =
      ToOne<TerminologyCapabilitiesSoftwareDbObject>();
  final ToOne<TerminologyCapabilitiesImplementationDbObject> implementation =
      ToOne<TerminologyCapabilitiesImplementationDbObject>();
  final ToOne<FhirBooleanDbObject> lockedDate = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> lockedDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<TerminologyCapabilitiesCodeSystemDbObject> codeSystem =
      ToMany<TerminologyCapabilitiesCodeSystemDbObject>();
  final ToOne<TerminologyCapabilitiesExpansionDbObject> expansion =
      ToOne<TerminologyCapabilitiesExpansionDbObject>();
  final ToOne<FhirCodeDbObject> codeSearch = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeSearchElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<TerminologyCapabilitiesValidateCodeDbObject> validateCode =
      ToOne<TerminologyCapabilitiesValidateCodeDbObject>();
  final ToOne<TerminologyCapabilitiesTranslationDbObject> translation =
      ToOne<TerminologyCapabilitiesTranslationDbObject>();
  final ToOne<TerminologyCapabilitiesClosureDbObject> closure =
      ToOne<TerminologyCapabilitiesClosureDbObject>();
  TerminologyCapabilitiesDbObject({required this.id});
}

@Entity()
class TerminologyCapabilitiesSoftwareDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement =
      ToOne<PrimitiveElementDbObject>();
  TerminologyCapabilitiesSoftwareDbObject({required this.id});
}

@Entity()
class TerminologyCapabilitiesImplementationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUrlDbObject> url = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement =
      ToOne<PrimitiveElementDbObject>();
  TerminologyCapabilitiesImplementationDbObject({required this.id});
}

@Entity()
class TerminologyCapabilitiesCodeSystemDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCanonicalDbObject> uri = ToOne<FhirCanonicalDbObject>();
  final ToMany<TerminologyCapabilitiesVersionDbObject> version =
      ToMany<TerminologyCapabilitiesVersionDbObject>();
  final ToOne<FhirBooleanDbObject> subsumption = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> subsumptionElement =
      ToOne<PrimitiveElementDbObject>();
  TerminologyCapabilitiesCodeSystemDbObject({required this.id});
}

@Entity()
class TerminologyCapabilitiesVersionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> code = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> isDefault = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> isDefaultElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> compositional = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> compositionalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> language = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> languageElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<TerminologyCapabilitiesFilterDbObject> filter =
      ToMany<TerminologyCapabilitiesFilterDbObject>();
  final ToMany<FhirCodeDbObject> property = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> propertyElement =
      ToMany<PrimitiveElementDbObject>();
  TerminologyCapabilitiesVersionDbObject({required this.id});
}

@Entity()
class TerminologyCapabilitiesFilterDbObject {
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
  final ToMany<FhirCodeDbObject> op = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> opElement =
      ToMany<PrimitiveElementDbObject>();
  TerminologyCapabilitiesFilterDbObject({required this.id});
}

@Entity()
class TerminologyCapabilitiesExpansionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> hierarchical = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> hierarchicalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> paging = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> pagingElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> incomplete = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> incompleteElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<TerminologyCapabilitiesParameterDbObject> parameter =
      ToMany<TerminologyCapabilitiesParameterDbObject>();
  final ToOne<FhirMarkdownDbObject> textFilter = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> textFilterElement =
      ToOne<PrimitiveElementDbObject>();
  TerminologyCapabilitiesExpansionDbObject({required this.id});
}

@Entity()
class TerminologyCapabilitiesParameterDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> name = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> documentation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> documentationElement =
      ToOne<PrimitiveElementDbObject>();
  TerminologyCapabilitiesParameterDbObject({required this.id});
}

@Entity()
class TerminologyCapabilitiesValidateCodeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> translations = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> translationsElement =
      ToOne<PrimitiveElementDbObject>();
  TerminologyCapabilitiesValidateCodeDbObject({required this.id});
}

@Entity()
class TerminologyCapabilitiesTranslationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> needsMap = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> needsMapElement =
      ToOne<PrimitiveElementDbObject>();
  TerminologyCapabilitiesTranslationDbObject({required this.id});
}

@Entity()
class TerminologyCapabilitiesClosureDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> translation = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> translationElement =
      ToOne<PrimitiveElementDbObject>();
  TerminologyCapabilitiesClosureDbObject({required this.id});
}
