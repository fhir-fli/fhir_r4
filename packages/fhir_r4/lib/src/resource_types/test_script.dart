import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'test_script.g.dart';

/// [TestScript]
/// A structured set of tests against a FHIR server or client
/// implementation to determine compliance against the FHIR specification.
class TestScript extends DomainResource {
  /// Primary constructor for
  /// [TestScript]

  const TestScript({
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
  }) : super(
          resourceType: R4ResourceType.TestScript,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScript.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScript(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      )!,
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      )!,
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      )!,
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
      origin: (json['origin'] as List<dynamic>?)
          ?.map<TestScriptOrigin>(
            (v) => TestScriptOrigin.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      destination: (json['destination'] as List<dynamic>?)
          ?.map<TestScriptDestination>(
            (v) => TestScriptDestination.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      metadata: JsonParser.parseObject<TestScriptMetadata>(
        json,
        'metadata',
        TestScriptMetadata.fromJson,
      ),
      fixture: (json['fixture'] as List<dynamic>?)
          ?.map<TestScriptFixture>(
            (v) => TestScriptFixture.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      profile: (json['profile'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      variable: (json['variable'] as List<dynamic>?)
          ?.map<TestScriptVariable>(
            (v) => TestScriptVariable.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      setup: JsonParser.parseObject<TestScriptSetup>(
        json,
        'setup',
        TestScriptSetup.fromJson,
      ),
      test: (json['test'] as List<dynamic>?)
          ?.map<TestScriptTest>(
            (v) => TestScriptTest.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      teardown: JsonParser.parseObject<TestScriptTeardown>(
        json,
        'teardown',
        TestScriptTeardown.fromJson,
      ),
    );
  }

  /// Deserialize [TestScript]
  /// from a [String] or [YamlMap] object
  factory TestScript.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScript.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScript.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScript '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScript]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScript.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScript.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'url',
      url,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'version',
      version,
    );
    addField(
      'name',
      name,
    );
    addField(
      'title',
      title,
    );
    addField(
      'status',
      status,
    );
    addField(
      'experimental',
      experimental,
    );
    addField(
      'date',
      date,
    );
    addField(
      'publisher',
      publisher,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'description',
      description,
    );
    addField(
      'useContext',
      useContext,
    );
    addField(
      'jurisdiction',
      jurisdiction,
    );
    addField(
      'purpose',
      purpose,
    );
    addField(
      'copyright',
      copyright,
    );
    addField(
      'origin',
      origin,
    );
    addField(
      'destination',
      destination,
    );
    addField(
      'metadata',
      metadata,
    );
    addField(
      'fixture',
      fixture,
    );
    addField(
      'profile',
      profile,
    );
    addField(
      'variable',
      variable,
    );
    addField(
      'setup',
      setup,
    );
    addField(
      'test',
      test,
    );
    addField(
      'teardown',
      teardown,
    );
    return json;
  }

  @override
  TestScript clone() => copyWith();

  /// Copy function for [TestScript]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptCopyWith<TestScript> get copyWith =>
      _$TestScriptCopyWithImpl<TestScript>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScript) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      experimental,
      o.experimental,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!listEquals<TestScriptOrigin>(
      origin,
      o.origin,
    )) {
      return false;
    }
    if (!listEquals<TestScriptDestination>(
      destination,
      o.destination,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      metadata,
      o.metadata,
    )) {
      return false;
    }
    if (!listEquals<TestScriptFixture>(
      fixture,
      o.fixture,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      profile,
      o.profile,
    )) {
      return false;
    }
    if (!listEquals<TestScriptVariable>(
      variable,
      o.variable,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      setup,
      o.setup,
    )) {
      return false;
    }
    if (!listEquals<TestScriptTest>(
      test,
      o.test,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      teardown,
      o.teardown,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptOrigin]
/// An abstract server used in operations within this test script in the
/// origin element.
class TestScriptOrigin extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptOrigin]

  const TestScriptOrigin({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.index,
    required this.profile,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptOrigin.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptOrigin(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      index: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'index',
        FhirInteger.fromJson,
      )!,
      profile: JsonParser.parseObject<Coding>(
        json,
        'profile',
        Coding.fromJson,
      )!,
    );
  }

  /// Deserialize [TestScriptOrigin]
  /// from a [String] or [YamlMap] object
  factory TestScriptOrigin.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptOrigin.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptOrigin.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptOrigin '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptOrigin]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptOrigin.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptOrigin.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'index',
      index,
    );
    addField(
      'profile',
      profile,
    );
    return json;
  }

  @override
  TestScriptOrigin clone() => copyWith();

  /// Copy function for [TestScriptOrigin]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptOriginCopyWith<TestScriptOrigin> get copyWith =>
      _$TestScriptOriginCopyWithImpl<TestScriptOrigin>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptOrigin) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      index,
      o.index,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      profile,
      o.profile,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptDestination]
