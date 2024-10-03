import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ExampleScenarioEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ExampleScenario';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  bool? experimental;

  @ToOne()
  PrimitiveElementEntity? experimentalElement;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  String? publisher;

  @ToOne()
  PrimitiveElementEntity? publisherElement;

  @ToMany()
  List<ContactDetailEntity>? contact;

  @ToMany()
  List<UsageContextEntity>? useContext;

  @ToMany()
  List<CodeableConceptEntity>? jurisdiction;

  String? copyright;

  @ToOne()
  PrimitiveElementEntity? copyrightElement;

  String? purpose;

  @ToOne()
  PrimitiveElementEntity? purposeElement;

  @ToMany()
  List<ExampleScenarioActorEntity>? actor;

  @ToMany()
  List<ExampleScenarioInstanceEntity>? instance;

  @ToMany()
  List<ExampleScenarioProcessEntity>? process;

  List<String>? workflow;
}

class ExampleScenarioActorEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? actorId;

  @ToOne()
  PrimitiveElementEntity? actorIdElement;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;
}

class ExampleScenarioInstanceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? resourceId;

  @ToOne()
  PrimitiveElementEntity? resourceIdElement;

  String? resourceType;

  @ToOne()
  PrimitiveElementEntity? resourceTypeElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<ExampleScenarioVersionEntity>? version;

  @ToMany()
  List<ExampleScenarioContainedInstanceEntity>? containedInstance;
}

class ExampleScenarioVersionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? versionId;

  @ToOne()
  PrimitiveElementEntity? versionIdElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;
}

class ExampleScenarioContainedInstanceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? resourceId;

  @ToOne()
  PrimitiveElementEntity? resourceIdElement;

  String? versionId;

  @ToOne()
  PrimitiveElementEntity? versionIdElement;
}

class ExampleScenarioProcessEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  String? preConditions;

  @ToOne()
  PrimitiveElementEntity? preConditionsElement;

  String? postConditions;

  @ToOne()
  PrimitiveElementEntity? postConditionsElement;

  @ToMany()
  List<ExampleScenarioStepEntity>? step;
}

class ExampleScenarioStepEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<ExampleScenarioProcessEntity>? process;

  bool? pause;

  @ToOne()
  PrimitiveElementEntity? pauseElement;

  @ToOne()
  ExampleScenarioOperationEntity? operation;

  @ToMany()
  List<ExampleScenarioAlternativeEntity>? alternative;
}

class ExampleScenarioOperationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? number;

  @ToOne()
  PrimitiveElementEntity? numberElement;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? initiator;

  @ToOne()
  PrimitiveElementEntity? initiatorElement;

  String? receiver;

  @ToOne()
  PrimitiveElementEntity? receiverElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  bool? initiatorActive;

  @ToOne()
  PrimitiveElementEntity? initiatorActiveElement;

  bool? receiverActive;

  @ToOne()
  PrimitiveElementEntity? receiverActiveElement;

  @ToOne()
  ExampleScenarioContainedInstanceEntity? request;

  @ToOne()
  ExampleScenarioContainedInstanceEntity? response;
}

class ExampleScenarioAlternativeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<ExampleScenarioStepEntity>? step;
}
