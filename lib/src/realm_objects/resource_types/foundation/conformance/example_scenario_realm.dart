import 'package:realm/realm.dart';
@RealmModel()
class _ExampleScenarioRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
  late List<_IdentifierRealm> identifier;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirBooleanRealm experimental;
  late _PrimitiveElementRealm experimentalElement;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late String publisher;
  late _PrimitiveElementRealm publisherElement;
  late List<_ContactDetailRealm> contact;
  late List<_UsageContextRealm> useContext;
  late List<_CodeableConceptRealm> jurisdiction;
  late _FhirMarkdownRealm copyright;
  late _PrimitiveElementRealm copyrightElement;
  late _FhirMarkdownRealm purpose;
  late _PrimitiveElementRealm purposeElement;
  late List<_ExampleScenarioActorRealm> actor;
  late List<_ExampleScenarioInstanceRealm> instance;
  late List<_ExampleScenarioProcessRealm> process;
  late List<_FhirCanonicalRealm> workflow;
}
@RealmModel()
class _ExampleScenarioActorRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String actorId;
  late _PrimitiveElementRealm actorIdElement;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
}
@RealmModel()
class _ExampleScenarioInstanceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String resourceId;
  late _PrimitiveElementRealm resourceIdElement;
  late _FhirCodeRealm resourceType;
  late _PrimitiveElementRealm resourceTypeElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_ExampleScenarioVersionRealm> version;
  late List<_ExampleScenarioContainedInstanceRealm> containedInstance;
}
@RealmModel()
class _ExampleScenarioVersionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String versionId;
  late _PrimitiveElementRealm versionIdElement;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
}
@RealmModel()
class _ExampleScenarioContainedInstanceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String resourceId;
  late _PrimitiveElementRealm resourceIdElement;
  late String versionId;
  late _PrimitiveElementRealm versionIdElement;
}
@RealmModel()
class _ExampleScenarioProcessRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirMarkdownRealm preConditions;
  late _PrimitiveElementRealm preConditionsElement;
  late _FhirMarkdownRealm postConditions;
  late _PrimitiveElementRealm postConditionsElement;
  late List<_ExampleScenarioStepRealm> step;
}
@RealmModel()
class _ExampleScenarioStepRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_ExampleScenarioProcessRealm> process;
  late _FhirBooleanRealm pause;
  late _PrimitiveElementRealm pauseElement;
  late _ExampleScenarioOperationRealm operation;
  late List<_ExampleScenarioAlternativeRealm> alternative;
}
@RealmModel()
class _ExampleScenarioOperationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String number;
  late _PrimitiveElementRealm numberElement;
  late String type;
  late _PrimitiveElementRealm typeElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String initiator;
  late _PrimitiveElementRealm initiatorElement;
  late String receiver;
  late _PrimitiveElementRealm receiverElement;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirBooleanRealm initiatorActive;
  late _PrimitiveElementRealm initiatorActiveElement;
  late _FhirBooleanRealm receiverActive;
  late _PrimitiveElementRealm receiverActiveElement;
  late _ExampleScenarioContainedInstanceRealm request;
  late _ExampleScenarioContainedInstanceRealm response;
}
@RealmModel()
class _ExampleScenarioAlternativeRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_ExampleScenarioStepRealm> step;
}