/// An abstract server used in operations within this test script in the
/// destination element.
class TestScriptDestination extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptDestination]

  const TestScriptDestination({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.index,
    required this.profile,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptDestination.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptDestination(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      index: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'index',
        FhirInteger.fromJson,
      )!,
      profile: JsonParser.parseObject<Coding>(
        json,
        'profile',
        Coding.fromJson,
      )!,
    );
  }

  /// Deserialize [TestScriptDestination]
  /// from a [String] or [YamlMap] object
  factory TestScriptDestination.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptDestination.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptDestination.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptDestination '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptDestination]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptDestination.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptDestination.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'index',
      index,
    );
    addField(
      'profile',
      profile,
    );
    return json;
  }

  @override
  TestScriptDestination clone() => copyWith();

  /// Copy function for [TestScriptDestination]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptDestinationCopyWith<TestScriptDestination> get copyWith =>
      _$TestScriptDestinationCopyWithImpl<TestScriptDestination>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptDestination) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      index,
      o.index,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      profile,
      o.profile,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptMetadata]
/// The required capability must exist and are assumed to function
/// correctly on the FHIR server being tested.
class TestScriptMetadata extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptMetadata]

  const TestScriptMetadata({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.link,
    required this.capability,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptMetadata.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptMetadata(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      link: (json['link'] as List<dynamic>?)
          ?.map<TestScriptLink>(
            (v) => TestScriptLink.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      capability: (json['capability'] as List<dynamic>)
          .map<TestScriptCapability>(
            (v) => TestScriptCapability.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [TestScriptMetadata]
  /// from a [String] or [YamlMap] object
  factory TestScriptMetadata.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptMetadata.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptMetadata.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptMetadata '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptMetadata]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptMetadata.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptMetadata.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'link',
      link,
    );
    addField(
      'capability',
      capability,
    );
    return json;
  }

  @override
  TestScriptMetadata clone() => copyWith();

  /// Copy function for [TestScriptMetadata]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptMetadataCopyWith<TestScriptMetadata> get copyWith =>
      _$TestScriptMetadataCopyWithImpl<TestScriptMetadata>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptMetadata) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<TestScriptLink>(
      link,
      o.link,
    )) {
      return false;
    }
    if (!listEquals<TestScriptCapability>(
      capability,
      o.capability,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptLink]
/// A link to the FHIR specification that this test is covering.
class TestScriptLink extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptLink]

  const TestScriptLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.url,
    this.description,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptLink.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptLink(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      )!,
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [TestScriptLink]
  /// from a [String] or [YamlMap] object
  factory TestScriptLink.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptLink.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptLink.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptLink '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptLink]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptLink.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptLink.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'url',
      url,
    );
    addField(
      'description',
      description,
    );
    return json;
  }

  @override
  TestScriptLink clone() => copyWith();

  /// Copy function for [TestScriptLink]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptLinkCopyWith<TestScriptLink> get copyWith =>
      _$TestScriptLinkCopyWithImpl<TestScriptLink>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptLink) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptCapability]
