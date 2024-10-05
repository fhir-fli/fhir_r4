import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class TestReport extends DomainResource {
  final Identifier? identifier;
  final FhirString? name;
  final Element? nameElement;
  final FhirCode? status;
  final Element? statusElement;
  final Reference testScript;
  final FhirCode? result;
  final Element? resultElement;
  final FhirDecimal? score;
  final Element? scoreElement;
  final FhirString? tester;
  final Element? testerElement;
  final FhirDateTime? issued;
  final Element? issuedElement;
  final List<TestReportParticipant>? participant;
  final TestReportSetup? setup;
  final List<TestReportTest>? test;
  final TestReportTeardown? teardown;

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
    this.status,
    this.statusElement,
    required this.testScript,
    this.result,
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
  }): super(resourceType: R4ResourceType.TestReport);

@override
TestReport clone() => this;

}


@Data()
@JsonCodable()
class TestReportParticipant {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? type;
  final Element? typeElement;
  final FhirUri? uri;
  final Element? uriElement;
  final FhirString? display;
  final Element? displayElement;

  TestReportParticipant({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.typeElement,
    this.uri,
    this.uriElement,
    this.display,
    this.displayElement,
  });

}


@Data()
@JsonCodable()
class TestReportSetup {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<TestReportAction> action;

  TestReportSetup({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.action,
  });

}


@Data()
@JsonCodable()
class TestReportAction {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final TestReportOperation? operation;
  final TestReportAssert? assert_;

  TestReportAction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.operation,
    this.assert_,
  });

}


@Data()
@JsonCodable()
class TestReportOperation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? result;
  final Element? resultElement;
  final FhirMarkdown? message;
  final Element? messageElement;
  final FhirUri? detail;
  final Element? detailElement;

  TestReportOperation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.result,
    this.resultElement,
    this.message,
    this.messageElement,
    this.detail,
    this.detailElement,
  });

}


@Data()
@JsonCodable()
class TestReportAssert {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? result;
  final Element? resultElement;
  final FhirMarkdown? message;
  final Element? messageElement;
  final FhirString? detail;
  final Element? detailElement;

  TestReportAssert({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.result,
    this.resultElement,
    this.message,
    this.messageElement,
    this.detail,
    this.detailElement,
  });

}


@Data()
@JsonCodable()
class TestReportTest {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? description;
  final Element? descriptionElement;
  final List<TestReportAction1> action;

  TestReportTest({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    required this.action,
  });

}


@Data()
@JsonCodable()
class TestReportAction1 {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final TestReportOperation? operation;
  final TestReportAssert? assert_;

  TestReportAction1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.operation,
    this.assert_,
  });

}


@Data()
@JsonCodable()
class TestReportTeardown {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<TestReportAction2> action;

  TestReportTeardown({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.action,
  });

}


@Data()
@JsonCodable()
class TestReportAction2 {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final TestReportOperation operation;

  TestReportAction2({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.operation,
  });

}



