import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class StructureDefinitionDbObject {
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
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
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
  final ToMany<CodingDbObject> keyword = ToMany<CodingDbObject>();
  final ToOne<FhirCodeDbObject> fhirVersion = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> fhirVersionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<StructureDefinitionMappingDbObject> mapping =
      ToMany<StructureDefinitionMappingDbObject>();
  final ToOne<FhirCodeDbObject> kind = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> kindElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> abstract_ = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> abstractElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<StructureDefinitionContextDbObject> context =
      ToMany<StructureDefinitionContextDbObject>();
  final ToOne<StringDbObject> contextInvariant = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> contextInvariantElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> type = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> baseDefinition =
      ToOne<FhirCanonicalDbObject>();
  final ToOne<PrimitiveElementDbObject> baseDefinitionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> derivation = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> derivationElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StructureDefinitionSnapshotDbObject> snapshot =
      ToOne<StructureDefinitionSnapshotDbObject>();
  final ToOne<StructureDefinitionDifferentialDbObject> differential =
      ToOne<StructureDefinitionDifferentialDbObject>();
  StructureDefinitionDbObject({required this.id});
}

@Entity()
class StructureDefinitionMappingDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIdDbObject> identity = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> identityElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> uri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> uriElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> comment = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> commentElement =
      ToOne<PrimitiveElementDbObject>();
  StructureDefinitionMappingDbObject({required this.id});
}

@Entity()
class StructureDefinitionContextDbObject {
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
  final ToOne<StringDbObject> expression = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> expressionElement =
      ToOne<PrimitiveElementDbObject>();
  StructureDefinitionContextDbObject({required this.id});
}

@Entity()
class StructureDefinitionSnapshotDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<ElementDefinitionDbObject> element =
      ToMany<ElementDefinitionDbObject>();
  StructureDefinitionSnapshotDbObject({required this.id});
}

@Entity()
class StructureDefinitionDifferentialDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<ElementDefinitionDbObject> element =
      ToMany<ElementDefinitionDbObject>();
  StructureDefinitionDifferentialDbObject({required this.id});
}
