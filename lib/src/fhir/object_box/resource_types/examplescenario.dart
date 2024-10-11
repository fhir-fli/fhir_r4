import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ExampleScenario extends Resource {
  ExampleScenario({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.copyrightElement,
    this.purpose,
    this.purposeElement,
    this.actor,
    this.instance,
    this.process,
    this.workflow,
    this.workflowElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  ToOne<Element>? implicitRulesElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String status;
  ToOne<Element>? statusElement = ToOne<Element>();
  bool? experimental;
  ToOne<Element>? experimentalElement = ToOne<Element>();
  String? date;
  ToOne<Element>? dateElement = ToOne<Element>();
  String? publisher;
  ToOne<Element>? publisherElement = ToOne<Element>();
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? copyright;
  ToOne<Element>? copyrightElement = ToOne<Element>();
  String? purpose;
  ToOne<Element>? purposeElement = ToOne<Element>();
  ToMany<ExampleScenarioActor>? actor = ToMany<ExampleScenarioActor>();
  ToMany<ExampleScenarioInstance>? instance = ToMany<ExampleScenarioInstance>();
  ToMany<ExampleScenarioProcess>? process = ToMany<ExampleScenarioProcess>();
  List<String>? workflow;
  ToMany<Element>? workflowElement = ToMany<Element>();
}

@Entity()
class ExampleScenarioActor {
  ExampleScenarioActor({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.actorId,
    this.actorIdElement,
    required this.type,
    this.typeElement,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String actorId;
  ToOne<Element>? actorIdElement = ToOne<Element>();
  String type;
  ToOne<Element>? typeElement = ToOne<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
}

@Entity()
class ExampleScenarioInstance {
  ExampleScenarioInstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.resourceId,
    this.resourceIdElement,
    required this.resourceType,
    this.resourceTypeElement,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    this.version,
    this.containedInstance,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String resourceId;
  ToOne<Element>? resourceIdElement = ToOne<Element>();
  String resourceType;
  ToOne<Element>? resourceTypeElement = ToOne<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<ExampleScenarioVersion>? version = ToMany<ExampleScenarioVersion>();
  ToMany<ExampleScenarioContainedInstance>? containedInstance =
      ToMany<ExampleScenarioContainedInstance>();
}

@Entity()
class ExampleScenarioVersion {
  ExampleScenarioVersion({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.versionId,
    this.versionIdElement,
    required this.description,
    this.descriptionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String versionId;
  ToOne<Element>? versionIdElement = ToOne<Element>();
  String description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
}

@Entity()
class ExampleScenarioContainedInstance {
  ExampleScenarioContainedInstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.resourceId,
    this.resourceIdElement,
    this.versionId,
    this.versionIdElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String resourceId;
  ToOne<Element>? resourceIdElement = ToOne<Element>();
  String? versionId;
  ToOne<Element>? versionIdElement = ToOne<Element>();
}

@Entity()
class ExampleScenarioProcess {
  ExampleScenarioProcess({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.title,
    this.titleElement,
    this.description,
    this.descriptionElement,
    this.preConditions,
    this.preConditionsElement,
    this.postConditions,
    this.postConditionsElement,
    this.step,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String title;
  ToOne<Element>? titleElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  String? preConditions;
  ToOne<Element>? preConditionsElement = ToOne<Element>();
  String? postConditions;
  ToOne<Element>? postConditionsElement = ToOne<Element>();
  ToMany<ExampleScenarioStep>? step = ToMany<ExampleScenarioStep>();
}

@Entity()
class ExampleScenarioStep {
  ExampleScenarioStep({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.process,
    this.pause,
    this.pauseElement,
    this.operation,
    this.alternative,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<ExampleScenarioProcess>? process = ToMany<ExampleScenarioProcess>();
  bool? pause;
  ToOne<Element>? pauseElement = ToOne<Element>();
  ToOne<ExampleScenarioOperation>? operation =
      ToOne<ExampleScenarioOperation>();
  ToMany<ExampleScenarioAlternative>? alternative =
      ToMany<ExampleScenarioAlternative>();
}

@Entity()
class ExampleScenarioOperation {
  ExampleScenarioOperation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.number,
    this.numberElement,
    this.type,
    this.typeElement,
    this.name,
    this.nameElement,
    this.initiator,
    this.initiatorElement,
    this.receiver,
    this.receiverElement,
    this.description,
    this.descriptionElement,
    this.initiatorActive,
    this.initiatorActiveElement,
    this.receiverActive,
    this.receiverActiveElement,
    this.request,
    this.response,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String number;
  ToOne<Element>? numberElement = ToOne<Element>();
  String? type;
  ToOne<Element>? typeElement = ToOne<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? initiator;
  ToOne<Element>? initiatorElement = ToOne<Element>();
  String? receiver;
  ToOne<Element>? receiverElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  bool? initiatorActive;
  ToOne<Element>? initiatorActiveElement = ToOne<Element>();
  bool? receiverActive;
  ToOne<Element>? receiverActiveElement = ToOne<Element>();
  ToOne<ExampleScenarioContainedInstance>? request =
      ToOne<ExampleScenarioContainedInstance>();
  ToOne<ExampleScenarioContainedInstance>? response =
      ToOne<ExampleScenarioContainedInstance>();
}

@Entity()
class ExampleScenarioAlternative {
  ExampleScenarioAlternative({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.title,
    this.titleElement,
    this.description,
    this.descriptionElement,
    this.step,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String title;
  ToOne<Element>? titleElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<ExampleScenarioStep>? step = ToMany<ExampleScenarioStep>();
}
