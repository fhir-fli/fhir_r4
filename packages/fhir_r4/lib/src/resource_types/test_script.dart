import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

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
          objectPath: 'TestScript',
          resourceType: R4ResourceType.TestScript,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScript.empty() => TestScript(
        url: FhirUri.empty(),
        name: FhirString.empty(),
        status: PublicationStatus.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScript.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript';
    return TestScript(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
      )!,
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
        '$objectPath.identifier',
      ),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      )!,
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
        '$objectPath.status',
      )!,
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
        '$objectPath.experimental',
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
        '$objectPath.description',
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.jurisdiction',
              },
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
        '$objectPath.purpose',
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
        '$objectPath.copyright',
      ),
      origin: (json['origin'] as List<dynamic>?)
          ?.map<TestScriptOrigin>(
            (v) => TestScriptOrigin.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.origin',
              },
            ),
          )
          .toList(),
      destination: (json['destination'] as List<dynamic>?)
          ?.map<TestScriptDestination>(
            (v) => TestScriptDestination.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.destination',
              },
            ),
          )
          .toList(),
      metadata: JsonParser.parseObject<TestScriptMetadata>(
        json,
        'metadata',
        TestScriptMetadata.fromJson,
        '$objectPath.metadata',
      ),
      fixture: (json['fixture'] as List<dynamic>?)
          ?.map<TestScriptFixture>(
            (v) => TestScriptFixture.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.fixture',
              },
            ),
          )
          .toList(),
      profile: (json['profile'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.profile',
              },
            ),
          )
          .toList(),
      variable: (json['variable'] as List<dynamic>?)
          ?.map<TestScriptVariable>(
            (v) => TestScriptVariable.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.variable',
              },
            ),
          )
          .toList(),
      setup: JsonParser.parseObject<TestScriptSetup>(
        json,
        'setup',
        TestScriptSetup.fromJson,
        '$objectPath.setup',
      ),
      test: (json['test'] as List<dynamic>?)
          ?.map<TestScriptTest>(
            (v) => TestScriptTest.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.test',
              },
            ),
          )
          .toList(),
      teardown: JsonParser.parseObject<TestScriptTeardown>(
        json,
        'teardown',
        TestScriptTeardown.fromJson,
        '$objectPath.teardown',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'url',
      'identifier',
      'version',
      'name',
      'title',
      'status',
      'experimental',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'jurisdiction',
      'purpose',
      'copyright',
      'origin',
      'destination',
      'metadata',
      'fixture',
      'profile',
      'variable',
      'setup',
      'test',
      'teardown',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'url':
        fields.add(url);
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'name':
        fields.add(name);
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'status':
        fields.add(status);
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.addAll(jurisdiction!);
        }
      case 'purpose':
        if (purpose != null) {
          fields.add(purpose!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
        }
      case 'origin':
        if (origin != null) {
          fields.addAll(origin!);
        }
      case 'destination':
        if (destination != null) {
          fields.addAll(destination!);
        }
      case 'metadata':
        if (metadata != null) {
          fields.add(metadata!);
        }
      case 'fixture':
        if (fixture != null) {
          fields.addAll(fixture!);
        }
      case 'profile':
        if (profile != null) {
          fields.addAll(profile!);
        }
      case 'variable':
        if (variable != null) {
          fields.addAll(variable!);
        }
      case 'setup':
        if (setup != null) {
          fields.add(setup!);
        }
      case 'test':
        if (test != null) {
          fields.addAll(test!);
        }
      case 'teardown':
        if (teardown != null) {
          fields.add(teardown!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [...?contained, child];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is Identifier) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is FhirString) {
            return copyWith(version: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is PublicationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'experimental':
        {
          if (child is FhirBoolean) {
            return copyWith(experimental: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'publisher':
        {
          if (child is FhirString) {
            return copyWith(publisher: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contact':
        {
          if (child is List<ContactDetail>) {
            // Add all elements from passed list
            final newList = [...?contact, ...child];
            return copyWith(contact: newList);
          } else if (child is ContactDetail) {
            // Add single element to existing list or create new list
            final newList = [...?contact, child];
            return copyWith(contact: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'useContext':
        {
          if (child is List<UsageContext>) {
            // Add all elements from passed list
            final newList = [...?useContext, ...child];
            return copyWith(useContext: newList);
          } else if (child is UsageContext) {
            // Add single element to existing list or create new list
            final newList = [...?useContext, child];
            return copyWith(useContext: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?jurisdiction, ...child];
            return copyWith(jurisdiction: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?jurisdiction, child];
            return copyWith(jurisdiction: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'purpose':
        {
          if (child is FhirMarkdown) {
            return copyWith(purpose: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'copyright':
        {
          if (child is FhirMarkdown) {
            return copyWith(copyright: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'origin':
        {
          if (child is List<TestScriptOrigin>) {
            // Add all elements from passed list
            final newList = [...?origin, ...child];
            return copyWith(origin: newList);
          } else if (child is TestScriptOrigin) {
            // Add single element to existing list or create new list
            final newList = [...?origin, child];
            return copyWith(origin: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'destination':
        {
          if (child is List<TestScriptDestination>) {
            // Add all elements from passed list
            final newList = [...?destination, ...child];
            return copyWith(destination: newList);
          } else if (child is TestScriptDestination) {
            // Add single element to existing list or create new list
            final newList = [...?destination, child];
            return copyWith(destination: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'metadata':
        {
          if (child is TestScriptMetadata) {
            return copyWith(metadata: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fixture':
        {
          if (child is List<TestScriptFixture>) {
            // Add all elements from passed list
            final newList = [...?fixture, ...child];
            return copyWith(fixture: newList);
          } else if (child is TestScriptFixture) {
            // Add single element to existing list or create new list
            final newList = [...?fixture, child];
            return copyWith(fixture: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'profile':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?profile, ...child];
            return copyWith(profile: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?profile, child];
            return copyWith(profile: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variable':
        {
          if (child is List<TestScriptVariable>) {
            // Add all elements from passed list
            final newList = [...?variable, ...child];
            return copyWith(variable: newList);
          } else if (child is TestScriptVariable) {
            // Add single element to existing list or create new list
            final newList = [...?variable, child];
            return copyWith(variable: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'setup':
        {
          if (child is TestScriptSetup) {
            return copyWith(setup: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'test':
        {
          if (child is List<TestScriptTest>) {
            // Add all elements from passed list
            final newList = [...?test, ...child];
            return copyWith(test: newList);
          } else if (child is TestScriptTest) {
            // Add single element to existing list or create new list
            final newList = [...?test, child];
            return copyWith(test: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'teardown':
        {
          if (child is TestScriptTeardown) {
            return copyWith(teardown: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'url':
        return ['FhirUri'];
      case 'identifier':
        return ['Identifier'];
      case 'version':
        return ['FhirString'];
      case 'name':
        return ['FhirString'];
      case 'title':
        return ['FhirString'];
      case 'status':
        return ['FhirCode'];
      case 'experimental':
        return ['FhirBoolean'];
      case 'date':
        return ['FhirDateTime'];
      case 'publisher':
        return ['FhirString'];
      case 'contact':
        return ['ContactDetail'];
      case 'description':
        return ['FhirMarkdown'];
      case 'useContext':
        return ['UsageContext'];
      case 'jurisdiction':
        return ['CodeableConcept'];
      case 'purpose':
        return ['FhirMarkdown'];
      case 'copyright':
        return ['FhirMarkdown'];
      case 'origin':
        return ['TestScriptOrigin'];
      case 'destination':
        return ['TestScriptDestination'];
      case 'metadata':
        return ['TestScriptMetadata'];
      case 'fixture':
        return ['TestScriptFixture'];
      case 'profile':
        return ['Reference'];
      case 'variable':
        return ['TestScriptVariable'];
      case 'setup':
        return ['TestScriptSetup'];
      case 'test':
        return ['TestScriptTest'];
      case 'teardown':
        return ['TestScriptTeardown'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScript]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScript createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'url':
        {
          return copyWith(
            url: FhirUri.empty(),
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: Identifier.empty(),
          );
        }
      case 'version':
        {
          return copyWith(
            version: FhirString.empty(),
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      case 'title':
        {
          return copyWith(
            title: FhirString.empty(),
          );
        }
      case 'status':
        {
          return copyWith(
            status: PublicationStatus.empty(),
          );
        }
      case 'experimental':
        {
          return copyWith(
            experimental: FhirBoolean.empty(),
          );
        }
      case 'date':
        {
          return copyWith(
            date: FhirDateTime.empty(),
          );
        }
      case 'publisher':
        {
          return copyWith(
            publisher: FhirString.empty(),
          );
        }
      case 'contact':
        {
          return copyWith(
            contact: <ContactDetail>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirMarkdown.empty(),
          );
        }
      case 'useContext':
        {
          return copyWith(
            useContext: <UsageContext>[],
          );
        }
      case 'jurisdiction':
        {
          return copyWith(
            jurisdiction: <CodeableConcept>[],
          );
        }
      case 'purpose':
        {
          return copyWith(
            purpose: FhirMarkdown.empty(),
          );
        }
      case 'copyright':
        {
          return copyWith(
            copyright: FhirMarkdown.empty(),
          );
        }
      case 'origin':
        {
          return copyWith(
            origin: <TestScriptOrigin>[],
          );
        }
      case 'destination':
        {
          return copyWith(
            destination: <TestScriptDestination>[],
          );
        }
      case 'metadata':
        {
          return copyWith(
            metadata: TestScriptMetadata.empty(),
          );
        }
      case 'fixture':
        {
          return copyWith(
            fixture: <TestScriptFixture>[],
          );
        }
      case 'profile':
        {
          return copyWith(
            profile: <Reference>[],
          );
        }
      case 'variable':
        {
          return copyWith(
            variable: <TestScriptVariable>[],
          );
        }
      case 'setup':
        {
          return copyWith(
            setup: TestScriptSetup.empty(),
          );
        }
      case 'test':
        {
          return copyWith(
            test: <TestScriptTest>[],
          );
        }
      case 'teardown':
        {
          return copyWith(
            teardown: TestScriptTeardown.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScript clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool version = false,
    bool title = false,
    bool experimental = false,
    bool date = false,
    bool publisher = false,
    bool contact = false,
    bool description = false,
    bool useContext = false,
    bool jurisdiction = false,
    bool purpose = false,
    bool copyright = false,
    bool origin = false,
    bool destination = false,
    bool metadata = false,
    bool fixture = false,
    bool profile = false,
    bool variable = false,
    bool setup = false,
    bool test = false,
    bool teardown = false,
  }) {
    return TestScript(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      url: url,
      identifier: identifier ? null : this.identifier,
      version: version ? null : this.version,
      name: name,
      title: title ? null : this.title,
      status: status,
      experimental: experimental ? null : this.experimental,
      date: date ? null : this.date,
      publisher: publisher ? null : this.publisher,
      contact: contact ? null : this.contact,
      description: description ? null : this.description,
      useContext: useContext ? null : this.useContext,
      jurisdiction: jurisdiction ? null : this.jurisdiction,
      purpose: purpose ? null : this.purpose,
      copyright: copyright ? null : this.copyright,
      origin: origin ? null : this.origin,
      destination: destination ? null : this.destination,
      metadata: metadata ? null : this.metadata,
      fixture: fixture ? null : this.fixture,
      profile: profile ? null : this.profile,
      variable: variable ? null : this.variable,
      setup: setup ? null : this.setup,
      test: test ? null : this.test,
      teardown: teardown ? null : this.teardown,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return TestScript(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      experimental: experimental?.copyWith(
            objectPath: '$newObjectPath.experimental',
          ) ??
          this.experimental,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      publisher: publisher?.copyWith(
            objectPath: '$newObjectPath.publisher',
          ) ??
          this.publisher,
      contact: contact
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contact',
                ),
              )
              .toList() ??
          this.contact,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      useContext: useContext
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.useContext',
                ),
              )
              .toList() ??
          this.useContext,
      jurisdiction: jurisdiction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.jurisdiction',
                ),
              )
              .toList() ??
          this.jurisdiction,
      purpose: purpose?.copyWith(
            objectPath: '$newObjectPath.purpose',
          ) ??
          this.purpose,
      copyright: copyright?.copyWith(
            objectPath: '$newObjectPath.copyright',
          ) ??
          this.copyright,
      origin: origin
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.origin',
                ),
              )
              .toList() ??
          this.origin,
      destination: destination
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.destination',
                ),
              )
              .toList() ??
          this.destination,
      metadata: metadata?.copyWith(
            objectPath: '$newObjectPath.metadata',
          ) ??
          this.metadata,
      fixture: fixture
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.fixture',
                ),
              )
              .toList() ??
          this.fixture,
      profile: profile
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.profile',
                ),
              )
              .toList() ??
          this.profile,
      variable: variable
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.variable',
                ),
              )
              .toList() ??
          this.variable,
      setup: setup?.copyWith(
            objectPath: '$newObjectPath.setup',
          ) ??
          this.setup,
      test: test
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.test',
                ),
              )
              .toList() ??
          this.test,
      teardown: teardown?.copyWith(
            objectPath: '$newObjectPath.teardown',
          ) ??
          this.teardown,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.origin',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptOrigin.empty() => TestScriptOrigin(
        index: FhirInteger.empty(),
        profile: Coding.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptOrigin.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.origin';
    return TestScriptOrigin(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      index: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'index',
        FhirInteger.fromJson,
        '$objectPath.index',
      )!,
      profile: JsonParser.parseObject<Coding>(
        json,
        'profile',
        Coding.fromJson,
        '$objectPath.profile',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'index',
      'profile',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'index':
        fields.add(index);
      case 'profile':
        fields.add(profile);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'index':
        {
          if (child is FhirInteger) {
            return copyWith(index: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'profile':
        {
          if (child is Coding) {
            return copyWith(profile: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'index':
        return ['FhirInteger'];
      case 'profile':
        return ['Coding'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptOrigin]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptOrigin createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'index':
        {
          return copyWith(
            index: FhirInteger.empty(),
          );
        }
      case 'profile':
        {
          return copyWith(
            profile: Coding.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptOrigin clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return TestScriptOrigin(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      index: index,
      profile: profile,
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
    Coding? profile,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptOrigin(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      index: index?.copyWith(
            objectPath: '$newObjectPath.index',
          ) ??
          this.index,
      profile: profile?.copyWith(
            objectPath: '$newObjectPath.profile',
          ) ??
          this.profile,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.destination',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptDestination.empty() => TestScriptDestination(
        index: FhirInteger.empty(),
        profile: Coding.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptDestination.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.destination';
    return TestScriptDestination(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      index: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'index',
        FhirInteger.fromJson,
        '$objectPath.index',
      )!,
      profile: JsonParser.parseObject<Coding>(
        json,
        'profile',
        Coding.fromJson,
        '$objectPath.profile',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'index',
      'profile',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'index':
        fields.add(index);
      case 'profile':
        fields.add(profile);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'index':
        {
          if (child is FhirInteger) {
            return copyWith(index: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'profile':
        {
          if (child is Coding) {
            return copyWith(profile: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'index':
        return ['FhirInteger'];
      case 'profile':
        return ['Coding'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptDestination]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptDestination createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'index':
        {
          return copyWith(
            index: FhirInteger.empty(),
          );
        }
      case 'profile':
        {
          return copyWith(
            profile: Coding.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptDestination clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return TestScriptDestination(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      index: index,
      profile: profile,
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
    Coding? profile,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptDestination(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      index: index?.copyWith(
            objectPath: '$newObjectPath.index',
          ) ??
          this.index,
      profile: profile?.copyWith(
            objectPath: '$newObjectPath.profile',
          ) ??
          this.profile,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.metadata',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptMetadata.empty() => const TestScriptMetadata(
        capability: <TestScriptCapability>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptMetadata.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.metadata';
    return TestScriptMetadata(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      link: (json['link'] as List<dynamic>?)
          ?.map<TestScriptLink>(
            (v) => TestScriptLink.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.link',
              },
            ),
          )
          .toList(),
      capability: (json['capability'] as List<dynamic>)
          .map<TestScriptCapability>(
            (v) => TestScriptCapability.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.capability',
              },
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'link',
      'capability',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'link':
        if (link != null) {
          fields.addAll(link!);
        }
      case 'capability':
        fields.addAll(capability);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'link':
        {
          if (child is List<TestScriptLink>) {
            // Add all elements from passed list
            final newList = [...?link, ...child];
            return copyWith(link: newList);
          } else if (child is TestScriptLink) {
            // Add single element to existing list or create new list
            final newList = [...?link, child];
            return copyWith(link: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'capability':
        {
          if (child is List<TestScriptCapability>) {
            // Add all elements from passed list
            final newList = [...capability, ...child];
            return copyWith(capability: newList);
          } else if (child is TestScriptCapability) {
            // Add single element to existing list or create new list
            final newList = [...capability, child];
            return copyWith(capability: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'link':
        return ['TestScriptLink'];
      case 'capability':
        return ['TestScriptCapability'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptMetadata]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptMetadata createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'link':
        {
          return copyWith(
            link: <TestScriptLink>[],
          );
        }
      case 'capability':
        {
          return copyWith(
            capability: <TestScriptCapability>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptMetadata clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool link = false,
  }) {
    return TestScriptMetadata(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      link: link ? null : this.link,
      capability: capability,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptMetadata(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      link: link
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.link',
                ),
              )
              .toList() ??
          this.link,
      capability: capability
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.capability',
                ),
              )
              .toList() ??
          this.capability,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.metadata.link',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptLink.empty() => TestScriptLink(
        url: FhirUri.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptLink.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.metadata.link';
    return TestScriptLink(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
      )!,
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'url',
      'description',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'url':
        fields.add(url);
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'url':
        return ['FhirUri'];
      case 'description':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptLink]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptLink createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'url':
        {
          return copyWith(
            url: FhirUri.empty(),
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptLink clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
  }) {
    return TestScriptLink(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      url: url,
      description: description ? null : this.description,
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
    FhirString? description,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptLink(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.metadata.capability',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptCapability.empty() => TestScriptCapability(
        required_: FhirBoolean.empty(),
        validated: FhirBoolean.empty(),
        capabilities: FhirCanonical.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptCapability.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.metadata.capability';
    return TestScriptCapability(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      required_: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'required',
        FhirBoolean.fromJson,
        '$objectPath.required',
      )!,
      validated: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'validated',
        FhirBoolean.fromJson,
        '$objectPath.validated',
      )!,
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      origin: JsonParser.parsePrimitiveList<FhirInteger>(
        json,
        'origin',
        FhirInteger.fromJson,
        '$objectPath.origin',
      ),
      destination: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'destination',
        FhirInteger.fromJson,
        '$objectPath.destination',
      ),
      link: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'link',
        FhirUri.fromJson,
        '$objectPath.link',
      ),
      capabilities: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'capabilities',
        FhirCanonical.fromJson,
        '$objectPath.capabilities',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'required',
      'validated',
      'description',
      'origin',
      'destination',
      'link',
      'capabilities',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'required':
        fields.add(required_);
      case 'validated':
        fields.add(validated);
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'origin':
        if (origin != null) {
          fields.addAll(origin!);
        }
      case 'destination':
        if (destination != null) {
          fields.add(destination!);
        }
      case 'link':
        if (link != null) {
          fields.addAll(link!);
        }
      case 'capabilities':
        fields.add(capabilities);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'required':
        {
          if (child is FhirBoolean) {
            return copyWith(required_: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'validated':
        {
          if (child is FhirBoolean) {
            return copyWith(validated: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'origin':
        {
          if (child is List<FhirInteger>) {
            // Add all elements from passed list
            final newList = [...?origin, ...child];
            return copyWith(origin: newList);
          } else if (child is FhirInteger) {
            // Add single element to existing list or create new list
            final newList = [...?origin, child];
            return copyWith(origin: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'destination':
        {
          if (child is FhirInteger) {
            return copyWith(destination: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'link':
        {
          if (child is List<FhirUri>) {
            // Add all elements from passed list
            final newList = [...?link, ...child];
            return copyWith(link: newList);
          } else if (child is FhirUri) {
            // Add single element to existing list or create new list
            final newList = [...?link, child];
            return copyWith(link: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'capabilities':
        {
          if (child is FhirCanonical) {
            return copyWith(capabilities: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'required':
        return ['FhirBoolean'];
      case 'validated':
        return ['FhirBoolean'];
      case 'description':
        return ['FhirString'];
      case 'origin':
        return ['FhirInteger'];
      case 'destination':
        return ['FhirInteger'];
      case 'link':
        return ['FhirUri'];
      case 'capabilities':
        return ['FhirCanonical'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptCapability]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptCapability createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'required':
        {
          return copyWith(
            required_: FhirBoolean.empty(),
          );
        }
      case 'validated':
        {
          return copyWith(
            validated: FhirBoolean.empty(),
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'origin':
        {
          return copyWith(
            origin: <FhirInteger>[],
          );
        }
      case 'destination':
        {
          return copyWith(
            destination: FhirInteger.empty(),
          );
        }
      case 'link':
        {
          return copyWith(
            link: <FhirUri>[],
          );
        }
      case 'capabilities':
        {
          return copyWith(
            capabilities: FhirCanonical.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptCapability clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool origin = false,
    bool destination = false,
    bool link = false,
  }) {
    return TestScriptCapability(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      required_: required_,
      validated: validated,
      description: description ? null : this.description,
      origin: origin ? null : this.origin,
      destination: destination ? null : this.destination,
      link: link ? null : this.link,
      capabilities: capabilities,
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
    FhirBoolean? validated,
    FhirString? description,
    List<FhirInteger>? origin,
    FhirInteger? destination,
    List<FhirUri>? link,
    FhirCanonical? capabilities,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptCapability(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      required_: required_?.copyWith(
            objectPath: '$newObjectPath.required',
          ) ??
          this.required_,
      validated: validated?.copyWith(
            objectPath: '$newObjectPath.validated',
          ) ??
          this.validated,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      origin: origin
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.origin',
                ),
              )
              .toList() ??
          this.origin,
      destination: destination?.copyWith(
            objectPath: '$newObjectPath.destination',
          ) ??
          this.destination,
      link: link
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.link',
                ),
              )
              .toList() ??
          this.link,
      capabilities: capabilities?.copyWith(
            objectPath: '$newObjectPath.capabilities',
          ) ??
          this.capabilities,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.fixture',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptFixture.empty() => TestScriptFixture(
        autocreate: FhirBoolean.empty(),
        autodelete: FhirBoolean.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptFixture.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.fixture';
    return TestScriptFixture(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      autocreate: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'autocreate',
        FhirBoolean.fromJson,
        '$objectPath.autocreate',
      )!,
      autodelete: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'autodelete',
        FhirBoolean.fromJson,
        '$objectPath.autodelete',
      )!,
      resource: JsonParser.parseObject<Reference>(
        json,
        'resource',
        Reference.fromJson,
        '$objectPath.resource',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'autocreate',
      'autodelete',
      'resource',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'autocreate':
        fields.add(autocreate);
      case 'autodelete':
        fields.add(autodelete);
      case 'resource':
        if (resource != null) {
          fields.add(resource!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'autocreate':
        {
          if (child is FhirBoolean) {
            return copyWith(autocreate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'autodelete':
        {
          if (child is FhirBoolean) {
            return copyWith(autodelete: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'resource':
        {
          if (child is Reference) {
            return copyWith(resource: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'autocreate':
        return ['FhirBoolean'];
      case 'autodelete':
        return ['FhirBoolean'];
      case 'resource':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptFixture]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptFixture createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'autocreate':
        {
          return copyWith(
            autocreate: FhirBoolean.empty(),
          );
        }
      case 'autodelete':
        {
          return copyWith(
            autodelete: FhirBoolean.empty(),
          );
        }
      case 'resource':
        {
          return copyWith(
            resource: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptFixture clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool resource = false,
  }) {
    return TestScriptFixture(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      autocreate: autocreate,
      autodelete: autodelete,
      resource: resource ? null : this.resource,
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
    FhirBoolean? autodelete,
    Reference? resource,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptFixture(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      autocreate: autocreate?.copyWith(
            objectPath: '$newObjectPath.autocreate',
          ) ??
          this.autocreate,
      autodelete: autodelete?.copyWith(
            objectPath: '$newObjectPath.autodelete',
          ) ??
          this.autodelete,
      resource: resource?.copyWith(
            objectPath: '$newObjectPath.resource',
          ) ??
          this.resource,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.variable',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptVariable.empty() => TestScriptVariable(
        name: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptVariable.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.variable';
    return TestScriptVariable(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      )!,
      defaultValue: JsonParser.parsePrimitive<FhirString>(
        json,
        'defaultValue',
        FhirString.fromJson,
        '$objectPath.defaultValue',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      expression: JsonParser.parsePrimitive<FhirString>(
        json,
        'expression',
        FhirString.fromJson,
        '$objectPath.expression',
      ),
      headerField: JsonParser.parsePrimitive<FhirString>(
        json,
        'headerField',
        FhirString.fromJson,
        '$objectPath.headerField',
      ),
      hint: JsonParser.parsePrimitive<FhirString>(
        json,
        'hint',
        FhirString.fromJson,
        '$objectPath.hint',
      ),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
        '$objectPath.path',
      ),
      sourceId: JsonParser.parsePrimitive<FhirId>(
        json,
        'sourceId',
        FhirId.fromJson,
        '$objectPath.sourceId',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'name',
      'defaultValue',
      'description',
      'expression',
      'headerField',
      'hint',
      'path',
      'sourceId',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'name':
        fields.add(name);
      case 'defaultValue':
        if (defaultValue != null) {
          fields.add(defaultValue!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'expression':
        if (expression != null) {
          fields.add(expression!);
        }
      case 'headerField':
        if (headerField != null) {
          fields.add(headerField!);
        }
      case 'hint':
        if (hint != null) {
          fields.add(hint!);
        }
      case 'path':
        if (path != null) {
          fields.add(path!);
        }
      case 'sourceId':
        if (sourceId != null) {
          fields.add(sourceId!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'defaultValue':
        {
          if (child is FhirString) {
            return copyWith(defaultValue: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'expression':
        {
          if (child is FhirString) {
            return copyWith(expression: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'headerField':
        {
          if (child is FhirString) {
            return copyWith(headerField: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'hint':
        {
          if (child is FhirString) {
            return copyWith(hint: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'path':
        {
          if (child is FhirString) {
            return copyWith(path: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sourceId':
        {
          if (child is FhirId) {
            return copyWith(sourceId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'name':
        return ['FhirString'];
      case 'defaultValue':
        return ['FhirString'];
      case 'description':
        return ['FhirString'];
      case 'expression':
        return ['FhirString'];
      case 'headerField':
        return ['FhirString'];
      case 'hint':
        return ['FhirString'];
      case 'path':
        return ['FhirString'];
      case 'sourceId':
        return ['FhirId'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptVariable]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptVariable createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      case 'defaultValue':
        {
          return copyWith(
            defaultValue: FhirString.empty(),
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'expression':
        {
          return copyWith(
            expression: FhirString.empty(),
          );
        }
      case 'headerField':
        {
          return copyWith(
            headerField: FhirString.empty(),
          );
        }
      case 'hint':
        {
          return copyWith(
            hint: FhirString.empty(),
          );
        }
      case 'path':
        {
          return copyWith(
            path: FhirString.empty(),
          );
        }
      case 'sourceId':
        {
          return copyWith(
            sourceId: FhirId.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptVariable clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool defaultValue = false,
    bool description = false,
    bool expression = false,
    bool headerField = false,
    bool hint = false,
    bool path = false,
    bool sourceId = false,
  }) {
    return TestScriptVariable(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      name: name,
      defaultValue: defaultValue ? null : this.defaultValue,
      description: description ? null : this.description,
      expression: expression ? null : this.expression,
      headerField: headerField ? null : this.headerField,
      hint: hint ? null : this.hint,
      path: path ? null : this.path,
      sourceId: sourceId ? null : this.sourceId,
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
    FhirString? defaultValue,
    FhirString? description,
    FhirString? expression,
    FhirString? headerField,
    FhirString? hint,
    FhirString? path,
    FhirId? sourceId,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptVariable(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      defaultValue: defaultValue?.copyWith(
            objectPath: '$newObjectPath.defaultValue',
          ) ??
          this.defaultValue,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      expression: expression?.copyWith(
            objectPath: '$newObjectPath.expression',
          ) ??
          this.expression,
      headerField: headerField?.copyWith(
            objectPath: '$newObjectPath.headerField',
          ) ??
          this.headerField,
      hint: hint?.copyWith(
            objectPath: '$newObjectPath.hint',
          ) ??
          this.hint,
      path: path?.copyWith(
            objectPath: '$newObjectPath.path',
          ) ??
          this.path,
      sourceId: sourceId?.copyWith(
            objectPath: '$newObjectPath.sourceId',
          ) ??
          this.sourceId,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.setup',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptSetup.empty() => const TestScriptSetup(
        action: <TestScriptAction>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptSetup.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.setup';
    return TestScriptSetup(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>)
          .map<TestScriptAction>(
            (v) => TestScriptAction.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'action',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'action':
        fields.addAll(action);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'action':
        {
          if (child is List<TestScriptAction>) {
            // Add all elements from passed list
            final newList = [...action, ...child];
            return copyWith(action: newList);
          } else if (child is TestScriptAction) {
            // Add single element to existing list or create new list
            final newList = [...action, child];
            return copyWith(action: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'action':
        return ['TestScriptAction'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptSetup]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptSetup createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'action':
        {
          return copyWith(
            action: <TestScriptAction>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptSetup clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return TestScriptSetup(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      action: action,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptSetup(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      action: action
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.action',
                ),
              )
              .toList() ??
          this.action,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.setup.action',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptAction.empty() => const TestScriptAction();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptAction.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.setup.action';
    return TestScriptAction(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      operation: JsonParser.parseObject<TestScriptOperation>(
        json,
        'operation',
        TestScriptOperation.fromJson,
        '$objectPath.operation',
      ),
      assert_: JsonParser.parseObject<TestScriptAssert>(
        json,
        'assert',
        TestScriptAssert.fromJson,
        '$objectPath.assert',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'operation',
      'assert',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'operation':
        if (operation != null) {
          fields.add(operation!);
        }
      case 'assert':
        if (assert_ != null) {
          fields.add(assert_!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'operation':
        {
          if (child is TestScriptOperation) {
            return copyWith(operation: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'assert':
        {
          if (child is TestScriptAssert) {
            return copyWith(assert_: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'operation':
        return ['TestScriptOperation'];
      case 'assert':
        return ['TestScriptAssert'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptAction]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptAction createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'operation':
        {
          return copyWith(
            operation: TestScriptOperation.empty(),
          );
        }
      case 'assert':
        {
          return copyWith(
            assert_: TestScriptAssert.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptAction clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool operation = false,
    bool assert_ = false,
  }) {
    return TestScriptAction(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      operation: operation ? null : this.operation,
      assert_: assert_ ? null : this.assert_,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptAction(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      operation: operation?.copyWith(
            objectPath: '$newObjectPath.operation',
          ) ??
          this.operation,
      assert_: assert_?.copyWith(
            objectPath: '$newObjectPath.assert',
          ) ??
          this.assert_,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.setup.action.operation',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptOperation.empty() => TestScriptOperation(
        encodeRequestUrl: FhirBoolean.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptOperation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.setup.action.operation';
    return TestScriptOperation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<Coding>(
        json,
        'type',
        Coding.fromJson,
        '$objectPath.type',
      ),
      resource: JsonParser.parsePrimitive<FhirCode>(
        json,
        'resource',
        FhirCode.fromJson,
        '$objectPath.resource',
      ),
      label: JsonParser.parsePrimitive<FhirString>(
        json,
        'label',
        FhirString.fromJson,
        '$objectPath.label',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      accept: JsonParser.parsePrimitive<FhirCode>(
        json,
        'accept',
        FhirCode.fromJson,
        '$objectPath.accept',
      ),
      contentType: JsonParser.parsePrimitive<FhirCode>(
        json,
        'contentType',
        FhirCode.fromJson,
        '$objectPath.contentType',
      ),
      destination: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'destination',
        FhirInteger.fromJson,
        '$objectPath.destination',
      ),
      encodeRequestUrl: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'encodeRequestUrl',
        FhirBoolean.fromJson,
        '$objectPath.encodeRequestUrl',
      )!,
      method: JsonParser.parsePrimitive<TestScriptRequestMethodCode>(
        json,
        'method',
        TestScriptRequestMethodCode.fromJson,
        '$objectPath.method',
      ),
      origin: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'origin',
        FhirInteger.fromJson,
        '$objectPath.origin',
      ),
      params: JsonParser.parsePrimitive<FhirString>(
        json,
        'params',
        FhirString.fromJson,
        '$objectPath.params',
      ),
      requestHeader: (json['requestHeader'] as List<dynamic>?)
          ?.map<TestScriptRequestHeader>(
            (v) => TestScriptRequestHeader.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.requestHeader',
              },
            ),
          )
          .toList(),
      requestId: JsonParser.parsePrimitive<FhirId>(
        json,
        'requestId',
        FhirId.fromJson,
        '$objectPath.requestId',
      ),
      responseId: JsonParser.parsePrimitive<FhirId>(
        json,
        'responseId',
        FhirId.fromJson,
        '$objectPath.responseId',
      ),
      sourceId: JsonParser.parsePrimitive<FhirId>(
        json,
        'sourceId',
        FhirId.fromJson,
        '$objectPath.sourceId',
      ),
      targetId: JsonParser.parsePrimitive<FhirId>(
        json,
        'targetId',
        FhirId.fromJson,
        '$objectPath.targetId',
      ),
      url: JsonParser.parsePrimitive<FhirString>(
        json,
        'url',
        FhirString.fromJson,
        '$objectPath.url',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'resource',
      'label',
      'description',
      'accept',
      'contentType',
      'destination',
      'encodeRequestUrl',
      'method',
      'origin',
      'params',
      'requestHeader',
      'requestId',
      'responseId',
      'sourceId',
      'targetId',
      'url',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'resource':
        if (resource != null) {
          fields.add(resource!);
        }
      case 'label':
        if (label != null) {
          fields.add(label!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'accept':
        if (accept != null) {
          fields.add(accept!);
        }
      case 'contentType':
        if (contentType != null) {
          fields.add(contentType!);
        }
      case 'destination':
        if (destination != null) {
          fields.add(destination!);
        }
      case 'encodeRequestUrl':
        fields.add(encodeRequestUrl);
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'origin':
        if (origin != null) {
          fields.add(origin!);
        }
      case 'params':
        if (params != null) {
          fields.add(params!);
        }
      case 'requestHeader':
        if (requestHeader != null) {
          fields.addAll(requestHeader!);
        }
      case 'requestId':
        if (requestId != null) {
          fields.add(requestId!);
        }
      case 'responseId':
        if (responseId != null) {
          fields.add(responseId!);
        }
      case 'sourceId':
        if (sourceId != null) {
          fields.add(sourceId!);
        }
      case 'targetId':
        if (targetId != null) {
          fields.add(targetId!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is Coding) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'resource':
        {
          if (child is FhirCode) {
            return copyWith(resource: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'label':
        {
          if (child is FhirString) {
            return copyWith(label: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'accept':
        {
          if (child is FhirCode) {
            return copyWith(accept: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contentType':
        {
          if (child is FhirCode) {
            return copyWith(contentType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'destination':
        {
          if (child is FhirInteger) {
            return copyWith(destination: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'encodeRequestUrl':
        {
          if (child is FhirBoolean) {
            return copyWith(encodeRequestUrl: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'method':
        {
          if (child is TestScriptRequestMethodCode) {
            return copyWith(method: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'origin':
        {
          if (child is FhirInteger) {
            return copyWith(origin: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'params':
        {
          if (child is FhirString) {
            return copyWith(params: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'requestHeader':
        {
          if (child is List<TestScriptRequestHeader>) {
            // Add all elements from passed list
            final newList = [...?requestHeader, ...child];
            return copyWith(requestHeader: newList);
          } else if (child is TestScriptRequestHeader) {
            // Add single element to existing list or create new list
            final newList = [...?requestHeader, child];
            return copyWith(requestHeader: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'requestId':
        {
          if (child is FhirId) {
            return copyWith(requestId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'responseId':
        {
          if (child is FhirId) {
            return copyWith(responseId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sourceId':
        {
          if (child is FhirId) {
            return copyWith(sourceId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetId':
        {
          if (child is FhirId) {
            return copyWith(targetId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirString) {
            return copyWith(url: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['Coding'];
      case 'resource':
        return ['FhirCode'];
      case 'label':
        return ['FhirString'];
      case 'description':
        return ['FhirString'];
      case 'accept':
        return ['FhirCode'];
      case 'contentType':
        return ['FhirCode'];
      case 'destination':
        return ['FhirInteger'];
      case 'encodeRequestUrl':
        return ['FhirBoolean'];
      case 'method':
        return ['FhirCode'];
      case 'origin':
        return ['FhirInteger'];
      case 'params':
        return ['FhirString'];
      case 'requestHeader':
        return ['TestScriptRequestHeader'];
      case 'requestId':
        return ['FhirId'];
      case 'responseId':
        return ['FhirId'];
      case 'sourceId':
        return ['FhirId'];
      case 'targetId':
        return ['FhirId'];
      case 'url':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptOperation]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptOperation createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: Coding.empty(),
          );
        }
      case 'resource':
        {
          return copyWith(
            resource: FhirCode.empty(),
          );
        }
      case 'label':
        {
          return copyWith(
            label: FhirString.empty(),
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'accept':
        {
          return copyWith(
            accept: FhirCode.empty(),
          );
        }
      case 'contentType':
        {
          return copyWith(
            contentType: FhirCode.empty(),
          );
        }
      case 'destination':
        {
          return copyWith(
            destination: FhirInteger.empty(),
          );
        }
      case 'encodeRequestUrl':
        {
          return copyWith(
            encodeRequestUrl: FhirBoolean.empty(),
          );
        }
      case 'method':
        {
          return copyWith(
            method: TestScriptRequestMethodCode.empty(),
          );
        }
      case 'origin':
        {
          return copyWith(
            origin: FhirInteger.empty(),
          );
        }
      case 'params':
        {
          return copyWith(
            params: FhirString.empty(),
          );
        }
      case 'requestHeader':
        {
          return copyWith(
            requestHeader: <TestScriptRequestHeader>[],
          );
        }
      case 'requestId':
        {
          return copyWith(
            requestId: FhirId.empty(),
          );
        }
      case 'responseId':
        {
          return copyWith(
            responseId: FhirId.empty(),
          );
        }
      case 'sourceId':
        {
          return copyWith(
            sourceId: FhirId.empty(),
          );
        }
      case 'targetId':
        {
          return copyWith(
            targetId: FhirId.empty(),
          );
        }
      case 'url':
        {
          return copyWith(
            url: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptOperation clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool resource = false,
    bool label = false,
    bool description = false,
    bool accept = false,
    bool contentType = false,
    bool destination = false,
    bool method = false,
    bool origin = false,
    bool params = false,
    bool requestHeader = false,
    bool requestId = false,
    bool responseId = false,
    bool sourceId = false,
    bool targetId = false,
    bool url = false,
  }) {
    return TestScriptOperation(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type ? null : this.type,
      resource: resource ? null : this.resource,
      label: label ? null : this.label,
      description: description ? null : this.description,
      accept: accept ? null : this.accept,
      contentType: contentType ? null : this.contentType,
      destination: destination ? null : this.destination,
      encodeRequestUrl: encodeRequestUrl,
      method: method ? null : this.method,
      origin: origin ? null : this.origin,
      params: params ? null : this.params,
      requestHeader: requestHeader ? null : this.requestHeader,
      requestId: requestId ? null : this.requestId,
      responseId: responseId ? null : this.responseId,
      sourceId: sourceId ? null : this.sourceId,
      targetId: targetId ? null : this.targetId,
      url: url ? null : this.url,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptOperation(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      resource: resource?.copyWith(
            objectPath: '$newObjectPath.resource',
          ) ??
          this.resource,
      label: label?.copyWith(
            objectPath: '$newObjectPath.label',
          ) ??
          this.label,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      accept: accept?.copyWith(
            objectPath: '$newObjectPath.accept',
          ) ??
          this.accept,
      contentType: contentType?.copyWith(
            objectPath: '$newObjectPath.contentType',
          ) ??
          this.contentType,
      destination: destination?.copyWith(
            objectPath: '$newObjectPath.destination',
          ) ??
          this.destination,
      encodeRequestUrl: encodeRequestUrl?.copyWith(
            objectPath: '$newObjectPath.encodeRequestUrl',
          ) ??
          this.encodeRequestUrl,
      method: method?.copyWith(
            objectPath: '$newObjectPath.method',
          ) ??
          this.method,
      origin: origin?.copyWith(
            objectPath: '$newObjectPath.origin',
          ) ??
          this.origin,
      params: params?.copyWith(
            objectPath: '$newObjectPath.params',
          ) ??
          this.params,
      requestHeader: requestHeader
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.requestHeader',
                ),
              )
              .toList() ??
          this.requestHeader,
      requestId: requestId?.copyWith(
            objectPath: '$newObjectPath.requestId',
          ) ??
          this.requestId,
      responseId: responseId?.copyWith(
            objectPath: '$newObjectPath.responseId',
          ) ??
          this.responseId,
      sourceId: sourceId?.copyWith(
            objectPath: '$newObjectPath.sourceId',
          ) ??
          this.sourceId,
      targetId: targetId?.copyWith(
            objectPath: '$newObjectPath.targetId',
          ) ??
          this.targetId,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.setup.action.operation.requestHeader',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptRequestHeader.empty() => TestScriptRequestHeader(
        field: FhirString.empty(),
        value: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptRequestHeader.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.setup.action.operation.requestHeader';
    return TestScriptRequestHeader(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      field: JsonParser.parsePrimitive<FhirString>(
        json,
        'field',
        FhirString.fromJson,
        '$objectPath.field',
      )!,
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
        '$objectPath.value',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'field',
      'value',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'field':
        fields.add(field);
      case 'value':
        fields.add(value);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'field':
        {
          if (child is FhirString) {
            return copyWith(field: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is FhirString) {
            return copyWith(value: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'field':
        return ['FhirString'];
      case 'value':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptRequestHeader]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptRequestHeader createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'field':
        {
          return copyWith(
            field: FhirString.empty(),
          );
        }
      case 'value':
        {
          return copyWith(
            value: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptRequestHeader clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return TestScriptRequestHeader(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      field: field,
      value: value,
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
    FhirString? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptRequestHeader(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      field: field?.copyWith(
            objectPath: '$newObjectPath.field',
          ) ??
          this.field,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.setup.action.assert',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptAssert.empty() => TestScriptAssert(
        warningOnly: FhirBoolean.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptAssert.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.setup.action.assert';
    return TestScriptAssert(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      label: JsonParser.parsePrimitive<FhirString>(
        json,
        'label',
        FhirString.fromJson,
        '$objectPath.label',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      direction: JsonParser.parsePrimitive<AssertionDirectionType>(
        json,
        'direction',
        AssertionDirectionType.fromJson,
        '$objectPath.direction',
      ),
      compareToSourceId: JsonParser.parsePrimitive<FhirString>(
        json,
        'compareToSourceId',
        FhirString.fromJson,
        '$objectPath.compareToSourceId',
      ),
      compareToSourceExpression: JsonParser.parsePrimitive<FhirString>(
        json,
        'compareToSourceExpression',
        FhirString.fromJson,
        '$objectPath.compareToSourceExpression',
      ),
      compareToSourcePath: JsonParser.parsePrimitive<FhirString>(
        json,
        'compareToSourcePath',
        FhirString.fromJson,
        '$objectPath.compareToSourcePath',
      ),
      contentType: JsonParser.parsePrimitive<FhirCode>(
        json,
        'contentType',
        FhirCode.fromJson,
        '$objectPath.contentType',
      ),
      expression: JsonParser.parsePrimitive<FhirString>(
        json,
        'expression',
        FhirString.fromJson,
        '$objectPath.expression',
      ),
      headerField: JsonParser.parsePrimitive<FhirString>(
        json,
        'headerField',
        FhirString.fromJson,
        '$objectPath.headerField',
      ),
      minimumId: JsonParser.parsePrimitive<FhirString>(
        json,
        'minimumId',
        FhirString.fromJson,
        '$objectPath.minimumId',
      ),
      navigationLinks: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'navigationLinks',
        FhirBoolean.fromJson,
        '$objectPath.navigationLinks',
      ),
      operator_: JsonParser.parsePrimitive<AssertionOperatorType>(
        json,
        'operator',
        AssertionOperatorType.fromJson,
        '$objectPath.operator',
      ),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
        '$objectPath.path',
      ),
      requestMethod: JsonParser.parsePrimitive<TestScriptRequestMethodCode>(
        json,
        'requestMethod',
        TestScriptRequestMethodCode.fromJson,
        '$objectPath.requestMethod',
      ),
      requestURL: JsonParser.parsePrimitive<FhirString>(
        json,
        'requestURL',
        FhirString.fromJson,
        '$objectPath.requestURL',
      ),
      resource: JsonParser.parsePrimitive<FhirCode>(
        json,
        'resource',
        FhirCode.fromJson,
        '$objectPath.resource',
      ),
      response: JsonParser.parsePrimitive<AssertionResponseTypes>(
        json,
        'response',
        AssertionResponseTypes.fromJson,
        '$objectPath.response',
      ),
      responseCode: JsonParser.parsePrimitive<FhirString>(
        json,
        'responseCode',
        FhirString.fromJson,
        '$objectPath.responseCode',
      ),
      sourceId: JsonParser.parsePrimitive<FhirId>(
        json,
        'sourceId',
        FhirId.fromJson,
        '$objectPath.sourceId',
      ),
      validateProfileId: JsonParser.parsePrimitive<FhirId>(
        json,
        'validateProfileId',
        FhirId.fromJson,
        '$objectPath.validateProfileId',
      ),
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
        '$objectPath.value',
      ),
      warningOnly: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'warningOnly',
        FhirBoolean.fromJson,
        '$objectPath.warningOnly',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'label',
      'description',
      'direction',
      'compareToSourceId',
      'compareToSourceExpression',
      'compareToSourcePath',
      'contentType',
      'expression',
      'headerField',
      'minimumId',
      'navigationLinks',
      'operator',
      'path',
      'requestMethod',
      'requestURL',
      'resource',
      'response',
      'responseCode',
      'sourceId',
      'validateProfileId',
      'value',
      'warningOnly',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'label':
        if (label != null) {
          fields.add(label!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'direction':
        if (direction != null) {
          fields.add(direction!);
        }
      case 'compareToSourceId':
        if (compareToSourceId != null) {
          fields.add(compareToSourceId!);
        }
      case 'compareToSourceExpression':
        if (compareToSourceExpression != null) {
          fields.add(compareToSourceExpression!);
        }
      case 'compareToSourcePath':
        if (compareToSourcePath != null) {
          fields.add(compareToSourcePath!);
        }
      case 'contentType':
        if (contentType != null) {
          fields.add(contentType!);
        }
      case 'expression':
        if (expression != null) {
          fields.add(expression!);
        }
      case 'headerField':
        if (headerField != null) {
          fields.add(headerField!);
        }
      case 'minimumId':
        if (minimumId != null) {
          fields.add(minimumId!);
        }
      case 'navigationLinks':
        if (navigationLinks != null) {
          fields.add(navigationLinks!);
        }
      case 'operator':
        if (operator_ != null) {
          fields.add(operator_!);
        }
      case 'path':
        if (path != null) {
          fields.add(path!);
        }
      case 'requestMethod':
        if (requestMethod != null) {
          fields.add(requestMethod!);
        }
      case 'requestURL':
        if (requestURL != null) {
          fields.add(requestURL!);
        }
      case 'resource':
        if (resource != null) {
          fields.add(resource!);
        }
      case 'response':
        if (response != null) {
          fields.add(response!);
        }
      case 'responseCode':
        if (responseCode != null) {
          fields.add(responseCode!);
        }
      case 'sourceId':
        if (sourceId != null) {
          fields.add(sourceId!);
        }
      case 'validateProfileId':
        if (validateProfileId != null) {
          fields.add(validateProfileId!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
        }
      case 'warningOnly':
        fields.add(warningOnly);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'label':
        {
          if (child is FhirString) {
            return copyWith(label: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'direction':
        {
          if (child is AssertionDirectionType) {
            return copyWith(direction: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'compareToSourceId':
        {
          if (child is FhirString) {
            return copyWith(compareToSourceId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'compareToSourceExpression':
        {
          if (child is FhirString) {
            return copyWith(compareToSourceExpression: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'compareToSourcePath':
        {
          if (child is FhirString) {
            return copyWith(compareToSourcePath: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contentType':
        {
          if (child is FhirCode) {
            return copyWith(contentType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'expression':
        {
          if (child is FhirString) {
            return copyWith(expression: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'headerField':
        {
          if (child is FhirString) {
            return copyWith(headerField: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minimumId':
        {
          if (child is FhirString) {
            return copyWith(minimumId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'navigationLinks':
        {
          if (child is FhirBoolean) {
            return copyWith(navigationLinks: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'operator':
        {
          if (child is AssertionOperatorType) {
            return copyWith(operator_: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'path':
        {
          if (child is FhirString) {
            return copyWith(path: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'requestMethod':
        {
          if (child is TestScriptRequestMethodCode) {
            return copyWith(requestMethod: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'requestURL':
        {
          if (child is FhirString) {
            return copyWith(requestURL: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'resource':
        {
          if (child is FhirCode) {
            return copyWith(resource: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'response':
        {
          if (child is AssertionResponseTypes) {
            return copyWith(response: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'responseCode':
        {
          if (child is FhirString) {
            return copyWith(responseCode: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sourceId':
        {
          if (child is FhirId) {
            return copyWith(sourceId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'validateProfileId':
        {
          if (child is FhirId) {
            return copyWith(validateProfileId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is FhirString) {
            return copyWith(value: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'warningOnly':
        {
          if (child is FhirBoolean) {
            return copyWith(warningOnly: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'label':
        return ['FhirString'];
      case 'description':
        return ['FhirString'];
      case 'direction':
        return ['FhirCode'];
      case 'compareToSourceId':
        return ['FhirString'];
      case 'compareToSourceExpression':
        return ['FhirString'];
      case 'compareToSourcePath':
        return ['FhirString'];
      case 'contentType':
        return ['FhirCode'];
      case 'expression':
        return ['FhirString'];
      case 'headerField':
        return ['FhirString'];
      case 'minimumId':
        return ['FhirString'];
      case 'navigationLinks':
        return ['FhirBoolean'];
      case 'operator':
        return ['FhirCode'];
      case 'path':
        return ['FhirString'];
      case 'requestMethod':
        return ['FhirCode'];
      case 'requestURL':
        return ['FhirString'];
      case 'resource':
        return ['FhirCode'];
      case 'response':
        return ['FhirCode'];
      case 'responseCode':
        return ['FhirString'];
      case 'sourceId':
        return ['FhirId'];
      case 'validateProfileId':
        return ['FhirId'];
      case 'value':
        return ['FhirString'];
      case 'warningOnly':
        return ['FhirBoolean'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptAssert]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptAssert createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'label':
        {
          return copyWith(
            label: FhirString.empty(),
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'direction':
        {
          return copyWith(
            direction: AssertionDirectionType.empty(),
          );
        }
      case 'compareToSourceId':
        {
          return copyWith(
            compareToSourceId: FhirString.empty(),
          );
        }
      case 'compareToSourceExpression':
        {
          return copyWith(
            compareToSourceExpression: FhirString.empty(),
          );
        }
      case 'compareToSourcePath':
        {
          return copyWith(
            compareToSourcePath: FhirString.empty(),
          );
        }
      case 'contentType':
        {
          return copyWith(
            contentType: FhirCode.empty(),
          );
        }
      case 'expression':
        {
          return copyWith(
            expression: FhirString.empty(),
          );
        }
      case 'headerField':
        {
          return copyWith(
            headerField: FhirString.empty(),
          );
        }
      case 'minimumId':
        {
          return copyWith(
            minimumId: FhirString.empty(),
          );
        }
      case 'navigationLinks':
        {
          return copyWith(
            navigationLinks: FhirBoolean.empty(),
          );
        }
      case 'operator':
        {
          return copyWith(
            operator_: AssertionOperatorType.empty(),
          );
        }
      case 'path':
        {
          return copyWith(
            path: FhirString.empty(),
          );
        }
      case 'requestMethod':
        {
          return copyWith(
            requestMethod: TestScriptRequestMethodCode.empty(),
          );
        }
      case 'requestURL':
        {
          return copyWith(
            requestURL: FhirString.empty(),
          );
        }
      case 'resource':
        {
          return copyWith(
            resource: FhirCode.empty(),
          );
        }
      case 'response':
        {
          return copyWith(
            response: AssertionResponseTypes.empty(),
          );
        }
      case 'responseCode':
        {
          return copyWith(
            responseCode: FhirString.empty(),
          );
        }
      case 'sourceId':
        {
          return copyWith(
            sourceId: FhirId.empty(),
          );
        }
      case 'validateProfileId':
        {
          return copyWith(
            validateProfileId: FhirId.empty(),
          );
        }
      case 'value':
        {
          return copyWith(
            value: FhirString.empty(),
          );
        }
      case 'warningOnly':
        {
          return copyWith(
            warningOnly: FhirBoolean.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptAssert clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool label = false,
    bool description = false,
    bool direction = false,
    bool compareToSourceId = false,
    bool compareToSourceExpression = false,
    bool compareToSourcePath = false,
    bool contentType = false,
    bool expression = false,
    bool headerField = false,
    bool minimumId = false,
    bool navigationLinks = false,
    bool operator_ = false,
    bool path = false,
    bool requestMethod = false,
    bool requestURL = false,
    bool resource = false,
    bool response = false,
    bool responseCode = false,
    bool sourceId = false,
    bool validateProfileId = false,
    bool value = false,
  }) {
    return TestScriptAssert(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      label: label ? null : this.label,
      description: description ? null : this.description,
      direction: direction ? null : this.direction,
      compareToSourceId: compareToSourceId ? null : this.compareToSourceId,
      compareToSourceExpression:
          compareToSourceExpression ? null : this.compareToSourceExpression,
      compareToSourcePath:
          compareToSourcePath ? null : this.compareToSourcePath,
      contentType: contentType ? null : this.contentType,
      expression: expression ? null : this.expression,
      headerField: headerField ? null : this.headerField,
      minimumId: minimumId ? null : this.minimumId,
      navigationLinks: navigationLinks ? null : this.navigationLinks,
      operator_: operator_ ? null : this.operator_,
      path: path ? null : this.path,
      requestMethod: requestMethod ? null : this.requestMethod,
      requestURL: requestURL ? null : this.requestURL,
      resource: resource ? null : this.resource,
      response: response ? null : this.response,
      responseCode: responseCode ? null : this.responseCode,
      sourceId: sourceId ? null : this.sourceId,
      validateProfileId: validateProfileId ? null : this.validateProfileId,
      value: value ? null : this.value,
      warningOnly: warningOnly,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptAssert(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      label: label?.copyWith(
            objectPath: '$newObjectPath.label',
          ) ??
          this.label,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      direction: direction?.copyWith(
            objectPath: '$newObjectPath.direction',
          ) ??
          this.direction,
      compareToSourceId: compareToSourceId?.copyWith(
            objectPath: '$newObjectPath.compareToSourceId',
          ) ??
          this.compareToSourceId,
      compareToSourceExpression: compareToSourceExpression?.copyWith(
            objectPath: '$newObjectPath.compareToSourceExpression',
          ) ??
          this.compareToSourceExpression,
      compareToSourcePath: compareToSourcePath?.copyWith(
            objectPath: '$newObjectPath.compareToSourcePath',
          ) ??
          this.compareToSourcePath,
      contentType: contentType?.copyWith(
            objectPath: '$newObjectPath.contentType',
          ) ??
          this.contentType,
      expression: expression?.copyWith(
            objectPath: '$newObjectPath.expression',
          ) ??
          this.expression,
      headerField: headerField?.copyWith(
            objectPath: '$newObjectPath.headerField',
          ) ??
          this.headerField,
      minimumId: minimumId?.copyWith(
            objectPath: '$newObjectPath.minimumId',
          ) ??
          this.minimumId,
      navigationLinks: navigationLinks?.copyWith(
            objectPath: '$newObjectPath.navigationLinks',
          ) ??
          this.navigationLinks,
      operator_: operator_?.copyWith(
            objectPath: '$newObjectPath.operator',
          ) ??
          this.operator_,
      path: path?.copyWith(
            objectPath: '$newObjectPath.path',
          ) ??
          this.path,
      requestMethod: requestMethod?.copyWith(
            objectPath: '$newObjectPath.requestMethod',
          ) ??
          this.requestMethod,
      requestURL: requestURL?.copyWith(
            objectPath: '$newObjectPath.requestURL',
          ) ??
          this.requestURL,
      resource: resource?.copyWith(
            objectPath: '$newObjectPath.resource',
          ) ??
          this.resource,
      response: response?.copyWith(
            objectPath: '$newObjectPath.response',
          ) ??
          this.response,
      responseCode: responseCode?.copyWith(
            objectPath: '$newObjectPath.responseCode',
          ) ??
          this.responseCode,
      sourceId: sourceId?.copyWith(
            objectPath: '$newObjectPath.sourceId',
          ) ??
          this.sourceId,
      validateProfileId: validateProfileId?.copyWith(
            objectPath: '$newObjectPath.validateProfileId',
          ) ??
          this.validateProfileId,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
      warningOnly: warningOnly?.copyWith(
            objectPath: '$newObjectPath.warningOnly',
          ) ??
          this.warningOnly,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.test',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptTest.empty() => const TestScriptTest(
        action: <TestScriptAction>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptTest.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.test';
    return TestScriptTest(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      action: (json['action'] as List<dynamic>)
          .map<TestScriptAction>(
            (v) => TestScriptAction.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'name',
      'description',
      'action',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'action':
        fields.addAll(action);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'action':
        {
          if (child is List<TestScriptAction>) {
            // Add all elements from passed list
            final newList = [...action, ...child];
            return copyWith(action: newList);
          } else if (child is TestScriptAction) {
            // Add single element to existing list or create new list
            final newList = [...action, child];
            return copyWith(action: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'name':
        return ['FhirString'];
      case 'description':
        return ['FhirString'];
      case 'action':
        return ['TestScriptAction'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptTest]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptTest createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'action':
        {
          return copyWith(
            action: <TestScriptAction>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptTest clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool name = false,
    bool description = false,
  }) {
    return TestScriptTest(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      name: name ? null : this.name,
      description: description ? null : this.description,
      action: action,
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
    FhirString? description,
    List<TestScriptAction>? action,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptTest(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      action: action
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.action',
                ),
              )
              .toList() ??
          this.action,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.test.action',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptAction1.empty() => const TestScriptAction1();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptAction1.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.test.action';
    return TestScriptAction1(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      operation: JsonParser.parseObject<TestScriptOperation>(
        json,
        'operation',
        TestScriptOperation.fromJson,
        '$objectPath.operation',
      ),
      assert_: JsonParser.parseObject<TestScriptAssert>(
        json,
        'assert',
        TestScriptAssert.fromJson,
        '$objectPath.assert',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'operation',
      'assert',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'operation':
        if (operation != null) {
          fields.add(operation!);
        }
      case 'assert':
        if (assert_ != null) {
          fields.add(assert_!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'operation':
        {
          if (child is TestScriptOperation) {
            return copyWith(operation: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'assert':
        {
          if (child is TestScriptAssert) {
            return copyWith(assert_: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'operation':
        return ['TestScriptOperation'];
      case 'assert':
        return ['TestScriptAssert'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptAction1]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptAction1 createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'operation':
        {
          return copyWith(
            operation: TestScriptOperation.empty(),
          );
        }
      case 'assert':
        {
          return copyWith(
            assert_: TestScriptAssert.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptAction1 clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool operation = false,
    bool assert_ = false,
  }) {
    return TestScriptAction1(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      operation: operation ? null : this.operation,
      assert_: assert_ ? null : this.assert_,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptAction1(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      operation: operation?.copyWith(
            objectPath: '$newObjectPath.operation',
          ) ??
          this.operation,
      assert_: assert_?.copyWith(
            objectPath: '$newObjectPath.assert',
          ) ??
          this.assert_,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.teardown',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptTeardown.empty() => const TestScriptTeardown(
        action: <TestScriptAction>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptTeardown.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.teardown';
    return TestScriptTeardown(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>)
          .map<TestScriptAction>(
            (v) => TestScriptAction.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'action',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'action':
        fields.addAll(action);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'action':
        {
          if (child is List<TestScriptAction>) {
            // Add all elements from passed list
            final newList = [...action, ...child];
            return copyWith(action: newList);
          } else if (child is TestScriptAction) {
            // Add single element to existing list or create new list
            final newList = [...action, child];
            return copyWith(action: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'action':
        return ['TestScriptAction'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptTeardown]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptTeardown createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'action':
        {
          return copyWith(
            action: <TestScriptAction>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptTeardown clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return TestScriptTeardown(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      action: action,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptTeardown(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      action: action
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.action',
                ),
              )
              .toList() ??
          this.action,
    );
  }

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
  }) : super(
          objectPath: 'TestScript.teardown.action',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TestScriptAction2.empty() => TestScriptAction2(
        operation: TestScriptOperation.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptAction2.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.teardown.action';
    return TestScriptAction2(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      operation: JsonParser.parseObject<TestScriptOperation>(
        json,
        'operation',
        TestScriptOperation.fromJson,
        '$objectPath.operation',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'operation',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'operation':
        fields.add(operation);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'operation':
        {
          if (child is TestScriptOperation) {
            return copyWith(operation: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'operation':
        return ['TestScriptOperation'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptAction2]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TestScriptAction2 createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'operation':
        {
          return copyWith(
            operation: TestScriptOperation.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TestScriptAction2 clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return TestScriptAction2(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      operation: operation,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TestScriptAction2(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      operation: operation?.copyWith(
            objectPath: '$newObjectPath.operation',
          ) ??
          this.operation,
    );
  }

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
