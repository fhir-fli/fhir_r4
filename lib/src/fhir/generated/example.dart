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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final List<ExampleScenarioActor> actor;
  final List<ExampleScenarioInstance> instance;
  final List<ExampleScenarioProcess> process;
  final List<FhirCanonical> workflow;
}

@Data()
@JsonCodable()
class ExampleScenarioActor {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String actorId;
  final PrimitiveElement ActorId;
  final FhirCode type;
  final PrimitiveElement Type;
  final String name;
  final PrimitiveElement Name;
  final FhirMarkdown description;
  final PrimitiveElement Description;
}

@Data()
@JsonCodable()
class ExampleScenarioInstance {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String resourceId;
  final PrimitiveElement ResourceId;
  final FhirCode resourceType;
  final PrimitiveElement ResourceType;
  final String name;
  final PrimitiveElement Name;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<ExampleScenarioVersion> version;
  final List<ExampleScenarioContainedInstance> containedInstance;
}

@Data()
@JsonCodable()
class ExampleScenarioVersion {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String versionId;
  final PrimitiveElement VersionId;
  final FhirMarkdown description;
  final PrimitiveElement Description;
}

@Data()
@JsonCodable()
class ExampleScenarioContainedInstance {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String resourceId;
  final PrimitiveElement ResourceId;
  final String versionId;
  final PrimitiveElement VersionId;
}

@Data()
@JsonCodable()
class ExampleScenarioProcess {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String title;
  final PrimitiveElement Title;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final FhirMarkdown preConditions;
  final PrimitiveElement PreConditions;
  final FhirMarkdown postConditions;
  final PrimitiveElement PostConditions;
  final List<ExampleScenarioStep> step;
}

@Data()
@JsonCodable()
class ExampleScenarioStep {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<ExampleScenarioProcess> process;
  final FhirBoolean pause;
  final PrimitiveElement Pause;
  final ExampleScenarioOperation operation;
  final List<ExampleScenarioAlternative> alternative;
}

@Data()
@JsonCodable()
class ExampleScenarioOperation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String number;
  final PrimitiveElement Number;
  final String type;
  final PrimitiveElement Type;
  final String name;
  final PrimitiveElement Name;
  final String initiator;
  final PrimitiveElement Initiator;
  final String receiver;
  final PrimitiveElement Receiver;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final FhirBoolean initiatorActive;
  final PrimitiveElement InitiatorActive;
  final FhirBoolean receiverActive;
  final PrimitiveElement ReceiverActive;
  final ExampleScenarioContainedInstance request;
  final ExampleScenarioContainedInstance response;
}

@Data()
@JsonCodable()
class ExampleScenarioAlternative {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String title;
  final PrimitiveElement Title;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<ExampleScenarioStep> step;
}


