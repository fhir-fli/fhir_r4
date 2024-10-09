import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.TestReport);

  @override
  String get fhirType => 'TestReport';

  @Id()
  int dbId = 0;

  /// [identifier] /// Identifier for the TestScript assigned for external purposes outside the
  /// context of FHIR.
  final Identifier? identifier;

  /// [name] /// A free text natural language name identifying the executed TestScript.
  final FhirString? name;
  final Element? nameElement;

  /// [status] /// The current state of this test report.
  final TestReportStatus status;
  final Element? statusElement;

  /// [testScript] /// Ideally this is an absolute URL that is used to identify the
  /// version-specific TestScript that was executed, matching the
  /// `TestScript.url`.
  final Reference testScript;

  /// [result] /// The overall result from the execution of the TestScript.
  final TestReportResult result;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    json['status'] = status.toJson();
    json['testScript'] = testScript.toJson();
    json['result'] = result.toJson();
    if (score?.value != null) {
      json['score'] = score!.toJson();
    }
    if (scoreElement != null) {
      json['_score'] = scoreElement!.toJson();
    }
    if (tester?.value != null) {
      json['tester'] = tester!.toJson();
    }
    if (testerElement != null) {
      json['_tester'] = testerElement!.toJson();
    }
    if (issued?.value != null) {
      json['issued'] = issued!.toJson();
    }
    if (issuedElement != null) {
      json['_issued'] = issuedElement!.toJson();
    }
    if (participant != null && participant!.isNotEmpty) {
      json['participant'] = participant!
          .map<dynamic>((TestReportParticipant v) => v.toJson())
          .toList();
    }
    if (setup != null) {
      json['setup'] = setup!.toJson();
    }
    if (test != null && test!.isNotEmpty) {
      json['test'] =
          test!.map<dynamic>((TestReportTest v) => v.toJson()).toList();
    }
    if (teardown != null) {
      json['teardown'] = teardown!.toJson();
    }
    return json;
  }

  factory TestReport.fromJson(Map<String, dynamic> json) {
    return TestReport(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      status: TestReportStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      testScript:
          Reference.fromJson(json['testScript'] as Map<String, dynamic>),
      result: TestReportResult.fromJson(json['result']),
      resultElement: json['_result'] != null
          ? Element.fromJson(json['_result'] as Map<String, dynamic>)
          : null,
      score: json['score'] != null ? FhirDecimal.fromJson(json['score']) : null,
      scoreElement: json['_score'] != null
          ? Element.fromJson(json['_score'] as Map<String, dynamic>)
          : null,
      tester:
          json['tester'] != null ? FhirString.fromJson(json['tester']) : null,
      testerElement: json['_tester'] != null
          ? Element.fromJson(json['_tester'] as Map<String, dynamic>)
          : null,
      issued:
          json['issued'] != null ? FhirDateTime.fromJson(json['issued']) : null,
      issuedElement: json['_issued'] != null
          ? Element.fromJson(json['_issued'] as Map<String, dynamic>)
          : null,
      participant: json['participant'] != null
          ? (json['participant'] as List<dynamic>)
              .map<TestReportParticipant>((dynamic v) =>
                  TestReportParticipant.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      setup: json['setup'] != null
          ? TestReportSetup.fromJson(json['setup'] as Map<String, dynamic>)
          : null,
      test: json['test'] != null
          ? (json['test'] as List<dynamic>)
              .map<TestReportTest>((dynamic v) =>
                  TestReportTest.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      teardown: json['teardown'] != null
          ? TestReportTeardown.fromJson(
              json['teardown'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  TestReport clone() => throw UnimplementedError();
  @override
  TestReport copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    FhirString? name,
    Element? nameElement,
    TestReportStatus? status,
    Element? statusElement,
    Reference? testScript,
    TestReportResult? result,
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
  });

  @override
  String get fhirType => 'TestReportParticipant';

  @Id()
  int dbId = 0;

  /// [type] /// The type of participant.
  final TestReportParticipantType type;
  final Element? typeElement;

  /// [uri] /// The uri of the participant. An absolute URL is preferred.
  final FhirUri uri;
  final Element? uriElement;

  /// [display] /// The display name of the participant.
  final FhirString? display;
  final Element? displayElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['type'] = type.toJson();
    json['uri'] = uri.toJson();
    if (uriElement != null) {
      json['_uri'] = uriElement!.toJson();
    }
    if (display?.value != null) {
      json['display'] = display!.toJson();
    }
    if (displayElement != null) {
      json['_display'] = displayElement!.toJson();
    }
    return json;
  }

  factory TestReportParticipant.fromJson(Map<String, dynamic> json) {
    return TestReportParticipant(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: TestReportParticipantType.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
      uri: FhirUri.fromJson(json['uri']),
      uriElement: json['_uri'] != null
          ? Element.fromJson(json['_uri'] as Map<String, dynamic>)
          : null,
      display:
          json['display'] != null ? FhirString.fromJson(json['display']) : null,
      displayElement: json['_display'] != null
          ? Element.fromJson(json['_display'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  TestReportParticipant clone() => throw UnimplementedError();
  @override
  TestReportParticipant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestReportParticipantType? type,
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
  });

  @override
  String get fhirType => 'TestReportSetup';

  @Id()
  int dbId = 0;

  /// [action] /// Action would contain either an operation or an assertion.
  final List<TestReportAction> action;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['action'] =
        action.map<dynamic>((TestReportAction v) => v.toJson()).toList();
    return json;
  }

  factory TestReportSetup.fromJson(Map<String, dynamic> json) {
    return TestReportSetup(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      action: (json['action'] as List<dynamic>)
          .map<TestReportAction>((dynamic v) =>
              TestReportAction.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }
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
  });

  @override
  String get fhirType => 'TestReportAction';

  @Id()
  int dbId = 0;

  /// [operation] /// The operation performed.
  final TestReportOperation? operation;

  /// [assert_] /// The results of the assertion performed on the previous operations.
  final TestReportAssert? assert_;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (operation != null) {
      json['operation'] = operation!.toJson();
    }
    if (assert_ != null) {
      json['assert'] = assert_!.toJson();
    }
    return json;
  }

  factory TestReportAction.fromJson(Map<String, dynamic> json) {
    return TestReportAction(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      operation: json['operation'] != null
          ? TestReportOperation.fromJson(
              json['operation'] as Map<String, dynamic>)
          : null,
      assert_: json['assert'] != null
          ? TestReportAssert.fromJson(json['assert'] as Map<String, dynamic>)
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'TestReportOperation';

  @Id()
  int dbId = 0;

  /// [result] /// The result of this operation.
  final TestReportActionResult result;
  final Element? resultElement;

  /// [message] /// An explanatory message associated with the result.
  final FhirMarkdown? message;
  final Element? messageElement;

  /// [detail] /// A link to further details on the result.
  final FhirUri? detail;
  final Element? detailElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['result'] = result.toJson();
    if (message?.value != null) {
      json['message'] = message!.toJson();
    }
    if (messageElement != null) {
      json['_message'] = messageElement!.toJson();
    }
    if (detail?.value != null) {
      json['detail'] = detail!.toJson();
    }
    if (detailElement != null) {
      json['_detail'] = detailElement!.toJson();
    }
    return json;
  }

  factory TestReportOperation.fromJson(Map<String, dynamic> json) {
    return TestReportOperation(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      result: TestReportActionResult.fromJson(json['result']),
      resultElement: json['_result'] != null
          ? Element.fromJson(json['_result'] as Map<String, dynamic>)
          : null,
      message: json['message'] != null
          ? FhirMarkdown.fromJson(json['message'])
          : null,
      messageElement: json['_message'] != null
          ? Element.fromJson(json['_message'] as Map<String, dynamic>)
          : null,
      detail: json['detail'] != null ? FhirUri.fromJson(json['detail']) : null,
      detailElement: json['_detail'] != null
          ? Element.fromJson(json['_detail'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  TestReportOperation clone() => throw UnimplementedError();
  @override
  TestReportOperation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestReportActionResult? result,
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
  });

  @override
  String get fhirType => 'TestReportAssert';

  @Id()
  int dbId = 0;

  /// [result] /// The result of this assertion.
  final TestReportActionResult result;
  final Element? resultElement;

  /// [message] /// An explanatory message associated with the result.
  final FhirMarkdown? message;
  final Element? messageElement;

  /// [detail] /// A link to further details on the result.
  final FhirString? detail;
  final Element? detailElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['result'] = result.toJson();
    if (message?.value != null) {
      json['message'] = message!.toJson();
    }
    if (messageElement != null) {
      json['_message'] = messageElement!.toJson();
    }
    if (detail?.value != null) {
      json['detail'] = detail!.toJson();
    }
    if (detailElement != null) {
      json['_detail'] = detailElement!.toJson();
    }
    return json;
  }

  factory TestReportAssert.fromJson(Map<String, dynamic> json) {
    return TestReportAssert(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      result: TestReportActionResult.fromJson(json['result']),
      resultElement: json['_result'] != null
          ? Element.fromJson(json['_result'] as Map<String, dynamic>)
          : null,
      message: json['message'] != null
          ? FhirMarkdown.fromJson(json['message'])
          : null,
      messageElement: json['_message'] != null
          ? Element.fromJson(json['_message'] as Map<String, dynamic>)
          : null,
      detail:
          json['detail'] != null ? FhirString.fromJson(json['detail']) : null,
      detailElement: json['_detail'] != null
          ? Element.fromJson(json['_detail'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  TestReportAssert clone() => throw UnimplementedError();
  @override
  TestReportAssert copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestReportActionResult? result,
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
  });

  @override
  String get fhirType => 'TestReportTest';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    json['action'] =
        action.map<dynamic>((TestReportAction v) => v.toJson()).toList();
    return json;
  }

  factory TestReportTest.fromJson(Map<String, dynamic> json) {
    return TestReportTest(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      action: (json['action'] as List<dynamic>)
          .map<TestReportAction>((dynamic v) =>
              TestReportAction.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }
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
  });

  @override
  String get fhirType => 'TestReportAction1';

  @Id()
  int dbId = 0;

  /// [operation] /// An operation would involve a REST request to a server.
  final TestReportOperation? operation;

  /// [assert_] /// The results of the assertion performed on the previous operations.
  final TestReportAssert? assert_;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (operation != null) {
      json['operation'] = operation!.toJson();
    }
    if (assert_ != null) {
      json['assert'] = assert_!.toJson();
    }
    return json;
  }

  factory TestReportAction1.fromJson(Map<String, dynamic> json) {
    return TestReportAction1(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      operation: json['operation'] != null
          ? TestReportOperation.fromJson(
              json['operation'] as Map<String, dynamic>)
          : null,
      assert_: json['assert'] != null
          ? TestReportAssert.fromJson(json['assert'] as Map<String, dynamic>)
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'TestReportTeardown';

  @Id()
  int dbId = 0;

  /// [action] /// The teardown action will only contain an operation.
  final List<TestReportAction> action;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['action'] =
        action.map<dynamic>((TestReportAction v) => v.toJson()).toList();
    return json;
  }

  factory TestReportTeardown.fromJson(Map<String, dynamic> json) {
    return TestReportTeardown(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      action: (json['action'] as List<dynamic>)
          .map<TestReportAction>((dynamic v) =>
              TestReportAction.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }
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
  });

  @override
  String get fhirType => 'TestReportAction2';

  @Id()
  int dbId = 0;

  /// [operation] /// An operation would involve a REST request to a server.
  final TestReportOperation operation;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['operation'] = operation.toJson();
    return json;
  }

  factory TestReportAction2.fromJson(Map<String, dynamic> json) {
    return TestReportAction2(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      operation: TestReportOperation.fromJson(
          json['operation'] as Map<String, dynamic>),
    );
  }
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
