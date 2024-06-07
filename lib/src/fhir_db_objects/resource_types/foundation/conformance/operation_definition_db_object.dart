import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class OperationDefinitionDbObject {
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
  final ToOne<FhirCodeDbObject> kind = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> kindElement =
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
  final ToOne<FhirBooleanDbObject> affectsState = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> affectsStateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> comment = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> commentElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> base = ToOne<FhirCanonicalDbObject>();
  final ToMany<FhirCodeDbObject> resource = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> resourceElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> system = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> systemElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> type = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> instance = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> instanceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> inputProfile =
      ToOne<FhirCanonicalDbObject>();
  final ToOne<FhirCanonicalDbObject> outputProfile =
      ToOne<FhirCanonicalDbObject>();
  final ToMany<OperationDefinitionParameterDbObject> parameter =
      ToMany<OperationDefinitionParameterDbObject>();
  final ToMany<OperationDefinitionOverloadDbObject> overload =
      ToMany<OperationDefinitionOverloadDbObject>();
  OperationDefinitionDbObject({required this.id});
}

@Entity()
class OperationDefinitionParameterDbObject {
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
  final ToOne<FhirCodeDbObject> use = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> useElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> min = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> minElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> max = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> maxElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> documentation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> documentationElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCanonicalDbObject> targetProfile =
      ToMany<FhirCanonicalDbObject>();
  final ToOne<FhirCodeDbObject> searchType = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> searchTypeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<OperationDefinitionBindingDbObject> binding =
      ToOne<OperationDefinitionBindingDbObject>();
  final ToMany<OperationDefinitionReferencedFromDbObject> referencedFrom =
      ToMany<OperationDefinitionReferencedFromDbObject>();
  final ToMany<OperationDefinitionParameterDbObject> part_ =
      ToMany<OperationDefinitionParameterDbObject>();
  OperationDefinitionParameterDbObject({required this.id});
}

@Entity()
class OperationDefinitionBindingDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> strength = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> strengthElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> valueSet = ToOne<FhirCanonicalDbObject>();
  OperationDefinitionBindingDbObject({required this.id});
}

@Entity()
class OperationDefinitionReferencedFromDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> source = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> sourceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> sourceId = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> sourceIdElement =
      ToOne<PrimitiveElementDbObject>();
  OperationDefinitionReferencedFromDbObject({required this.id});
}

@Entity()
class OperationDefinitionOverloadDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> parameterName = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> parameterNameElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> comment = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> commentElement =
      ToOne<PrimitiveElementDbObject>();
  OperationDefinitionOverloadDbObject({required this.id});
}
