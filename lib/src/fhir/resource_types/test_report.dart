import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class TestReport extends DomainResource {
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
  final List<BackboneElement>? participant;
  final BackboneElement? setup;
  final List<BackboneElement> action;
  final BackboneElement? operation;
  final BackboneElement? assert_;
  final List<BackboneElement>? test;
  final List<BackboneElement> action;
  final BackboneElement? teardown;
  final List<BackboneElement> action;

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
    required this.action,
    this.operation,
    this.assert_,
    this.test,
    required this.action,
    this.teardown,
    required this.action,
  }) : super(resourceType: R4ResourceType.TestReport);

@override
TestReport clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestReportParticipant extends BackboneElement {
  final FhirCode type;
  final Element? typeElement;
  final FhirUri uri;
  final Element? uriElement;
  final FhirString? display;
  final Element? displayElement;

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

@override
TestReportParticipant clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestReportSetup extends BackboneElement {

  TestReportSetup({
    super.id,
    super.extension_,
    super.modifierExtension,
  });

@override
TestReportSetup clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestReportAction extends BackboneElement {

  TestReportAction({
    super.id,
    super.extension_,
    super.modifierExtension,
  });

@override
TestReportAction clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestReportOperation extends BackboneElement {
  final FhirCode result;
  final Element? resultElement;
  final FhirMarkdown? message;
  final Element? messageElement;
  final FhirUri? detail;
  final Element? detailElement;

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

@override
TestReportOperation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestReportAssert extends BackboneElement {
  final FhirCode result;
  final Element? resultElement;
  final FhirMarkdown? message;
  final Element? messageElement;
  final FhirString? detail;
  final Element? detailElement;

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

@override
TestReportAssert clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestReportTest extends BackboneElement {
  final FhirString? name;
  final Element? nameElement;
  final FhirString? description;
  final Element? descriptionElement;

  TestReportTest({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
this.nameElement,
    this.description,
this.descriptionElement,
  });

@override
TestReportTest clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestReportAction extends BackboneElement {
  final dynamic? operation;
  final dynamic? assert_;

  TestReportAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    this.assert_,
  });

@override
TestReportAction clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestReportTeardown extends BackboneElement {

  TestReportTeardown({
    super.id,
    super.extension_,
    super.modifierExtension,
  });

@override
TestReportTeardown clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestReportAction extends BackboneElement {
  final dynamic operation;

  TestReportAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.operation,
  });

@override
TestReportAction clone() => throw UnimplementedError();
}
