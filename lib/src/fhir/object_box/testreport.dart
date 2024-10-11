import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class TestReport extends Resource {
  TestReport({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.name,
    required this.status,
    required this.testScript,
    required this.result,
    this.score,
    this.tester,
    this.issued,
    this.participant,
    this.setup,
    this.test,
    this.teardown,
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
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  String? name;
  String status;
  ToOne<Reference> testScript = ToOne<Reference>();
  String result;
  double? score;
  String? tester;
  String? issued;
  ToMany<TestReportParticipant>? participant = ToMany<TestReportParticipant>();
  ToOne<TestReportSetup>? setup = ToOne<TestReportSetup>();
  ToMany<TestReportTest>? test = ToMany<TestReportTest>();
  ToOne<TestReportTeardown>? teardown = ToOne<TestReportTeardown>();
}

@Entity()
class TestReportParticipant {
  TestReportParticipant({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.uri,
    this.display,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  String uri;
  String? display;
}

@Entity()
class TestReportSetup {
  TestReportSetup({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<TestReportAction> action = ToMany<TestReportAction>();
}

@Entity()
class TestReportAction {
  TestReportAction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.operation,
    this.assert_,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<TestReportOperation>? operation = ToOne<TestReportOperation>();
  ToOne<TestReportAssert>? assert_ = ToOne<TestReportAssert>();
}

@Entity()
class TestReportOperation {
  TestReportOperation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.result,
    this.message,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String result;
  String? message;
  String? detail;
}

@Entity()
class TestReportAssert {
  TestReportAssert({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.result,
    this.message,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String result;
  String? message;
  String? detail;
}

@Entity()
class TestReportTest {
  TestReportTest({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.description,
    required this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? name;
  String? description;
  ToMany<TestReportAction> action = ToMany<TestReportAction>();
}

@Entity()
class TestReportAction1 {
  TestReportAction1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.operation,
    this.assert_,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<TestReportOperation>? operation = ToOne<TestReportOperation>();
  ToOne<TestReportAssert>? assert_ = ToOne<TestReportAssert>();
}

@Entity()
class TestReportTeardown {
  TestReportTeardown({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<TestReportAction> action = ToMany<TestReportAction>();
}

@Entity()
class TestReportAction2 {
  TestReportAction2({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.operation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<TestReportOperation> operation = ToOne<TestReportOperation>();
}