/// Capabilities that must exist and are assumed to function correctly on
/// the FHIR server being tested.
class TestScriptCapability extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptCapability]

  const TestScriptCapability({
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
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptCapability.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptCapability(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      required_: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'required',
        FhirBoolean.fromJson,
      )!,
      validated: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'validated',
        FhirBoolean.fromJson,
      )!,
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      origin: JsonParser.parsePrimitiveList<FhirInteger>(
        json,
        'origin',
        FhirInteger.fromJson,
      ),
      destination: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'destination',
        FhirInteger.fromJson,
      ),
      link: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'link',
        FhirUri.fromJson,
      ),
      capabilities: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'capabilities',
        FhirCanonical.fromJson,
      )!,
    );
  }

  /// Deserialize [TestScriptCapability]
  /// from a [String] or [YamlMap] object
  factory TestScriptCapability.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptCapability.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptCapability.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptCapability '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptCapability]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptCapability.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptCapability.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'required',
      required_,
    );
    addField(
      'validated',
      validated,
    );
    addField(
      'description',
      description,
    );
    addField(
      'origin',
      origin,
    );
    addField(
      'destination',
      destination,
    );
    addField(
      'link',
      link,
    );
    addField(
      'capabilities',
      capabilities,
    );
    return json;
  }

  @override
  TestScriptCapability clone() => copyWith();

  /// Copy function for [TestScriptCapability]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptCapabilityCopyWith<TestScriptCapability> get copyWith =>
      _$TestScriptCapabilityCopyWithImpl<TestScriptCapability>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptCapability) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      required_,
      o.required_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      validated,
      o.validated,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<FhirInteger>(
      origin,
      o.origin,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      destination,
      o.destination,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      link,
      o.link,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      capabilities,
      o.capabilities,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptFixture]
/// Fixture in the test script - by reference (uri). All fixtures are
/// required for the test script to execute.
class TestScriptFixture extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptFixture]

  const TestScriptFixture({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.autocreate,
    required this.autodelete,
    this.resource,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptFixture.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptFixture(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      autocreate: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'autocreate',
        FhirBoolean.fromJson,
      )!,
      autodelete: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'autodelete',
        FhirBoolean.fromJson,
      )!,
      resource: JsonParser.parseObject<Reference>(
        json,
        'resource',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [TestScriptFixture]
  /// from a [String] or [YamlMap] object
  factory TestScriptFixture.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptFixture.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptFixture.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptFixture '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptFixture]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptFixture.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptFixture.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'autocreate',
      autocreate,
    );
    addField(
      'autodelete',
      autodelete,
    );
    addField(
      'resource',
      resource,
    );
    return json;
  }

  @override
  TestScriptFixture clone() => copyWith();

  /// Copy function for [TestScriptFixture]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptFixtureCopyWith<TestScriptFixture> get copyWith =>
      _$TestScriptFixtureCopyWithImpl<TestScriptFixture>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptFixture) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      autocreate,
      o.autocreate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      autodelete,
      o.autodelete,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resource,
      o.resource,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptVariable]
/// Variable is set based either on element value in response body or on
/// header field value in the response headers.
class TestScriptVariable extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptVariable]

  const TestScriptVariable({
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
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptVariable.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptVariable(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      )!,
      defaultValue: JsonParser.parsePrimitive<FhirString>(
        json,
        'defaultValue',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      expression: JsonParser.parsePrimitive<FhirString>(
        json,
        'expression',
        FhirString.fromJson,
      ),
      headerField: JsonParser.parsePrimitive<FhirString>(
        json,
        'headerField',
        FhirString.fromJson,
      ),
      hint: JsonParser.parsePrimitive<FhirString>(
        json,
        'hint',
        FhirString.fromJson,
      ),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
      ),
      sourceId: JsonParser.parsePrimitive<FhirId>(
        json,
        'sourceId',
        FhirId.fromJson,
      ),
    );
  }

  /// Deserialize [TestScriptVariable]
  /// from a [String] or [YamlMap] object
  factory TestScriptVariable.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptVariable.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptVariable.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptVariable '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptVariable]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptVariable.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptVariable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'name',
      name,
    );
    addField(
      'defaultValue',
      defaultValue,
    );
    addField(
      'description',
      description,
    );
    addField(
      'expression',
      expression,
    );
    addField(
      'headerField',
      headerField,
    );
    addField(
      'hint',
      hint,
    );
    addField(
      'path',
      path,
    );
    addField(
      'sourceId',
      sourceId,
    );
    return json;
  }

  @override
  TestScriptVariable clone() => copyWith();

  /// Copy function for [TestScriptVariable]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptVariableCopyWith<TestScriptVariable> get copyWith =>
      _$TestScriptVariableCopyWithImpl<TestScriptVariable>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptVariable) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      defaultValue,
      o.defaultValue,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expression,
      o.expression,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      headerField,
      o.headerField,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      hint,
      o.hint,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      path,
      o.path,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sourceId,
      o.sourceId,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptSetup]
