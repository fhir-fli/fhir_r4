import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ExampleScenarioDbObject {
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
  final ToMany<UsageContextDbObject> useContext =
      ToMany<UsageContextDbObject>();
  final ToMany<CodeableConceptDbObject> jurisdiction =
      ToMany<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> purpose = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> purposeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ExampleScenarioActorDbObject> actor =
      ToMany<ExampleScenarioActorDbObject>();
  final ToMany<ExampleScenarioInstanceDbObject> instance =
      ToMany<ExampleScenarioInstanceDbObject>();
  final ToMany<ExampleScenarioProcessDbObject> process =
      ToMany<ExampleScenarioProcessDbObject>();
  final ToMany<FhirCanonicalDbObject> workflow =
      ToMany<FhirCanonicalDbObject>();
  ExampleScenarioDbObject({required this.id});
}

@Entity()
class ExampleScenarioActorDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> actorId = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> actorIdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  ExampleScenarioActorDbObject({required this.id});
}

@Entity()
class ExampleScenarioInstanceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> resourceId = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> resourceIdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> resourceType = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> resourceTypeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ExampleScenarioVersionDbObject> version =
      ToMany<ExampleScenarioVersionDbObject>();
  final ToMany<ExampleScenarioContainedInstanceDbObject> containedInstance =
      ToMany<ExampleScenarioContainedInstanceDbObject>();
  ExampleScenarioInstanceDbObject({required this.id});
}

@Entity()
class ExampleScenarioVersionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> versionId = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionIdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  ExampleScenarioVersionDbObject({required this.id});
}

@Entity()
class ExampleScenarioContainedInstanceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> resourceId = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> resourceIdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> versionId = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionIdElement =
      ToOne<PrimitiveElementDbObject>();
  ExampleScenarioContainedInstanceDbObject({required this.id});
}

@Entity()
class ExampleScenarioProcessDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> preConditions =
      ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> preConditionsElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> postConditions =
      ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> postConditionsElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ExampleScenarioStepDbObject> step =
      ToMany<ExampleScenarioStepDbObject>();
  ExampleScenarioProcessDbObject({required this.id});
}

@Entity()
class ExampleScenarioStepDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<ExampleScenarioProcessDbObject> process =
      ToMany<ExampleScenarioProcessDbObject>();
  final ToOne<FhirBooleanDbObject> pause = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> pauseElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ExampleScenarioOperationDbObject> operation =
      ToOne<ExampleScenarioOperationDbObject>();
  final ToMany<ExampleScenarioAlternativeDbObject> alternative =
      ToMany<ExampleScenarioAlternativeDbObject>();
  ExampleScenarioStepDbObject({required this.id});
}

@Entity()
class ExampleScenarioOperationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> number = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> numberElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> type = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> initiator = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> initiatorElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> receiver = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> receiverElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> initiatorActive =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> initiatorActiveElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> receiverActive =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> receiverActiveElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ExampleScenarioContainedInstanceDbObject> request =
      ToOne<ExampleScenarioContainedInstanceDbObject>();
  final ToOne<ExampleScenarioContainedInstanceDbObject> response =
      ToOne<ExampleScenarioContainedInstanceDbObject>();
  ExampleScenarioOperationDbObject({required this.id});
}

@Entity()
class ExampleScenarioAlternativeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ExampleScenarioStepDbObject> step =
      ToMany<ExampleScenarioStepDbObject>();
  ExampleScenarioAlternativeDbObject({required this.id});
}
