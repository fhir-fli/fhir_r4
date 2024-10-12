// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxTestReport {
  ObjectBoxTestReport({
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
    this.identifier,
    this.name,
    this.nameElement,
    required this.status,
    this.statusElement,
    required this.testScript,
    required this.result,
    this.resultElement,
    this.score,
    this.scoreElement,
    this.tester,
    this.testerElement,
    this.issued,
    this.issuedElement,
    this.participant,
    this.setup,
    this.test,
    this.teardown,
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
  ToOne<ObjectBoxIdentifier>? identifier = ToOne<ObjectBoxIdentifier>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> testScript = ToOne<ObjectBoxReference>();
  String result;
  ToOne<ObjectBoxElement>? resultElement = ToOne<ObjectBoxElement>();
  double? score;
  ToOne<ObjectBoxElement>? scoreElement = ToOne<ObjectBoxElement>();
  String? tester;
  ToOne<ObjectBoxElement>? testerElement = ToOne<ObjectBoxElement>();
  String? issued;
  ToOne<ObjectBoxElement>? issuedElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTestReportParticipant>? participant =
      ToMany<ObjectBoxTestReportParticipant>();
  ToOne<ObjectBoxTestReportSetup>? setup = ToOne<ObjectBoxTestReportSetup>();
  ToMany<ObjectBoxTestReportTest>? test = ToMany<ObjectBoxTestReportTest>();
  ToOne<ObjectBoxTestReportTeardown>? teardown =
      ToOne<ObjectBoxTestReportTeardown>();
}

@Entity()
class ObjectBoxTestReportParticipant {
  ObjectBoxTestReportParticipant({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.typeElement,
    required this.uri,
    this.uriElement,
    this.display,
    this.displayElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String uri;
  ToOne<ObjectBoxElement>? uriElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement>? displayElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestReportSetup {
  ObjectBoxTestReportSetup({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxTestReportAction> action =
      ToMany<ObjectBoxTestReportAction>();
}

@Entity()
class ObjectBoxTestReportAction {
  ObjectBoxTestReportAction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.operation,
    this.assert_,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxTestReportOperation>? operation =
      ToOne<ObjectBoxTestReportOperation>();
  ToOne<ObjectBoxTestReportAssert>? assert_ =
      ToOne<ObjectBoxTestReportAssert>();
}

@Entity()
class ObjectBoxTestReportOperation {
  ObjectBoxTestReportOperation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.result,
    this.resultElement,
    this.message,
    this.messageElement,
    this.detail,
    this.detailElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String result;
  ToOne<ObjectBoxElement>? resultElement = ToOne<ObjectBoxElement>();
  String? message;
  ToOne<ObjectBoxElement>? messageElement = ToOne<ObjectBoxElement>();
  String? detail;
  ToOne<ObjectBoxElement>? detailElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestReportAssert {
  ObjectBoxTestReportAssert({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.result,
    this.resultElement,
    this.message,
    this.messageElement,
    this.detail,
    this.detailElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String result;
  ToOne<ObjectBoxElement>? resultElement = ToOne<ObjectBoxElement>();
  String? message;
  ToOne<ObjectBoxElement>? messageElement = ToOne<ObjectBoxElement>();
  String? detail;
  ToOne<ObjectBoxElement>? detailElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestReportTest {
  ObjectBoxTestReportTest({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    required this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTestReportAction> action =
      ToMany<ObjectBoxTestReportAction>();
}

@Entity()
class ObjectBoxTestReportAction1 {
  ObjectBoxTestReportAction1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.operation,
    this.assert_,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxTestReportOperation>? operation =
      ToOne<ObjectBoxTestReportOperation>();
  ToOne<ObjectBoxTestReportAssert>? assert_ =
      ToOne<ObjectBoxTestReportAssert>();
}

@Entity()
class ObjectBoxTestReportTeardown {
  ObjectBoxTestReportTeardown({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxTestReportAction> action =
      ToMany<ObjectBoxTestReportAction>();
}

@Entity()
class ObjectBoxTestReportAction2 {
  ObjectBoxTestReportAction2({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.operation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxTestReportOperation> operation =
      ToOne<ObjectBoxTestReportOperation>();
}
