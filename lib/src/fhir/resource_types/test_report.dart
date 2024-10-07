import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
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

  final Identifier? identifier;
  final FhirString? name;
  final Element? nameElement;
  final FhirCode status;
  final Element? statusElement;
  final Reference testScript;
  final FhirCode result;
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
  @override
  TestReport clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final FhirCode type;
  final Element? typeElement;
  final FhirUri uri;
  final Element? uriElement;
  final FhirString? display;
  final Element? displayElement;
  @override
  TestReportParticipant clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class TestReportSetup extends BackboneElement {
  TestReportSetup({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
  });

  final List<TestReportAction> action;
  @override
  TestReportSetup clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class TestReportAction extends BackboneElement {
  TestReportAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    this.assert_,
  });

  final TestReportOperation? operation;
  final TestReportAssert? assert_;
  @override
  TestReportAction clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final FhirCode result;
  final Element? resultElement;
  final FhirMarkdown? message;
  final Element? messageElement;
  final FhirUri? detail;
  final Element? detailElement;
  @override
  TestReportOperation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final FhirCode result;
  final Element? resultElement;
  final FhirMarkdown? message;
  final Element? messageElement;
  final FhirString? detail;
  final Element? detailElement;
  @override
  TestReportAssert clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final FhirString? name;
  final Element? nameElement;
  final FhirString? description;
  final Element? descriptionElement;
  final List<TestReportAction> action;
  @override
  TestReportTest clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class TestReportAction1 extends BackboneElement {
  TestReportAction1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    this.assert_,
  });

  final TestReportOperation? operation;
  final TestReportAssert? assert_;
  @override
  TestReportAction1 clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class TestReportTeardown extends BackboneElement {
  TestReportTeardown({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
  });

  final List<TestReportAction> action;
  @override
  TestReportTeardown clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class TestReportAction2 extends BackboneElement {
  TestReportAction2({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.operation,
  });

  final TestReportOperation operation;
  @override
  TestReportAction2 clone() => throw UnimplementedError();
}
