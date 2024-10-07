import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'test_report.g.dart';

/// [TestReport] /// A summary of information based on the results of executing a TestScript.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.TestReport, fhirType: 'TestReport');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier for the TestScript assigned for external purposes outside the
  /// context of FHIR.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;

  /// [name] /// A free text natural language name identifying the executed TestScript.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [status] /// The current state of this test report.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [testScript] /// Ideally this is an absolute URL that is used to identify the
  /// version-specific TestScript that was executed, matching the
  /// `TestScript.url`.
  @JsonKey(name: 'testScript')
  final Reference testScript;

  /// [result] /// The overall result from the execution of the TestScript.
  @JsonKey(name: 'result')
  final FhirCode result;
  @JsonKey(name: '_result')
  final Element? resultElement;

  /// [score] /// The final score (percentage of tests passed) resulting from the execution
  /// of the TestScript.
  @JsonKey(name: 'score')
  final FhirDecimal? score;
  @JsonKey(name: '_score')
  final Element? scoreElement;

  /// [tester] /// Name of the tester producing this report (Organization or individual).
  @JsonKey(name: 'tester')
  final FhirString? tester;
  @JsonKey(name: '_tester')
  final Element? testerElement;

  /// [issued] /// When the TestScript was executed and this TestReport was generated.
  @JsonKey(name: 'issued')
  final FhirDateTime? issued;
  @JsonKey(name: '_issued')
  final Element? issuedElement;

  /// [participant] /// A participant in the test execution, either the execution engine, a client,
  /// or a server.
  @JsonKey(name: 'participant')
  final List<TestReportParticipant>? participant;

  /// [setup] /// The results of the series of required setup operations before the tests
  /// were executed.
  @JsonKey(name: 'setup')
  final TestReportSetup? setup;

  /// [test] /// A test executed from the test script.
  @JsonKey(name: 'test')
  final List<TestReportTest>? test;

  /// [teardown] /// The results of the series of operations required to clean up after all the
  /// tests were executed (successfully or otherwise).
  @JsonKey(name: 'teardown')
  final TestReportTeardown? teardown;
  factory TestReport.fromJson(Map<String, dynamic> json) =>
      _$TestReportFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestReportToJson(this);

  @override
  TestReport clone() => throw UnimplementedError();
  @override
  TestReport copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestReport.fromYaml(dynamic yaml) => yaml is String
      ? TestReport.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestReport.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestReport cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestReport.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReport.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestReportParticipant] /// A participant in the test execution, either the execution engine, a client,
/// or a server.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'TestReportParticipant');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of participant.
  @JsonKey(name: 'type')
  final FhirCode type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [uri] /// The uri of the participant. An absolute URL is preferred.
  @JsonKey(name: 'uri')
  final FhirUri uri;
  @JsonKey(name: '_uri')
  final Element? uriElement;

  /// [display] /// The display name of the participant.
  @JsonKey(name: 'display')
  final FhirString? display;
  @JsonKey(name: '_display')
  final Element? displayElement;
  factory TestReportParticipant.fromJson(Map<String, dynamic> json) =>
      _$TestReportParticipantFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestReportParticipantToJson(this);

  @override
  TestReportParticipant clone() => throw UnimplementedError();
  @override
  TestReportParticipant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    Element? typeElement,
    FhirUri? uri,
    Element? uriElement,
    FhirString? display,
    Element? displayElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestReportParticipant.fromYaml(dynamic yaml) => yaml is String
      ? TestReportParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestReportParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestReportParticipant cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestReportParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestReportSetup] /// The results of the series of required setup operations before the tests
/// were executed.
@JsonSerializable()
class TestReportSetup extends BackboneElement {
  TestReportSetup({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'TestReportSetup');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [action] /// Action would contain either an operation or an assertion.
  @JsonKey(name: 'action')
  final List<TestReportAction> action;
  factory TestReportSetup.fromJson(Map<String, dynamic> json) =>
      _$TestReportSetupFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestReportSetupToJson(this);

  @override
  TestReportSetup clone() => throw UnimplementedError();
  @override
  TestReportSetup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<TestReportAction>? action,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestReportSetup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestReportSetup.fromYaml(dynamic yaml) => yaml is String
      ? TestReportSetup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestReportSetup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestReportSetup cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestReportSetup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportSetup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestReportAction] /// Action would contain either an operation or an assertion.
@JsonSerializable()
class TestReportAction extends BackboneElement {
  TestReportAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    this.assert_,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'TestReportAction');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [operation] /// The operation performed.
  @JsonKey(name: 'operation')
  final TestReportOperation? operation;

  /// [assert_] /// The results of the assertion performed on the previous operations.
  @JsonKey(name: 'assert')
  final TestReportAssert? assert_;
  factory TestReportAction.fromJson(Map<String, dynamic> json) =>
      _$TestReportActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestReportActionToJson(this);

