import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ValueSetDbObject {
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
  final ToOne<FhirBooleanDbObject> immutable = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> immutableElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> purpose = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> purposeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ValueSetComposeDbObject> compose =
      ToOne<ValueSetComposeDbObject>();
  final ToOne<ValueSetExpansionDbObject> expansion =
      ToOne<ValueSetExpansionDbObject>();
  ValueSetDbObject({required this.id});
}

@Entity()
class ValueSetComposeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirDateDbObject> lockedDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> lockedDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> inactive = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> inactiveElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ValueSetIncludeDbObject> include =
      ToMany<ValueSetIncludeDbObject>();
  final ToMany<ValueSetIncludeDbObject> exclude =
      ToMany<ValueSetIncludeDbObject>();
  ValueSetComposeDbObject({required this.id});
}

@Entity()
class ValueSetIncludeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUriDbObject> system = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> systemElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ValueSetConceptDbObject> concept =
      ToMany<ValueSetConceptDbObject>();
  final ToMany<ValueSetFilterDbObject> filter =
      ToMany<ValueSetFilterDbObject>();
  final ToMany<FhirCanonicalDbObject> valueSet =
      ToMany<FhirCanonicalDbObject>();
  ValueSetIncludeDbObject({required this.id});
}

@Entity()
class ValueSetConceptDbObject {
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
  final ToMany<ValueSetDesignationDbObject> designation =
      ToMany<ValueSetDesignationDbObject>();
  ValueSetConceptDbObject({required this.id});
}

@Entity()
class ValueSetDesignationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodingDbObject> use = ToOne<CodingDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement =
      ToOne<PrimitiveElementDbObject>();
  ValueSetDesignationDbObject({required this.id});
}

@Entity()
class ValueSetFilterDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> property = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> propertyElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> op = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> opElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement =
      ToOne<PrimitiveElementDbObject>();
  ValueSetFilterDbObject({required this.id});
}

@Entity()
class ValueSetExpansionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUriDbObject> identifier = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> identifierElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> timestamp = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> timestampElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> total = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> totalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> offset = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> offsetElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ValueSetParameterDbObject> parameter =
      ToMany<ValueSetParameterDbObject>();
  final ToMany<ValueSetContainsDbObject> contains =
      ToMany<ValueSetContainsDbObject>();
  ValueSetExpansionDbObject({required this.id});
}

@Entity()
class ValueSetParameterDbObject {
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
  final ToOne<StringDbObject> valueString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> valueBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBooleanElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> valueInteger = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> valueIntegerElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> valueDecimal = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDecimalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> valueUri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> valueUriElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> valueCode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueCodeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> valueDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  ValueSetParameterDbObject({required this.id});
}

@Entity()
class ValueSetContainsDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUriDbObject> system = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> systemElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> abstract_ = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> abstractElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> inactive = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> inactiveElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> display = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> displayElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ValueSetDesignationDbObject> designation =
      ToMany<ValueSetDesignationDbObject>();
  final ToMany<ValueSetContainsDbObject> contains =
      ToMany<ValueSetContainsDbObject>();
  ValueSetContainsDbObject({required this.id});
}
