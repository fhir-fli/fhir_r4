// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxExampleScenario {
  ObjectBoxExampleScenario({
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
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxExampleScenarioActor>? actor =
      ToMany<ObjectBoxExampleScenarioActor>();
  ToMany<ObjectBoxExampleScenarioInstance>? instance =
      ToMany<ObjectBoxExampleScenarioInstance>();
  ToMany<ObjectBoxExampleScenarioProcess>? process =
      ToMany<ObjectBoxExampleScenarioProcess>();
  List<String>? workflow;
  ToMany<ObjectBoxElement>? workflowElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxExampleScenarioActor {
  ObjectBoxExampleScenarioActor({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String actorId;
  ToOne<ObjectBoxElement>? actorIdElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxExampleScenarioInstance {
  ObjectBoxExampleScenarioInstance({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String resourceId;
  ToOne<ObjectBoxElement>? resourceIdElement = ToOne<ObjectBoxElement>();
  String resourceType;
  ToOne<ObjectBoxElement>? resourceTypeElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxExampleScenarioVersion>? version =
      ToMany<ObjectBoxExampleScenarioVersion>();
  ToMany<ObjectBoxExampleScenarioContainedInstance>? containedInstance =
      ToMany<ObjectBoxExampleScenarioContainedInstance>();
}

@Entity()
class ObjectBoxExampleScenarioVersion {
  ObjectBoxExampleScenarioVersion({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String versionId;
  ToOne<ObjectBoxElement>? versionIdElement = ToOne<ObjectBoxElement>();
  String description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxExampleScenarioContainedInstance {
  ObjectBoxExampleScenarioContainedInstance({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String resourceId;
  ToOne<ObjectBoxElement>? resourceIdElement = ToOne<ObjectBoxElement>();
  String? versionId;
  ToOne<ObjectBoxElement>? versionIdElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxExampleScenarioProcess {
  ObjectBoxExampleScenarioProcess({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? preConditions;
  ToOne<ObjectBoxElement>? preConditionsElement = ToOne<ObjectBoxElement>();
  String? postConditions;
  ToOne<ObjectBoxElement>? postConditionsElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxExampleScenarioStep>? step =
      ToMany<ObjectBoxExampleScenarioStep>();
}

@Entity()
class ObjectBoxExampleScenarioStep {
  ObjectBoxExampleScenarioStep({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxExampleScenarioProcess>? process =
      ToMany<ObjectBoxExampleScenarioProcess>();
  bool? pause;
  ToOne<ObjectBoxElement>? pauseElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxExampleScenarioOperation>? operation =
      ToOne<ObjectBoxExampleScenarioOperation>();
  ToMany<ObjectBoxExampleScenarioAlternative>? alternative =
      ToMany<ObjectBoxExampleScenarioAlternative>();
}

@Entity()
class ObjectBoxExampleScenarioOperation {
  ObjectBoxExampleScenarioOperation({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String number;
  ToOne<ObjectBoxElement>? numberElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? initiator;
  ToOne<ObjectBoxElement>? initiatorElement = ToOne<ObjectBoxElement>();
  String? receiver;
  ToOne<ObjectBoxElement>? receiverElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  bool? initiatorActive;
  ToOne<ObjectBoxElement>? initiatorActiveElement = ToOne<ObjectBoxElement>();
  bool? receiverActive;
  ToOne<ObjectBoxElement>? receiverActiveElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxExampleScenarioContainedInstance>? request =
      ToOne<ObjectBoxExampleScenarioContainedInstance>();
  ToOne<ObjectBoxExampleScenarioContainedInstance>? response =
      ToOne<ObjectBoxExampleScenarioContainedInstance>();
}

@Entity()
class ObjectBoxExampleScenarioAlternative {
  ObjectBoxExampleScenarioAlternative({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxExampleScenarioStep>? step =
      ToMany<ObjectBoxExampleScenarioStep>();
}
