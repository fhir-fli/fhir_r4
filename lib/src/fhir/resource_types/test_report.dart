import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [TestReport] /// A summary of information based on the results of executing a TestScript.
class TestReport extends DomainResource {
  TestReport({
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
  }) : super(resourceType: R4ResourceType.TestReport);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier for the TestScript assigned for external purposes outside the
  /// context of FHIR.
  final Identifier? identifier;

  /// [name] /// A free text natural language name identifying the executed TestScript.
  final FhirString? name;
  final Element? nameElement;

  /// [status] /// The current state of this test report.
  final FhirCode status;
  final Element? statusElement;

  /// [testScript] /// Ideally this is an absolute URL that is used to identify the
  /// version-specific TestScript that was executed, matching the
  /// `TestScript.url`.
  final Reference testScript;

  /// [result] /// The overall result from the execution of the TestScript.
  final FhirCode result;
  final Element? resultElement;

  /// [score] /// The final score (percentage of tests passed) resulting from the execution
  /// of the TestScript.
  final FhirDecimal? score;
  final Element? scoreElement;

  /// [tester] /// Name of the tester producing this report (Organization or individual).
  final FhirString? tester;
  final Element? testerElement;

  /// [issued] /// When the TestScript was executed and this TestReport was generated.
  final FhirDateTime? issued;
  final Element? issuedElement;

  /// [participant] /// A participant in the test execution, either the execution engine, a client,
  /// or a server.
  final List<TestReportParticipant>? participant;

  /// [setup] /// The results of the series of required setup operations before the tests
  /// were executed.
  final TestReportSetup? setup;

  /// [test] /// A test executed from the test script.
  final List<TestReportTest>? test;

  /// [teardown] /// The results of the series of operations required to clean up after all the
  /// tests were executed (successfully or otherwise).
  final TestReportTeardown? teardown;
  @override
  TestReport clone() => throw UnimplementedError();
  TestReport copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    FhirString? name,
    Element? nameElement,
    FhirCode? status,
    Element? statusElement,
    Reference? testScript,
    FhirCode? result,
    Element? resultElement,
    FhirDecimal? score,
    Element? scoreElement,
    FhirString? tester,
    Element? testerElement,
    FhirDateTime? issued,
    Element? issuedElement,
    List<TestReportParticipant>? participant,
    TestReportSetup? setup,
    List<TestReportTest>? test,
    TestReportTeardown? teardown,
  }) {
    return TestReport(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      testScript: testScript ?? this.testScript,
      result: result ?? this.result,
      resultElement: resultElement ?? this.resultElement,
      score: score ?? this.score,
      scoreElement: scoreElement ?? this.scoreElement,
      tester: tester ?? this.tester,
      testerElement: testerElement ?? this.testerElement,
      issued: issued ?? this.issued,
      issuedElement: issuedElement ?? this.issuedElement,
      participant: participant ?? this.participant,
      setup: setup ?? this.setup,
      test: test ?? this.test,
      teardown: teardown ?? this.teardown,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TestReportParticipant] /// A participant in the test execution, either the execution engine, a client,
/// or a server.
class TestReportParticipant extends BackboneElement {
  TestReportParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    required this.uri,
    this.uriElement,
    this.display,
    this.displayElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of participant.
  final FhirCode type;
  final Element? typeElement;

  /// [uri] /// The uri of the participant. An absolute URL is preferred.
  final FhirUri uri;
  final Element? uriElement;

  /// [display] /// The display name of the participant.
  final FhirString? display;
  final Element? displayElement;
  @override
  TestReportParticipant clone() => throw UnimplementedError();
  TestReportParticipant copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    Element? typeElement,
    FhirUri? uri,
    Element? uriElement,
    FhirString? display,
    Element? displayElement,
  }) {
    return TestReportParticipant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      uri: uri ?? this.uri,
      uriElement: uriElement ?? this.uriElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TestReportSetup] /// The results of the series of required setup operations before the tests
/// were executed.
class TestReportSetup extends BackboneElement {
  TestReportSetup({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [action] /// Action would contain either an operation or an assertion.
  final List<TestReportAction> action;
  @override
  TestReportSetup clone() => throw UnimplementedError();
  TestReportSetup copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<TestReportAction>? action,
  }) {
    return TestReportSetup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TestReportAction] /// Action would contain either an operation or an assertion.
class TestReportAction extends BackboneElement {
  TestReportAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    this.assert_,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [operation] /// The operation performed.
  final TestReportOperation? operation;