/// A series of required setup operations before tests are executed.
class TestScriptSetup extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptSetup]

  const TestScriptSetup({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptSetup.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptSetup(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>)
          .map<TestScriptAction>(
            (v) => TestScriptAction.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [TestScriptSetup]
  /// from a [String] or [YamlMap] object
  factory TestScriptSetup.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptSetup.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptSetup.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptSetup '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptSetup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptSetup.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptSetup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'action',
      action,
    );
    return json;
  }

  @override
  TestScriptSetup clone() => copyWith();

  /// Copy function for [TestScriptSetup]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptSetupCopyWith<TestScriptSetup> get copyWith =>
      _$TestScriptSetupCopyWithImpl<TestScriptSetup>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptSetup) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<TestScriptAction>(
      action,
      o.action,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptAction]
/// Action would contain either an operation or an assertion.
class TestScriptAction extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptAction]

  const TestScriptAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    this.assert_,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptAction.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptAction(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      operation: JsonParser.parseObject<TestScriptOperation>(
        json,
        'operation',
        TestScriptOperation.fromJson,
      ),
      assert_: JsonParser.parseObject<TestScriptAssert>(
        json,
        'assert',
        TestScriptAssert.fromJson,
      ),
    );
  }

  /// Deserialize [TestScriptAction]
  /// from a [String] or [YamlMap] object
  factory TestScriptAction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptAction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptAction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptAction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptAction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptAction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'operation',
      operation,
    );
    addField(
      'assert',
      assert_,
    );
    return json;
  }

  @override
  TestScriptAction clone() => copyWith();

  /// Copy function for [TestScriptAction]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptActionCopyWith<TestScriptAction> get copyWith =>
      _$TestScriptActionCopyWithImpl<TestScriptAction>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptAction) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      operation,
      o.operation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      assert_,
      o.assert_,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptOperation]
