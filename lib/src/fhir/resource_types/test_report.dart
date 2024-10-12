import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [TestReport]
/// A summary of information based on the results of executing a
/// TestScript.
class TestReport extends DomainResource {
  /// Primary constructor for [TestReport]

  TestReport({
    super.id,
    super.meta,
    super.implicitRules,

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.name,

    /// Extensions for [name]
    this.nameElement,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    required this.testScript,
    required this.result,

    /// Extensions for [result]
    this.resultElement,
    this.score,

    /// Extensions for [score]
    this.scoreElement,
    this.tester,

    /// Extensions for [tester]
    this.testerElement,
    this.issued,

    /// Extensions for [issued]
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
  }) : super(
          resourceType: R4ResourceType.TestReport,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestReport.fromJson(Map<String, dynamic> json) {
    return TestReport(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(
              json['_name'] as Map<String, dynamic>,
            )
          : null,
      status: TestReportStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      testScript: Reference.fromJson(
        json['testScript'] as Map<String, dynamic>,
      ),
      result: TestReportResult.fromJson(json['result']),
      resultElement: json['_result'] != null
          ? Element.fromJson(
              json['_result'] as Map<String, dynamic>,
            )
          : null,
      score: json['score'] != null ? FhirDecimal.fromJson(json['score']) : null,
      scoreElement: json['_score'] != null
          ? Element.fromJson(
              json['_score'] as Map<String, dynamic>,
            )
          : null,
      tester:
          json['tester'] != null ? FhirString.fromJson(json['tester']) : null,
      testerElement: json['_tester'] != null
          ? Element.fromJson(
              json['_tester'] as Map<String, dynamic>,
            )
          : null,
      issued:
          json['issued'] != null ? FhirDateTime.fromJson(json['issued']) : null,
      issuedElement: json['_issued'] != null
          ? Element.fromJson(
              json['_issued'] as Map<String, dynamic>,
            )
          : null,
      participant: json['participant'] != null
          ? (json['participant'] as List<dynamic>)
              .map<TestReportParticipant>(
                (dynamic v) => TestReportParticipant.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      setup: json['setup'] != null
          ? TestReportSetup.fromJson(
              json['setup'] as Map<String, dynamic>,
            )
          : null,
      test: json['test'] != null
          ? (json['test'] as List<dynamic>)
              .map<TestReportTest>(
                (dynamic v) => TestReportTest.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      teardown: json['teardown'] != null
          ? TestReportTeardown.fromJson(
              json['teardown'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TestReport] from a [String] or [YamlMap] object
  factory TestReport.fromYaml(dynamic yaml) => yaml is String
      ? TestReport.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TestReport.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('TestReport cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TestReport] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReport.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReport.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestReport';

  /// [identifier]
  /// Identifier for the TestScript assigned for external purposes outside
  /// the context of FHIR.
  final Identifier? identifier;

  /// [name]
  /// A free text natural language name identifying the executed TestScript.
  final FhirString? name;

  /// Extensions for [name]
  final Element? nameElement;

  /// [status]
  /// The current state of this test report.
  final TestReportStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [testScript]
  /// Ideally this is an absolute URL that is used to identify the
  /// version-specific TestScript that was executed, matching the
  /// `TestScript.url`.
  final Reference testScript;

  /// [result]
  /// The overall result from the execution of the TestScript.
  final TestReportResult result;

  /// Extensions for [result]
  final Element? resultElement;

  /// [score]
  /// The final score (percentage of tests passed) resulting from the
  /// execution of the TestScript.
  final FhirDecimal? score;

  /// Extensions for [score]
  final Element? scoreElement;

  /// [tester]
  /// Name of the tester producing this report (Organization or individual).
  final FhirString? tester;

  /// Extensions for [tester]
  final Element? testerElement;

  /// [issued]
  /// When the TestScript was executed and this TestReport was generated.
  final FhirDateTime? issued;

  /// Extensions for [issued]
  final Element? issuedElement;

  /// [participant]
  /// A participant in the test execution, either the execution engine, a
  /// client, or a server.
  final List<TestReportParticipant>? participant;

  /// [setup]
  /// The results of the series of required setup operations before the tests
  /// were executed.
  final TestReportSetup? setup;

  /// [test]
  /// A test executed from the test script.
  final List<TestReportTest>? test;

  /// [teardown]
  /// The results of the series of operations required to clean up after all
  /// the tests were executed (successfully or otherwise).
  final TestReportTeardown? teardown;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
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
      json['participant'] =
          participant!.map((TestReportParticipant v) => v.toJson()).toList();
    }
    if (setup != null) {
      json['setup'] = setup!.toJson();
    }
    if (test != null && test!.isNotEmpty) {
      json['test'] = test!.map((TestReportTest v) => v.toJson()).toList();
    }
    if (teardown != null) {
      json['teardown'] = teardown!.toJson();
    }
    return json;
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
}

/// [TestReportParticipant]
/// A participant in the test execution, either the execution engine, a
/// client, or a server.
class TestReportParticipant extends BackboneElement {
  /// Primary constructor for [TestReportParticipant]

  TestReportParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,

    /// Extensions for [type]
    this.typeElement,
    required this.uri,

    /// Extensions for [uri]
    this.uriElement,
    this.display,

    /// Extensions for [display]
    this.displayElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestReportParticipant.fromJson(Map<String, dynamic> json) {
    return TestReportParticipant(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: TestReportParticipantType.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(
              json['_type'] as Map<String, dynamic>,
            )
          : null,
      uri: FhirUri.fromJson(json['uri']),
      uriElement: json['_uri'] != null
          ? Element.fromJson(
              json['_uri'] as Map<String, dynamic>,
            )
          : null,
      display:
          json['display'] != null ? FhirString.fromJson(json['display']) : null,
      displayElement: json['_display'] != null
          ? Element.fromJson(
              json['_display'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TestReportParticipant] from a [String] or [YamlMap] object
  factory TestReportParticipant.fromYaml(dynamic yaml) => yaml is String
      ? TestReportParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TestReportParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TestReportParticipant cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TestReportParticipant] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestReportParticipant';

  /// [type]
  /// The type of participant.
  final TestReportParticipantType type;

  /// Extensions for [type]
  final Element? typeElement;

  /// [uri]
  /// The uri of the participant. An absolute URL is preferred.
  final FhirUri uri;

  /// Extensions for [uri]
  final Element? uriElement;

  /// [display]
  /// The display name of the participant.
  final FhirString? display;

  /// Extensions for [display]
  final Element? displayElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
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
}

/// [TestReportSetup]
/// The results of the series of required setup operations before the tests
/// were executed.
class TestReportSetup extends BackboneElement {
  /// Primary constructor for [TestReportSetup]

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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestReportSetup.fromJson(Map<String, dynamic> json) {
    return TestReportSetup(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      action: (json['action'] as List<dynamic>)
          .map<TestReportAction>((dynamic v) =>
              TestReportAction.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }

  /// Deserialize [TestReportSetup] from a [String] or [YamlMap] object
  factory TestReportSetup.fromYaml(dynamic yaml) => yaml is String
      ? TestReportSetup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TestReportSetup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TestReportSetup cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TestReportSetup] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportSetup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportSetup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestReportSetup';

  /// [action]
  /// Action would contain either an operation or an assertion.
  final List<TestReportAction> action;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['action'] =
        action.map<dynamic>((TestReportAction v) => v.toJson()).toList();
    return json;
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
}

/// [TestReportAction]
/// Action would contain either an operation or an assertion.
class TestReportAction extends BackboneElement {
  /// Primary constructor for [TestReportAction]

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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestReportAction.fromJson(Map<String, dynamic> json) {
    return TestReportAction(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      operation: json['operation'] != null
          ? TestReportOperation.fromJson(
              json['operation'] as Map<String, dynamic>,
            )
          : null,
      assert_: json['assert'] != null
          ? TestReportAssert.fromJson(
              json['assert'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TestReportAction] from a [String] or [YamlMap] object
  factory TestReportAction.fromYaml(dynamic yaml) => yaml is String
      ? TestReportAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TestReportAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TestReportAction cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TestReportAction] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestReportAction';

  /// [operation]
  /// The operation performed.
  final TestReportOperation? operation;

  /// [assert_]
  /// The results of the assertion performed on the previous operations.
  final TestReportAssert? assert_;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (operation != null) {
      json['operation'] = operation!.toJson();
    }
    if (assert_ != null) {
      json['assert'] = assert_!.toJson();
    }
    return json;
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
}

/// [TestReportOperation]
/// The operation performed.
class TestReportOperation extends BackboneElement {
  /// Primary constructor for [TestReportOperation]

  TestReportOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.result,

    /// Extensions for [result]
    this.resultElement,
    this.message,

    /// Extensions for [message]
    this.messageElement,
    this.detail,

    /// Extensions for [detail]
    this.detailElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestReportOperation.fromJson(Map<String, dynamic> json) {
    return TestReportOperation(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      result: TestReportActionResult.fromJson(json['result']),
      resultElement: json['_result'] != null
          ? Element.fromJson(
              json['_result'] as Map<String, dynamic>,
            )
          : null,
      message: json['message'] != null
          ? FhirMarkdown.fromJson(json['message'])
          : null,
      messageElement: json['_message'] != null
          ? Element.fromJson(
              json['_message'] as Map<String, dynamic>,
            )
          : null,
      detail: json['detail'] != null ? FhirUri.fromJson(json['detail']) : null,
      detailElement: json['_detail'] != null
          ? Element.fromJson(
              json['_detail'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TestReportOperation] from a [String] or [YamlMap] object
  factory TestReportOperation.fromYaml(dynamic yaml) => yaml is String
      ? TestReportOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TestReportOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TestReportOperation cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TestReportOperation] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestReportOperation';

  /// [result]
  /// The result of this operation.
  final TestReportActionResult result;

  /// Extensions for [result]
  final Element? resultElement;

  /// [message]
  /// An explanatory message associated with the result.
  final FhirMarkdown? message;

  /// Extensions for [message]
  final Element? messageElement;

  /// [detail]
  /// A link to further details on the result.
  final FhirUri? detail;

  /// Extensions for [detail]
  final Element? detailElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
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
}

/// [TestReportAssert]
/// The results of the assertion performed on the previous operations.
class TestReportAssert extends BackboneElement {
  /// Primary constructor for [TestReportAssert]

  TestReportAssert({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.result,

    /// Extensions for [result]
    this.resultElement,
    this.message,

    /// Extensions for [message]
    this.messageElement,
    this.detail,

    /// Extensions for [detail]
    this.detailElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestReportAssert.fromJson(Map<String, dynamic> json) {
    return TestReportAssert(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      result: TestReportActionResult.fromJson(json['result']),
      resultElement: json['_result'] != null
          ? Element.fromJson(
              json['_result'] as Map<String, dynamic>,
            )
          : null,
      message: json['message'] != null
          ? FhirMarkdown.fromJson(json['message'])
          : null,
      messageElement: json['_message'] != null
          ? Element.fromJson(
              json['_message'] as Map<String, dynamic>,
            )
          : null,
      detail:
          json['detail'] != null ? FhirString.fromJson(json['detail']) : null,
      detailElement: json['_detail'] != null
          ? Element.fromJson(
              json['_detail'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TestReportAssert] from a [String] or [YamlMap] object
  factory TestReportAssert.fromYaml(dynamic yaml) => yaml is String
      ? TestReportAssert.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TestReportAssert.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TestReportAssert cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TestReportAssert] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportAssert.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportAssert.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestReportAssert';

  /// [result]
  /// The result of this assertion.
  final TestReportActionResult result;

  /// Extensions for [result]
  final Element? resultElement;

  /// [message]
  /// An explanatory message associated with the result.
  final FhirMarkdown? message;

  /// Extensions for [message]
  final Element? messageElement;

  /// [detail]
  /// A link to further details on the result.
  final FhirString? detail;

  /// Extensions for [detail]
  final Element? detailElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
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
}

/// [TestReportTest]
/// A test executed from the test script.
class TestReportTest extends BackboneElement {
  /// Primary constructor for [TestReportTest]

  TestReportTest({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,

    /// Extensions for [name]
    this.nameElement,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    required this.action,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestReportTest.fromJson(Map<String, dynamic> json) {
    return TestReportTest(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(
              json['_name'] as Map<String, dynamic>,
            )
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      action: (json['action'] as List<dynamic>)
          .map<TestReportAction>((dynamic v) =>
              TestReportAction.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }

  /// Deserialize [TestReportTest] from a [String] or [YamlMap] object
  factory TestReportTest.fromYaml(dynamic yaml) => yaml is String
      ? TestReportTest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TestReportTest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TestReportTest cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TestReportTest] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportTest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportTest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestReportTest';

  /// [name]
  /// The name of this test used for tracking/logging purposes by test
  /// engines.
  final FhirString? name;

  /// Extensions for [name]
  final Element? nameElement;

  /// [description]
  /// A short description of the test used by test engines for tracking and
  /// reporting purposes.
  final FhirString? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [action]
  /// Action would contain either an operation or an assertion.
  final List<TestReportAction> action;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
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
}

/// [TestReportAction1]
/// Action would contain either an operation or an assertion.
class TestReportAction1 extends BackboneElement {
  /// Primary constructor for [TestReportAction1]

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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestReportAction1.fromJson(Map<String, dynamic> json) {
    return TestReportAction1(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      operation: json['operation'] != null
          ? TestReportOperation.fromJson(
              json['operation'] as Map<String, dynamic>,
            )
          : null,
      assert_: json['assert'] != null
          ? TestReportAssert.fromJson(
              json['assert'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TestReportAction1] from a [String] or [YamlMap] object
  factory TestReportAction1.fromYaml(dynamic yaml) => yaml is String
      ? TestReportAction1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TestReportAction1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TestReportAction1 cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TestReportAction1] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportAction1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportAction1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestReportAction1';

  /// [operation]
  /// An operation would involve a REST request to a server.
  final TestReportOperation? operation;

  /// [assert_]
  /// The results of the assertion performed on the previous operations.
  final TestReportAssert? assert_;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (operation != null) {
      json['operation'] = operation!.toJson();
    }
    if (assert_ != null) {
      json['assert'] = assert_!.toJson();
    }
    return json;
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
}

/// [TestReportTeardown]
/// The results of the series of operations required to clean up after all
/// the tests were executed (successfully or otherwise).
class TestReportTeardown extends BackboneElement {
  /// Primary constructor for [TestReportTeardown]

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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestReportTeardown.fromJson(Map<String, dynamic> json) {
    return TestReportTeardown(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      action: (json['action'] as List<dynamic>)
          .map<TestReportAction>((dynamic v) =>
              TestReportAction.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }

  /// Deserialize [TestReportTeardown] from a [String] or [YamlMap] object
  factory TestReportTeardown.fromYaml(dynamic yaml) => yaml is String
      ? TestReportTeardown.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TestReportTeardown.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TestReportTeardown cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TestReportTeardown] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportTeardown.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportTeardown.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestReportTeardown';

  /// [action]
  /// The teardown action will only contain an operation.
  final List<TestReportAction> action;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['action'] =
        action.map<dynamic>((TestReportAction v) => v.toJson()).toList();
    return json;
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
}

/// [TestReportAction2]
/// The teardown action will only contain an operation.
class TestReportAction2 extends BackboneElement {
  /// Primary constructor for [TestReportAction2]

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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestReportAction2.fromJson(Map<String, dynamic> json) {
    return TestReportAction2(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      operation: TestReportOperation.fromJson(
        json['operation'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [TestReportAction2] from a [String] or [YamlMap] object
  factory TestReportAction2.fromYaml(dynamic yaml) => yaml is String
      ? TestReportAction2.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TestReportAction2.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TestReportAction2 cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TestReportAction2] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportAction2.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestReportAction2.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestReportAction2';

  /// [operation]
  /// An operation would involve a REST request to a server.
  final TestReportOperation operation;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['operation'] = operation.toJson();
    return json;
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
}