  /// [assert_] /// The results of the assertion performed on the previous operations.
  final TestReportAssert? assert_;
  @override
  TestReportAction clone() => throw UnimplementedError();
  TestReportAction copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestReportOperation? operation,
    TestReportAssert? assert_,
  }) {
    return TestReportAction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
      assert_: assert_ ?? this.assert_,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TestReportOperation] /// The operation performed.
class TestReportOperation extends BackboneElement {
  TestReportOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.result,
    this.resultElement,
    this.message,
    this.messageElement,
    this.detail,
    this.detailElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [result] /// The result of this operation.
  final FhirCode result;
  final Element? resultElement;

  /// [message] /// An explanatory message associated with the result.
  final FhirMarkdown? message;
  final Element? messageElement;

  /// [detail] /// A link to further details on the result.
  final FhirUri? detail;
  final Element? detailElement;
  @override
  TestReportOperation clone() => throw UnimplementedError();
  TestReportOperation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? result,
    Element? resultElement,
    FhirMarkdown? message,
    Element? messageElement,
    FhirUri? detail,
    Element? detailElement,
  }) {
    return TestReportOperation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      result: result ?? this.result,
      resultElement: resultElement ?? this.resultElement,
      message: message ?? this.message,
      messageElement: messageElement ?? this.messageElement,
      detail: detail ?? this.detail,
      detailElement: detailElement ?? this.detailElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TestReportAssert] /// The results of the assertion performed on the previous operations.
class TestReportAssert extends BackboneElement {
  TestReportAssert({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.result,
    this.resultElement,
    this.message,
    this.messageElement,
    this.detail,
    this.detailElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [result] /// The result of this assertion.
  final FhirCode result;
  final Element? resultElement;

  /// [message] /// An explanatory message associated with the result.
  final FhirMarkdown? message;
  final Element? messageElement;

  /// [detail] /// A link to further details on the result.
  final FhirString? detail;
  final Element? detailElement;
  @override
  TestReportAssert clone() => throw UnimplementedError();
  TestReportAssert copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? result,
    Element? resultElement,
    FhirMarkdown? message,
    Element? messageElement,
    FhirString? detail,
    Element? detailElement,
  }) {
    return TestReportAssert(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      result: result ?? this.result,
      resultElement: resultElement ?? this.resultElement,
      message: message ?? this.message,
      messageElement: messageElement ?? this.messageElement,
      detail: detail ?? this.detail,
      detailElement: detailElement ?? this.detailElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TestReportTest] /// A test executed from the test script.
class TestReportTest extends BackboneElement {
  TestReportTest({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    required this.action,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name of this test used for tracking/logging purposes by test engines.
  final FhirString? name;
  final Element? nameElement;

  /// [description] /// A short description of the test used by test engines for tracking and
  /// reporting purposes.
  final FhirString? description;
  final Element? descriptionElement;

  /// [action] /// Action would contain either an operation or an assertion.
  final List<TestReportAction> action;
  @override
  TestReportTest clone() => throw UnimplementedError();
  TestReportTest copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? description,
    Element? descriptionElement,
    List<TestReportAction>? action,
  }) {
    return TestReportTest(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      action: action ?? this.action,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TestReportAction1] /// Action would contain either an operation or an assertion.
class TestReportAction1 extends BackboneElement {
  TestReportAction1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    this.assert_,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [operation] /// An operation would involve a REST request to a server.
  final TestReportOperation? operation;

  /// [assert_] /// The results of the assertion performed on the previous operations.
  final TestReportAssert? assert_;
  @override
  TestReportAction1 clone() => throw UnimplementedError();
  TestReportAction1 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestReportOperation? operation,
    TestReportAssert? assert_,
  }) {
    return TestReportAction1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
      assert_: assert_ ?? this.assert_,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TestReportTeardown] /// The results of the series of operations required to clean up after all the
/// tests were executed (successfully or otherwise).
class TestReportTeardown extends BackboneElement {
  TestReportTeardown({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [action] /// The teardown action will only contain an operation.
  final List<TestReportAction> action;
  @override
  TestReportTeardown clone() => throw UnimplementedError();
  TestReportTeardown copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<TestReportAction>? action,
  }) {
    return TestReportTeardown(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TestReportAction2] /// The teardown action will only contain an operation.
class TestReportAction2 extends BackboneElement {
  TestReportAction2({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.operation,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [operation] /// An operation would involve a REST request to a server.
  final TestReportOperation operation;
  @override
  TestReportAction2 clone() => throw UnimplementedError();
  TestReportAction2 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestReportOperation? operation,
  }) {
    return TestReportAction2(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
    );
  }
}