/// The operation to perform.
class TestScriptOperation extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptOperation]

  const TestScriptOperation({
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
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptOperation.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptOperation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<Coding>(
        json,
        'type',
        Coding.fromJson,
      ),
      resource: JsonParser.parsePrimitive<FhirCode>(
        json,
        'resource',
        FhirCode.fromJson,
      ),
      label: JsonParser.parsePrimitive<FhirString>(
        json,
        'label',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      accept: JsonParser.parsePrimitive<FhirCode>(
        json,
        'accept',
        FhirCode.fromJson,
      ),
      contentType: JsonParser.parsePrimitive<FhirCode>(
        json,
        'contentType',
        FhirCode.fromJson,
      ),
      destination: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'destination',
        FhirInteger.fromJson,
      ),
      encodeRequestUrl: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'encodeRequestUrl',
        FhirBoolean.fromJson,
      )!,
      method: JsonParser.parsePrimitive<TestScriptRequestMethodCode>(
        json,
        'method',
        TestScriptRequestMethodCode.fromJson,
      ),
      origin: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'origin',
        FhirInteger.fromJson,
      ),
      params: JsonParser.parsePrimitive<FhirString>(
        json,
        'params',
        FhirString.fromJson,
      ),
      requestHeader: (json['requestHeader'] as List<dynamic>?)
          ?.map<TestScriptRequestHeader>(
            (v) => TestScriptRequestHeader.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      requestId: JsonParser.parsePrimitive<FhirId>(
        json,
        'requestId',
        FhirId.fromJson,
      ),
      responseId: JsonParser.parsePrimitive<FhirId>(
        json,
        'responseId',
        FhirId.fromJson,
      ),
      sourceId: JsonParser.parsePrimitive<FhirId>(
        json,
        'sourceId',
        FhirId.fromJson,
      ),
      targetId: JsonParser.parsePrimitive<FhirId>(
        json,
        'targetId',
        FhirId.fromJson,
      ),
      url: JsonParser.parsePrimitive<FhirString>(
        json,
        'url',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [TestScriptOperation]
  /// from a [String] or [YamlMap] object
  factory TestScriptOperation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptOperation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptOperation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptOperation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptOperation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptOperation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'resource',
      resource,
    );
    addField(
      'label',
      label,
    );
    addField(
      'description',
      description,
    );
    addField(
      'accept',
      accept,
    );
    addField(
      'contentType',
      contentType,
    );
    addField(
      'destination',
      destination,
    );
    addField(
      'encodeRequestUrl',
      encodeRequestUrl,
    );
    addField(
      'method',
      method,
    );
    addField(
      'origin',
      origin,
    );
    addField(
      'params',
      params,
    );
    addField(
      'requestHeader',
      requestHeader,
    );
    addField(
      'requestId',
      requestId,
    );
    addField(
      'responseId',
      responseId,
    );
    addField(
      'sourceId',
      sourceId,
    );
    addField(
      'targetId',
      targetId,
    );
    addField(
      'url',
      url,
    );
    return json;
  }

  @override
  TestScriptOperation clone() => copyWith();

  /// Copy function for [TestScriptOperation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptOperationCopyWith<TestScriptOperation> get copyWith =>
      _$TestScriptOperationCopyWithImpl<TestScriptOperation>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptOperation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resource,
      o.resource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      label,
      o.label,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      accept,
      o.accept,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contentType,
      o.contentType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      destination,
      o.destination,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      encodeRequestUrl,
      o.encodeRequestUrl,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      method,
      o.method,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      origin,
      o.origin,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      params,
      o.params,
    )) {
      return false;
    }
    if (!listEquals<TestScriptRequestHeader>(
      requestHeader,
      o.requestHeader,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requestId,
      o.requestId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      responseId,
      o.responseId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sourceId,
      o.sourceId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      targetId,
      o.targetId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptRequestHeader]
/// Header elements would be used to set HTTP headers.
class TestScriptRequestHeader extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptRequestHeader]

  const TestScriptRequestHeader({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.field,
    required this.value,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptRequestHeader.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptRequestHeader(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      field: JsonParser.parsePrimitive<FhirString>(
        json,
        'field',
        FhirString.fromJson,
      )!,
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
      )!,
    );
  }

  /// Deserialize [TestScriptRequestHeader]
  /// from a [String] or [YamlMap] object
  factory TestScriptRequestHeader.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptRequestHeader.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptRequestHeader.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptRequestHeader '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptRequestHeader]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptRequestHeader.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptRequestHeader.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'field',
      field,
    );
    addField(
      'value',
      value,
    );
    return json;
  }

  @override
  TestScriptRequestHeader clone() => copyWith();

  /// Copy function for [TestScriptRequestHeader]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptRequestHeaderCopyWith<TestScriptRequestHeader> get copyWith =>
      _$TestScriptRequestHeaderCopyWithImpl<TestScriptRequestHeader>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptRequestHeader) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      field,
      o.field,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptAssert]
