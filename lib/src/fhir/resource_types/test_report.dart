import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [TestReport]
/// A summary of information based on the results of executing a
/// TestScript.
class TestReport extends DomainResource {
  /// Primary constructor for
  /// [TestReport]

  TestReport({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
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
  factory TestReport.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestReport(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
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
      name: (json['name'] != null || json['_name'] != null)
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      status: TestReportStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      testScript: Reference.fromJson(
        json['testScript'] as Map<String, dynamic>,
      ),
      result: TestReportResult.fromJson({
        'value': json['result'],
        '_value': json['_result'],
      }),
      score: (json['score'] != null || json['_score'] != null)
          ? FhirDecimal.fromJson({
              'value': json['score'],
              '_value': json['_score'],
            })
          : null,
      tester: (json['tester'] != null || json['_tester'] != null)
          ? FhirString.fromJson({
              'value': json['tester'],
              '_value': json['_tester'],
            })
          : null,
      issued: (json['issued'] != null || json['_issued'] != null)
          ? FhirDateTime.fromJson({
              'value': json['issued'],
              '_value': json['_issued'],
            })
          : null,
      participant: json['participant'] != null
          ? (json['participant'] as List<dynamic>)
              .map<TestReportParticipant>(
                (v) => TestReportParticipant.fromJson(
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
                (v) => TestReportTest.fromJson(
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

  /// Deserialize [TestReport]
  /// from a [String] or [YamlMap] object
  factory TestReport.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestReport.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return TestReport.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'TestReport cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [TestReport]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReport.fromJsonString(
    String source,
  ) {
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

  /// [status]
  /// The current state of this test report.
  final TestReportStatus status;

  /// [testScript]
  /// Ideally this is an absolute URL that is used to identify the
  /// version-specific TestScript that was executed, matching the
  /// `TestScript.url`.
  final Reference testScript;

  /// [result]
  /// The overall result from the execution of the TestScript.
  final TestReportResult result;

  /// [score]
  /// The final score (percentage of tests passed) resulting from the
  /// execution of the TestScript.
  final FhirDecimal? score;

  /// [tester]
  /// Name of the tester producing this report (Organization or individual).
  final FhirString? tester;

  /// [issued]
  /// When the TestScript was executed and this TestReport was generated.
  final FhirDateTime? issued;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }

    addField('name', name);
    addField('status', status);
    json['testScript'] = testScript.toJson();

    addField('result', result);
    addField('score', score);
    addField('tester', tester);
    addField('issued', issued);
    if (participant != null && participant!.isNotEmpty) {
      json['participant'] = participant!.map((e) => e.toJson()).toList();
    }

    if (setup != null) {
      json['setup'] = setup!.toJson();
    }

    if (test != null && test!.isNotEmpty) {
      json['test'] = test!.map((e) => e.toJson()).toList();
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
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    FhirString? name,
    TestReportStatus? status,
    Reference? testScript,
    TestReportResult? result,
    FhirDecimal? score,
    FhirString? tester,
    FhirDateTime? issued,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      name: name ?? this.name,
      status: status ?? this.status,
      testScript: testScript ?? this.testScript,
      result: result ?? this.result,
      score: score ?? this.score,
      tester: tester ?? this.tester,
      issued: issued ?? this.issued,
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
  /// Primary constructor for
  /// [TestReportParticipant]

  TestReportParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.uri,
    this.display,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestReportParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestReportParticipant(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: TestReportParticipantType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      uri: FhirUri.fromJson({
        'value': json['uri'],
        '_value': json['_uri'],
      }),
      display: (json['display'] != null || json['_display'] != null)
          ? FhirString.fromJson({
              'value': json['display'],
              '_value': json['_display'],
            })
          : null,
    );
  }

  /// Deserialize [TestReportParticipant]
  /// from a [String] or [YamlMap] object
  factory TestReportParticipant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestReportParticipant.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return TestReportParticipant.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'TestReportParticipant cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [TestReportParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportParticipant.fromJsonString(
    String source,
  ) {
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

  /// [uri]
  /// The uri of the participant. An absolute URL is preferred.
  final FhirUri uri;

  /// [display]
  /// The display name of the participant.
  final FhirString? display;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    addField('uri', uri);
    addField('display', display);
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
    FhirUri? uri,
    FhirString? display,
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
      uri: uri ?? this.uri,
      display: display ?? this.display,
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
  /// Primary constructor for
  /// [TestReportSetup]

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
  factory TestReportSetup.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestReportSetup(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      action: ensureNonNullList(
        (json['action'] as List<dynamic>)
            .map<TestReportAction>(
              (v) => TestReportAction.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Deserialize [TestReportSetup]
  /// from a [String] or [YamlMap] object
  factory TestReportSetup.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestReportSetup.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return TestReportSetup.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'TestReportSetup cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [TestReportSetup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportSetup.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (action.isNotEmpty) {
      json['action'] = action.map((e) => e.toJson()).toList();
    }

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
  /// Primary constructor for
  /// [TestReportAction]

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
  factory TestReportAction.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestReportAction(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
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

  /// Deserialize [TestReportAction]
  /// from a [String] or [YamlMap] object
  factory TestReportAction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestReportAction.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return TestReportAction.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'TestReportAction cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [TestReportAction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportAction.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
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
  /// Primary constructor for
  /// [TestReportOperation]

  TestReportOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.result,
    this.message,
    this.detail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestReportOperation.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestReportOperation(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      result: TestReportActionResult.fromJson({
        'value': json['result'],
        '_value': json['_result'],
      }),
      message: (json['message'] != null || json['_message'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['message'],
              '_value': json['_message'],
            })
          : null,
      detail: (json['detail'] != null || json['_detail'] != null)
          ? FhirUri.fromJson({
              'value': json['detail'],
              '_value': json['_detail'],
            })
          : null,
    );
  }

  /// Deserialize [TestReportOperation]
  /// from a [String] or [YamlMap] object
  factory TestReportOperation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestReportOperation.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return TestReportOperation.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'TestReportOperation cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [TestReportOperation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportOperation.fromJsonString(
    String source,
  ) {
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

  /// [message]
  /// An explanatory message associated with the result.
  final FhirMarkdown? message;

  /// [detail]
  /// A link to further details on the result.
  final FhirUri? detail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('result', result);
    addField('message', message);
    addField('detail', detail);
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
    FhirMarkdown? message,
    FhirUri? detail,
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
      message: message ?? this.message,
      detail: detail ?? this.detail,
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
  /// Primary constructor for
  /// [TestReportAssert]

  TestReportAssert({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.result,
    this.message,
    this.detail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestReportAssert.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestReportAssert(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      result: TestReportActionResult.fromJson({
        'value': json['result'],
        '_value': json['_result'],
      }),
      message: (json['message'] != null || json['_message'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['message'],
              '_value': json['_message'],
            })
          : null,
      detail: (json['detail'] != null || json['_detail'] != null)
          ? FhirString.fromJson({
              'value': json['detail'],
              '_value': json['_detail'],
            })
          : null,
    );
  }

  /// Deserialize [TestReportAssert]
  /// from a [String] or [YamlMap] object
  factory TestReportAssert.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestReportAssert.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return TestReportAssert.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'TestReportAssert cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [TestReportAssert]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportAssert.fromJsonString(
    String source,
  ) {
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

  /// [message]
  /// An explanatory message associated with the result.
  final FhirMarkdown? message;

  /// [detail]
  /// A link to further details on the result.
  final FhirString? detail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('result', result);
    addField('message', message);
    addField('detail', detail);
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
    FhirMarkdown? message,
    FhirString? detail,
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
      message: message ?? this.message,
      detail: detail ?? this.detail,
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
  /// Primary constructor for
  /// [TestReportTest]

  TestReportTest({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.description,
    required this.action,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestReportTest.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestReportTest(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: (json['name'] != null || json['_name'] != null)
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      action: ensureNonNullList(
        (json['action'] as List<dynamic>)
            .map<TestReportAction>(
              (v) => TestReportAction.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Deserialize [TestReportTest]
  /// from a [String] or [YamlMap] object
  factory TestReportTest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestReportTest.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return TestReportTest.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'TestReportTest cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [TestReportTest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportTest.fromJsonString(
    String source,
  ) {
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

  /// [description]
  /// A short description of the test used by test engines for tracking and
  /// reporting purposes.
  final FhirString? description;

  /// [action]
  /// Action would contain either an operation or an assertion.
  final List<TestReportAction> action;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('name', name);
    addField('description', description);
    if (action.isNotEmpty) {
      json['action'] = action.map((e) => e.toJson()).toList();
    }

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
    FhirString? description,
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
      description: description ?? this.description,
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
  /// Primary constructor for
  /// [TestReportAction1]

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
  factory TestReportAction1.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestReportAction1(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
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

  /// Deserialize [TestReportAction1]
  /// from a [String] or [YamlMap] object
  factory TestReportAction1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestReportAction1.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return TestReportAction1.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'TestReportAction1 cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [TestReportAction1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportAction1.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
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
  /// Primary constructor for
  /// [TestReportTeardown]

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
  factory TestReportTeardown.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestReportTeardown(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      action: ensureNonNullList(
        (json['action'] as List<dynamic>)
            .map<TestReportAction>(
              (v) => TestReportAction.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Deserialize [TestReportTeardown]
  /// from a [String] or [YamlMap] object
  factory TestReportTeardown.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestReportTeardown.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return TestReportTeardown.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'TestReportTeardown cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [TestReportTeardown]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportTeardown.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (action.isNotEmpty) {
      json['action'] = action.map((e) => e.toJson()).toList();
    }

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
  /// Primary constructor for
  /// [TestReportAction2]

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
  factory TestReportAction2.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestReportAction2(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
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

  /// Deserialize [TestReportAction2]
  /// from a [String] or [YamlMap] object
  factory TestReportAction2.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestReportAction2.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return TestReportAction2.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'TestReportAction2 cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [TestReportAction2]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestReportAction2.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
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
