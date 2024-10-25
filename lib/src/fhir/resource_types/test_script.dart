import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [TestScript]
/// A structured set of tests against a FHIR server or client
/// implementation to determine compliance against the FHIR specification.
class TestScript extends DomainResource {
  /// Primary constructor for
  /// [TestScript]

  TestScript({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.url,
    this.identifier,
    this.version,
    required this.name,
    this.title,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.copyright,
    this.origin,
    this.destination,
    this.metadata,
    this.fixture,
    this.profile,
    this.variable,
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
          resourceType: R4ResourceType.TestScript,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScript.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScript(
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
      url: FhirUri.fromJson({
        'value': json['url'],
        '_value': json['_url'],
      }),
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      version: (json['version'] != null || json['_version'] != null)
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      title: (json['title'] != null || json['_title'] != null)
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      experimental:
          (json['experimental'] != null || json['_experimental'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['experimental'],
                  '_value': json['_experimental'],
                })
              : null,
      date: (json['date'] != null || json['_date'] != null)
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      publisher: (json['publisher'] != null || json['_publisher'] != null)
          ? FhirString.fromJson({
              'value': json['publisher'],
              '_value': json['_publisher'],
            })
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>(
                (v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      purpose: (json['purpose'] != null || json['_purpose'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['purpose'],
              '_value': json['_purpose'],
            })
          : null,
      copyright: (json['copyright'] != null || json['_copyright'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
      origin: json['origin'] != null
          ? (json['origin'] as List<dynamic>)
              .map<TestScriptOrigin>(
                (v) => TestScriptOrigin.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      destination: json['destination'] != null
          ? (json['destination'] as List<dynamic>)
              .map<TestScriptDestination>(
                (v) => TestScriptDestination.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      metadata: json['metadata'] != null
          ? TestScriptMetadata.fromJson(
              json['metadata'] as Map<String, dynamic>,
            )
          : null,
      fixture: json['fixture'] != null
          ? (json['fixture'] as List<dynamic>)
              .map<TestScriptFixture>(
                (v) => TestScriptFixture.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      profile: json['profile'] != null
          ? (json['profile'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      variable: json['variable'] != null
          ? (json['variable'] as List<dynamic>)
              .map<TestScriptVariable>(
                (v) => TestScriptVariable.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      setup: json['setup'] != null
          ? TestScriptSetup.fromJson(
              json['setup'] as Map<String, dynamic>,
            )
          : null,
      test: json['test'] != null
          ? (json['test'] as List<dynamic>)
              .map<TestScriptTest>(
                (v) => TestScriptTest.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      teardown: json['teardown'] != null
          ? TestScriptTeardown.fromJson(
              json['teardown'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TestScript]
  /// from a [String] or [YamlMap] object
  factory TestScript.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScript.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScript.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScript '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScript]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScript.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScript.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScript';

  /// [url]
  /// An absolute URI that is used to identify this test script when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this test script is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the test
  /// script is stored on different servers.
  final FhirUri url;

  /// [identifier]
  /// A formal identifier that is used to identify this test script when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final Identifier? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the test script
  /// when it is referenced in a specification, model, design or instance.
  /// This is an arbitrary value managed by the test script author and is not
  /// expected to be globally unique. For example, it might be a timestamp
  /// (e.g. yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the test script. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [title]
  /// A short, descriptive, user-friendly title for the test script.
  final FhirString? title;

  /// [status]
  /// The status of this test script. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this test script is authored for
  /// testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the test script was published. The
  /// date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the test script changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the test
  /// script.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the test script from a
  /// consumer's perspective.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate test script instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the test script is intended to be
  /// used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this test script is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the test script and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the test script.
  final FhirMarkdown? copyright;

  /// [origin]
  /// An abstract server used in operations within this test script in the
  /// origin element.
  final List<TestScriptOrigin>? origin;

  /// [destination]
  /// An abstract server used in operations within this test script in the
  /// destination element.
  final List<TestScriptDestination>? destination;

  /// [metadata]
  /// The required capability must exist and are assumed to function
  /// correctly on the FHIR server being tested.
  final TestScriptMetadata? metadata;

  /// [fixture]
  /// Fixture in the test script - by reference (uri). All fixtures are
  /// required for the test script to execute.
  final List<TestScriptFixture>? fixture;

  /// [profile]
  /// Reference to the profile to be used for validation.
  final List<Reference>? profile;

  /// [variable]
  /// Variable is set based either on element value in response body or on
  /// header field value in the response headers.
  final List<TestScriptVariable>? variable;

  /// [setup]
  /// A series of required setup operations before tests are executed.
  final TestScriptSetup? setup;

  /// [test]
  /// A test in this script.
  final List<TestScriptTest>? test;

  /// [teardown]
  /// A series of operations required to clean up after all the tests are
  /// executed (successfully or otherwise).
  final TestScriptTeardown? teardown;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      final fieldJson2 = language!.toJson();
      json['language'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_language'] = fieldJson2['_value'];
      }
    }

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

    final fieldJson7 = url.toJson();
    json['url'] = fieldJson7['value'];
    if (fieldJson7['_value'] != null) {
      json['_url'] = fieldJson7['_value'];
    }

    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }

    if (version != null) {
      final fieldJson9 = version!.toJson();
      json['version'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_version'] = fieldJson9['_value'];
      }
    }

    final fieldJson10 = name.toJson();
    json['name'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_name'] = fieldJson10['_value'];
    }

    if (title != null) {
      final fieldJson11 = title!.toJson();
      json['title'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_title'] = fieldJson11['_value'];
      }
    }

    final fieldJson12 = status.toJson();
    json['status'] = fieldJson12['value'];
    if (fieldJson12['_value'] != null) {
      json['_status'] = fieldJson12['_value'];
    }

    if (experimental != null) {
      final fieldJson13 = experimental!.toJson();
      json['experimental'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_experimental'] = fieldJson13['_value'];
      }
    }

    if (date != null) {
      final fieldJson14 = date!.toJson();
      json['date'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_date'] = fieldJson14['_value'];
      }
    }

    if (publisher != null) {
      final fieldJson15 = publisher!.toJson();
      json['publisher'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_publisher'] = fieldJson15['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      final fieldJson17 = description!.toJson();
      json['description'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_description'] = fieldJson17['_value'];
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    if (purpose != null) {
      final fieldJson20 = purpose!.toJson();
      json['purpose'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_purpose'] = fieldJson20['_value'];
      }
    }

    if (copyright != null) {
      final fieldJson21 = copyright!.toJson();
      json['copyright'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_copyright'] = fieldJson21['_value'];
      }
    }

    if (origin != null && origin!.isNotEmpty) {
      json['origin'] = origin!.map((e) => e.toJson()).toList();
    }

    if (destination != null && destination!.isNotEmpty) {
      json['destination'] = destination!.map((e) => e.toJson()).toList();
    }

    if (metadata != null) {
      json['metadata'] = metadata!.toJson();
    }

    if (fixture != null && fixture!.isNotEmpty) {
      json['fixture'] = fixture!.map((e) => e.toJson()).toList();
    }

    if (profile != null && profile!.isNotEmpty) {
      json['profile'] = profile!.map((e) => e.toJson()).toList();
    }

    if (variable != null && variable!.isNotEmpty) {
      json['variable'] = variable!.map((e) => e.toJson()).toList();
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
  TestScript clone() => throw UnimplementedError();
  @override
  TestScript copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    Identifier? identifier,
    FhirString? version,
    FhirString? name,
    FhirString? title,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    List<TestScriptOrigin>? origin,
    List<TestScriptDestination>? destination,
    TestScriptMetadata? metadata,
    List<TestScriptFixture>? fixture,
    List<Reference>? profile,
    List<TestScriptVariable>? variable,
    TestScriptSetup? setup,
    List<TestScriptTest>? test,
    TestScriptTeardown? teardown,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScript(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      name: name ?? this.name,
      title: title ?? this.title,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      copyright: copyright ?? this.copyright,
      origin: origin ?? this.origin,
      destination: destination ?? this.destination,
      metadata: metadata ?? this.metadata,
      fixture: fixture ?? this.fixture,
      profile: profile ?? this.profile,
      variable: variable ?? this.variable,
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

/// [TestScriptOrigin]
/// An abstract server used in operations within this test script in the
/// origin element.
class TestScriptOrigin extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptOrigin]

  TestScriptOrigin({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.index,
    required this.profile,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptOrigin.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptOrigin(
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
      index: FhirInteger.fromJson({
        'value': json['index'],
        '_value': json['_index'],
      }),
      profile: Coding.fromJson(
        json['profile'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [TestScriptOrigin]
  /// from a [String] or [YamlMap] object
  factory TestScriptOrigin.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptOrigin.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptOrigin.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptOrigin '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptOrigin]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptOrigin.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptOrigin.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptOrigin';

  /// [index]
  /// Abstract name given to an origin server in this test script. The name
  /// is provided as a number starting at 1.
  final FhirInteger index;

  /// [profile]
  /// The type of origin profile the test system supports.
  final Coding profile;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = index.toJson();
    json['index'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_index'] = fieldJson2['_value'];
    }

    json['profile'] = profile.toJson();

    return json;
  }

  @override
  TestScriptOrigin clone() => throw UnimplementedError();
  @override
  TestScriptOrigin copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? index,
    Coding? profile,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptOrigin(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      index: index ?? this.index,
      profile: profile ?? this.profile,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TestScriptDestination]
/// An abstract server used in operations within this test script in the
/// destination element.
class TestScriptDestination extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptDestination]

  TestScriptDestination({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.index,
    required this.profile,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptDestination.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptDestination(
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
      index: FhirInteger.fromJson({
        'value': json['index'],
        '_value': json['_index'],
      }),
      profile: Coding.fromJson(
        json['profile'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [TestScriptDestination]
  /// from a [String] or [YamlMap] object
  factory TestScriptDestination.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptDestination.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptDestination.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptDestination '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptDestination]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptDestination.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptDestination.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptDestination';

  /// [index]
  /// Abstract name given to a destination server in this test script. The
  /// name is provided as a number starting at 1.
  final FhirInteger index;

  /// [profile]
  /// The type of destination profile the test system supports.
  final Coding profile;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = index.toJson();
    json['index'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_index'] = fieldJson2['_value'];
    }

    json['profile'] = profile.toJson();

    return json;
  }

  @override
  TestScriptDestination clone() => throw UnimplementedError();
  @override
  TestScriptDestination copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? index,
    Coding? profile,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptDestination(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      index: index ?? this.index,
      profile: profile ?? this.profile,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TestScriptMetadata]
/// The required capability must exist and are assumed to function
/// correctly on the FHIR server being tested.
class TestScriptMetadata extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptMetadata]

  TestScriptMetadata({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.link,
    required this.capability,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptMetadata.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptMetadata(
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
      link: json['link'] != null
          ? (json['link'] as List<dynamic>)
              .map<TestScriptLink>(
                (v) => TestScriptLink.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      capability: ensureNonNullList(
        (json['capability'] as List<dynamic>)
            .map<TestScriptCapability>(
              (v) => TestScriptCapability.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Deserialize [TestScriptMetadata]
  /// from a [String] or [YamlMap] object
  factory TestScriptMetadata.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptMetadata.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptMetadata.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptMetadata '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptMetadata]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptMetadata.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptMetadata.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptMetadata';

  /// [link]
  /// A link to the FHIR specification that this test is covering.
  final List<TestScriptLink>? link;

  /// [capability]
  /// Capabilities that must exist and are assumed to function correctly on
  /// the FHIR server being tested.
  final List<TestScriptCapability> capability;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (link != null && link!.isNotEmpty) {
      json['link'] = link!.map((e) => e.toJson()).toList();
    }

    json['capability'] = capability.map((e) => e.toJson()).toList();

    return json;
  }

  @override
  TestScriptMetadata clone() => throw UnimplementedError();
  @override
  TestScriptMetadata copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<TestScriptLink>? link,
    List<TestScriptCapability>? capability,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptMetadata(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      link: link ?? this.link,
      capability: capability ?? this.capability,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TestScriptLink]
/// A link to the FHIR specification that this test is covering.
class TestScriptLink extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptLink]

  TestScriptLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.url,
    this.description,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptLink.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptLink(
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
      url: FhirUri.fromJson({
        'value': json['url'],
        '_value': json['_url'],
      }),
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
    );
  }

  /// Deserialize [TestScriptLink]
  /// from a [String] or [YamlMap] object
  factory TestScriptLink.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptLink.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptLink.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptLink '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptLink]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptLink.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptLink.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptLink';

  /// [url]
  /// URL to a particular requirement or feature within the FHIR
  /// specification.
  final FhirUri url;

  /// [description]
  /// Short description of the link.
  final FhirString? description;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = url.toJson();
    json['url'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_url'] = fieldJson2['_value'];
    }

    if (description != null) {
      final fieldJson3 = description!.toJson();
      json['description'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_description'] = fieldJson3['_value'];
      }
    }

    return json;
  }

  @override
  TestScriptLink clone() => throw UnimplementedError();
  @override
  TestScriptLink copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    FhirString? description,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptLink(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      description: description ?? this.description,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TestScriptCapability]
/// Capabilities that must exist and are assumed to function correctly on
/// the FHIR server being tested.
class TestScriptCapability extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptCapability]

  TestScriptCapability({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.required_,
    required this.validated,
    this.description,
    this.origin,
    this.destination,
    this.link,
    required this.capabilities,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptCapability.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptCapability(
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
      required_: FhirBoolean.fromJson({
        'value': json['required'],
        '_value': json['_required'],
      }),
      validated: FhirBoolean.fromJson({
        'value': json['validated'],
        '_value': json['_validated'],
      }),
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      origin: parsePrimitiveList<FhirInteger>(
        json['origin'] as List<dynamic>?,
        json['_origin'] as List<dynamic>?,
        fromJson: FhirInteger.fromJson,
      ),
      destination: (json['destination'] != null || json['_destination'] != null)
          ? FhirInteger.fromJson({
              'value': json['destination'],
              '_value': json['_destination'],
            })
          : null,
      link: parsePrimitiveList<FhirUri>(
        json['link'] as List<dynamic>?,
        json['_link'] as List<dynamic>?,
        fromJson: FhirUri.fromJson,
      ),
      capabilities: FhirCanonical.fromJson({
        'value': json['capabilities'],
        '_value': json['_capabilities'],
      }),
    );
  }

  /// Deserialize [TestScriptCapability]
  /// from a [String] or [YamlMap] object
  factory TestScriptCapability.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptCapability.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptCapability.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptCapability '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptCapability]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptCapability.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptCapability.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptCapability';

  /// [required_]
  /// Whether or not the test execution will require the given capabilities
  /// of the server in order for this test script to execute.
  final FhirBoolean required_;

  /// [validated]
  /// Whether or not the test execution will validate the given capabilities
  /// of the server in order for this test script to execute.
  final FhirBoolean validated;

  /// [description]
  /// Description of the capabilities that this test script is requiring the
  /// server to support.
  final FhirString? description;

  /// [origin]
  /// Which origin server these requirements apply to.
  final List<FhirInteger>? origin;

  /// [destination]
  /// Which server these requirements apply to.
  final FhirInteger? destination;

  /// [link]
  /// Links to the FHIR specification that describes this interaction and the
  /// resources involved in more detail.
  final List<FhirUri>? link;

  /// [capabilities]
  /// Minimum capabilities required of server for test script to execute
  /// successfully. If server does not meet at a minimum the referenced
  /// capability statement, then all tests in this script are skipped.
  final FhirCanonical capabilities;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = required_.toJson();
    json['required'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_required'] = fieldJson2['_value'];
    }

    final fieldJson3 = validated.toJson();
    json['validated'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_validated'] = fieldJson3['_value'];
    }

    if (description != null) {
      final fieldJson4 = description!.toJson();
      json['description'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_description'] = fieldJson4['_value'];
      }
    }

    if (origin != null && origin!.isNotEmpty) {
      final fieldJson5 = origin!.map((e) => e.toJson()).toList();
      json['origin'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_origin'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (destination != null) {
      final fieldJson6 = destination!.toJson();
      json['destination'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_destination'] = fieldJson6['_value'];
      }
    }

    if (link != null && link!.isNotEmpty) {
      final fieldJson7 = link!.map((e) => e.toJson()).toList();
      json['link'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_link'] = fieldJson7.map((e) => e['_value']).toList();
      }
    }

    final fieldJson8 = capabilities.toJson();
    json['capabilities'] = fieldJson8['value'];
    if (fieldJson8['_value'] != null) {
      json['_capabilities'] = fieldJson8['_value'];
    }

    return json;
  }

  @override
  TestScriptCapability clone() => throw UnimplementedError();
  @override
  TestScriptCapability copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? required_,
    FhirBoolean? validated,
    FhirString? description,
    List<FhirInteger>? origin,
    FhirInteger? destination,
    List<FhirUri>? link,
    FhirCanonical? capabilities,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptCapability(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      required_: required_ ?? this.required_,
      validated: validated ?? this.validated,
      description: description ?? this.description,
      origin: origin ?? this.origin,
      destination: destination ?? this.destination,
      link: link ?? this.link,
      capabilities: capabilities ?? this.capabilities,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TestScriptFixture]
/// Fixture in the test script - by reference (uri). All fixtures are
/// required for the test script to execute.
class TestScriptFixture extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptFixture]

  TestScriptFixture({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.autocreate,
    required this.autodelete,
    this.resource,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptFixture.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptFixture(
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
      autocreate: FhirBoolean.fromJson({
        'value': json['autocreate'],
        '_value': json['_autocreate'],
      }),
      autodelete: FhirBoolean.fromJson({
        'value': json['autodelete'],
        '_value': json['_autodelete'],
      }),
      resource: json['resource'] != null
          ? Reference.fromJson(
              json['resource'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TestScriptFixture]
  /// from a [String] or [YamlMap] object
  factory TestScriptFixture.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptFixture.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptFixture.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptFixture '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptFixture]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptFixture.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptFixture.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptFixture';

  /// [autocreate]
  /// Whether or not to implicitly create the fixture during setup. If true,
  /// the fixture is automatically created on each server being tested during
  /// setup, therefore no create operation is required for this fixture in
  /// the TestScript.setup section.
  final FhirBoolean autocreate;

  /// [autodelete]
  /// Whether or not to implicitly delete the fixture during teardown. If
  /// true, the fixture is automatically deleted on each server being tested
  /// during teardown, therefore no delete operation is required for this
  /// fixture in the TestScript.teardown section.
  final FhirBoolean autodelete;

  /// [resource]
  /// Reference to the resource (containing the contents of the resource
  /// needed for operations).
  final Reference? resource;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = autocreate.toJson();
    json['autocreate'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_autocreate'] = fieldJson2['_value'];
    }

    final fieldJson3 = autodelete.toJson();
    json['autodelete'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_autodelete'] = fieldJson3['_value'];
    }

    if (resource != null) {
      json['resource'] = resource!.toJson();
    }

    return json;
  }

  @override
  TestScriptFixture clone() => throw UnimplementedError();
  @override
  TestScriptFixture copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? autocreate,
    FhirBoolean? autodelete,
    Reference? resource,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptFixture(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      autocreate: autocreate ?? this.autocreate,
      autodelete: autodelete ?? this.autodelete,
      resource: resource ?? this.resource,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TestScriptVariable]
/// Variable is set based either on element value in response body or on
/// header field value in the response headers.
class TestScriptVariable extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptVariable]

  TestScriptVariable({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.defaultValue,
    this.description,
    this.expression,
    this.headerField,
    this.hint,
    this.path,
    this.sourceId,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptVariable.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptVariable(
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
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      defaultValue:
          (json['defaultValue'] != null || json['_defaultValue'] != null)
              ? FhirString.fromJson({
                  'value': json['defaultValue'],
                  '_value': json['_defaultValue'],
                })
              : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      expression: (json['expression'] != null || json['_expression'] != null)
          ? FhirString.fromJson({
              'value': json['expression'],
              '_value': json['_expression'],
            })
          : null,
      headerField: (json['headerField'] != null || json['_headerField'] != null)
          ? FhirString.fromJson({
              'value': json['headerField'],
              '_value': json['_headerField'],
            })
          : null,
      hint: (json['hint'] != null || json['_hint'] != null)
          ? FhirString.fromJson({
              'value': json['hint'],
              '_value': json['_hint'],
            })
          : null,
      path: (json['path'] != null || json['_path'] != null)
          ? FhirString.fromJson({
              'value': json['path'],
              '_value': json['_path'],
            })
          : null,
      sourceId: (json['sourceId'] != null || json['_sourceId'] != null)
          ? FhirId.fromJson({
              'value': json['sourceId'],
              '_value': json['_sourceId'],
            })
          : null,
    );
  }

  /// Deserialize [TestScriptVariable]
  /// from a [String] or [YamlMap] object
  factory TestScriptVariable.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptVariable.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptVariable.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptVariable '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptVariable]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptVariable.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptVariable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptVariable';

  /// [name]
  /// Descriptive name for this variable.
  final FhirString name;

  /// [defaultValue]
  /// A default, hard-coded, or user-defined value for this variable.
  final FhirString? defaultValue;

  /// [description]
  /// A free text natural language description of the variable and its
  /// purpose.
  final FhirString? description;

  /// [expression]
  /// The FHIRPath expression to evaluate against the fixture body. When
  /// variables are defined, only one of either expression, headerField or
  /// path must be specified.
  final FhirString? expression;

  /// [headerField]
  /// Will be used to grab the HTTP header field value from the headers that
  /// sourceId is pointing to.
  final FhirString? headerField;

  /// [hint]
  /// Displayable text string with hint help information to the user when
  /// entering a default value.
  final FhirString? hint;

  /// [path]
  /// XPath or JSONPath to evaluate against the fixture body. When variables
  /// are defined, only one of either expression, headerField or path must be
  /// specified.
  final FhirString? path;

  /// [sourceId]
  /// Fixture to evaluate the XPath/JSONPath expression or the headerField
  /// against within this variable.
  final FhirId? sourceId;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = name.toJson();
    json['name'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_name'] = fieldJson2['_value'];
    }

    if (defaultValue != null) {
      final fieldJson3 = defaultValue!.toJson();
      json['defaultValue'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_defaultValue'] = fieldJson3['_value'];
      }
    }

    if (description != null) {
      final fieldJson4 = description!.toJson();
      json['description'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_description'] = fieldJson4['_value'];
      }
    }

    if (expression != null) {
      final fieldJson5 = expression!.toJson();
      json['expression'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_expression'] = fieldJson5['_value'];
      }
    }

    if (headerField != null) {
      final fieldJson6 = headerField!.toJson();
      json['headerField'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_headerField'] = fieldJson6['_value'];
      }
    }

    if (hint != null) {
      final fieldJson7 = hint!.toJson();
      json['hint'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_hint'] = fieldJson7['_value'];
      }
    }

    if (path != null) {
      final fieldJson8 = path!.toJson();
      json['path'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_path'] = fieldJson8['_value'];
      }
    }

    if (sourceId != null) {
      final fieldJson9 = sourceId!.toJson();
      json['sourceId'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_sourceId'] = fieldJson9['_value'];
      }
    }

    return json;
  }

  @override
  TestScriptVariable clone() => throw UnimplementedError();
  @override
  TestScriptVariable copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? defaultValue,
    FhirString? description,
    FhirString? expression,
    FhirString? headerField,
    FhirString? hint,
    FhirString? path,
    FhirId? sourceId,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptVariable(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      defaultValue: defaultValue ?? this.defaultValue,
      description: description ?? this.description,
      expression: expression ?? this.expression,
      headerField: headerField ?? this.headerField,
      hint: hint ?? this.hint,
      path: path ?? this.path,
      sourceId: sourceId ?? this.sourceId,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TestScriptSetup]
/// A series of required setup operations before tests are executed.
class TestScriptSetup extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptSetup]

  TestScriptSetup({
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
  factory TestScriptSetup.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptSetup(
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
            .map<TestScriptAction>(
              (v) => TestScriptAction.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Deserialize [TestScriptSetup]
  /// from a [String] or [YamlMap] object
  factory TestScriptSetup.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptSetup.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptSetup.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptSetup '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptSetup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptSetup.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptSetup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptSetup';

  /// [action]
  /// Action would contain either an operation or an assertion.
  final List<TestScriptAction> action;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['action'] = action.map((e) => e.toJson()).toList();

    return json;
  }

  @override
  TestScriptSetup clone() => throw UnimplementedError();
  @override
  TestScriptSetup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<TestScriptAction>? action,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptSetup(
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

/// [TestScriptAction]
/// Action would contain either an operation or an assertion.
class TestScriptAction extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptAction]

  TestScriptAction({
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
  factory TestScriptAction.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptAction(
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
          ? TestScriptOperation.fromJson(
              json['operation'] as Map<String, dynamic>,
            )
          : null,
      assert_: json['assert'] != null
          ? TestScriptAssert.fromJson(
              json['assert'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TestScriptAction]
  /// from a [String] or [YamlMap] object
  factory TestScriptAction.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptAction.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptAction.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptAction '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptAction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptAction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptAction';

  /// [operation]
  /// The operation to perform.
  final TestScriptOperation? operation;

  /// [assert_]
  /// Evaluates the results of previous operations to determine if the server
  /// under test behaves appropriately.
  final TestScriptAssert? assert_;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

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
  TestScriptAction clone() => throw UnimplementedError();
  @override
  TestScriptAction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestScriptOperation? operation,
    TestScriptAssert? assert_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptAction(
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

/// [TestScriptOperation]
/// The operation to perform.
class TestScriptOperation extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptOperation]

  TestScriptOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.resource,
    this.label,
    this.description,
    this.accept,
    this.contentType,
    this.destination,
    required this.encodeRequestUrl,
    this.method,
    this.origin,
    this.params,
    this.requestHeader,
    this.requestId,
    this.responseId,
    this.sourceId,
    this.targetId,
    this.url,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptOperation.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptOperation(
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
      type: json['type'] != null
          ? Coding.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      resource: (json['resource'] != null || json['_resource'] != null)
          ? FhirCode.fromJson({
              'value': json['resource'],
              '_value': json['_resource'],
            })
          : null,
      label: (json['label'] != null || json['_label'] != null)
          ? FhirString.fromJson({
              'value': json['label'],
              '_value': json['_label'],
            })
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      accept: (json['accept'] != null || json['_accept'] != null)
          ? FhirCode.fromJson({
              'value': json['accept'],
              '_value': json['_accept'],
            })
          : null,
      contentType: (json['contentType'] != null || json['_contentType'] != null)
          ? FhirCode.fromJson({
              'value': json['contentType'],
              '_value': json['_contentType'],
            })
          : null,
      destination: (json['destination'] != null || json['_destination'] != null)
          ? FhirInteger.fromJson({
              'value': json['destination'],
              '_value': json['_destination'],
            })
          : null,
      encodeRequestUrl: FhirBoolean.fromJson({
        'value': json['encodeRequestUrl'],
        '_value': json['_encodeRequestUrl'],
      }),
      method: (json['method'] != null || json['_method'] != null)
          ? TestScriptRequestMethodCode.fromJson({
              'value': json['method'],
              '_value': json['_method'],
            })
          : null,
      origin: (json['origin'] != null || json['_origin'] != null)
          ? FhirInteger.fromJson({
              'value': json['origin'],
              '_value': json['_origin'],
            })
          : null,
      params: (json['params'] != null || json['_params'] != null)
          ? FhirString.fromJson({
              'value': json['params'],
              '_value': json['_params'],
            })
          : null,
      requestHeader: json['requestHeader'] != null
          ? (json['requestHeader'] as List<dynamic>)
              .map<TestScriptRequestHeader>(
                (v) => TestScriptRequestHeader.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      requestId: (json['requestId'] != null || json['_requestId'] != null)
          ? FhirId.fromJson({
              'value': json['requestId'],
              '_value': json['_requestId'],
            })
          : null,
      responseId: (json['responseId'] != null || json['_responseId'] != null)
          ? FhirId.fromJson({
              'value': json['responseId'],
              '_value': json['_responseId'],
            })
          : null,
      sourceId: (json['sourceId'] != null || json['_sourceId'] != null)
          ? FhirId.fromJson({
              'value': json['sourceId'],
              '_value': json['_sourceId'],
            })
          : null,
      targetId: (json['targetId'] != null || json['_targetId'] != null)
          ? FhirId.fromJson({
              'value': json['targetId'],
              '_value': json['_targetId'],
            })
          : null,
      url: (json['url'] != null || json['_url'] != null)
          ? FhirString.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
    );
  }

  /// Deserialize [TestScriptOperation]
  /// from a [String] or [YamlMap] object
  factory TestScriptOperation.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptOperation.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptOperation.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptOperation '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptOperation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptOperation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptOperation';

  /// [type]
  /// Server interaction or operation type.
  final Coding? type;

  /// [resource]
  /// The type of the resource. See http://build.fhir.org/resourcelist.html.
  final FhirCode? resource;

  /// [label]
  /// The label would be used for tracking/logging purposes by test engines.
  final FhirString? label;

  /// [description]
  /// The description would be used by test engines for tracking and
  /// reporting purposes.
  final FhirString? description;

  /// [accept]
  /// The mime-type to use for RESTful operation in the 'Accept' header.
  final FhirCode? accept;

  /// [contentType]
  /// The mime-type to use for RESTful operation in the 'Content-Type'
  /// header.
  final FhirCode? contentType;

  /// [destination]
  /// The server where the request message is destined for. Must be one of
  /// the server numbers listed in TestScript.destination section.
  final FhirInteger? destination;

  /// [encodeRequestUrl]
  /// Whether or not to implicitly send the request url in encoded format.
  /// The default is true to match the standard RESTful client behavior. Set
  /// to false when communicating with a server that does not support encoded
  /// url paths.
  final FhirBoolean encodeRequestUrl;

  /// [method]
  /// The HTTP method the test engine MUST use for this operation regardless
  /// of any other operation details.
  final TestScriptRequestMethodCode? method;

  /// [origin]
  /// The server where the request message originates from. Must be one of
  /// the server numbers listed in TestScript.origin section.
  final FhirInteger? origin;

  /// [params]
  /// Path plus parameters after [type]. Used to set parts of the request URL
  /// explicitly.
  final FhirString? params;

  /// [requestHeader]
  /// Header elements would be used to set HTTP headers.
  final List<TestScriptRequestHeader>? requestHeader;

  /// [requestId]
  /// The fixture id (maybe new) to map to the request.
  final FhirId? requestId;

  /// [responseId]
  /// The fixture id (maybe new) to map to the response.
  final FhirId? responseId;

  /// [sourceId]
  /// The id of the fixture used as the body of a PUT or POST request.
  final FhirId? sourceId;

  /// [targetId]
  /// Id of fixture used for extracting the [id], [type], and [vid] for GET
  /// requests.
  final FhirId? targetId;

  /// [url]
  /// Complete request URL.
  final FhirString? url;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (resource != null) {
      final fieldJson3 = resource!.toJson();
      json['resource'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_resource'] = fieldJson3['_value'];
      }
    }

    if (label != null) {
      final fieldJson4 = label!.toJson();
      json['label'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_label'] = fieldJson4['_value'];
      }
    }

    if (description != null) {
      final fieldJson5 = description!.toJson();
      json['description'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_description'] = fieldJson5['_value'];
      }
    }

    if (accept != null) {
      final fieldJson6 = accept!.toJson();
      json['accept'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_accept'] = fieldJson6['_value'];
      }
    }

    if (contentType != null) {
      final fieldJson7 = contentType!.toJson();
      json['contentType'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_contentType'] = fieldJson7['_value'];
      }
    }

    if (destination != null) {
      final fieldJson8 = destination!.toJson();
      json['destination'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_destination'] = fieldJson8['_value'];
      }
    }

    final fieldJson9 = encodeRequestUrl.toJson();
    json['encodeRequestUrl'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_encodeRequestUrl'] = fieldJson9['_value'];
    }

    if (method != null) {
      final fieldJson10 = method!.toJson();
      json['method'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_method'] = fieldJson10['_value'];
      }
    }

    if (origin != null) {
      final fieldJson11 = origin!.toJson();
      json['origin'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_origin'] = fieldJson11['_value'];
      }
    }

    if (params != null) {
      final fieldJson12 = params!.toJson();
      json['params'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_params'] = fieldJson12['_value'];
      }
    }

    if (requestHeader != null && requestHeader!.isNotEmpty) {
      json['requestHeader'] = requestHeader!.map((e) => e.toJson()).toList();
    }

    if (requestId != null) {
      final fieldJson14 = requestId!.toJson();
      json['requestId'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_requestId'] = fieldJson14['_value'];
      }
    }

    if (responseId != null) {
      final fieldJson15 = responseId!.toJson();
      json['responseId'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_responseId'] = fieldJson15['_value'];
      }
    }

    if (sourceId != null) {
      final fieldJson16 = sourceId!.toJson();
      json['sourceId'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_sourceId'] = fieldJson16['_value'];
      }
    }

    if (targetId != null) {
      final fieldJson17 = targetId!.toJson();
      json['targetId'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_targetId'] = fieldJson17['_value'];
      }
    }

    if (url != null) {
      final fieldJson18 = url!.toJson();
      json['url'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_url'] = fieldJson18['_value'];
      }
    }

    return json;
  }

  @override
  TestScriptOperation clone() => throw UnimplementedError();
  @override
  TestScriptOperation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? type,
    FhirCode? resource,
    FhirString? label,
    FhirString? description,
    FhirCode? accept,
    FhirCode? contentType,
    FhirInteger? destination,
    FhirBoolean? encodeRequestUrl,
    TestScriptRequestMethodCode? method,
    FhirInteger? origin,
    FhirString? params,
    List<TestScriptRequestHeader>? requestHeader,
    FhirId? requestId,
    FhirId? responseId,
    FhirId? sourceId,
    FhirId? targetId,
    FhirString? url,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptOperation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      resource: resource ?? this.resource,
      label: label ?? this.label,
      description: description ?? this.description,
      accept: accept ?? this.accept,
      contentType: contentType ?? this.contentType,
      destination: destination ?? this.destination,
      encodeRequestUrl: encodeRequestUrl ?? this.encodeRequestUrl,
      method: method ?? this.method,
      origin: origin ?? this.origin,
      params: params ?? this.params,
      requestHeader: requestHeader ?? this.requestHeader,
      requestId: requestId ?? this.requestId,
      responseId: responseId ?? this.responseId,
      sourceId: sourceId ?? this.sourceId,
      targetId: targetId ?? this.targetId,
      url: url ?? this.url,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TestScriptRequestHeader]
/// Header elements would be used to set HTTP headers.
class TestScriptRequestHeader extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptRequestHeader]

  TestScriptRequestHeader({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.field,
    required this.value,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptRequestHeader.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptRequestHeader(
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
      field: FhirString.fromJson({
        'value': json['field'],
        '_value': json['_field'],
      }),
      value: FhirString.fromJson({
        'value': json['value'],
        '_value': json['_value'],
      }),
    );
  }

  /// Deserialize [TestScriptRequestHeader]
  /// from a [String] or [YamlMap] object
  factory TestScriptRequestHeader.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptRequestHeader.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptRequestHeader.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptRequestHeader '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptRequestHeader]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptRequestHeader.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptRequestHeader.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptRequestHeader';

  /// [field]
  /// The HTTP header field e.g. "Accept".
  final FhirString field;

  /// [value]
  /// The value of the header e.g. "application/fhir+xml".
  final FhirString value;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = field.toJson();
    json['field'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_field'] = fieldJson2['_value'];
    }

    final fieldJson3 = value.toJson();
    json['value'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_value'] = fieldJson3['_value'];
    }

    return json;
  }

  @override
  TestScriptRequestHeader clone() => throw UnimplementedError();
  @override
  TestScriptRequestHeader copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? field,
    FhirString? value,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptRequestHeader(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      field: field ?? this.field,
      value: value ?? this.value,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TestScriptAssert]
/// Evaluates the results of previous operations to determine if the server
/// under test behaves appropriately.
class TestScriptAssert extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptAssert]

  TestScriptAssert({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.label,
    this.description,
    this.direction,
    this.compareToSourceId,
    this.compareToSourceExpression,
    this.compareToSourcePath,
    this.contentType,
    this.expression,
    this.headerField,
    this.minimumId,
    this.navigationLinks,
    this.operator_,
    this.path,
    this.requestMethod,
    this.requestURL,
    this.resource,
    this.response,
    this.responseCode,
    this.sourceId,
    this.validateProfileId,
    this.value,
    required this.warningOnly,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptAssert.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptAssert(
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
      label: (json['label'] != null || json['_label'] != null)
          ? FhirString.fromJson({
              'value': json['label'],
              '_value': json['_label'],
            })
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      direction: (json['direction'] != null || json['_direction'] != null)
          ? AssertionDirectionType.fromJson({
              'value': json['direction'],
              '_value': json['_direction'],
            })
          : null,
      compareToSourceId: (json['compareToSourceId'] != null ||
              json['_compareToSourceId'] != null)
          ? FhirString.fromJson({
              'value': json['compareToSourceId'],
              '_value': json['_compareToSourceId'],
            })
          : null,
      compareToSourceExpression: (json['compareToSourceExpression'] != null ||
              json['_compareToSourceExpression'] != null)
          ? FhirString.fromJson({
              'value': json['compareToSourceExpression'],
              '_value': json['_compareToSourceExpression'],
            })
          : null,
      compareToSourcePath: (json['compareToSourcePath'] != null ||
              json['_compareToSourcePath'] != null)
          ? FhirString.fromJson({
              'value': json['compareToSourcePath'],
              '_value': json['_compareToSourcePath'],
            })
          : null,
      contentType: (json['contentType'] != null || json['_contentType'] != null)
          ? FhirCode.fromJson({
              'value': json['contentType'],
              '_value': json['_contentType'],
            })
          : null,
      expression: (json['expression'] != null || json['_expression'] != null)
          ? FhirString.fromJson({
              'value': json['expression'],
              '_value': json['_expression'],
            })
          : null,
      headerField: (json['headerField'] != null || json['_headerField'] != null)
          ? FhirString.fromJson({
              'value': json['headerField'],
              '_value': json['_headerField'],
            })
          : null,
      minimumId: (json['minimumId'] != null || json['_minimumId'] != null)
          ? FhirString.fromJson({
              'value': json['minimumId'],
              '_value': json['_minimumId'],
            })
          : null,
      navigationLinks:
          (json['navigationLinks'] != null || json['_navigationLinks'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['navigationLinks'],
                  '_value': json['_navigationLinks'],
                })
              : null,
      operator_: (json['operator'] != null || json['_operator'] != null)
          ? AssertionOperatorType.fromJson({
              'value': json['operator'],
              '_value': json['_operator'],
            })
          : null,
      path: (json['path'] != null || json['_path'] != null)
          ? FhirString.fromJson({
              'value': json['path'],
              '_value': json['_path'],
            })
          : null,
      requestMethod:
          (json['requestMethod'] != null || json['_requestMethod'] != null)
              ? TestScriptRequestMethodCode.fromJson({
                  'value': json['requestMethod'],
                  '_value': json['_requestMethod'],
                })
              : null,
      requestURL: (json['requestURL'] != null || json['_requestURL'] != null)
          ? FhirString.fromJson({
              'value': json['requestURL'],
              '_value': json['_requestURL'],
            })
          : null,
      resource: (json['resource'] != null || json['_resource'] != null)
          ? FhirCode.fromJson({
              'value': json['resource'],
              '_value': json['_resource'],
            })
          : null,
      response: (json['response'] != null || json['_response'] != null)
          ? AssertionResponseTypes.fromJson({
              'value': json['response'],
              '_value': json['_response'],
            })
          : null,
      responseCode:
          (json['responseCode'] != null || json['_responseCode'] != null)
              ? FhirString.fromJson({
                  'value': json['responseCode'],
                  '_value': json['_responseCode'],
                })
              : null,
      sourceId: (json['sourceId'] != null || json['_sourceId'] != null)
          ? FhirId.fromJson({
              'value': json['sourceId'],
              '_value': json['_sourceId'],
            })
          : null,
      validateProfileId: (json['validateProfileId'] != null ||
              json['_validateProfileId'] != null)
          ? FhirId.fromJson({
              'value': json['validateProfileId'],
              '_value': json['_validateProfileId'],
            })
          : null,
      value: (json['value'] != null || json['_value'] != null)
          ? FhirString.fromJson({
              'value': json['value'],
              '_value': json['_value'],
            })
          : null,
      warningOnly: FhirBoolean.fromJson({
        'value': json['warningOnly'],
        '_value': json['_warningOnly'],
      }),
    );
  }

  /// Deserialize [TestScriptAssert]
  /// from a [String] or [YamlMap] object
  factory TestScriptAssert.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptAssert.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptAssert.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptAssert '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptAssert]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptAssert.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptAssert.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptAssert';

  /// [label]
  /// The label would be used for tracking/logging purposes by test engines.
  final FhirString? label;

  /// [description]
  /// The description would be used by test engines for tracking and
  /// reporting purposes.
  final FhirString? description;

  /// [direction]
  /// The direction to use for the assertion.
  final AssertionDirectionType? direction;

  /// [compareToSourceId]
  /// Id of the source fixture used as the contents to be evaluated by either
  /// the "source/expression" or "sourceId/path" definition.
  final FhirString? compareToSourceId;

  /// [compareToSourceExpression]
  /// The FHIRPath expression to evaluate against the source fixture. When
  /// compareToSourceId is defined, either compareToSourceExpression or
  /// compareToSourcePath must be defined, but not both.
  final FhirString? compareToSourceExpression;

  /// [compareToSourcePath]
  /// XPath or JSONPath expression to evaluate against the source fixture.
  /// When compareToSourceId is defined, either compareToSourceExpression or
  /// compareToSourcePath must be defined, but not both.
  final FhirString? compareToSourcePath;

  /// [contentType]
  /// The mime-type contents to compare against the request or response
  /// message 'Content-Type' header.
  final FhirCode? contentType;

  /// [expression]
  /// The FHIRPath expression to be evaluated against the request or response
  /// message contents - HTTP headers and payload.
  final FhirString? expression;

  /// [headerField]
  /// The HTTP header field name e.g. 'Location'.
  final FhirString? headerField;

  /// [minimumId]
  /// The ID of a fixture. Asserts that the response contains at a minimum
  /// the fixture specified by minimumId.
  final FhirString? minimumId;

  /// [navigationLinks]
  /// Whether or not the test execution performs validation on the bundle
  /// navigation links.
  final FhirBoolean? navigationLinks;

  /// [operator_]
  /// The operator type defines the conditional behavior of the assert. If
  /// not defined, the default is equals.
  final AssertionOperatorType? operator_;

  /// [path]
  /// The XPath or JSONPath expression to be evaluated against the fixture
  /// representing the response received from server.
  final FhirString? path;

  /// [requestMethod]
  /// The request method or HTTP operation code to compare against that used
  /// by the client system under test.
  final TestScriptRequestMethodCode? requestMethod;

  /// [requestURL]
  /// The value to use in a comparison against the request URL path string.
  final FhirString? requestURL;

  /// [resource]
  /// The type of the resource. See http://build.fhir.org/resourcelist.html.
  final FhirCode? resource;

  /// [response]
  /// okay | created | noContent | notModified | bad | forbidden | notFound |
  /// methodNotAllowed | conflict | gone | preconditionFailed |
  /// unprocessable.
  final AssertionResponseTypes? response;

  /// [responseCode]
  /// The value of the HTTP response code to be tested.
  final FhirString? responseCode;

  /// [sourceId]
  /// Fixture to evaluate the XPath/JSONPath expression or the headerField
  /// against.
  final FhirId? sourceId;

  /// [validateProfileId]
  /// The ID of the Profile to validate against.
  final FhirId? validateProfileId;

  /// [value]
  /// The value to compare to.
  final FhirString? value;

  /// [warningOnly]
  /// Whether or not the test execution will produce a warning only on error
  /// for this assert.
  final FhirBoolean warningOnly;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (label != null) {
      final fieldJson2 = label!.toJson();
      json['label'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_label'] = fieldJson2['_value'];
      }
    }

    if (description != null) {
      final fieldJson3 = description!.toJson();
      json['description'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_description'] = fieldJson3['_value'];
      }
    }

    if (direction != null) {
      final fieldJson4 = direction!.toJson();
      json['direction'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_direction'] = fieldJson4['_value'];
      }
    }

    if (compareToSourceId != null) {
      final fieldJson5 = compareToSourceId!.toJson();
      json['compareToSourceId'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_compareToSourceId'] = fieldJson5['_value'];
      }
    }

    if (compareToSourceExpression != null) {
      final fieldJson6 = compareToSourceExpression!.toJson();
      json['compareToSourceExpression'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_compareToSourceExpression'] = fieldJson6['_value'];
      }
    }

    if (compareToSourcePath != null) {
      final fieldJson7 = compareToSourcePath!.toJson();
      json['compareToSourcePath'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_compareToSourcePath'] = fieldJson7['_value'];
      }
    }

    if (contentType != null) {
      final fieldJson8 = contentType!.toJson();
      json['contentType'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_contentType'] = fieldJson8['_value'];
      }
    }

    if (expression != null) {
      final fieldJson9 = expression!.toJson();
      json['expression'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_expression'] = fieldJson9['_value'];
      }
    }

    if (headerField != null) {
      final fieldJson10 = headerField!.toJson();
      json['headerField'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_headerField'] = fieldJson10['_value'];
      }
    }

    if (minimumId != null) {
      final fieldJson11 = minimumId!.toJson();
      json['minimumId'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_minimumId'] = fieldJson11['_value'];
      }
    }

    if (navigationLinks != null) {
      final fieldJson12 = navigationLinks!.toJson();
      json['navigationLinks'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_navigationLinks'] = fieldJson12['_value'];
      }
    }

    if (operator_ != null) {
      final fieldJson13 = operator_!.toJson();
      json['operator'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_operator'] = fieldJson13['_value'];
      }
    }

    if (path != null) {
      final fieldJson14 = path!.toJson();
      json['path'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_path'] = fieldJson14['_value'];
      }
    }

    if (requestMethod != null) {
      final fieldJson15 = requestMethod!.toJson();
      json['requestMethod'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_requestMethod'] = fieldJson15['_value'];
      }
    }

    if (requestURL != null) {
      final fieldJson16 = requestURL!.toJson();
      json['requestURL'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_requestURL'] = fieldJson16['_value'];
      }
    }

    if (resource != null) {
      final fieldJson17 = resource!.toJson();
      json['resource'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_resource'] = fieldJson17['_value'];
      }
    }

    if (response != null) {
      final fieldJson18 = response!.toJson();
      json['response'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_response'] = fieldJson18['_value'];
      }
    }

    if (responseCode != null) {
      final fieldJson19 = responseCode!.toJson();
      json['responseCode'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_responseCode'] = fieldJson19['_value'];
      }
    }

    if (sourceId != null) {
      final fieldJson20 = sourceId!.toJson();
      json['sourceId'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_sourceId'] = fieldJson20['_value'];
      }
    }

    if (validateProfileId != null) {
      final fieldJson21 = validateProfileId!.toJson();
      json['validateProfileId'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_validateProfileId'] = fieldJson21['_value'];
      }
    }

    if (value != null) {
      final fieldJson22 = value!.toJson();
      json['value'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_value'] = fieldJson22['_value'];
      }
    }

    final fieldJson23 = warningOnly.toJson();
    json['warningOnly'] = fieldJson23['value'];
    if (fieldJson23['_value'] != null) {
      json['_warningOnly'] = fieldJson23['_value'];
    }

    return json;
  }

  @override
  TestScriptAssert clone() => throw UnimplementedError();
  @override
  TestScriptAssert copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? label,
    FhirString? description,
    AssertionDirectionType? direction,
    FhirString? compareToSourceId,
    FhirString? compareToSourceExpression,
    FhirString? compareToSourcePath,
    FhirCode? contentType,
    FhirString? expression,
    FhirString? headerField,
    FhirString? minimumId,
    FhirBoolean? navigationLinks,
    AssertionOperatorType? operator_,
    FhirString? path,
    TestScriptRequestMethodCode? requestMethod,
    FhirString? requestURL,
    FhirCode? resource,
    AssertionResponseTypes? response,
    FhirString? responseCode,
    FhirId? sourceId,
    FhirId? validateProfileId,
    FhirString? value,
    FhirBoolean? warningOnly,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptAssert(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      label: label ?? this.label,
      description: description ?? this.description,
      direction: direction ?? this.direction,
      compareToSourceId: compareToSourceId ?? this.compareToSourceId,
      compareToSourceExpression:
          compareToSourceExpression ?? this.compareToSourceExpression,
      compareToSourcePath: compareToSourcePath ?? this.compareToSourcePath,
      contentType: contentType ?? this.contentType,
      expression: expression ?? this.expression,
      headerField: headerField ?? this.headerField,
      minimumId: minimumId ?? this.minimumId,
      navigationLinks: navigationLinks ?? this.navigationLinks,
      operator_: operator_ ?? this.operator_,
      path: path ?? this.path,
      requestMethod: requestMethod ?? this.requestMethod,
      requestURL: requestURL ?? this.requestURL,
      resource: resource ?? this.resource,
      response: response ?? this.response,
      responseCode: responseCode ?? this.responseCode,
      sourceId: sourceId ?? this.sourceId,
      validateProfileId: validateProfileId ?? this.validateProfileId,
      value: value ?? this.value,
      warningOnly: warningOnly ?? this.warningOnly,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TestScriptTest]
/// A test in this script.
class TestScriptTest extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptTest]

  TestScriptTest({
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
  factory TestScriptTest.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptTest(
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
            .map<TestScriptAction>(
              (v) => TestScriptAction.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Deserialize [TestScriptTest]
  /// from a [String] or [YamlMap] object
  factory TestScriptTest.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptTest.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptTest.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptTest '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptTest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptTest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptTest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptTest';

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
  final List<TestScriptAction> action;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (name != null) {
      final fieldJson2 = name!.toJson();
      json['name'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_name'] = fieldJson2['_value'];
      }
    }

    if (description != null) {
      final fieldJson3 = description!.toJson();
      json['description'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_description'] = fieldJson3['_value'];
      }
    }

    json['action'] = action.map((e) => e.toJson()).toList();

    return json;
  }

  @override
  TestScriptTest clone() => throw UnimplementedError();
  @override
  TestScriptTest copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? description,
    List<TestScriptAction>? action,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptTest(
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

/// [TestScriptAction1]
/// Action would contain either an operation or an assertion.
class TestScriptAction1 extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptAction1]

  TestScriptAction1({
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
  factory TestScriptAction1.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptAction1(
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
          ? TestScriptOperation.fromJson(
              json['operation'] as Map<String, dynamic>,
            )
          : null,
      assert_: json['assert'] != null
          ? TestScriptAssert.fromJson(
              json['assert'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TestScriptAction1]
  /// from a [String] or [YamlMap] object
  factory TestScriptAction1.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptAction1.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptAction1.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptAction1 '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptAction1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptAction1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptAction1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptAction1';

  /// [operation]
  /// An operation would involve a REST request to a server.
  final TestScriptOperation? operation;

  /// [assert_]
  /// Evaluates the results of previous operations to determine if the server
  /// under test behaves appropriately.
  final TestScriptAssert? assert_;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

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
  TestScriptAction1 clone() => throw UnimplementedError();
  @override
  TestScriptAction1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestScriptOperation? operation,
    TestScriptAssert? assert_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptAction1(
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

/// [TestScriptTeardown]
/// A series of operations required to clean up after all the tests are
/// executed (successfully or otherwise).
class TestScriptTeardown extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptTeardown]

  TestScriptTeardown({
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
  factory TestScriptTeardown.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptTeardown(
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
            .map<TestScriptAction>(
              (v) => TestScriptAction.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Deserialize [TestScriptTeardown]
  /// from a [String] or [YamlMap] object
  factory TestScriptTeardown.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptTeardown.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptTeardown.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptTeardown '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptTeardown]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptTeardown.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptTeardown.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptTeardown';

  /// [action]
  /// The teardown action will only contain an operation.
  final List<TestScriptAction> action;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['action'] = action.map((e) => e.toJson()).toList();

    return json;
  }

  @override
  TestScriptTeardown clone() => throw UnimplementedError();
  @override
  TestScriptTeardown copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<TestScriptAction>? action,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptTeardown(
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

/// [TestScriptAction2]
/// The teardown action will only contain an operation.
class TestScriptAction2 extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptAction2]

  TestScriptAction2({
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
  factory TestScriptAction2.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptAction2(
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
      operation: TestScriptOperation.fromJson(
        json['operation'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [TestScriptAction2]
  /// from a [String] or [YamlMap] object
  factory TestScriptAction2.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? TestScriptAction2.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? TestScriptAction2.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'TestScriptAction2 '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [TestScriptAction2]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptAction2.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptAction2.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TestScriptAction2';

  /// [operation]
  /// An operation would involve a REST request to a server.
  final TestScriptOperation operation;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

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
  TestScriptAction2 clone() => throw UnimplementedError();
  @override
  TestScriptAction2 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestScriptOperation? operation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TestScriptAction2(
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