/// Evaluates the results of previous operations to determine if the server
/// under test behaves appropriately.
class TestScriptAssert extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptAssert]

  const TestScriptAssert({
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
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptAssert.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptAssert(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      label: JsonParser.parsePrimitive<FhirString>(
        json,
        'label',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      direction: JsonParser.parsePrimitive<AssertionDirectionType>(
        json,
        'direction',
        AssertionDirectionType.fromJson,
      ),
      compareToSourceId: JsonParser.parsePrimitive<FhirString>(
        json,
        'compareToSourceId',
        FhirString.fromJson,
      ),
      compareToSourceExpression: JsonParser.parsePrimitive<FhirString>(
        json,
        'compareToSourceExpression',
        FhirString.fromJson,
      ),
      compareToSourcePath: JsonParser.parsePrimitive<FhirString>(
        json,
        'compareToSourcePath',
        FhirString.fromJson,
      ),
      contentType: JsonParser.parsePrimitive<FhirCode>(
        json,
        'contentType',
        FhirCode.fromJson,
      ),
      expression: JsonParser.parsePrimitive<FhirString>(
        json,
        'expression',
        FhirString.fromJson,
      ),
      headerField: JsonParser.parsePrimitive<FhirString>(
        json,
        'headerField',
        FhirString.fromJson,
      ),
      minimumId: JsonParser.parsePrimitive<FhirString>(
        json,
        'minimumId',
        FhirString.fromJson,
      ),
      navigationLinks: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'navigationLinks',
        FhirBoolean.fromJson,
      ),
      operator_: JsonParser.parsePrimitive<AssertionOperatorType>(
        json,
        'operator',
        AssertionOperatorType.fromJson,
      ),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
      ),
      requestMethod: JsonParser.parsePrimitive<TestScriptRequestMethodCode>(
        json,
        'requestMethod',
        TestScriptRequestMethodCode.fromJson,
      ),
      requestURL: JsonParser.parsePrimitive<FhirString>(
        json,
        'requestURL',
        FhirString.fromJson,
      ),
      resource: JsonParser.parsePrimitive<FhirCode>(
        json,
        'resource',
        FhirCode.fromJson,
      ),
      response: JsonParser.parsePrimitive<AssertionResponseTypes>(
        json,
        'response',
        AssertionResponseTypes.fromJson,
      ),
      responseCode: JsonParser.parsePrimitive<FhirString>(
        json,
        'responseCode',
        FhirString.fromJson,
      ),
      sourceId: JsonParser.parsePrimitive<FhirId>(
        json,
        'sourceId',
        FhirId.fromJson,
      ),
      validateProfileId: JsonParser.parsePrimitive<FhirId>(
        json,
        'validateProfileId',
        FhirId.fromJson,
      ),
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
      ),
      warningOnly: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'warningOnly',
        FhirBoolean.fromJson,
      )!,
    );
  }

  /// Deserialize [TestScriptAssert]
  /// from a [String] or [YamlMap] object
  factory TestScriptAssert.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptAssert.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptAssert.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptAssert '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptAssert]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptAssert.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptAssert.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'label',
      label,
    );
    addField(
      'description',
      description,
    );
    addField(
      'direction',
      direction,
    );
    addField(
      'compareToSourceId',
      compareToSourceId,
    );
    addField(
      'compareToSourceExpression',
      compareToSourceExpression,
    );
    addField(
      'compareToSourcePath',
      compareToSourcePath,
    );
    addField(
      'contentType',
      contentType,
    );
    addField(
      'expression',
      expression,
    );
    addField(
      'headerField',
      headerField,
    );
    addField(
      'minimumId',
      minimumId,
    );
    addField(
      'navigationLinks',
      navigationLinks,
    );
    addField(
      'operator',
      operator_,
    );
    addField(
      'path',
      path,
    );
    addField(
      'requestMethod',
      requestMethod,
    );
    addField(
      'requestURL',
      requestURL,
    );
    addField(
      'resource',
      resource,
    );
    addField(
      'response',
      response,
    );
    addField(
      'responseCode',
      responseCode,
    );
    addField(
      'sourceId',
      sourceId,
    );
    addField(
      'validateProfileId',
      validateProfileId,
    );
    addField(
      'value',
      value,
    );
    addField(
      'warningOnly',
      warningOnly,
    );
    return json;
  }

  @override
  TestScriptAssert clone() => copyWith();

  /// Copy function for [TestScriptAssert]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptAssertCopyWith<TestScriptAssert> get copyWith =>
      _$TestScriptAssertCopyWithImpl<TestScriptAssert>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptAssert) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      label,
      o.label,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      direction,
      o.direction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      compareToSourceId,
      o.compareToSourceId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      compareToSourceExpression,
      o.compareToSourceExpression,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      compareToSourcePath,
      o.compareToSourcePath,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contentType,
      o.contentType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expression,
      o.expression,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      headerField,
      o.headerField,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      minimumId,
      o.minimumId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      navigationLinks,
      o.navigationLinks,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      operator_,
      o.operator_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      path,
      o.path,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requestMethod,
      o.requestMethod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requestURL,
      o.requestURL,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resource,
      o.resource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      response,
      o.response,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      responseCode,
      o.responseCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sourceId,
      o.sourceId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      validateProfileId,
      o.validateProfileId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      warningOnly,
      o.warningOnly,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptTest]
