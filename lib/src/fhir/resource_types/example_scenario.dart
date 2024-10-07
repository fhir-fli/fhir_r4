import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class ExampleScenario extends DomainResource {
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
  }) : super(resourceType: R4ResourceType.ExampleScenario);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirCode status;
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
  final List<Element>? workflowElement;
  @override
  ExampleScenario clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExampleScenarioActor extends BackboneElement {
  ExampleScenarioActor({
    super.id,
    super.extension_,
    super.modifierExtension,
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
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString actorId;
  final Element? actorIdElement;
  final FhirCode type;
  final Element? typeElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  @override
  ExampleScenarioActor clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExampleScenarioInstance extends BackboneElement {
  ExampleScenarioInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
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
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString resourceId;
  final Element? resourceIdElement;
  final FhirCode resourceType;
  final Element? resourceTypeElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<ExampleScenarioVersion>? version;
  final List<ExampleScenarioContainedInstance>? containedInstance;
  @override
  ExampleScenarioInstance clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExampleScenarioVersion extends BackboneElement {
  ExampleScenarioVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.versionId,
    this.versionIdElement,
    required this.description,
    this.descriptionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString versionId;
  final Element? versionIdElement;
  final FhirMarkdown description;
  final Element? descriptionElement;
  @override
  ExampleScenarioVersion clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExampleScenarioContainedInstance extends BackboneElement {
  ExampleScenarioContainedInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.resourceId,
    this.resourceIdElement,
    this.versionId,
    this.versionIdElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString resourceId;
  final Element? resourceIdElement;
  final FhirString? versionId;
  final Element? versionIdElement;
  @override
  ExampleScenarioContainedInstance clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExampleScenarioProcess extends BackboneElement {
  ExampleScenarioProcess({
    super.id,
    super.extension_,
    super.modifierExtension,
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
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString title;
  final Element? titleElement;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final FhirMarkdown? preConditions;
  final Element? preConditionsElement;
  final FhirMarkdown? postConditions;
  final Element? postConditionsElement;
  final List<ExampleScenarioStep>? step;
  @override
  ExampleScenarioProcess clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExampleScenarioStep extends BackboneElement {
  ExampleScenarioStep({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.process,
    this.pause,
    this.pauseElement,
    this.operation,
    this.alternative,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<ExampleScenarioProcess>? process;
  final FhirBoolean? pause;
  final Element? pauseElement;
  final ExampleScenarioOperation? operation;
  final List<ExampleScenarioAlternative>? alternative;
  @override
  ExampleScenarioStep clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExampleScenarioOperation extends BackboneElement {
  ExampleScenarioOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
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
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString number;
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
  @override
  ExampleScenarioOperation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExampleScenarioAlternative extends BackboneElement {
  ExampleScenarioAlternative({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.title,
    this.titleElement,
    this.description,
    this.descriptionElement,
    this.step,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString title;
  final Element? titleElement;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<ExampleScenarioStep>? step;
  @override
  ExampleScenarioAlternative clone() => throw UnimplementedError();
}
