// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxExampleScenario {
  ObjectBoxExampleScenario({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.url,
    ObjectBoxElement? urlElement,
    List<ObjectBoxIdentifier>? identifier,
    this.version,
    ObjectBoxElement? versionElement,
    this.name,
    ObjectBoxElement? nameElement,
    required this.status,
    ObjectBoxElement? statusElement,
    this.experimental,
    ObjectBoxElement? experimentalElement,
    this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.copyright,
    ObjectBoxElement? copyrightElement,
    this.purpose,
    ObjectBoxElement? purposeElement,
    List<ObjectBoxExampleScenarioActor>? actor,
    List<ObjectBoxExampleScenarioInstance>? instance,
    List<ObjectBoxExampleScenarioProcess>? process,
    this.workflow,
    List<ObjectBoxElement>? workflowElement,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.identifier.addAll(identifier ?? []);
    this.versionElement.target = versionElement;
    this.nameElement.target = nameElement;
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.copyrightElement.target = copyrightElement;
    this.purposeElement.target = purposeElement;
    this.actor.addAll(actor ?? []);
    this.instance.addAll(instance ?? []);
    this.process.addAll(process ?? []);
    this.workflowElement.addAll(workflowElement ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement> experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
  String? purpose;
  ToOne<ObjectBoxElement> purposeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxExampleScenarioActor> actor =
      ToMany<ObjectBoxExampleScenarioActor>();
  ToMany<ObjectBoxExampleScenarioInstance> instance =
      ToMany<ObjectBoxExampleScenarioInstance>();
  ToMany<ObjectBoxExampleScenarioProcess> process =
      ToMany<ObjectBoxExampleScenarioProcess>();
  List<String>? workflow;
  ToMany<ObjectBoxElement> workflowElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxExampleScenarioActor {
  ObjectBoxExampleScenarioActor({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.actorId,
    ObjectBoxElement? actorIdElement,
    required this.type,
    ObjectBoxElement? typeElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.description,
    ObjectBoxElement? descriptionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.actorIdElement.target = actorIdElement;
    this.typeElement.target = typeElement;
    this.nameElement.target = nameElement;
    this.descriptionElement.target = descriptionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String actorId;
  ToOne<ObjectBoxElement> actorIdElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxExampleScenarioInstance {
  ObjectBoxExampleScenarioInstance({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.resourceId,
    ObjectBoxElement? resourceIdElement,
    required this.resourceType,
    ObjectBoxElement? resourceTypeElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxExampleScenarioVersion>? version,
    List<ObjectBoxExampleScenarioContainedInstance>? containedInstance,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.resourceIdElement.target = resourceIdElement;
    this.resourceTypeElement.target = resourceTypeElement;
    this.nameElement.target = nameElement;
    this.descriptionElement.target = descriptionElement;
    this.version.addAll(version ?? []);
    this.containedInstance.addAll(containedInstance ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String resourceId;
  ToOne<ObjectBoxElement> resourceIdElement = ToOne<ObjectBoxElement>();
  String resourceType;
  ToOne<ObjectBoxElement> resourceTypeElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxExampleScenarioVersion> version =
      ToMany<ObjectBoxExampleScenarioVersion>();
  ToMany<ObjectBoxExampleScenarioContainedInstance> containedInstance =
      ToMany<ObjectBoxExampleScenarioContainedInstance>();
}

@Entity()
class ObjectBoxExampleScenarioVersion {
  ObjectBoxExampleScenarioVersion({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.versionId,
    ObjectBoxElement? versionIdElement,
    required this.description,
    ObjectBoxElement? descriptionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.versionIdElement.target = versionIdElement;
    this.descriptionElement.target = descriptionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String versionId;
  ToOne<ObjectBoxElement> versionIdElement = ToOne<ObjectBoxElement>();
  String description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxExampleScenarioContainedInstance {
  ObjectBoxExampleScenarioContainedInstance({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.resourceId,
    ObjectBoxElement? resourceIdElement,
    this.versionId,
    ObjectBoxElement? versionIdElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.resourceIdElement.target = resourceIdElement;
    this.versionIdElement.target = versionIdElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String resourceId;
  ToOne<ObjectBoxElement> resourceIdElement = ToOne<ObjectBoxElement>();
  String? versionId;
  ToOne<ObjectBoxElement> versionIdElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxExampleScenarioProcess {
  ObjectBoxExampleScenarioProcess({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.title,
    ObjectBoxElement? titleElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.preConditions,
    ObjectBoxElement? preConditionsElement,
    this.postConditions,
    ObjectBoxElement? postConditionsElement,
    List<ObjectBoxExampleScenarioStep>? step,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.titleElement.target = titleElement;
    this.descriptionElement.target = descriptionElement;
    this.preConditionsElement.target = preConditionsElement;
    this.postConditionsElement.target = postConditionsElement;
    this.step.addAll(step ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? preConditions;
  ToOne<ObjectBoxElement> preConditionsElement = ToOne<ObjectBoxElement>();
  String? postConditions;
  ToOne<ObjectBoxElement> postConditionsElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxExampleScenarioStep> step =
      ToMany<ObjectBoxExampleScenarioStep>();
}

@Entity()
class ObjectBoxExampleScenarioStep {
  ObjectBoxExampleScenarioStep({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxExampleScenarioProcess>? process,
    this.pause,
    ObjectBoxElement? pauseElement,
    ObjectBoxExampleScenarioOperation? operation,
    List<ObjectBoxExampleScenarioAlternative>? alternative,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.process.addAll(process ?? []);
    this.pauseElement.target = pauseElement;
    this.operation.target = operation;
    this.alternative.addAll(alternative ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxExampleScenarioProcess> process =
      ToMany<ObjectBoxExampleScenarioProcess>();
  bool? pause;
  ToOne<ObjectBoxElement> pauseElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxExampleScenarioOperation> operation =
      ToOne<ObjectBoxExampleScenarioOperation>();
  ToMany<ObjectBoxExampleScenarioAlternative> alternative =
      ToMany<ObjectBoxExampleScenarioAlternative>();
}

@Entity()
class ObjectBoxExampleScenarioOperation {
  ObjectBoxExampleScenarioOperation({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.number,
    ObjectBoxElement? numberElement,
    this.type,
    ObjectBoxElement? typeElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.initiator,
    ObjectBoxElement? initiatorElement,
    this.receiver,
    ObjectBoxElement? receiverElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.initiatorActive,
    ObjectBoxElement? initiatorActiveElement,
    this.receiverActive,
    ObjectBoxElement? receiverActiveElement,
    ObjectBoxExampleScenarioContainedInstance? request,
    ObjectBoxExampleScenarioContainedInstance? response,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.numberElement.target = numberElement;
    this.typeElement.target = typeElement;
    this.nameElement.target = nameElement;
    this.initiatorElement.target = initiatorElement;
    this.receiverElement.target = receiverElement;
    this.descriptionElement.target = descriptionElement;
    this.initiatorActiveElement.target = initiatorActiveElement;
    this.receiverActiveElement.target = receiverActiveElement;
    this.request.target = request;
    this.response.target = response;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String number;
  ToOne<ObjectBoxElement> numberElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? initiator;
  ToOne<ObjectBoxElement> initiatorElement = ToOne<ObjectBoxElement>();
  String? receiver;
  ToOne<ObjectBoxElement> receiverElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  bool? initiatorActive;
  ToOne<ObjectBoxElement> initiatorActiveElement = ToOne<ObjectBoxElement>();
  bool? receiverActive;
  ToOne<ObjectBoxElement> receiverActiveElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxExampleScenarioContainedInstance> request =
      ToOne<ObjectBoxExampleScenarioContainedInstance>();
  ToOne<ObjectBoxExampleScenarioContainedInstance> response =
      ToOne<ObjectBoxExampleScenarioContainedInstance>();
}

@Entity()
class ObjectBoxExampleScenarioAlternative {
  ObjectBoxExampleScenarioAlternative({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.title,
    ObjectBoxElement? titleElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxExampleScenarioStep>? step,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.titleElement.target = titleElement;
    this.descriptionElement.target = descriptionElement;
    this.step.addAll(step ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxExampleScenarioStep> step =
      ToMany<ObjectBoxExampleScenarioStep>();
}
