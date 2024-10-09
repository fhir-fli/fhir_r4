import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'test_script.g.dart';

/// [TestScript] /// A structured set of tests against a FHIR server or client implementation to
/// determine compliance against the FHIR specification.
@JsonSerializable()
class TestScript extends DomainResource {
  TestScript({
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
    required this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    required this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
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
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.TestScript);
  @override
  String get fhirType => 'TestScript';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this test script when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this test
  /// script is (or will be) published. This URL can be the target of a canonical
  /// reference. It SHALL remain the same when the test script is stored on
  /// different servers.
  @JsonKey(name: 'url')
  final FhirUri url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this test script when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;

  /// [version] /// The identifier that is used to identify this version of the test script
  /// when it is referenced in a specification, model, design or instance. This
  /// is an arbitrary value managed by the test script author and is not expected
  /// to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd)
  /// if a managed version is not available. There is also no expectation that
  /// versions can be placed in a lexicographical sequence.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [name] /// A natural language name identifying the test script. This name should be
  /// usable as an identifier for the module by machine processing applications
  /// such as code generation.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the test script.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [status] /// The status of this test script. Enables tracking the life-cycle of the
  /// content.
  @JsonKey(name: 'status')
  final PublicationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this test script is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be used
  /// for genuine usage.
  @JsonKey(name: 'experimental')
  final FhirBoolean? experimental;
  @JsonKey(name: '_experimental')
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the test script was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the test script changes.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the test script.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the test script from a
  /// consumer's perspective.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate test script instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the test script is intended to be
  /// used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this test script is needed and why it has been designed
  /// as it has.
  @JsonKey(name: 'purpose')
  final FhirMarkdown? purpose;
  @JsonKey(name: '_purpose')
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the test script and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the test script.
  @JsonKey(name: 'copyright')
  final FhirMarkdown? copyright;
  @JsonKey(name: '_copyright')
  final Element? copyrightElement;

  /// [origin] /// An abstract server used in operations within this test script in the origin
  /// element.
  @JsonKey(name: 'origin')
  final List<TestScriptOrigin>? origin;

  /// [destination] /// An abstract server used in operations within this test script in the
  /// destination element.
  @JsonKey(name: 'destination')
  final List<TestScriptDestination>? destination;

  /// [metadata] /// The required capability must exist and are assumed to function correctly on
  /// the FHIR server being tested.
  @JsonKey(name: 'metadata')
  final TestScriptMetadata? metadata;

  /// [fixture] /// Fixture in the test script - by reference (uri). All fixtures are required
  /// for the test script to execute.
  @JsonKey(name: 'fixture')
  final List<TestScriptFixture>? fixture;

  /// [profile] /// Reference to the profile to be used for validation.
  @JsonKey(name: 'profile')
  final List<Reference>? profile;

  /// [variable] /// Variable is set based either on element value in response body or on header
  /// field value in the response headers.
  @JsonKey(name: 'variable')
  final List<TestScriptVariable>? variable;

  /// [setup] /// A series of required setup operations before tests are executed.
  @JsonKey(name: 'setup')
  final TestScriptSetup? setup;

  /// [test] /// A test in this script.
  @JsonKey(name: 'test')
  final List<TestScriptTest>? test;

  /// [teardown] /// A series of operations required to clean up after all the tests are
  /// executed (successfully or otherwise).
  @JsonKey(name: 'teardown')
  final TestScriptTeardown? teardown;
  factory TestScript.fromJson(Map<String, dynamic> json) =>
      _$TestScriptFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptToJson(this);

  @override
  TestScript clone() => throw UnimplementedError();
  @override
  TestScript copyWith({
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
    FhirUri? url,
    Element? urlElement,
    Identifier? identifier,
    FhirString? version,
    Element? versionElement,
    FhirString? name,
    Element? nameElement,
    FhirString? title,
    Element? titleElement,
    PublicationStatus? status,
    Element? statusElement,
    FhirBoolean? experimental,
    Element? experimentalElement,
    FhirDateTime? date,
    Element? dateElement,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    Element? purposeElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      experimental: experimental ?? this.experimental,
      experimentalElement: experimentalElement ?? this.experimentalElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
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

  factory TestScript.fromYaml(dynamic yaml) => yaml is String
      ? TestScript.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScript.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScript cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScript.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScript.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptOrigin] /// An abstract server used in operations within this test script in the origin
/// element.
@JsonSerializable()
class TestScriptOrigin extends BackboneElement {
  TestScriptOrigin({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.index,
    this.indexElement,
    required this.profile,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'TestScriptOrigin';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [index] /// Abstract name given to an origin server in this test script. The name is
  /// provided as a number starting at 1.
  @JsonKey(name: 'index')
  final FhirInteger index;
  @JsonKey(name: '_index')
  final Element? indexElement;

  /// [profile] /// The type of origin profile the test system supports.
  @JsonKey(name: 'profile')
  final TestScriptProfileOriginType profile;
  factory TestScriptOrigin.fromJson(Map<String, dynamic> json) =>
      _$TestScriptOriginFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptOriginToJson(this);

  @override
  TestScriptOrigin clone() => throw UnimplementedError();
  @override
  TestScriptOrigin copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? index,
    Element? indexElement,
    TestScriptProfileOriginType? profile,
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
      indexElement: indexElement ?? this.indexElement,
      profile: profile ?? this.profile,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestScriptOrigin.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptOrigin.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptOrigin.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptOrigin cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptOrigin.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptOrigin.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptDestination] /// An abstract server used in operations within this test script in the
/// destination element.
@JsonSerializable()
class TestScriptDestination extends BackboneElement {
  TestScriptDestination({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.index,
    this.indexElement,
    required this.profile,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'TestScriptDestination';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [index] /// Abstract name given to a destination server in this test script. The name
  /// is provided as a number starting at 1.
  @JsonKey(name: 'index')
  final FhirInteger index;
  @JsonKey(name: '_index')
  final Element? indexElement;

  /// [profile] /// The type of destination profile the test system supports.
  @JsonKey(name: 'profile')
  final TestScriptProfileDestinationType profile;
  factory TestScriptDestination.fromJson(Map<String, dynamic> json) =>
      _$TestScriptDestinationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptDestinationToJson(this);

  @override
  TestScriptDestination clone() => throw UnimplementedError();
  @override
  TestScriptDestination copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? index,
    Element? indexElement,
    TestScriptProfileDestinationType? profile,
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
      indexElement: indexElement ?? this.indexElement,
      profile: profile ?? this.profile,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestScriptDestination.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptDestination.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptDestination.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptDestination cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptDestination.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptDestination.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptMetadata] /// The required capability must exist and are assumed to function correctly on
/// the FHIR server being tested.
@JsonSerializable()
class TestScriptMetadata extends BackboneElement {
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
  @override
  String get fhirType => 'TestScriptMetadata';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [link] /// A link to the FHIR specification that this test is covering.
  @JsonKey(name: 'link')
  final List<TestScriptLink>? link;

  /// [capability] /// Capabilities that must exist and are assumed to function correctly on the
  /// FHIR server being tested.
  @JsonKey(name: 'capability')
  final List<TestScriptCapability> capability;
  factory TestScriptMetadata.fromJson(Map<String, dynamic> json) =>
      _$TestScriptMetadataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptMetadataToJson(this);

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

  factory TestScriptMetadata.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptMetadata.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptMetadata.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptMetadata cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptMetadata.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptMetadata.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptLink] /// A link to the FHIR specification that this test is covering.
@JsonSerializable()
class TestScriptLink extends BackboneElement {
  TestScriptLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.url,
    this.urlElement,
    this.description,
    this.descriptionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'TestScriptLink';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// URL to a particular requirement or feature within the FHIR specification.
  @JsonKey(name: 'url')
  final FhirUri url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [description] /// Short description of the link.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;
  factory TestScriptLink.fromJson(Map<String, dynamic> json) =>
      _$TestScriptLinkFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptLinkToJson(this);

  @override
  TestScriptLink clone() => throw UnimplementedError();
  @override
  TestScriptLink copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    Element? urlElement,
    FhirString? description,
    Element? descriptionElement,
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
      urlElement: urlElement ?? this.urlElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestScriptLink.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptLink.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptLink.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptLink cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptLink.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptLink.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptCapability] /// Capabilities that must exist and are assumed to function correctly on the
/// FHIR server being tested.
@JsonSerializable()
class TestScriptCapability extends BackboneElement {
  TestScriptCapability({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.required_,
    this.requiredElement,
    required this.validated,
    this.validatedElement,
    this.description,
    this.descriptionElement,
    this.origin,
    this.originElement,
    this.destination,
    this.destinationElement,
    this.link,
    this.linkElement,
    required this.capabilities,
    this.capabilitiesElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'TestScriptCapability';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [required_] /// Whether or not the test execution will require the given capabilities of
  /// the server in order for this test script to execute.
  @JsonKey(name: 'required')
  final FhirBoolean required_;
  @JsonKey(name: '_required')
  final Element? requiredElement;

  /// [validated] /// Whether or not the test execution will validate the given capabilities of
  /// the server in order for this test script to execute.
  @JsonKey(name: 'validated')
  final FhirBoolean validated;
  @JsonKey(name: '_validated')
  final Element? validatedElement;

  /// [description] /// Description of the capabilities that this test script is requiring the
  /// server to support.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [origin] /// Which origin server these requirements apply to.
  @JsonKey(name: 'origin')
  final List<FhirInteger>? origin;
  @JsonKey(name: '_origin')
  final List<Element>? originElement;

  /// [destination] /// Which server these requirements apply to.
  @JsonKey(name: 'destination')
  final FhirInteger? destination;
  @JsonKey(name: '_destination')
  final Element? destinationElement;

  /// [link] /// Links to the FHIR specification that describes this interaction and the
  /// resources involved in more detail.
  @JsonKey(name: 'link')
  final List<FhirUri>? link;
  @JsonKey(name: '_link')
  final List<Element>? linkElement;

  /// [capabilities] /// Minimum capabilities required of server for test script to execute
  /// successfully. If server does not meet at a minimum the referenced
  /// capability statement, then all tests in this script are skipped.
  @JsonKey(name: 'capabilities')
  final FhirCanonical capabilities;
  @JsonKey(name: '_capabilities')
  final Element? capabilitiesElement;
  factory TestScriptCapability.fromJson(Map<String, dynamic> json) =>
      _$TestScriptCapabilityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptCapabilityToJson(this);

  @override
  TestScriptCapability clone() => throw UnimplementedError();
  @override
  TestScriptCapability copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? required_,
    Element? requiredElement,
    FhirBoolean? validated,
    Element? validatedElement,
    FhirString? description,
    Element? descriptionElement,
    List<FhirInteger>? origin,
    List<Element>? originElement,
    FhirInteger? destination,
    Element? destinationElement,
    List<FhirUri>? link,
    List<Element>? linkElement,
    FhirCanonical? capabilities,
    Element? capabilitiesElement,
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
      requiredElement: requiredElement ?? this.requiredElement,
      validated: validated ?? this.validated,
      validatedElement: validatedElement ?? this.validatedElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      origin: origin ?? this.origin,
      originElement: originElement ?? this.originElement,
      destination: destination ?? this.destination,
      destinationElement: destinationElement ?? this.destinationElement,
      link: link ?? this.link,
      linkElement: linkElement ?? this.linkElement,
      capabilities: capabilities ?? this.capabilities,
      capabilitiesElement: capabilitiesElement ?? this.capabilitiesElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestScriptCapability.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptCapability.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptCapability.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptCapability cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptCapability.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptCapability.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptFixture] /// Fixture in the test script - by reference (uri). All fixtures are required
/// for the test script to execute.
@JsonSerializable()
class TestScriptFixture extends BackboneElement {
  TestScriptFixture({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.autocreate,
    this.autocreateElement,
    required this.autodelete,
    this.autodeleteElement,
    this.resource,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'TestScriptFixture';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [autocreate] /// Whether or not to implicitly create the fixture during setup. If true, the
  /// fixture is automatically created on each server being tested during setup,
  /// therefore no create operation is required for this fixture in the
  /// TestScript.setup section.
  @JsonKey(name: 'autocreate')
  final FhirBoolean autocreate;
  @JsonKey(name: '_autocreate')
  final Element? autocreateElement;

  /// [autodelete] /// Whether or not to implicitly delete the fixture during teardown. If true,
  /// the fixture is automatically deleted on each server being tested during
  /// teardown, therefore no delete operation is required for this fixture in the
  /// TestScript.teardown section.
  @JsonKey(name: 'autodelete')
  final FhirBoolean autodelete;
  @JsonKey(name: '_autodelete')
  final Element? autodeleteElement;

  /// [resource] /// Reference to the resource (containing the contents of the resource needed
  /// for operations).
  @JsonKey(name: 'resource')
  final Reference? resource;
  factory TestScriptFixture.fromJson(Map<String, dynamic> json) =>
      _$TestScriptFixtureFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptFixtureToJson(this);

  @override
  TestScriptFixture clone() => throw UnimplementedError();
  @override
  TestScriptFixture copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? autocreate,
    Element? autocreateElement,
    FhirBoolean? autodelete,
    Element? autodeleteElement,
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
      autocreateElement: autocreateElement ?? this.autocreateElement,
      autodelete: autodelete ?? this.autodelete,
      autodeleteElement: autodeleteElement ?? this.autodeleteElement,
      resource: resource ?? this.resource,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestScriptFixture.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptFixture.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptFixture.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptFixture cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptFixture.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptFixture.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptVariable] /// Variable is set based either on element value in response body or on header
/// field value in the response headers.
@JsonSerializable()
class TestScriptVariable extends BackboneElement {
  TestScriptVariable({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.defaultValue,
    this.defaultValueElement,
    this.description,
    this.descriptionElement,
    this.expression,
    this.expressionElement,
    this.headerField,
    this.headerFieldElement,
    this.hint,
    this.hintElement,
    this.path,
    this.pathElement,
    this.sourceId,
    this.sourceIdElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'TestScriptVariable';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Descriptive name for this variable.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [defaultValue] /// A default, hard-coded, or user-defined value for this variable.
  @JsonKey(name: 'defaultValue')
  final FhirString? defaultValue;
  @JsonKey(name: '_defaultValue')
  final Element? defaultValueElement;

  /// [description] /// A free text natural language description of the variable and its purpose.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [expression] /// The FHIRPath expression to evaluate against the fixture body. When
  /// variables are defined, only one of either expression, headerField or path
  /// must be specified.
  @JsonKey(name: 'expression')
  final FhirString? expression;
  @JsonKey(name: '_expression')
  final Element? expressionElement;

  /// [headerField] /// Will be used to grab the HTTP header field value from the headers that
  /// sourceId is pointing to.
  @JsonKey(name: 'headerField')
  final FhirString? headerField;
  @JsonKey(name: '_headerField')
  final Element? headerFieldElement;

  /// [hint] /// Displayable text string with hint help information to the user when
  /// entering a default value.
  @JsonKey(name: 'hint')
  final FhirString? hint;
  @JsonKey(name: '_hint')
  final Element? hintElement;

  /// [path] /// XPath or JSONPath to evaluate against the fixture body. When variables are
  /// defined, only one of either expression, headerField or path must be
  /// specified.
  @JsonKey(name: 'path')
  final FhirString? path;
  @JsonKey(name: '_path')
  final Element? pathElement;

  /// [sourceId] /// Fixture to evaluate the XPath/JSONPath expression or the headerField
  /// against within this variable.
  @JsonKey(name: 'sourceId')
  final FhirId? sourceId;
  @JsonKey(name: '_sourceId')
  final Element? sourceIdElement;
  factory TestScriptVariable.fromJson(Map<String, dynamic> json) =>
      _$TestScriptVariableFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptVariableToJson(this);

  @override
  TestScriptVariable clone() => throw UnimplementedError();
  @override
  TestScriptVariable copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? defaultValue,
    Element? defaultValueElement,
    FhirString? description,
    Element? descriptionElement,
    FhirString? expression,
    Element? expressionElement,
    FhirString? headerField,
    Element? headerFieldElement,
    FhirString? hint,
    Element? hintElement,
    FhirString? path,
    Element? pathElement,
    FhirId? sourceId,
    Element? sourceIdElement,
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
      nameElement: nameElement ?? this.nameElement,
      defaultValue: defaultValue ?? this.defaultValue,
      defaultValueElement: defaultValueElement ?? this.defaultValueElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      expression: expression ?? this.expression,
      expressionElement: expressionElement ?? this.expressionElement,
      headerField: headerField ?? this.headerField,
      headerFieldElement: headerFieldElement ?? this.headerFieldElement,
      hint: hint ?? this.hint,
      hintElement: hintElement ?? this.hintElement,
      path: path ?? this.path,
      pathElement: pathElement ?? this.pathElement,
      sourceId: sourceId ?? this.sourceId,
      sourceIdElement: sourceIdElement ?? this.sourceIdElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestScriptVariable.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptVariable.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptVariable.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptVariable cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptVariable.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptVariable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptSetup] /// A series of required setup operations before tests are executed.
@JsonSerializable()
class TestScriptSetup extends BackboneElement {
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
  @override
  String get fhirType => 'TestScriptSetup';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [action] /// Action would contain either an operation or an assertion.
  @JsonKey(name: 'action')
  final List<TestScriptAction> action;
  factory TestScriptSetup.fromJson(Map<String, dynamic> json) =>
      _$TestScriptSetupFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptSetupToJson(this);

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

  factory TestScriptSetup.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptSetup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptSetup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptSetup cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptSetup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptSetup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptAction] /// Action would contain either an operation or an assertion.
@JsonSerializable()
class TestScriptAction extends BackboneElement {
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
  @override
  String get fhirType => 'TestScriptAction';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [operation] /// The operation to perform.
  @JsonKey(name: 'operation')
  final TestScriptOperation? operation;

  /// [assert_] /// Evaluates the results of previous operations to determine if the server
  /// under test behaves appropriately.
  @JsonKey(name: 'assert')
  final TestScriptAssert? assert_;
  factory TestScriptAction.fromJson(Map<String, dynamic> json) =>
      _$TestScriptActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptActionToJson(this);

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

  factory TestScriptAction.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptAction cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptOperation] /// The operation to perform.
@JsonSerializable()
class TestScriptOperation extends BackboneElement {
  TestScriptOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.resource,
    this.resourceElement,
    this.label,
    this.labelElement,
    this.description,
    this.descriptionElement,
    this.accept,
    this.acceptElement,
    this.contentType,
    this.contentTypeElement,
    this.destination,
    this.destinationElement,
    required this.encodeRequestUrl,
    this.encodeRequestUrlElement,
    this.method,
    this.methodElement,
    this.origin,
    this.originElement,
    this.params,
    this.paramsElement,
    this.requestHeader,
    this.requestId,
    this.requestIdElement,
    this.responseId,
    this.responseIdElement,
    this.sourceId,
    this.sourceIdElement,
    this.targetId,
    this.targetIdElement,
    this.url,
    this.urlElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'TestScriptOperation';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Server interaction or operation type.
  @JsonKey(name: 'type')
  final TestScriptOperationCode? type;

  /// [resource] /// The type of the resource. See http://build.fhir.org/resourcelist.html.
  @JsonKey(name: 'resource')
  final FHIRDefinedType? resource;
  @JsonKey(name: '_resource')
  final Element? resourceElement;

  /// [label] /// The label would be used for tracking/logging purposes by test engines.
  @JsonKey(name: 'label')
  final FhirString? label;
  @JsonKey(name: '_label')
  final Element? labelElement;

  /// [description] /// The description would be used by test engines for tracking and reporting
  /// purposes.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [accept] /// The mime-type to use for RESTful operation in the 'Accept' header.
  @JsonKey(name: 'accept')
  final FhirCode? accept;
  @JsonKey(name: '_accept')
  final Element? acceptElement;

  /// [contentType] /// The mime-type to use for RESTful operation in the 'Content-Type' header.
  @JsonKey(name: 'contentType')
  final FhirCode? contentType;
  @JsonKey(name: '_contentType')
  final Element? contentTypeElement;

  /// [destination] /// The server where the request message is destined for. Must be one of the
  /// server numbers listed in TestScript.destination section.
  @JsonKey(name: 'destination')
  final FhirInteger? destination;
  @JsonKey(name: '_destination')
  final Element? destinationElement;

  /// [encodeRequestUrl] /// Whether or not to implicitly send the request url in encoded format. The
  /// default is true to match the standard RESTful client behavior. Set to false
  /// when communicating with a server that does not support encoded url paths.
  @JsonKey(name: 'encodeRequestUrl')
  final FhirBoolean encodeRequestUrl;
  @JsonKey(name: '_encodeRequestUrl')
  final Element? encodeRequestUrlElement;

  /// [method] /// The HTTP method the test engine MUST use for this operation regardless of
  /// any other operation details.
  @JsonKey(name: 'method')
  final TestScriptRequestMethodCode? method;
  @JsonKey(name: '_method')
  final Element? methodElement;

  /// [origin] /// The server where the request message originates from. Must be one of the
  /// server numbers listed in TestScript.origin section.
  @JsonKey(name: 'origin')
  final FhirInteger? origin;
  @JsonKey(name: '_origin')
  final Element? originElement;

  /// [params] /// Path plus parameters after [type]. Used to set parts of the request URL
  /// explicitly.
  @JsonKey(name: 'params')
  final FhirString? params;
  @JsonKey(name: '_params')
  final Element? paramsElement;

  /// [requestHeader] /// Header elements would be used to set HTTP headers.
  @JsonKey(name: 'requestHeader')
  final List<TestScriptRequestHeader>? requestHeader;

  /// [requestId] /// The fixture id (maybe new) to map to the request.
  @JsonKey(name: 'requestId')
  final FhirId? requestId;
  @JsonKey(name: '_requestId')
  final Element? requestIdElement;

  /// [responseId] /// The fixture id (maybe new) to map to the response.
  @JsonKey(name: 'responseId')
  final FhirId? responseId;
  @JsonKey(name: '_responseId')
  final Element? responseIdElement;

  /// [sourceId] /// The id of the fixture used as the body of a PUT or POST request.
  @JsonKey(name: 'sourceId')
  final FhirId? sourceId;
  @JsonKey(name: '_sourceId')
  final Element? sourceIdElement;

  /// [targetId] /// Id of fixture used for extracting the [id], [type], and [vid] for GET
  /// requests.
  @JsonKey(name: 'targetId')
  final FhirId? targetId;
  @JsonKey(name: '_targetId')
  final Element? targetIdElement;

  /// [url] /// Complete request URL.
  @JsonKey(name: 'url')
  final FhirString? url;
  @JsonKey(name: '_url')
  final Element? urlElement;
  factory TestScriptOperation.fromJson(Map<String, dynamic> json) =>
      _$TestScriptOperationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptOperationToJson(this);

  @override
  TestScriptOperation clone() => throw UnimplementedError();
  @override
  TestScriptOperation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestScriptOperationCode? type,
    FHIRDefinedType? resource,
    Element? resourceElement,
    FhirString? label,
    Element? labelElement,
    FhirString? description,
    Element? descriptionElement,
    FhirCode? accept,
    Element? acceptElement,
    FhirCode? contentType,
    Element? contentTypeElement,
    FhirInteger? destination,
    Element? destinationElement,
    FhirBoolean? encodeRequestUrl,
    Element? encodeRequestUrlElement,
    TestScriptRequestMethodCode? method,
    Element? methodElement,
    FhirInteger? origin,
    Element? originElement,
    FhirString? params,
    Element? paramsElement,
    List<TestScriptRequestHeader>? requestHeader,
    FhirId? requestId,
    Element? requestIdElement,
    FhirId? responseId,
    Element? responseIdElement,
    FhirId? sourceId,
    Element? sourceIdElement,
    FhirId? targetId,
    Element? targetIdElement,
    FhirString? url,
    Element? urlElement,
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
      resourceElement: resourceElement ?? this.resourceElement,
      label: label ?? this.label,
      labelElement: labelElement ?? this.labelElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      accept: accept ?? this.accept,
      acceptElement: acceptElement ?? this.acceptElement,
      contentType: contentType ?? this.contentType,
      contentTypeElement: contentTypeElement ?? this.contentTypeElement,
      destination: destination ?? this.destination,
      destinationElement: destinationElement ?? this.destinationElement,
      encodeRequestUrl: encodeRequestUrl ?? this.encodeRequestUrl,
      encodeRequestUrlElement:
          encodeRequestUrlElement ?? this.encodeRequestUrlElement,
      method: method ?? this.method,
      methodElement: methodElement ?? this.methodElement,
      origin: origin ?? this.origin,
      originElement: originElement ?? this.originElement,
      params: params ?? this.params,
      paramsElement: paramsElement ?? this.paramsElement,
      requestHeader: requestHeader ?? this.requestHeader,
      requestId: requestId ?? this.requestId,
      requestIdElement: requestIdElement ?? this.requestIdElement,
      responseId: responseId ?? this.responseId,
      responseIdElement: responseIdElement ?? this.responseIdElement,
      sourceId: sourceId ?? this.sourceId,
      sourceIdElement: sourceIdElement ?? this.sourceIdElement,
      targetId: targetId ?? this.targetId,
      targetIdElement: targetIdElement ?? this.targetIdElement,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestScriptOperation.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptOperation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptRequestHeader] /// Header elements would be used to set HTTP headers.
@JsonSerializable()
class TestScriptRequestHeader extends BackboneElement {
  TestScriptRequestHeader({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.field,
    this.fieldElement,
    required this.value,
    this.valueElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'TestScriptRequestHeader';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [field] /// The HTTP header field e.g. "Accept".
  @JsonKey(name: 'field')
  final FhirString field;
  @JsonKey(name: '_field')
  final Element? fieldElement;

  /// [value] /// The value of the header e.g. "application/fhir+xml".
  @JsonKey(name: 'value')
  final FhirString value;
  @JsonKey(name: '_value')
  final Element? valueElement;
  factory TestScriptRequestHeader.fromJson(Map<String, dynamic> json) =>
      _$TestScriptRequestHeaderFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptRequestHeaderToJson(this);

  @override
  TestScriptRequestHeader clone() => throw UnimplementedError();
  @override
  TestScriptRequestHeader copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? field,
    Element? fieldElement,
    FhirString? value,
    Element? valueElement,
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
      fieldElement: fieldElement ?? this.fieldElement,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestScriptRequestHeader.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptRequestHeader.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptRequestHeader.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptRequestHeader cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptRequestHeader.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptRequestHeader.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptAssert] /// Evaluates the results of previous operations to determine if the server
/// under test behaves appropriately.
@JsonSerializable()
class TestScriptAssert extends BackboneElement {
  TestScriptAssert({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.label,
    this.labelElement,
    this.description,
    this.descriptionElement,
    this.direction,
    this.directionElement,
    this.compareToSourceId,
    this.compareToSourceIdElement,
    this.compareToSourceExpression,
    this.compareToSourceExpressionElement,
    this.compareToSourcePath,
    this.compareToSourcePathElement,
    this.contentType,
    this.contentTypeElement,
    this.expression,
    this.expressionElement,
    this.headerField,
    this.headerFieldElement,
    this.minimumId,
    this.minimumIdElement,
    this.navigationLinks,
    this.navigationLinksElement,
    this.operator_,
    this.operatorElement,
    this.path,
    this.pathElement,
    this.requestMethod,
    this.requestMethodElement,
    this.requestURL,
    this.requestURLElement,
    this.resource,
    this.resourceElement,
    this.response,
    this.responseElement,
    this.responseCode,
    this.responseCodeElement,
    this.sourceId,
    this.sourceIdElement,
    this.validateProfileId,
    this.validateProfileIdElement,
    this.value,
    this.valueElement,
    required this.warningOnly,
    this.warningOnlyElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'TestScriptAssert';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [label] /// The label would be used for tracking/logging purposes by test engines.
  @JsonKey(name: 'label')
  final FhirString? label;
  @JsonKey(name: '_label')
  final Element? labelElement;

  /// [description] /// The description would be used by test engines for tracking and reporting
  /// purposes.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [direction] /// The direction to use for the assertion.
  @JsonKey(name: 'direction')
  final AssertionDirectionType? direction;
  @JsonKey(name: '_direction')
  final Element? directionElement;

  /// [compareToSourceId] /// Id of the source fixture used as the contents to be evaluated by either the
  /// "source/expression" or "sourceId/path" definition.
  @JsonKey(name: 'compareToSourceId')
  final FhirString? compareToSourceId;
  @JsonKey(name: '_compareToSourceId')
  final Element? compareToSourceIdElement;

  /// [compareToSourceExpression] /// The FHIRPath expression to evaluate against the source fixture. When
  /// compareToSourceId is defined, either compareToSourceExpression or
  /// compareToSourcePath must be defined, but not both.
  @JsonKey(name: 'compareToSourceExpression')
  final FhirString? compareToSourceExpression;
  @JsonKey(name: '_compareToSourceExpression')
  final Element? compareToSourceExpressionElement;

  /// [compareToSourcePath] /// XPath or JSONPath expression to evaluate against the source fixture. When
  /// compareToSourceId is defined, either compareToSourceExpression or
  /// compareToSourcePath must be defined, but not both.
  @JsonKey(name: 'compareToSourcePath')
  final FhirString? compareToSourcePath;
  @JsonKey(name: '_compareToSourcePath')
  final Element? compareToSourcePathElement;

  /// [contentType] /// The mime-type contents to compare against the request or response message
  /// 'Content-Type' header.
  @JsonKey(name: 'contentType')
  final FhirCode? contentType;
  @JsonKey(name: '_contentType')
  final Element? contentTypeElement;

  /// [expression] /// The FHIRPath expression to be evaluated against the request or response
  /// message contents - HTTP headers and payload.
  @JsonKey(name: 'expression')
  final FhirString? expression;
  @JsonKey(name: '_expression')
  final Element? expressionElement;

  /// [headerField] /// The HTTP header field name e.g. 'Location'.
  @JsonKey(name: 'headerField')
  final FhirString? headerField;
  @JsonKey(name: '_headerField')
  final Element? headerFieldElement;

  /// [minimumId] /// The ID of a fixture. Asserts that the response contains at a minimum the
  /// fixture specified by minimumId.
  @JsonKey(name: 'minimumId')
  final FhirString? minimumId;
  @JsonKey(name: '_minimumId')
  final Element? minimumIdElement;

  /// [navigationLinks] /// Whether or not the test execution performs validation on the bundle
  /// navigation links.
  @JsonKey(name: 'navigationLinks')
  final FhirBoolean? navigationLinks;
  @JsonKey(name: '_navigationLinks')
  final Element? navigationLinksElement;

  /// [operator_] /// The operator type defines the conditional behavior of the assert. If not
  /// defined, the default is equals.
  @JsonKey(name: 'operator')
  final AssertionOperatorType? operator_;
  @JsonKey(name: '_operator')
  final Element? operatorElement;

  /// [path] /// The XPath or JSONPath expression to be evaluated against the fixture
  /// representing the response received from server.
  @JsonKey(name: 'path')
  final FhirString? path;
  @JsonKey(name: '_path')
  final Element? pathElement;

  /// [requestMethod] /// The request method or HTTP operation code to compare against that used by
  /// the client system under test.
  @JsonKey(name: 'requestMethod')
  final TestScriptRequestMethodCode? requestMethod;
  @JsonKey(name: '_requestMethod')
  final Element? requestMethodElement;

  /// [requestURL] /// The value to use in a comparison against the request URL path string.
  @JsonKey(name: 'requestURL')
  final FhirString? requestURL;
  @JsonKey(name: '_requestURL')
  final Element? requestURLElement;

  /// [resource] /// The type of the resource. See http://build.fhir.org/resourcelist.html.
  @JsonKey(name: 'resource')
  final FHIRDefinedType? resource;
  @JsonKey(name: '_resource')
  final Element? resourceElement;

  /// [response] /// okay | created | noContent | notModified | bad | forbidden | notFound |
  /// methodNotAllowed | conflict | gone | preconditionFailed | unprocessable.
  @JsonKey(name: 'response')
  final AssertionResponseTypes? response;
  @JsonKey(name: '_response')
  final Element? responseElement;

  /// [responseCode] /// The value of the HTTP response code to be tested.
  @JsonKey(name: 'responseCode')
  final FhirString? responseCode;
  @JsonKey(name: '_responseCode')
  final Element? responseCodeElement;

  /// [sourceId] /// Fixture to evaluate the XPath/JSONPath expression or the headerField
  /// against.
  @JsonKey(name: 'sourceId')
  final FhirId? sourceId;
  @JsonKey(name: '_sourceId')
  final Element? sourceIdElement;

  /// [validateProfileId] /// The ID of the Profile to validate against.
  @JsonKey(name: 'validateProfileId')
  final FhirId? validateProfileId;
  @JsonKey(name: '_validateProfileId')
  final Element? validateProfileIdElement;

  /// [value] /// The value to compare to.
  @JsonKey(name: 'value')
  final FhirString? value;
  @JsonKey(name: '_value')
  final Element? valueElement;

  /// [warningOnly] /// Whether or not the test execution will produce a warning only on error for
  /// this assert.
  @JsonKey(name: 'warningOnly')
  final FhirBoolean warningOnly;
  @JsonKey(name: '_warningOnly')
  final Element? warningOnlyElement;
  factory TestScriptAssert.fromJson(Map<String, dynamic> json) =>
      _$TestScriptAssertFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptAssertToJson(this);

  @override
  TestScriptAssert clone() => throw UnimplementedError();
  @override
  TestScriptAssert copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? label,
    Element? labelElement,
    FhirString? description,
    Element? descriptionElement,
    AssertionDirectionType? direction,
    Element? directionElement,
    FhirString? compareToSourceId,
    Element? compareToSourceIdElement,
    FhirString? compareToSourceExpression,
    Element? compareToSourceExpressionElement,
    FhirString? compareToSourcePath,
    Element? compareToSourcePathElement,
    FhirCode? contentType,
    Element? contentTypeElement,
    FhirString? expression,
    Element? expressionElement,
    FhirString? headerField,
    Element? headerFieldElement,
    FhirString? minimumId,
    Element? minimumIdElement,
    FhirBoolean? navigationLinks,
    Element? navigationLinksElement,
    AssertionOperatorType? operator_,
    Element? operatorElement,
    FhirString? path,
    Element? pathElement,
    TestScriptRequestMethodCode? requestMethod,
    Element? requestMethodElement,
    FhirString? requestURL,
    Element? requestURLElement,
    FHIRDefinedType? resource,
    Element? resourceElement,
    AssertionResponseTypes? response,
    Element? responseElement,
    FhirString? responseCode,
    Element? responseCodeElement,
    FhirId? sourceId,
    Element? sourceIdElement,
    FhirId? validateProfileId,
    Element? validateProfileIdElement,
    FhirString? value,
    Element? valueElement,
    FhirBoolean? warningOnly,
    Element? warningOnlyElement,
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
      labelElement: labelElement ?? this.labelElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      direction: direction ?? this.direction,
      directionElement: directionElement ?? this.directionElement,
      compareToSourceId: compareToSourceId ?? this.compareToSourceId,
      compareToSourceIdElement:
          compareToSourceIdElement ?? this.compareToSourceIdElement,
      compareToSourceExpression:
          compareToSourceExpression ?? this.compareToSourceExpression,
      compareToSourceExpressionElement: compareToSourceExpressionElement ??
          this.compareToSourceExpressionElement,
      compareToSourcePath: compareToSourcePath ?? this.compareToSourcePath,
      compareToSourcePathElement:
          compareToSourcePathElement ?? this.compareToSourcePathElement,
      contentType: contentType ?? this.contentType,
      contentTypeElement: contentTypeElement ?? this.contentTypeElement,
      expression: expression ?? this.expression,
      expressionElement: expressionElement ?? this.expressionElement,
      headerField: headerField ?? this.headerField,
      headerFieldElement: headerFieldElement ?? this.headerFieldElement,
      minimumId: minimumId ?? this.minimumId,
      minimumIdElement: minimumIdElement ?? this.minimumIdElement,
      navigationLinks: navigationLinks ?? this.navigationLinks,
      navigationLinksElement:
          navigationLinksElement ?? this.navigationLinksElement,
      operator_: operator_ ?? this.operator_,
      operatorElement: operatorElement ?? this.operatorElement,
      path: path ?? this.path,
      pathElement: pathElement ?? this.pathElement,
      requestMethod: requestMethod ?? this.requestMethod,
      requestMethodElement: requestMethodElement ?? this.requestMethodElement,
      requestURL: requestURL ?? this.requestURL,
      requestURLElement: requestURLElement ?? this.requestURLElement,
      resource: resource ?? this.resource,
      resourceElement: resourceElement ?? this.resourceElement,
      response: response ?? this.response,
      responseElement: responseElement ?? this.responseElement,
      responseCode: responseCode ?? this.responseCode,
      responseCodeElement: responseCodeElement ?? this.responseCodeElement,
      sourceId: sourceId ?? this.sourceId,
      sourceIdElement: sourceIdElement ?? this.sourceIdElement,
      validateProfileId: validateProfileId ?? this.validateProfileId,
      validateProfileIdElement:
          validateProfileIdElement ?? this.validateProfileIdElement,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      warningOnly: warningOnly ?? this.warningOnly,
      warningOnlyElement: warningOnlyElement ?? this.warningOnlyElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TestScriptAssert.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptAssert.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptAssert.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptAssert cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptAssert.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptAssert.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptTest] /// A test in this script.
@JsonSerializable()
class TestScriptTest extends BackboneElement {
  TestScriptTest({
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
  String get fhirType => 'TestScriptTest';
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
  final List<TestScriptAction> action;
  factory TestScriptTest.fromJson(Map<String, dynamic> json) =>
      _$TestScriptTestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptTestToJson(this);

  @override
  TestScriptTest clone() => throw UnimplementedError();
  @override
  TestScriptTest copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? description,
    Element? descriptionElement,
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

  factory TestScriptTest.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptTest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptTest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptTest cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptTest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptTest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptAction1] /// Action would contain either an operation or an assertion.
@JsonSerializable()
class TestScriptAction1 extends BackboneElement {
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
  @override
  String get fhirType => 'TestScriptAction1';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [operation] /// An operation would involve a REST request to a server.
  @JsonKey(name: 'operation')
  final TestScriptOperation? operation;

  /// [assert_] /// Evaluates the results of previous operations to determine if the server
  /// under test behaves appropriately.
  @JsonKey(name: 'assert')
  final TestScriptAssert? assert_;
  factory TestScriptAction1.fromJson(Map<String, dynamic> json) =>
      _$TestScriptAction1FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptAction1ToJson(this);

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

  factory TestScriptAction1.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptAction1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptAction1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptAction1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptAction1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptAction1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptTeardown] /// A series of operations required to clean up after all the tests are
/// executed (successfully or otherwise).
@JsonSerializable()
class TestScriptTeardown extends BackboneElement {
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
  @override
  String get fhirType => 'TestScriptTeardown';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [action] /// The teardown action will only contain an operation.
  @JsonKey(name: 'action')
  final List<TestScriptAction> action;
  factory TestScriptTeardown.fromJson(Map<String, dynamic> json) =>
      _$TestScriptTeardownFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptTeardownToJson(this);

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

  factory TestScriptTeardown.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptTeardown.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptTeardown.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptTeardown cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptTeardown.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptTeardown.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TestScriptAction2] /// The teardown action will only contain an operation.
@JsonSerializable()
class TestScriptAction2 extends BackboneElement {
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
  @override
  String get fhirType => 'TestScriptAction2';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [operation] /// An operation would involve a REST request to a server.
  @JsonKey(name: 'operation')
  final TestScriptOperation operation;
  factory TestScriptAction2.fromJson(Map<String, dynamic> json) =>
      _$TestScriptAction2FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TestScriptAction2ToJson(this);

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

  factory TestScriptAction2.fromYaml(dynamic yaml) => yaml is String
      ? TestScriptAction2.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TestScriptAction2.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TestScriptAction2 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TestScriptAction2.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TestScriptAction2.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
