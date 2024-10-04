import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ExampleScenario {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement versionElement;
  final String name;
  final PrimitiveElement nameElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final List<ExampleScenarioActor> actor;
  final List<ExampleScenarioInstance> instance;
  final List<ExampleScenarioProcess> process;
  final List<FhirCanonical> workflow;
  const ExampleScenario({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.url,
    required this.urlElement,
    required this.identifier,
    required this.version,
    required this.versionElement,
    required this.name,
    required this.nameElement,
    required this.status,
    required this.statusElement,
    required this.experimental,
    required this.experimentalElement,
    required this.date,
    required this.dateElement,
    required this.publisher,
    required this.publisherElement,
    required this.contact,
    required this.useContext,
    required this.jurisdiction,
    required this.copyright,
    required this.copyrightElement,
    required this.purpose,
    required this.purposeElement,
    required this.actor,
    required this.instance,
    required this.process,
    required this.workflow,
  });
}

@Data()
@JsonCodable()
class ExampleScenarioActor {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String actorId;
  final PrimitiveElement actorIdElement;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final String name;
  final PrimitiveElement nameElement;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  const ExampleScenarioActor({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.actorId,
    required this.actorIdElement,
    required this.type,
    required this.typeElement,
    required this.name,
    required this.nameElement,
    required this.description,
    required this.descriptionElement,
  });
}

@Data()
@JsonCodable()
class ExampleScenarioInstance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String resourceId;
  final PrimitiveElement resourceIdElement;
  final FhirCode resourceType;
  final PrimitiveElement resourceTypeElement;
  final String name;
  final PrimitiveElement nameElement;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<ExampleScenarioVersion> version;
  final List<ExampleScenarioContainedInstance> containedInstance;
  const ExampleScenarioInstance({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.resourceId,
    required this.resourceIdElement,
    required this.resourceType,
    required this.resourceTypeElement,
    required this.name,
    required this.nameElement,
    required this.description,
    required this.descriptionElement,
    required this.version,
    required this.containedInstance,
  });
}

@Data()
@JsonCodable()
class ExampleScenarioVersion {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String versionId;
  final PrimitiveElement versionIdElement;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  const ExampleScenarioVersion({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.versionId,
    required this.versionIdElement,
    required this.description,
    required this.descriptionElement,
  });
}

@Data()
@JsonCodable()
class ExampleScenarioContainedInstance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String resourceId;
  final PrimitiveElement resourceIdElement;
  final String versionId;
  final PrimitiveElement versionIdElement;
  const ExampleScenarioContainedInstance({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.resourceId,
    required this.resourceIdElement,
    required this.versionId,
    required this.versionIdElement,
  });
}

@Data()
@JsonCodable()
class ExampleScenarioProcess {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String title;
  final PrimitiveElement titleElement;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final FhirMarkdown preConditions;
  final PrimitiveElement preConditionsElement;
  final FhirMarkdown postConditions;
  final PrimitiveElement postConditionsElement;
  final List<ExampleScenarioStep> step;
  const ExampleScenarioProcess({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.title,
    required this.titleElement,
    required this.description,
    required this.descriptionElement,
    required this.preConditions,
    required this.preConditionsElement,
    required this.postConditions,
    required this.postConditionsElement,
    required this.step,
  });
}

@Data()
@JsonCodable()
class ExampleScenarioStep {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<ExampleScenarioProcess> process;
  final FhirBoolean pause;
  final PrimitiveElement pauseElement;
  final ExampleScenarioOperation operation;
  final List<ExampleScenarioAlternative> alternative;
  const ExampleScenarioStep({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.process,
    required this.pause,
    required this.pauseElement,
    required this.operation,
    required this.alternative,
  });
}

@Data()
@JsonCodable()
class ExampleScenarioOperation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String number;
  final PrimitiveElement numberElement;
  final String type;
  final PrimitiveElement typeElement;
  final String name;
  final PrimitiveElement nameElement;
  final String initiator;
  final PrimitiveElement initiatorElement;
  final String receiver;
  final PrimitiveElement receiverElement;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final FhirBoolean initiatorActive;
  final PrimitiveElement initiatorActiveElement;
  final FhirBoolean receiverActive;
  final PrimitiveElement receiverActiveElement;
  final ExampleScenarioContainedInstance request;
  final ExampleScenarioContainedInstance response;
  const ExampleScenarioOperation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.number,
    required this.numberElement,
    required this.type,
    required this.typeElement,
    required this.name,
    required this.nameElement,
    required this.initiator,
    required this.initiatorElement,
    required this.receiver,
    required this.receiverElement,
    required this.description,
    required this.descriptionElement,
    required this.initiatorActive,
    required this.initiatorActiveElement,
    required this.receiverActive,
    required this.receiverActiveElement,
    required this.request,
    required this.response,
  });
}

@Data()
@JsonCodable()
class ExampleScenarioAlternative {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String title;
  final PrimitiveElement titleElement;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<ExampleScenarioStep> step;
  const ExampleScenarioAlternative({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.title,
    required this.titleElement,
    required this.description,
    required this.descriptionElement,
    required this.step,
  });
}