/// A test in this script.
class TestScriptTest extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptTest]

  const TestScriptTest({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.description,
    required this.action,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptTest.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptTest(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      action: (json['action'] as List<dynamic>)
          .map<TestScriptAction>(
            (v) => TestScriptAction.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [TestScriptTest]
  /// from a [String] or [YamlMap] object
  factory TestScriptTest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptTest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptTest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptTest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptTest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptTest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptTest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'name',
      name,
    );
    addField(
      'description',
      description,
    );
    addField(
      'action',
      action,
    );
    return json;
  }

  @override
  TestScriptTest clone() => copyWith();

  /// Copy function for [TestScriptTest]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptTestCopyWith<TestScriptTest> get copyWith =>
      _$TestScriptTestCopyWithImpl<TestScriptTest>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptTest) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<TestScriptAction>(
      action,
      o.action,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptAction1]
/// Action would contain either an operation or an assertion.
class TestScriptAction1 extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptAction1]

  const TestScriptAction1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    this.assert_,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptAction1.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptAction1(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      operation: JsonParser.parseObject<TestScriptOperation>(
        json,
        'operation',
        TestScriptOperation.fromJson,
      ),
      assert_: JsonParser.parseObject<TestScriptAssert>(
        json,
        'assert',
        TestScriptAssert.fromJson,
      ),
    );
  }

  /// Deserialize [TestScriptAction1]
  /// from a [String] or [YamlMap] object
  factory TestScriptAction1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptAction1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptAction1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptAction1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptAction1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptAction1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptAction1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'operation',
      operation,
    );
    addField(
      'assert',
      assert_,
    );
    return json;
  }

  @override
  TestScriptAction1 clone() => copyWith();

  /// Copy function for [TestScriptAction1]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptAction1CopyWith<TestScriptAction1> get copyWith =>
      _$TestScriptAction1CopyWithImpl<TestScriptAction1>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptAction1) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      operation,
      o.operation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      assert_,
      o.assert_,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptTeardown]
/// A series of operations required to clean up after all the tests are
/// executed (successfully or otherwise).
class TestScriptTeardown extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptTeardown]

  const TestScriptTeardown({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptTeardown.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptTeardown(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>)
          .map<TestScriptAction>(
            (v) => TestScriptAction.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [TestScriptTeardown]
  /// from a [String] or [YamlMap] object
  factory TestScriptTeardown.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptTeardown.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptTeardown.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptTeardown '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptTeardown]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptTeardown.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptTeardown.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'action',
      action,
    );
    return json;
  }

  @override
  TestScriptTeardown clone() => copyWith();

  /// Copy function for [TestScriptTeardown]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptTeardownCopyWith<TestScriptTeardown> get copyWith =>
      _$TestScriptTeardownCopyWithImpl<TestScriptTeardown>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptTeardown) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<TestScriptAction>(
      action,
      o.action,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptAction2]
/// The teardown action will only contain an operation.
class TestScriptAction2 extends BackboneElement {
  /// Primary constructor for
  /// [TestScriptAction2]

  const TestScriptAction2({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.operation,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptAction2.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestScriptAction2(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      operation: JsonParser.parseObject<TestScriptOperation>(
        json,
        'operation',
        TestScriptOperation.fromJson,
      )!,
    );
  }

  /// Deserialize [TestScriptAction2]
  /// from a [String] or [YamlMap] object
  factory TestScriptAction2.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptAction2.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptAction2.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptAction2 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptAction2]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptAction2.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptAction2.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'operation',
      operation,
    );
    return json;
  }

  @override
  TestScriptAction2 clone() => copyWith();

  /// Copy function for [TestScriptAction2]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestScriptAction2CopyWith<TestScriptAction2> get copyWith =>
      _$TestScriptAction2CopyWithImpl<TestScriptAction2>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestScriptAction2) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      operation,
      o.operation,
    )) {
      return false;
    }
    return true;
  }
}
