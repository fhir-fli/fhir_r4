import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [TestScript] /// A structured set of tests against a FHIR server or client implementation to
/// determine compliance against the FHIR specification.
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
  }) : super(resourceType: R4ResourceType.TestScript);

  @override
  String get fhirType => 'TestScript';

  @Id()
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this test script when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this test
  /// script is (or will be) published. This URL can be the target of a canonical
  /// reference. It SHALL remain the same when the test script is stored on
  /// different servers.
  final FhirUri url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this test script when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final Identifier? identifier;

  /// [version] /// The identifier that is used to identify this version of the test script
  /// when it is referenced in a specification, model, design or instance. This
  /// is an arbitrary value managed by the test script author and is not expected
  /// to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd)
  /// if a managed version is not available. There is also no expectation that
  /// versions can be placed in a lexicographical sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the test script. This name should be
  /// usable as an identifier for the module by machine processing applications
  /// such as code generation.
  final FhirString name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the test script.
  final FhirString? title;
  final Element? titleElement;

  /// [status] /// The status of this test script. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this test script is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be used
  /// for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the test script was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the test script changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the test script.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the test script from a
  /// consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate test script instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the test script is intended to be
  /// used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this test script is needed and why it has been designed
  /// as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the test script and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the test script.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [origin] /// An abstract server used in operations within this test script in the origin
  /// element.
  final List<TestScriptOrigin>? origin;

  /// [destination] /// An abstract server used in operations within this test script in the
  /// destination element.
  final List<TestScriptDestination>? destination;

  /// [metadata] /// The required capability must exist and are assumed to function correctly on
  /// the FHIR server being tested.
  final TestScriptMetadata? metadata;

  /// [fixture] /// Fixture in the test script - by reference (uri). All fixtures are required
  /// for the test script to execute.
  final List<TestScriptFixture>? fixture;

  /// [profile] /// Reference to the profile to be used for validation.
  final List<Reference>? profile;

  /// [variable] /// Variable is set based either on element value in response body or on header
  /// field value in the response headers.
  final List<TestScriptVariable>? variable;

  /// [setup] /// A series of required setup operations before tests are executed.
  final TestScriptSetup? setup;

  /// [test] /// A test in this script.
  final List<TestScriptTest>? test;

  /// [teardown] /// A series of operations required to clean up after all the tests are
  /// executed (successfully or otherwise).
  final TestScriptTeardown? teardown;
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
      json['implicitRules'] = implicitRules!.value;
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
    json['url'] = url.value;
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    if (version?.value != null) {
      json['version'] = version!.value;
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    json['name'] = name.value;
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.value;
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    json['status'] = status.toJson();
    if (experimental?.value != null) {
      json['experimental'] = experimental!.value;
    }
    if (experimentalElement != null) {
      json['_experimental'] = experimentalElement!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (publisher?.value != null) {
      json['publisher'] = publisher!.value;
    }
    if (publisherElement != null) {
      json['_publisher'] = publisherElement!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] =
          contact!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map<dynamic>((UsageContext v) => v.toJson()).toList();
    }
    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (purpose?.value != null) {
      json['purpose'] = purpose!.value;
    }
    if (purposeElement != null) {
      json['_purpose'] = purposeElement!.toJson();
    }
    if (copyright?.value != null) {
      json['copyright'] = copyright!.value;
    }
    if (copyrightElement != null) {
      json['_copyright'] = copyrightElement!.toJson();
    }
    if (origin != null && origin!.isNotEmpty) {
      json['origin'] =
          origin!.map<dynamic>((TestScriptOrigin v) => v.toJson()).toList();
    }
    if (destination != null && destination!.isNotEmpty) {
      json['destination'] = destination!
          .map<dynamic>((TestScriptDestination v) => v.toJson())
          .toList();
    }
    if (metadata != null) {
      json['metadata'] = metadata!.toJson();
    }
    if (fixture != null && fixture!.isNotEmpty) {
      json['fixture'] =
          fixture!.map<dynamic>((TestScriptFixture v) => v.toJson()).toList();
    }
    if (profile != null && profile!.isNotEmpty) {
      json['profile'] =
          profile!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (variable != null && variable!.isNotEmpty) {
      json['variable'] =
          variable!.map<dynamic>((TestScriptVariable v) => v.toJson()).toList();
    }
    if (setup != null) {
      json['setup'] = setup!.toJson();
    }
    if (test != null && test!.isNotEmpty) {
      json['test'] =
          test!.map<dynamic>((TestScriptTest v) => v.toJson()).toList();
    }
    if (teardown != null) {
      json['teardown'] = teardown!.toJson();
    }
    return json;
  }

  factory TestScript.fromJson(Map<String, dynamic> json) {
    return TestScript(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
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
      url: FhirUri(json['url']),
      urlElement: Element.fromJson(json['_url'] as Map<String, dynamic>),
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
      version: json['version'] != null ? FhirString(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
      name: FhirString(json['name']),
      nameElement: Element.fromJson(json['_name'] as Map<String, dynamic>),
      title: json['title'] != null ? FhirString(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      status:
          PublicationStatus.fromJson(json['status'] as Map<String, dynamic>),
      experimental: json['experimental'] != null
          ? FhirBoolean(json['experimental'])
          : null,
      experimentalElement: json['_experimental'] != null
          ? Element.fromJson(json['_experimental'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirDateTime(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      publisher:
          json['publisher'] != null ? FhirString(json['publisher']) : null,
      publisherElement: json['_publisher'] != null
          ? Element.fromJson(json['_publisher'] as Map<String, dynamic>)
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>((dynamic v) =>
                  UsageContext.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      purpose: json['purpose'] != null ? FhirMarkdown(json['purpose']) : null,
      purposeElement: json['_purpose'] != null
          ? Element.fromJson(json['_purpose'] as Map<String, dynamic>)
          : null,
      copyright:
          json['copyright'] != null ? FhirMarkdown(json['copyright']) : null,
      copyrightElement: json['_copyright'] != null
          ? Element.fromJson(json['_copyright'] as Map<String, dynamic>)
          : null,
      origin: json['origin'] != null
          ? (json['origin'] as List<dynamic>)
              .map<TestScriptOrigin>((dynamic v) =>
                  TestScriptOrigin.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      destination: json['destination'] != null
          ? (json['destination'] as List<dynamic>)
              .map<TestScriptDestination>((dynamic v) =>
                  TestScriptDestination.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      metadata: json['metadata'] != null
          ? TestScriptMetadata.fromJson(
              json['metadata'] as Map<String, dynamic>)
          : null,
      fixture: json['fixture'] != null
          ? (json['fixture'] as List<dynamic>)
              .map<TestScriptFixture>((dynamic v) =>
                  TestScriptFixture.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      profile: json['profile'] != null
          ? (json['profile'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      variable: json['variable'] != null
          ? (json['variable'] as List<dynamic>)
              .map<TestScriptVariable>((dynamic v) =>
                  TestScriptVariable.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      setup: json['setup'] != null
          ? TestScriptSetup.fromJson(json['setup'] as Map<String, dynamic>)
          : null,
      test: json['test'] != null
          ? (json['test'] as List<dynamic>)
              .map<TestScriptTest>((dynamic v) =>
                  TestScriptTest.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      teardown: json['teardown'] != null
          ? TestScriptTeardown.fromJson(
              json['teardown'] as Map<String, dynamic>)
          : null,
    );
  }
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
  int dbId = 0;

  /// [index] /// Abstract name given to an origin server in this test script. The name is
  /// provided as a number starting at 1.
  final FhirInteger index;
  final Element? indexElement;

  /// [profile] /// The type of origin profile the test system supports.
  final Coding profile;
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
    json['index'] = index.value;
    if (indexElement != null) {
      json['_index'] = indexElement!.toJson();
    }
    json['profile'] = profile.toJson();
    return json;
  }

  factory TestScriptOrigin.fromJson(Map<String, dynamic> json) {
    return TestScriptOrigin(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      index: FhirInteger(json['index']),
      indexElement: Element.fromJson(json['_index'] as Map<String, dynamic>),
      profile: Coding.fromJson(json['profile'] as Map<String, dynamic>),
    );
  }
  @override
  TestScriptOrigin clone() => throw UnimplementedError();
  @override
  TestScriptOrigin copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? index,
    Element? indexElement,
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
  int dbId = 0;

  /// [index] /// Abstract name given to a destination server in this test script. The name
  /// is provided as a number starting at 1.
  final FhirInteger index;
  final Element? indexElement;

  /// [profile] /// The type of destination profile the test system supports.
  final Coding profile;
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
    json['index'] = index.value;
    if (indexElement != null) {
      json['_index'] = indexElement!.toJson();
    }
    json['profile'] = profile.toJson();
    return json;
  }

  factory TestScriptDestination.fromJson(Map<String, dynamic> json) {
    return TestScriptDestination(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      index: FhirInteger(json['index']),
      indexElement: Element.fromJson(json['_index'] as Map<String, dynamic>),
      profile: Coding.fromJson(json['profile'] as Map<String, dynamic>),
    );
  }
  @override
  TestScriptDestination clone() => throw UnimplementedError();
  @override
  TestScriptDestination copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? index,
    Element? indexElement,
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
  int dbId = 0;

  /// [link] /// A link to the FHIR specification that this test is covering.
  final List<TestScriptLink>? link;

  /// [capability] /// Capabilities that must exist and are assumed to function correctly on the
  /// FHIR server being tested.
  final List<TestScriptCapability> capability;
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
    if (link != null && link!.isNotEmpty) {
      json['link'] =
          link!.map<dynamic>((TestScriptLink v) => v.toJson()).toList();
    }
    json['capability'] = capability
        .map<dynamic>((TestScriptCapability v) => v.toJson())
        .toList();
    return json;
  }

  factory TestScriptMetadata.fromJson(Map<String, dynamic> json) {
    return TestScriptMetadata(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      link: json['link'] != null
          ? (json['link'] as List<dynamic>)
              .map<TestScriptLink>((dynamic v) =>
                  TestScriptLink.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      capability: (json['capability'] as List<dynamic>)
          .map<TestScriptCapability>((dynamic v) =>
              TestScriptCapability.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
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
  int dbId = 0;

  /// [url] /// URL to a particular requirement or feature within the FHIR specification.
  final FhirUri url;
  final Element? urlElement;

  /// [description] /// Short description of the link.
  final FhirString? description;
  final Element? descriptionElement;
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
    json['url'] = url.value;
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    return json;
  }

  factory TestScriptLink.fromJson(Map<String, dynamic> json) {
    return TestScriptLink(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      url: FhirUri(json['url']),
      urlElement: Element.fromJson(json['_url'] as Map<String, dynamic>),
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
    );
  }
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
  int dbId = 0;

  /// [required_] /// Whether or not the test execution will require the given capabilities of
  /// the server in order for this test script to execute.
  final FhirBoolean required_;
  final Element? requiredElement;

  /// [validated] /// Whether or not the test execution will validate the given capabilities of
  /// the server in order for this test script to execute.
  final FhirBoolean validated;
  final Element? validatedElement;

  /// [description] /// Description of the capabilities that this test script is requiring the
  /// server to support.
  final FhirString? description;
  final Element? descriptionElement;

  /// [origin] /// Which origin server these requirements apply to.
  final List<FhirInteger>? origin;
  final List<Element>? originElement;

  /// [destination] /// Which server these requirements apply to.
  final FhirInteger? destination;
  final Element? destinationElement;

  /// [link] /// Links to the FHIR specification that describes this interaction and the
  /// resources involved in more detail.
  final List<FhirUri>? link;
  final List<Element>? linkElement;

  /// [capabilities] /// Minimum capabilities required of server for test script to execute
  /// successfully. If server does not meet at a minimum the referenced
  /// capability statement, then all tests in this script are skipped.
  final FhirCanonical capabilities;
  final Element? capabilitiesElement;
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
    json['required'] = required_.value;
    if (requiredElement != null) {
      json['_required'] = requiredElement!.toJson();
    }
    json['validated'] = validated.value;
    if (validatedElement != null) {
      json['_validated'] = validatedElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (origin != null && origin!.isNotEmpty) {
      json['origin'] = origin!.map((FhirInteger v) => v.value).toList();
    }
    if (originElement != null && originElement!.isNotEmpty) {
      json['_origin'] = originElement!.map((Element v) => v.toJson()).toList();
    }
    if (destination?.value != null) {
      json['destination'] = destination!.value;
    }
    if (destinationElement != null) {
      json['_destination'] = destinationElement!.toJson();
    }
    if (link != null && link!.isNotEmpty) {
      json['link'] = link!.map((FhirUri v) => v.value).toList();
    }
    if (linkElement != null && linkElement!.isNotEmpty) {
      json['_link'] = linkElement!.map((Element v) => v.toJson()).toList();
    }
    json['capabilities'] = capabilities.value;
    if (capabilitiesElement != null) {
      json['_capabilities'] = capabilitiesElement!.toJson();
    }
    return json;
  }

  factory TestScriptCapability.fromJson(Map<String, dynamic> json) {
    return TestScriptCapability(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      required_: FhirBoolean(json['required']),
      requiredElement:
          Element.fromJson(json['_required'] as Map<String, dynamic>),
      validated: FhirBoolean(json['validated']),
      validatedElement:
          Element.fromJson(json['_validated'] as Map<String, dynamic>),
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      origin: json['origin'] != null
          ? (json['origin'] as List<dynamic>)
              .map<FhirInteger>(
                  (dynamic v) => FhirInteger.fromJson(v as dynamic))
              .toList()
          : null,
      originElement: json['_origin'] != null
          ? (json['_origin'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      destination:
          json['destination'] != null ? FhirInteger(json['destination']) : null,
      destinationElement: json['_destination'] != null
          ? Element.fromJson(json['_destination'] as Map<String, dynamic>)
          : null,
      link: json['link'] != null
          ? (json['link'] as List<dynamic>)
              .map<FhirUri>((dynamic v) => FhirUri.fromJson(v as dynamic))
              .toList()
          : null,
      linkElement: json['_link'] != null
          ? (json['_link'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      capabilities: FhirCanonical(json['capabilities']),
      capabilitiesElement:
          Element.fromJson(json['_capabilities'] as Map<String, dynamic>),
    );
  }
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
  int dbId = 0;

  /// [autocreate] /// Whether or not to implicitly create the fixture during setup. If true, the
  /// fixture is automatically created on each server being tested during setup,
  /// therefore no create operation is required for this fixture in the
  /// TestScript.setup section.
  final FhirBoolean autocreate;
  final Element? autocreateElement;

  /// [autodelete] /// Whether or not to implicitly delete the fixture during teardown. If true,
  /// the fixture is automatically deleted on each server being tested during
  /// teardown, therefore no delete operation is required for this fixture in the
  /// TestScript.teardown section.
  final FhirBoolean autodelete;
  final Element? autodeleteElement;

  /// [resource] /// Reference to the resource (containing the contents of the resource needed
  /// for operations).
  final Reference? resource;
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
    json['autocreate'] = autocreate.value;
    if (autocreateElement != null) {
      json['_autocreate'] = autocreateElement!.toJson();
    }
    json['autodelete'] = autodelete.value;
    if (autodeleteElement != null) {
      json['_autodelete'] = autodeleteElement!.toJson();
    }
    if (resource != null) {
      json['resource'] = resource!.toJson();
    }
    return json;
  }

  factory TestScriptFixture.fromJson(Map<String, dynamic> json) {
    return TestScriptFixture(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      autocreate: FhirBoolean(json['autocreate']),
      autocreateElement:
          Element.fromJson(json['_autocreate'] as Map<String, dynamic>),
      autodelete: FhirBoolean(json['autodelete']),
      autodeleteElement:
          Element.fromJson(json['_autodelete'] as Map<String, dynamic>),
      resource: json['resource'] != null
          ? Reference.fromJson(json['resource'] as Map<String, dynamic>)
          : null,
    );
  }
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
  int dbId = 0;

  /// [name] /// Descriptive name for this variable.
  final FhirString name;
  final Element? nameElement;

  /// [defaultValue] /// A default, hard-coded, or user-defined value for this variable.
  final FhirString? defaultValue;
  final Element? defaultValueElement;

  /// [description] /// A free text natural language description of the variable and its purpose.
  final FhirString? description;
  final Element? descriptionElement;

  /// [expression] /// The FHIRPath expression to evaluate against the fixture body. When
  /// variables are defined, only one of either expression, headerField or path
  /// must be specified.
  final FhirString? expression;
  final Element? expressionElement;

  /// [headerField] /// Will be used to grab the HTTP header field value from the headers that
  /// sourceId is pointing to.
  final FhirString? headerField;
  final Element? headerFieldElement;

  /// [hint] /// Displayable text string with hint help information to the user when
  /// entering a default value.
  final FhirString? hint;
  final Element? hintElement;

  /// [path] /// XPath or JSONPath to evaluate against the fixture body. When variables are
  /// defined, only one of either expression, headerField or path must be
  /// specified.
  final FhirString? path;
  final Element? pathElement;

  /// [sourceId] /// Fixture to evaluate the XPath/JSONPath expression or the headerField
  /// against within this variable.
  final FhirId? sourceId;
  final Element? sourceIdElement;
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
    json['name'] = name.value;
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (defaultValue?.value != null) {
      json['defaultValue'] = defaultValue!.value;
    }
    if (defaultValueElement != null) {
      json['_defaultValue'] = defaultValueElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (expression?.value != null) {
      json['expression'] = expression!.value;
    }
    if (expressionElement != null) {
      json['_expression'] = expressionElement!.toJson();
    }
    if (headerField?.value != null) {
      json['headerField'] = headerField!.value;
    }
    if (headerFieldElement != null) {
      json['_headerField'] = headerFieldElement!.toJson();
    }
    if (hint?.value != null) {
      json['hint'] = hint!.value;
    }
    if (hintElement != null) {
      json['_hint'] = hintElement!.toJson();
    }
    if (path?.value != null) {
      json['path'] = path!.value;
    }
    if (pathElement != null) {
      json['_path'] = pathElement!.toJson();
    }
    if (sourceId?.value != null) {
      json['sourceId'] = sourceId!.value;
    }
    if (sourceIdElement != null) {
      json['_sourceId'] = sourceIdElement!.toJson();
    }
    return json;
  }

  factory TestScriptVariable.fromJson(Map<String, dynamic> json) {
    return TestScriptVariable(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      name: FhirString(json['name']),
      nameElement: Element.fromJson(json['_name'] as Map<String, dynamic>),
      defaultValue: json['defaultValue'] != null
          ? FhirString(json['defaultValue'])
          : null,
      defaultValueElement: json['_defaultValue'] != null
          ? Element.fromJson(json['_defaultValue'] as Map<String, dynamic>)
          : null,
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      expression:
          json['expression'] != null ? FhirString(json['expression']) : null,
      expressionElement: json['_expression'] != null
          ? Element.fromJson(json['_expression'] as Map<String, dynamic>)
          : null,
      headerField:
          json['headerField'] != null ? FhirString(json['headerField']) : null,
      headerFieldElement: json['_headerField'] != null
          ? Element.fromJson(json['_headerField'] as Map<String, dynamic>)
          : null,
      hint: json['hint'] != null ? FhirString(json['hint']) : null,
      hintElement: json['_hint'] != null
          ? Element.fromJson(json['_hint'] as Map<String, dynamic>)
          : null,
      path: json['path'] != null ? FhirString(json['path']) : null,
      pathElement: json['_path'] != null
          ? Element.fromJson(json['_path'] as Map<String, dynamic>)
          : null,
      sourceId: json['sourceId'] != null ? FhirId(json['sourceId']) : null,
      sourceIdElement: json['_sourceId'] != null
          ? Element.fromJson(json['_sourceId'] as Map<String, dynamic>)
          : null,
    );
  }
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
  int dbId = 0;

  /// [action] /// Action would contain either an operation or an assertion.
  final List<TestScriptAction> action;
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
        action.map<dynamic>((TestScriptAction v) => v.toJson()).toList();
    return json;
  }

  factory TestScriptSetup.fromJson(Map<String, dynamic> json) {
    return TestScriptSetup(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
          .map<TestScriptAction>((dynamic v) =>
              TestScriptAction.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
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
  int dbId = 0;

  /// [operation] /// The operation to perform.
  final TestScriptOperation? operation;

  /// [assert_] /// Evaluates the results of previous operations to determine if the server
  /// under test behaves appropriately.
  final TestScriptAssert? assert_;
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

  factory TestScriptAction.fromJson(Map<String, dynamic> json) {
    return TestScriptAction(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
          ? TestScriptOperation.fromJson(
              json['operation'] as Map<String, dynamic>)
          : null,
      assert_: json['assert'] != null
          ? TestScriptAssert.fromJson(json['assert'] as Map<String, dynamic>)
          : null,
    );
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
  int dbId = 0;

  /// [type] /// Server interaction or operation type.
  final Coding? type;

  /// [resource] /// The type of the resource. See http://build.fhir.org/resourcelist.html.
  final FHIRDefinedType? resource;
  final Element? resourceElement;

  /// [label] /// The label would be used for tracking/logging purposes by test engines.
  final FhirString? label;
  final Element? labelElement;

  /// [description] /// The description would be used by test engines for tracking and reporting
  /// purposes.
  final FhirString? description;
  final Element? descriptionElement;

  /// [accept] /// The mime-type to use for RESTful operation in the 'Accept' header.
  final FhirCode? accept;
  final Element? acceptElement;

  /// [contentType] /// The mime-type to use for RESTful operation in the 'Content-Type' header.
  final FhirCode? contentType;
  final Element? contentTypeElement;

  /// [destination] /// The server where the request message is destined for. Must be one of the
  /// server numbers listed in TestScript.destination section.
  final FhirInteger? destination;
  final Element? destinationElement;

  /// [encodeRequestUrl] /// Whether or not to implicitly send the request url in encoded format. The
  /// default is true to match the standard RESTful client behavior. Set to false
  /// when communicating with a server that does not support encoded url paths.
  final FhirBoolean encodeRequestUrl;
  final Element? encodeRequestUrlElement;

  /// [method] /// The HTTP method the test engine MUST use for this operation regardless of
  /// any other operation details.
  final TestScriptRequestMethodCode? method;
  final Element? methodElement;

  /// [origin] /// The server where the request message originates from. Must be one of the
  /// server numbers listed in TestScript.origin section.
  final FhirInteger? origin;
  final Element? originElement;

  /// [params] /// Path plus parameters after [type]. Used to set parts of the request URL
  /// explicitly.
  final FhirString? params;
  final Element? paramsElement;

  /// [requestHeader] /// Header elements would be used to set HTTP headers.
  final List<TestScriptRequestHeader>? requestHeader;

  /// [requestId] /// The fixture id (maybe new) to map to the request.
  final FhirId? requestId;
  final Element? requestIdElement;

  /// [responseId] /// The fixture id (maybe new) to map to the response.
  final FhirId? responseId;
  final Element? responseIdElement;

  /// [sourceId] /// The id of the fixture used as the body of a PUT or POST request.
  final FhirId? sourceId;
  final Element? sourceIdElement;

  /// [targetId] /// Id of fixture used for extracting the [id], [type], and [vid] for GET
  /// requests.
  final FhirId? targetId;
  final Element? targetIdElement;

  /// [url] /// Complete request URL.
  final FhirString? url;
  final Element? urlElement;
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
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (resource != null) {
      json['resource'] = resource!.toJson();
    }
    if (label?.value != null) {
      json['label'] = label!.value;
    }
    if (labelElement != null) {
      json['_label'] = labelElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (accept?.value != null) {
      json['accept'] = accept!.value;
    }
    if (acceptElement != null) {
      json['_accept'] = acceptElement!.toJson();
    }
    if (contentType?.value != null) {
      json['contentType'] = contentType!.value;
    }
    if (contentTypeElement != null) {
      json['_contentType'] = contentTypeElement!.toJson();
    }
    if (destination?.value != null) {
      json['destination'] = destination!.value;
    }
    if (destinationElement != null) {
      json['_destination'] = destinationElement!.toJson();
    }
    json['encodeRequestUrl'] = encodeRequestUrl.value;
    if (encodeRequestUrlElement != null) {
      json['_encodeRequestUrl'] = encodeRequestUrlElement!.toJson();
    }
    if (method != null) {
      json['method'] = method!.toJson();
    }
    if (origin?.value != null) {
      json['origin'] = origin!.value;
    }
    if (originElement != null) {
      json['_origin'] = originElement!.toJson();
    }
    if (params?.value != null) {
      json['params'] = params!.value;
    }
    if (paramsElement != null) {
      json['_params'] = paramsElement!.toJson();
    }
    if (requestHeader != null && requestHeader!.isNotEmpty) {
      json['requestHeader'] = requestHeader!
          .map<dynamic>((TestScriptRequestHeader v) => v.toJson())
          .toList();
    }
    if (requestId?.value != null) {
      json['requestId'] = requestId!.value;
    }
    if (requestIdElement != null) {
      json['_requestId'] = requestIdElement!.toJson();
    }
    if (responseId?.value != null) {
      json['responseId'] = responseId!.value;
    }
    if (responseIdElement != null) {
      json['_responseId'] = responseIdElement!.toJson();
    }
    if (sourceId?.value != null) {
      json['sourceId'] = sourceId!.value;
    }
    if (sourceIdElement != null) {
      json['_sourceId'] = sourceIdElement!.toJson();
    }
    if (targetId?.value != null) {
      json['targetId'] = targetId!.value;
    }
    if (targetIdElement != null) {
      json['_targetId'] = targetIdElement!.toJson();
    }
    if (url?.value != null) {
      json['url'] = url!.value;
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    return json;
  }

  factory TestScriptOperation.fromJson(Map<String, dynamic> json) {
    return TestScriptOperation(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      type: json['type'] != null
          ? Coding.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      resource: json['resource'] != null
          ? FHIRDefinedType.fromJson(json['resource'] as Map<String, dynamic>)
          : null,
      label: json['label'] != null ? FhirString(json['label']) : null,
      labelElement: json['_label'] != null
          ? Element.fromJson(json['_label'] as Map<String, dynamic>)
          : null,
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      accept: json['accept'] != null ? FhirCode(json['accept']) : null,
      acceptElement: json['_accept'] != null
          ? Element.fromJson(json['_accept'] as Map<String, dynamic>)
          : null,
      contentType:
          json['contentType'] != null ? FhirCode(json['contentType']) : null,
      contentTypeElement: json['_contentType'] != null
          ? Element.fromJson(json['_contentType'] as Map<String, dynamic>)
          : null,
      destination:
          json['destination'] != null ? FhirInteger(json['destination']) : null,
      destinationElement: json['_destination'] != null
          ? Element.fromJson(json['_destination'] as Map<String, dynamic>)
          : null,
      encodeRequestUrl: FhirBoolean(json['encodeRequestUrl']),
      encodeRequestUrlElement:
          Element.fromJson(json['_encodeRequestUrl'] as Map<String, dynamic>),
      method: json['method'] != null
          ? TestScriptRequestMethodCode.fromJson(
              json['method'] as Map<String, dynamic>)
          : null,
      origin: json['origin'] != null ? FhirInteger(json['origin']) : null,
      originElement: json['_origin'] != null
          ? Element.fromJson(json['_origin'] as Map<String, dynamic>)
          : null,
      params: json['params'] != null ? FhirString(json['params']) : null,
      paramsElement: json['_params'] != null
          ? Element.fromJson(json['_params'] as Map<String, dynamic>)
          : null,
      requestHeader: json['requestHeader'] != null
          ? (json['requestHeader'] as List<dynamic>)
              .map<TestScriptRequestHeader>((dynamic v) =>
                  TestScriptRequestHeader.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      requestId: json['requestId'] != null ? FhirId(json['requestId']) : null,
      requestIdElement: json['_requestId'] != null
          ? Element.fromJson(json['_requestId'] as Map<String, dynamic>)
          : null,
      responseId:
          json['responseId'] != null ? FhirId(json['responseId']) : null,
      responseIdElement: json['_responseId'] != null
          ? Element.fromJson(json['_responseId'] as Map<String, dynamic>)
          : null,
      sourceId: json['sourceId'] != null ? FhirId(json['sourceId']) : null,
      sourceIdElement: json['_sourceId'] != null
          ? Element.fromJson(json['_sourceId'] as Map<String, dynamic>)
          : null,
      targetId: json['targetId'] != null ? FhirId(json['targetId']) : null,
      targetIdElement: json['_targetId'] != null
          ? Element.fromJson(json['_targetId'] as Map<String, dynamic>)
          : null,
      url: json['url'] != null ? FhirString(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  TestScriptOperation clone() => throw UnimplementedError();
  @override
  TestScriptOperation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? type,
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
  int dbId = 0;

  /// [field] /// The HTTP header field e.g. "Accept".
  final FhirString field;
  final Element? fieldElement;

  /// [value] /// The value of the header e.g. "application/fhir+xml".
  final FhirString value;
  final Element? valueElement;
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
    json['field'] = field.value;
    if (fieldElement != null) {
      json['_field'] = fieldElement!.toJson();
    }
    json['value'] = value.value;
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    return json;
  }

  factory TestScriptRequestHeader.fromJson(Map<String, dynamic> json) {
    return TestScriptRequestHeader(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      field: FhirString(json['field']),
      fieldElement: Element.fromJson(json['_field'] as Map<String, dynamic>),
      value: FhirString(json['value']),
      valueElement: Element.fromJson(json['_value'] as Map<String, dynamic>),
    );
  }
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
  int dbId = 0;

  /// [label] /// The label would be used for tracking/logging purposes by test engines.
  final FhirString? label;
  final Element? labelElement;

  /// [description] /// The description would be used by test engines for tracking and reporting
  /// purposes.
  final FhirString? description;
  final Element? descriptionElement;

  /// [direction] /// The direction to use for the assertion.
  final AssertionDirectionType? direction;
  final Element? directionElement;

  /// [compareToSourceId] /// Id of the source fixture used as the contents to be evaluated by either the
  /// "source/expression" or "sourceId/path" definition.
  final FhirString? compareToSourceId;
  final Element? compareToSourceIdElement;

  /// [compareToSourceExpression] /// The FHIRPath expression to evaluate against the source fixture. When
  /// compareToSourceId is defined, either compareToSourceExpression or
  /// compareToSourcePath must be defined, but not both.
  final FhirString? compareToSourceExpression;
  final Element? compareToSourceExpressionElement;

  /// [compareToSourcePath] /// XPath or JSONPath expression to evaluate against the source fixture. When
  /// compareToSourceId is defined, either compareToSourceExpression or
  /// compareToSourcePath must be defined, but not both.
  final FhirString? compareToSourcePath;
  final Element? compareToSourcePathElement;

  /// [contentType] /// The mime-type contents to compare against the request or response message
  /// 'Content-Type' header.
  final FhirCode? contentType;
  final Element? contentTypeElement;

  /// [expression] /// The FHIRPath expression to be evaluated against the request or response
  /// message contents - HTTP headers and payload.
  final FhirString? expression;
  final Element? expressionElement;

  /// [headerField] /// The HTTP header field name e.g. 'Location'.
  final FhirString? headerField;
  final Element? headerFieldElement;

  /// [minimumId] /// The ID of a fixture. Asserts that the response contains at a minimum the
  /// fixture specified by minimumId.
  final FhirString? minimumId;
  final Element? minimumIdElement;

  /// [navigationLinks] /// Whether or not the test execution performs validation on the bundle
  /// navigation links.
  final FhirBoolean? navigationLinks;
  final Element? navigationLinksElement;

  /// [operator_] /// The operator type defines the conditional behavior of the assert. If not
  /// defined, the default is equals.
  final AssertionOperatorType? operator_;
  final Element? operatorElement;

  /// [path] /// The XPath or JSONPath expression to be evaluated against the fixture
  /// representing the response received from server.
  final FhirString? path;
  final Element? pathElement;

  /// [requestMethod] /// The request method or HTTP operation code to compare against that used by
  /// the client system under test.
  final TestScriptRequestMethodCode? requestMethod;
  final Element? requestMethodElement;

  /// [requestURL] /// The value to use in a comparison against the request URL path string.
  final FhirString? requestURL;
  final Element? requestURLElement;

  /// [resource] /// The type of the resource. See http://build.fhir.org/resourcelist.html.
  final FHIRDefinedType? resource;
  final Element? resourceElement;

  /// [response] /// okay | created | noContent | notModified | bad | forbidden | notFound |
  /// methodNotAllowed | conflict | gone | preconditionFailed | unprocessable.
  final AssertionResponseTypes? response;
  final Element? responseElement;

  /// [responseCode] /// The value of the HTTP response code to be tested.
  final FhirString? responseCode;
  final Element? responseCodeElement;

  /// [sourceId] /// Fixture to evaluate the XPath/JSONPath expression or the headerField
  /// against.
  final FhirId? sourceId;
  final Element? sourceIdElement;

  /// [validateProfileId] /// The ID of the Profile to validate against.
  final FhirId? validateProfileId;
  final Element? validateProfileIdElement;

  /// [value] /// The value to compare to.
  final FhirString? value;
  final Element? valueElement;

  /// [warningOnly] /// Whether or not the test execution will produce a warning only on error for
  /// this assert.
  final FhirBoolean warningOnly;
  final Element? warningOnlyElement;
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
    if (label?.value != null) {
      json['label'] = label!.value;
    }
    if (labelElement != null) {
      json['_label'] = labelElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (direction != null) {
      json['direction'] = direction!.toJson();
    }
    if (compareToSourceId?.value != null) {
      json['compareToSourceId'] = compareToSourceId!.value;
    }
    if (compareToSourceIdElement != null) {
      json['_compareToSourceId'] = compareToSourceIdElement!.toJson();
    }
    if (compareToSourceExpression?.value != null) {
      json['compareToSourceExpression'] = compareToSourceExpression!.value;
    }
    if (compareToSourceExpressionElement != null) {
      json['_compareToSourceExpression'] =
          compareToSourceExpressionElement!.toJson();
    }
    if (compareToSourcePath?.value != null) {
      json['compareToSourcePath'] = compareToSourcePath!.value;
    }
    if (compareToSourcePathElement != null) {
      json['_compareToSourcePath'] = compareToSourcePathElement!.toJson();
    }
    if (contentType?.value != null) {
      json['contentType'] = contentType!.value;
    }
    if (contentTypeElement != null) {
      json['_contentType'] = contentTypeElement!.toJson();
    }
    if (expression?.value != null) {
      json['expression'] = expression!.value;
    }
    if (expressionElement != null) {
      json['_expression'] = expressionElement!.toJson();
    }
    if (headerField?.value != null) {
      json['headerField'] = headerField!.value;
    }
    if (headerFieldElement != null) {
      json['_headerField'] = headerFieldElement!.toJson();
    }
    if (minimumId?.value != null) {
      json['minimumId'] = minimumId!.value;
    }
    if (minimumIdElement != null) {
      json['_minimumId'] = minimumIdElement!.toJson();
    }
    if (navigationLinks?.value != null) {
      json['navigationLinks'] = navigationLinks!.value;
    }
    if (navigationLinksElement != null) {
      json['_navigationLinks'] = navigationLinksElement!.toJson();
    }
    if (operator_ != null) {
      json['operator'] = operator_!.toJson();
    }
    if (path?.value != null) {
      json['path'] = path!.value;
    }
    if (pathElement != null) {
      json['_path'] = pathElement!.toJson();
    }
    if (requestMethod != null) {
      json['requestMethod'] = requestMethod!.toJson();
    }
    if (requestURL?.value != null) {
      json['requestURL'] = requestURL!.value;
    }
    if (requestURLElement != null) {
      json['_requestURL'] = requestURLElement!.toJson();
    }
    if (resource != null) {
      json['resource'] = resource!.toJson();
    }
    if (response != null) {
      json['response'] = response!.toJson();
    }
    if (responseCode?.value != null) {
      json['responseCode'] = responseCode!.value;
    }
    if (responseCodeElement != null) {
      json['_responseCode'] = responseCodeElement!.toJson();
    }
    if (sourceId?.value != null) {
      json['sourceId'] = sourceId!.value;
    }
    if (sourceIdElement != null) {
      json['_sourceId'] = sourceIdElement!.toJson();
    }
    if (validateProfileId?.value != null) {
      json['validateProfileId'] = validateProfileId!.value;
    }
    if (validateProfileIdElement != null) {
      json['_validateProfileId'] = validateProfileIdElement!.toJson();
    }
    if (value?.value != null) {
      json['value'] = value!.value;
    }
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    json['warningOnly'] = warningOnly.value;
    if (warningOnlyElement != null) {
      json['_warningOnly'] = warningOnlyElement!.toJson();
    }
    return json;
  }

  factory TestScriptAssert.fromJson(Map<String, dynamic> json) {
    return TestScriptAssert(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      label: json['label'] != null ? FhirString(json['label']) : null,
      labelElement: json['_label'] != null
          ? Element.fromJson(json['_label'] as Map<String, dynamic>)
          : null,
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      direction: json['direction'] != null
          ? AssertionDirectionType.fromJson(
              json['direction'] as Map<String, dynamic>)
          : null,
      compareToSourceId: json['compareToSourceId'] != null
          ? FhirString(json['compareToSourceId'])
          : null,
      compareToSourceIdElement: json['_compareToSourceId'] != null
          ? Element.fromJson(json['_compareToSourceId'] as Map<String, dynamic>)
          : null,
      compareToSourceExpression: json['compareToSourceExpression'] != null
          ? FhirString(json['compareToSourceExpression'])
          : null,
      compareToSourceExpressionElement:
          json['_compareToSourceExpression'] != null
              ? Element.fromJson(
                  json['_compareToSourceExpression'] as Map<String, dynamic>)
              : null,
      compareToSourcePath: json['compareToSourcePath'] != null
          ? FhirString(json['compareToSourcePath'])
          : null,
      compareToSourcePathElement: json['_compareToSourcePath'] != null
          ? Element.fromJson(
              json['_compareToSourcePath'] as Map<String, dynamic>)
          : null,
      contentType:
          json['contentType'] != null ? FhirCode(json['contentType']) : null,
      contentTypeElement: json['_contentType'] != null
          ? Element.fromJson(json['_contentType'] as Map<String, dynamic>)
          : null,
      expression:
          json['expression'] != null ? FhirString(json['expression']) : null,
      expressionElement: json['_expression'] != null
          ? Element.fromJson(json['_expression'] as Map<String, dynamic>)
          : null,
      headerField:
          json['headerField'] != null ? FhirString(json['headerField']) : null,
      headerFieldElement: json['_headerField'] != null
          ? Element.fromJson(json['_headerField'] as Map<String, dynamic>)
          : null,
      minimumId:
          json['minimumId'] != null ? FhirString(json['minimumId']) : null,
      minimumIdElement: json['_minimumId'] != null
          ? Element.fromJson(json['_minimumId'] as Map<String, dynamic>)
          : null,
      navigationLinks: json['navigationLinks'] != null
          ? FhirBoolean(json['navigationLinks'])
          : null,
      navigationLinksElement: json['_navigationLinks'] != null
          ? Element.fromJson(json['_navigationLinks'] as Map<String, dynamic>)
          : null,
      operator_: json['operator'] != null
          ? AssertionOperatorType.fromJson(
              json['operator'] as Map<String, dynamic>)
          : null,
      path: json['path'] != null ? FhirString(json['path']) : null,
      pathElement: json['_path'] != null
          ? Element.fromJson(json['_path'] as Map<String, dynamic>)
          : null,
      requestMethod: json['requestMethod'] != null
          ? TestScriptRequestMethodCode.fromJson(
              json['requestMethod'] as Map<String, dynamic>)
          : null,
      requestURL:
          json['requestURL'] != null ? FhirString(json['requestURL']) : null,
      requestURLElement: json['_requestURL'] != null
          ? Element.fromJson(json['_requestURL'] as Map<String, dynamic>)
          : null,
      resource: json['resource'] != null
          ? FHIRDefinedType.fromJson(json['resource'] as Map<String, dynamic>)
          : null,
      response: json['response'] != null
          ? AssertionResponseTypes.fromJson(
              json['response'] as Map<String, dynamic>)
          : null,
      responseCode: json['responseCode'] != null
          ? FhirString(json['responseCode'])
          : null,
      responseCodeElement: json['_responseCode'] != null
          ? Element.fromJson(json['_responseCode'] as Map<String, dynamic>)
          : null,
      sourceId: json['sourceId'] != null ? FhirId(json['sourceId']) : null,
      sourceIdElement: json['_sourceId'] != null
          ? Element.fromJson(json['_sourceId'] as Map<String, dynamic>)
          : null,
      validateProfileId: json['validateProfileId'] != null
          ? FhirId(json['validateProfileId'])
          : null,
      validateProfileIdElement: json['_validateProfileId'] != null
          ? Element.fromJson(json['_validateProfileId'] as Map<String, dynamic>)
          : null,
      value: json['value'] != null ? FhirString(json['value']) : null,
      valueElement: json['_value'] != null
          ? Element.fromJson(json['_value'] as Map<String, dynamic>)
          : null,
      warningOnly: FhirBoolean(json['warningOnly']),
      warningOnlyElement:
          Element.fromJson(json['_warningOnly'] as Map<String, dynamic>),
    );
  }
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
  int dbId = 0;

  /// [name] /// The name of this test used for tracking/logging purposes by test engines.
  final FhirString? name;
  final Element? nameElement;

  /// [description] /// A short description of the test used by test engines for tracking and
  /// reporting purposes.
  final FhirString? description;
  final Element? descriptionElement;

  /// [action] /// Action would contain either an operation or an assertion.
  final List<TestScriptAction> action;
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
      json['name'] = name!.value;
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    json['action'] =
        action.map<dynamic>((TestScriptAction v) => v.toJson()).toList();
    return json;
  }

  factory TestScriptTest.fromJson(Map<String, dynamic> json) {
    return TestScriptTest(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      name: json['name'] != null ? FhirString(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      action: (json['action'] as List<dynamic>)
          .map<TestScriptAction>((dynamic v) =>
              TestScriptAction.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }
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
  int dbId = 0;

  /// [operation] /// An operation would involve a REST request to a server.
  final TestScriptOperation? operation;

  /// [assert_] /// Evaluates the results of previous operations to determine if the server
  /// under test behaves appropriately.
  final TestScriptAssert? assert_;
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

  factory TestScriptAction1.fromJson(Map<String, dynamic> json) {
    return TestScriptAction1(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
          ? TestScriptOperation.fromJson(
              json['operation'] as Map<String, dynamic>)
          : null,
      assert_: json['assert'] != null
          ? TestScriptAssert.fromJson(json['assert'] as Map<String, dynamic>)
          : null,
    );
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
  int dbId = 0;

  /// [action] /// The teardown action will only contain an operation.
  final List<TestScriptAction> action;
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
        action.map<dynamic>((TestScriptAction v) => v.toJson()).toList();
    return json;
  }

  factory TestScriptTeardown.fromJson(Map<String, dynamic> json) {
    return TestScriptTeardown(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
          .map<TestScriptAction>((dynamic v) =>
              TestScriptAction.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
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
  int dbId = 0;

  /// [operation] /// An operation would involve a REST request to a server.
  final TestScriptOperation operation;
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

  factory TestScriptAction2.fromJson(Map<String, dynamic> json) {
    return TestScriptAction2(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      operation: TestScriptOperation.fromJson(
          json['operation'] as Map<String, dynamic>),
    );
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
