import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ExampleScenario extends Resource {
  ExampleScenario({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.purpose,
    this.actor,
    this.instance,
    this.process,
    this.workflow,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  String? name;
  String status;
  bool? experimental;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? copyright;
  String? purpose;
  ToMany<ExampleScenarioActor>? actor = ToMany<ExampleScenarioActor>();
  ToMany<ExampleScenarioInstance>? instance = ToMany<ExampleScenarioInstance>();
  ToMany<ExampleScenarioProcess>? process = ToMany<ExampleScenarioProcess>();
  List<String>? workflow;
}

@Entity()
class ExampleScenarioActor {
  ExampleScenarioActor({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.actorId,
    required this.type,
    this.name,
    this.description,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String actorId;
  String type;
  String? name;
  String? description;
}

@Entity()
class ExampleScenarioInstance {
  ExampleScenarioInstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.resourceId,
    required this.resourceType,
    this.name,
    this.description,
    this.version,
    this.containedInstance,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String resourceId;
  String resourceType;
  String? name;
  String? description;
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
    required this.description,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String versionId;
  String description;
}

@Entity()
class ExampleScenarioContainedInstance {
  ExampleScenarioContainedInstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.resourceId,
    this.versionId,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String resourceId;
  String? versionId;
}

@Entity()
class ExampleScenarioProcess {
  ExampleScenarioProcess({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.title,
    this.description,
    this.preConditions,
    this.postConditions,
    this.step,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String title;
  String? description;
  String? preConditions;
  String? postConditions;
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
    this.type,
    this.name,
    this.initiator,
    this.receiver,
    this.description,
    this.initiatorActive,
    this.receiverActive,
    this.request,
    this.response,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String number;
  String? type;
  String? name;
  String? initiator;
  String? receiver;
  String? description;
  bool? initiatorActive;
  bool? receiverActive;
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
    this.description,
    this.step,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String title;
  String? description;
  ToMany<ExampleScenarioStep>? step = ToMany<ExampleScenarioStep>();
}