  @override
  TestReportAction clone() => throw UnimplementedError();
  @override
  TestReportAction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestReportOperation? operation,
    TestReportAssert? assert_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestReportAction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
      assert_: assert_ ?? this.assert_,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestReportAction.fromYaml(dynamic yaml) => yaml is String
      ? TestReportAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestReportAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestReportAction cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestReportAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestReportOperation] /// The operation performed.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'TestReportOperation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [result] /// The result of this operation.
  @JsonKey(name: 'result')
  final FhirCode result;
  @JsonKey(name: '_result')
  final Element? resultElement;

  /// [message] /// An explanatory message associated with the result.
  @JsonKey(name: 'message')
  final FhirMarkdown? message;
  @JsonKey(name: '_message')
  final Element? messageElement;

  /// [detail] /// A link to further details on the result.
  @JsonKey(name: 'detail')
  final FhirUri? detail;
  @JsonKey(name: '_detail')
  final Element? detailElement;
  factory TestReportOperation.fromJson(Map<String, dynamic> json) =>
      _$TestReportOperationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestReportOperationToJson(this);

  @override
  TestReportOperation clone() => throw UnimplementedError();
  @override
  TestReportOperation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? result,
    Element? resultElement,
    FhirMarkdown? message,
    Element? messageElement,
    FhirUri? detail,
    Element? detailElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestReportOperation.fromYaml(dynamic yaml) => yaml is String
      ? TestReportOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestReportOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestReportOperation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestReportOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestReportAssert] /// The results of the assertion performed on the previous operations.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'TestReportAssert');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [result] /// The result of this assertion.
  @JsonKey(name: 'result')
  final FhirCode result;
  @JsonKey(name: '_result')
  final Element? resultElement;

  /// [message] /// An explanatory message associated with the result.
  @JsonKey(name: 'message')
  final FhirMarkdown? message;
  @JsonKey(name: '_message')
  final Element? messageElement;

  /// [detail] /// A link to further details on the result.
  @JsonKey(name: 'detail')
  final FhirString? detail;
  @JsonKey(name: '_detail')
  final Element? detailElement;
  factory TestReportAssert.fromJson(Map<String, dynamic> json) =>
      _$TestReportAssertFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestReportAssertToJson(this);

  @override
  TestReportAssert clone() => throw UnimplementedError();
  @override
  TestReportAssert copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? result,
    Element? resultElement,
    FhirMarkdown? message,
    Element? messageElement,
    FhirString? detail,
    Element? detailElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestReportAssert.fromYaml(dynamic yaml) => yaml is String
      ? TestReportAssert.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestReportAssert.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestReportAssert cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestReportAssert.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportAssert.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestReportTest] /// A test executed from the test script.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'TestReportTest');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name of this test used for tracking/logging purposes by test engines.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [description] /// A short description of the test used by test engines for tracking and
  /// reporting purposes.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [action] /// Action would contain either an operation or an assertion.
  @JsonKey(name: 'action')
  final List<TestReportAction> action;
  factory TestReportTest.fromJson(Map<String, dynamic> json) =>
      _$TestReportTestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestReportTestToJson(this);

  @override
  TestReportTest clone() => throw UnimplementedError();
  @override
  TestReportTest copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? description,
    Element? descriptionElement,
    List<TestReportAction>? action,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestReportTest.fromYaml(dynamic yaml) => yaml is String
      ? TestReportTest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestReportTest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestReportTest cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestReportTest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportTest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestReportAction1] /// Action would contain either an operation or an assertion.
@JsonSerializable()
class TestReportAction1 extends BackboneElement {
  TestReportAction1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    this.assert_,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'TestReportAction1');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [operation] /// An operation would involve a REST request to a server.
  @JsonKey(name: 'operation')
  final TestReportOperation? operation;

  /// [assert_] /// The results of the assertion performed on the previous operations.
  @JsonKey(name: 'assert')
  final TestReportAssert? assert_;
  factory TestReportAction1.fromJson(Map<String, dynamic> json) =>
      _$TestReportAction1FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestReportAction1ToJson(this);

  @override
  TestReportAction1 clone() => throw UnimplementedError();
  @override
  TestReportAction1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestReportOperation? operation,
    TestReportAssert? assert_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestReportAction1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
      assert_: assert_ ?? this.assert_,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestReportAction1.fromYaml(dynamic yaml) => yaml is String
      ? TestReportAction1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestReportAction1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestReportAction1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestReportAction1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportAction1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestReportTeardown] /// The results of the series of operations required to clean up after all the
/// tests were executed (successfully or otherwise).
@JsonSerializable()
class TestReportTeardown extends BackboneElement {
  TestReportTeardown({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'TestReportTeardown');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [action] /// The teardown action will only contain an operation.
  @JsonKey(name: 'action')
  final List<TestReportAction> action;
  factory TestReportTeardown.fromJson(Map<String, dynamic> json) =>
      _$TestReportTeardownFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestReportTeardownToJson(this);

  @override
  TestReportTeardown clone() => throw UnimplementedError();
  @override
  TestReportTeardown copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<TestReportAction>? action,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestReportTeardown(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestReportTeardown.fromYaml(dynamic yaml) => yaml is String
      ? TestReportTeardown.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestReportTeardown.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestReportTeardown cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestReportTeardown.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportTeardown.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestReportAction2] /// The teardown action will only contain an operation.
@JsonSerializable()
class TestReportAction2 extends BackboneElement {
  TestReportAction2({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.operation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'TestReportAction2');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [operation] /// An operation would involve a REST request to a server.
  @JsonKey(name: 'operation')
  final TestReportOperation operation;
  factory TestReportAction2.fromJson(Map<String, dynamic> json) =>
      _$TestReportAction2FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestReportAction2ToJson(this);

  @override
  TestReportAction2 clone() => throw UnimplementedError();
  @override
  TestReportAction2 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestReportOperation? operation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestReportAction2(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestReportAction2.fromYaml(dynamic yaml) => yaml is String
      ? TestReportAction2.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestReportAction2.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestReportAction2 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestReportAction2.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportAction2.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
