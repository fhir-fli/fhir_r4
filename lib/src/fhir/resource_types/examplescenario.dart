import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ExampleScenario extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirCode? status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final List<ExampleScenarioActor>? actor;
  final List<ExampleScenarioInstance>? instance;
  final List<ExampleScenarioProcess>? process;
  final List<FhirCanonical>? workflow;

  ExampleScenario({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.status,
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
  }): super(resourceType: R4ResourceType.ExampleScenario);

@override
ExampleScenario clone() => this;

}


@Data()
@JsonCodable()
class ExampleScenarioActor {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? actorId;
  final Element? actorIdElement;
  final FhirCode? type;
  final Element? typeElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirMarkdown? description;
  final Element? descriptionElement;

  ExampleScenarioActor({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.actorId,
    this.actorIdElement,
    this.type,
    this.typeElement,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
  });

}


@Data()
@JsonCodable()
class ExampleScenarioInstance {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? resourceId;
  final Element? resourceIdElement;
  final FhirCode? resourceType;
  final Element? resourceTypeElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<ExampleScenarioVersion>? version;
  final List<ExampleScenarioContainedInstance>? containedInstance;

  ExampleScenarioInstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.resourceId,
    this.resourceIdElement,
    this.resourceType,
    this.resourceTypeElement,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    this.version,
    this.containedInstance,
  });

}


@Data()
@JsonCodable()
class ExampleScenarioVersion {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? versionId;
  final Element? versionIdElement;
  final FhirMarkdown? description;
  final Element? descriptionElement;

  ExampleScenarioVersion({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.versionId,
    this.versionIdElement,
    this.description,
    this.descriptionElement,
  });

}


@Data()
@JsonCodable()
class ExampleScenarioContainedInstance {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? resourceId;
  final Element? resourceIdElement;
  final FhirString? versionId;
  final Element? versionIdElement;

  ExampleScenarioContainedInstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.resourceId,
    this.resourceIdElement,
    this.versionId,
    this.versionIdElement,
  });

}


@Data()
@JsonCodable()
class ExampleScenarioProcess {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? title;
  final Element? titleElement;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final FhirMarkdown? preConditions;
  final Element? preConditionsElement;
  final FhirMarkdown? postConditions;
  final Element? postConditionsElement;
  final List<ExampleScenarioStep>? step;

  ExampleScenarioProcess({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.title,
    this.titleElement,
    this.description,
    this.descriptionElement,
    this.preConditions,
    this.preConditionsElement,
    this.postConditions,
    this.postConditionsElement,
    this.step,
  });

}


@Data()
@JsonCodable()
class ExampleScenarioStep {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<ExampleScenarioProcess>? process;
  final FhirBoolean? pause;
  final Element? pauseElement;
  final ExampleScenarioOperation? operation;
  final List<ExampleScenarioAlternative>? alternative;

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

}


@Data()
@JsonCodable()
class ExampleScenarioOperation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? number;
  final Element? numberElement;
  final FhirString? type;
  final Element? typeElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? initiator;
  final Element? initiatorElement;
  final FhirString? receiver;
  final Element? receiverElement;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final FhirBoolean? initiatorActive;
  final Element? initiatorActiveElement;
  final FhirBoolean? receiverActive;
  final Element? receiverActiveElement;
  final ExampleScenarioContainedInstance? request;
  final ExampleScenarioContainedInstance? response;

  ExampleScenarioOperation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.number,
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

}


@Data()
@JsonCodable()
class ExampleScenarioAlternative {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? title;
  final Element? titleElement;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<ExampleScenarioStep>? step;

  ExampleScenarioAlternative({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.title,
    this.titleElement,
    this.description,
    this.descriptionElement,
    this.step,
  });

}



