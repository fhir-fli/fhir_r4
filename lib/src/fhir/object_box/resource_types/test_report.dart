// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxTestReport {
  ObjectBoxTestReport({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxIdentifier? identifier,
    this.name,
    ObjectBoxElement? nameElement,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxReference? testScript,
    required this.result,
    ObjectBoxElement? resultElement,
    this.score,
    ObjectBoxElement? scoreElement,
    this.tester,
    ObjectBoxElement? testerElement,
    this.issued,
    ObjectBoxElement? issuedElement,
    List<ObjectBoxTestReportParticipant>? participant,
    ObjectBoxTestReportSetup? setup,
    List<ObjectBoxTestReportTest>? test,
    ObjectBoxTestReportTeardown? teardown,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.target = identifier;
    this.nameElement.target = nameElement;
    this.statusElement.target = statusElement;
    this.testScript.target = testScript;
    this.resultElement.target = resultElement;
    this.scoreElement.target = scoreElement;
    this.testerElement.target = testerElement;
    this.issuedElement.target = issuedElement;
    this.participant.addAll(participant ?? []);
    this.setup.target = setup;
    this.test.addAll(test ?? []);
    this.teardown.target = teardown;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> testScript = ToOne<ObjectBoxReference>();
  String result;
  ToOne<ObjectBoxElement> resultElement = ToOne<ObjectBoxElement>();
  double? score;
  ToOne<ObjectBoxElement> scoreElement = ToOne<ObjectBoxElement>();
  String? tester;
  ToOne<ObjectBoxElement> testerElement = ToOne<ObjectBoxElement>();
  String? issued;
  ToOne<ObjectBoxElement> issuedElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTestReportParticipant> participant =
      ToMany<ObjectBoxTestReportParticipant>();
  ToOne<ObjectBoxTestReportSetup> setup = ToOne<ObjectBoxTestReportSetup>();
  ToMany<ObjectBoxTestReportTest> test = ToMany<ObjectBoxTestReportTest>();
  ToOne<ObjectBoxTestReportTeardown> teardown =
      ToOne<ObjectBoxTestReportTeardown>();
}

@Entity()
class ObjectBoxTestReportParticipant {
  ObjectBoxTestReportParticipant({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.type,
    ObjectBoxElement? typeElement,
    required this.uri,
    ObjectBoxElement? uriElement,
    this.display,
    ObjectBoxElement? displayElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.uriElement.target = uriElement;
    this.displayElement.target = displayElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String uri;
  ToOne<ObjectBoxElement> uriElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement> displayElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestReportSetup {
  ObjectBoxTestReportSetup({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxTestReportAction>? action,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.action.addAll(action ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxTestReportAction> action =
      ToMany<ObjectBoxTestReportAction>();
}

@Entity()
class ObjectBoxTestReportAction {
  ObjectBoxTestReportAction({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxTestReportOperation? operation,
    ObjectBoxTestReportAssert? assert_,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.operation.target = operation;
    this.assert_.target = assert_;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxTestReportOperation> operation =
      ToOne<ObjectBoxTestReportOperation>();
  ToOne<ObjectBoxTestReportAssert> assert_ = ToOne<ObjectBoxTestReportAssert>();
}

@Entity()
class ObjectBoxTestReportOperation {
  ObjectBoxTestReportOperation({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.result,
    ObjectBoxElement? resultElement,
    this.message,
    ObjectBoxElement? messageElement,
    this.detail,
    ObjectBoxElement? detailElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.resultElement.target = resultElement;
    this.messageElement.target = messageElement;
    this.detailElement.target = detailElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String result;
  ToOne<ObjectBoxElement> resultElement = ToOne<ObjectBoxElement>();
  String? message;
  ToOne<ObjectBoxElement> messageElement = ToOne<ObjectBoxElement>();
  String? detail;
  ToOne<ObjectBoxElement> detailElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestReportAssert {
  ObjectBoxTestReportAssert({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.result,
    ObjectBoxElement? resultElement,
    this.message,
    ObjectBoxElement? messageElement,
    this.detail,
    ObjectBoxElement? detailElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.resultElement.target = resultElement;
    this.messageElement.target = messageElement;
    this.detailElement.target = detailElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String result;
  ToOne<ObjectBoxElement> resultElement = ToOne<ObjectBoxElement>();
  String? message;
  ToOne<ObjectBoxElement> messageElement = ToOne<ObjectBoxElement>();
  String? detail;
  ToOne<ObjectBoxElement> detailElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestReportTest {
  ObjectBoxTestReportTest({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.name,
    ObjectBoxElement? nameElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxTestReportAction>? action,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.descriptionElement.target = descriptionElement;
    this.action.addAll(action ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTestReportAction> action =
      ToMany<ObjectBoxTestReportAction>();
}

@Entity()
class ObjectBoxTestReportAction1 {
  ObjectBoxTestReportAction1({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxTestReportOperation? operation,
    ObjectBoxTestReportAssert? assert_,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.operation.target = operation;
    this.assert_.target = assert_;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxTestReportOperation> operation =
      ToOne<ObjectBoxTestReportOperation>();
  ToOne<ObjectBoxTestReportAssert> assert_ = ToOne<ObjectBoxTestReportAssert>();
}

@Entity()
class ObjectBoxTestReportTeardown {
  ObjectBoxTestReportTeardown({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxTestReportAction>? action,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.action.addAll(action ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxTestReportAction> action =
      ToMany<ObjectBoxTestReportAction>();
}

@Entity()
class ObjectBoxTestReportAction2 {
  ObjectBoxTestReportAction2({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxTestReportOperation? operation,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.operation.target = operation;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxTestReportOperation> operation =
      ToOne<ObjectBoxTestReportOperation>();
}
