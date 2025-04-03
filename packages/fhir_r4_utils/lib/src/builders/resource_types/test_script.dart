import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        R4ResourceType,
        StringExtensionForFHIR,
        TestScript,
        TestScriptAction,
        TestScriptAction1,
        TestScriptAction2,
        TestScriptAssert,
        TestScriptCapability,
        TestScriptDestination,
        TestScriptFixture,
        TestScriptLink,
        TestScriptMetadata,
        TestScriptOperation,
        TestScriptOrigin,
        TestScriptRequestHeader,
        TestScriptSetup,
        TestScriptTeardown,
        TestScriptTest,
        TestScriptVariable,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [TestScriptBuilder]
/// A structured set of tests against a FHIR server or client
/// implementation to determine compliance against the FHIR specification.
class TestScriptBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [TestScriptBuilder]

  TestScriptBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
    this.title,
    this.status,
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
  /// For Builder classes, no fields are required
  factory TestScriptBuilder.empty() => TestScriptBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript';
    return TestScriptBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      status: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'status',
        PublicationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      experimental: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'experimental',
        FhirBooleanBuilder.fromJson,
        '$objectPath.experimental',
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      publisher: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'publisher',
        FhirStringBuilder.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContextBuilder>(
            (v) => UsageContextBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.jurisdiction',
              },
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'purpose',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.purpose',
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'copyright',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.copyright',
      ),
      origin: (json['origin'] as List<dynamic>?)
          ?.map<TestScriptOriginBuilder>(
            (v) => TestScriptOriginBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.origin',
              },
            ),
          )
          .toList(),
      destination: (json['destination'] as List<dynamic>?)
          ?.map<TestScriptDestinationBuilder>(
            (v) => TestScriptDestinationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.destination',
              },
            ),
          )
          .toList(),
      metadata: JsonParser.parseObject<TestScriptMetadataBuilder>(
        json,
        'metadata',
        TestScriptMetadataBuilder.fromJson,
        '$objectPath.metadata',
      ),
      fixture: (json['fixture'] as List<dynamic>?)
          ?.map<TestScriptFixtureBuilder>(
            (v) => TestScriptFixtureBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.fixture',
              },
            ),
          )
          .toList(),
      profile: (json['profile'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.profile',
              },
            ),
          )
          .toList(),
      variable: (json['variable'] as List<dynamic>?)
          ?.map<TestScriptVariableBuilder>(
            (v) => TestScriptVariableBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.variable',
              },
            ),
          )
          .toList(),
      setup: JsonParser.parseObject<TestScriptSetupBuilder>(
        json,
        'setup',
        TestScriptSetupBuilder.fromJson,
        '$objectPath.setup',
      ),
      test: (json['test'] as List<dynamic>?)
          ?.map<TestScriptTestBuilder>(
            (v) => TestScriptTestBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.test',
              },
            ),
          )
          .toList(),
      teardown: JsonParser.parseObject<TestScriptTeardownBuilder>(
        json,
        'teardown',
        TestScriptTeardownBuilder.fromJson,
        '$objectPath.teardown',
      ),
    );
  }

  /// Deserialize [TestScriptBuilder]
  /// from a [String] or [YamlMap] object
  factory TestScriptBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptBuilder.fromJson(json);
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
  FhirUriBuilder? url;

  /// [identifier]
  /// A formal identifier that is used to identify this test script when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  IdentifierBuilder? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the test script
  /// when it is referenced in a specification, model, design or instance.
  /// This is an arbitrary value managed by the test script author and is not
  /// expected to be globally unique. For example, it might be a timestamp
  /// (e.g. yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  FhirStringBuilder? version;

  /// [name]
  /// A natural language name identifying the test script. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the test script.
  FhirStringBuilder? title;

  /// [status]
  /// The status of this test script. Enables tracking the life-cycle of the
  /// content.
  PublicationStatusBuilder? status;

  /// [experimental]
  /// A Boolean value to indicate that this test script is authored for
  /// testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  FhirBooleanBuilder? experimental;

  /// [date]
  /// The date (and optionally time) when the test script was published. The
  /// date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the test script changes.
  FhirDateTimeBuilder? date;

  /// [publisher]
  /// The name of the organization or individual that published the test
  /// script.
  FhirStringBuilder? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  List<ContactDetailBuilder>? contact;

  /// [description]
  /// A free text natural language description of the test script from a
  /// consumer's perspective.
  FhirMarkdownBuilder? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate test script instances.
  List<UsageContextBuilder>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the test script is intended to be
  /// used.
  List<CodeableConceptBuilder>? jurisdiction;

  /// [purpose]
  /// Explanation of why this test script is needed and why it has been
  /// designed as it has.
  FhirMarkdownBuilder? purpose;

  /// [copyright]
  /// A copyright statement relating to the test script and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the test script.
  FhirMarkdownBuilder? copyright;

  /// [origin]
  /// An abstract server used in operations within this test script in the
  /// origin element.
  List<TestScriptOriginBuilder>? origin;

  /// [destination]
  /// An abstract server used in operations within this test script in the
  /// destination element.
  List<TestScriptDestinationBuilder>? destination;

  /// [metadata]
  /// The required capability must exist and are assumed to function
  /// correctly on the FHIR server being tested.
  TestScriptMetadataBuilder? metadata;

  /// [fixture]
  /// Fixture in the test script - by reference (uri). All fixtures are
  /// required for the test script to execute.
  List<TestScriptFixtureBuilder>? fixture;

  /// [profile]
  /// Reference to the profile to be used for validation.
  List<ReferenceBuilder>? profile;

  /// [variable]
  /// Variable is set based either on element value in response body or on
  /// header field value in the response headers.
  List<TestScriptVariableBuilder>? variable;

  /// [setup]
  /// A series of required setup operations before tests are executed.
  TestScriptSetupBuilder? setup;

  /// [test]
  /// A test in this script.
  List<TestScriptTestBuilder>? test;

  /// [teardown]
  /// A series of operations required to clean up after all the tests are
  /// executed (successfully or otherwise).
  TestScriptTeardownBuilder? teardown;

  /// Converts a [TestScriptBuilder]
  /// to [TestScript]
  @override
  TestScript build() => TestScript.fromJson(toJson());

  /// Converts a [TestScriptBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('url', url);
    addField('identifier', identifier);
    addField('version', version);
    addField('name', name);
    addField('title', title);
    addField('status', status);
    addField('experimental', experimental);
    addField('date', date);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('description', description);
    addField('useContext', useContext);
    addField('jurisdiction', jurisdiction);
    addField('purpose', purpose);
    addField('copyright', copyright);
    addField('origin', origin);
    addField('destination', destination);
    addField('metadata', metadata);
    addField('fixture', fixture);
    addField('profile', profile);
    addField('variable', variable);
    addField('setup', setup);
    addField('test', test);
    addField('teardown', teardown);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (url != null) {
          fields.add(url!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                version = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'title':
        {
          if (child is FhirStringBuilder) {
            title = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                title = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = PublicationStatusBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'experimental':
        {
          if (child is FhirBooleanBuilder) {
            experimental = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                experimental = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                date = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'publisher':
        {
          if (child is FhirStringBuilder) {
            publisher = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                publisher = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contact':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            contact = [
              ...(contact ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'useContext':
        {
          if (child is List<UsageContextBuilder>) {
            // Replace or create new list
            useContext = child;
            return;
          } else if (child is UsageContextBuilder) {
            // Add single element to existing list or create new list
            useContext = [
              ...(useContext ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            jurisdiction = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            jurisdiction = [
              ...(jurisdiction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'purpose':
        {
          if (child is FhirMarkdownBuilder) {
            purpose = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                purpose = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'copyright':
        {
          if (child is FhirMarkdownBuilder) {
            copyright = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                copyright = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'origin':
        {
          if (child is List<TestScriptOriginBuilder>) {
            // Replace or create new list
            origin = child;
            return;
          } else if (child is TestScriptOriginBuilder) {
            // Add single element to existing list or create new list
            origin = [
              ...(origin ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'destination':
        {
          if (child is List<TestScriptDestinationBuilder>) {
            // Replace or create new list
            destination = child;
            return;
          } else if (child is TestScriptDestinationBuilder) {
            // Add single element to existing list or create new list
            destination = [
              ...(destination ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'metadata':
        {
          if (child is TestScriptMetadataBuilder) {
            metadata = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'fixture':
        {
          if (child is List<TestScriptFixtureBuilder>) {
            // Replace or create new list
            fixture = child;
            return;
          } else if (child is TestScriptFixtureBuilder) {
            // Add single element to existing list or create new list
            fixture = [
              ...(fixture ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'profile':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            profile = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            profile = [
              ...(profile ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'variable':
        {
          if (child is List<TestScriptVariableBuilder>) {
            // Replace or create new list
            variable = child;
            return;
          } else if (child is TestScriptVariableBuilder) {
            // Add single element to existing list or create new list
            variable = [
              ...(variable ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'setup':
        {
          if (child is TestScriptSetupBuilder) {
            setup = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'test':
        {
          if (child is List<TestScriptTestBuilder>) {
            // Replace or create new list
            test = child;
            return;
          } else if (child is TestScriptTestBuilder) {
            // Add single element to existing list or create new list
            test = [
              ...(test ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'teardown':
        {
          if (child is TestScriptTeardownBuilder) {
            teardown = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'url':
        return ['FhirUriBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'experimental':
        return ['FhirBooleanBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'publisher':
        return ['FhirStringBuilder'];
      case 'contact':
        return ['ContactDetailBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'useContext':
        return ['UsageContextBuilder'];
      case 'jurisdiction':
        return ['CodeableConceptBuilder'];
      case 'purpose':
        return ['FhirMarkdownBuilder'];
      case 'copyright':
        return ['FhirMarkdownBuilder'];
      case 'origin':
        return ['TestScriptOriginBuilder'];
      case 'destination':
        return ['TestScriptDestinationBuilder'];
      case 'metadata':
        return ['TestScriptMetadataBuilder'];
      case 'fixture':
        return ['TestScriptFixtureBuilder'];
      case 'profile':
        return ['ReferenceBuilder'];
      case 'variable':
        return ['TestScriptVariableBuilder'];
      case 'setup':
        return ['TestScriptSetupBuilder'];
      case 'test':
        return ['TestScriptTestBuilder'];
      case 'teardown':
        return ['TestScriptTeardownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'status':
        {
          status = PublicationStatusBuilder.empty();
          return;
        }
      case 'experimental':
        {
          experimental = FhirBooleanBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'publisher':
        {
          publisher = FhirStringBuilder.empty();
          return;
        }
      case 'contact':
        {
          contact = <ContactDetailBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'useContext':
        {
          useContext = <UsageContextBuilder>[];
          return;
        }
      case 'jurisdiction':
        {
          jurisdiction = <CodeableConceptBuilder>[];
          return;
        }
      case 'purpose':
        {
          purpose = FhirMarkdownBuilder.empty();
          return;
        }
      case 'copyright':
        {
          copyright = FhirMarkdownBuilder.empty();
          return;
        }
      case 'origin':
        {
          origin = <TestScriptOriginBuilder>[];
          return;
        }
      case 'destination':
        {
          destination = <TestScriptDestinationBuilder>[];
          return;
        }
      case 'metadata':
        {
          metadata = TestScriptMetadataBuilder.empty();
          return;
        }
      case 'fixture':
        {
          fixture = <TestScriptFixtureBuilder>[];
          return;
        }
      case 'profile':
        {
          profile = <ReferenceBuilder>[];
          return;
        }
      case 'variable':
        {
          variable = <TestScriptVariableBuilder>[];
          return;
        }
      case 'setup':
        {
          setup = TestScriptSetupBuilder.empty();
          return;
        }
      case 'test':
        {
          test = <TestScriptTestBuilder>[];
          return;
        }
      case 'teardown':
        {
          teardown = TestScriptTeardownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool url = false,
    bool identifier = false,
    bool version = false,
    bool name = false,
    bool title = false,
    bool status = false,
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
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (url) this.url = null;
    if (identifier) this.identifier = null;
    if (version) this.version = null;
    if (name) this.name = null;
    if (title) this.title = null;
    if (status) this.status = null;
    if (experimental) this.experimental = null;
    if (date) this.date = null;
    if (publisher) this.publisher = null;
    if (contact) this.contact = null;
    if (description) this.description = null;
    if (useContext) this.useContext = null;
    if (jurisdiction) this.jurisdiction = null;
    if (purpose) this.purpose = null;
    if (copyright) this.copyright = null;
    if (origin) this.origin = null;
    if (destination) this.destination = null;
    if (metadata) this.metadata = null;
    if (fixture) this.fixture = null;
    if (profile) this.profile = null;
    if (variable) this.variable = null;
    if (setup) this.setup = null;
    if (test) this.test = null;
    if (teardown) this.teardown = null;
  }

  @override
  TestScriptBuilder clone() => throw UnimplementedError();
  @override
  TestScriptBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? url,
    IdentifierBuilder? identifier,
    FhirStringBuilder? version,
    FhirStringBuilder? name,
    FhirStringBuilder? title,
    PublicationStatusBuilder? status,
    FhirBooleanBuilder? experimental,
    FhirDateTimeBuilder? date,
    FhirStringBuilder? publisher,
    List<ContactDetailBuilder>? contact,
    FhirMarkdownBuilder? description,
    List<UsageContextBuilder>? useContext,
    List<CodeableConceptBuilder>? jurisdiction,
    FhirMarkdownBuilder? purpose,
    FhirMarkdownBuilder? copyright,
    List<TestScriptOriginBuilder>? origin,
    List<TestScriptDestinationBuilder>? destination,
    TestScriptMetadataBuilder? metadata,
    List<TestScriptFixtureBuilder>? fixture,
    List<ReferenceBuilder>? profile,
    List<TestScriptVariableBuilder>? variable,
    TestScriptSetupBuilder? setup,
    List<TestScriptTestBuilder>? test,
    TestScriptTeardownBuilder? teardown,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = TestScriptBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<ContactDetailBuilder>(
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
    if (!listEquals<UsageContextBuilder>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<TestScriptOriginBuilder>(
      origin,
      o.origin,
    )) {
      return false;
    }
    if (!listEquals<TestScriptDestinationBuilder>(
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
    if (!listEquals<TestScriptFixtureBuilder>(
      fixture,
      o.fixture,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      profile,
      o.profile,
    )) {
      return false;
    }
    if (!listEquals<TestScriptVariableBuilder>(
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
    if (!listEquals<TestScriptTestBuilder>(
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

/// [TestScriptOriginBuilder]
/// An abstract server used in operations within this test script in the
/// origin element.
class TestScriptOriginBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptOriginBuilder]

  TestScriptOriginBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.index,
    this.profile,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TestScript.origin',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TestScriptOriginBuilder.empty() => TestScriptOriginBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptOriginBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.origin';
    return TestScriptOriginBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      index: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'index',
        FhirIntegerBuilder.fromJson,
        '$objectPath.index',
      ),
      profile: JsonParser.parseObject<CodingBuilder>(
        json,
        'profile',
        CodingBuilder.fromJson,
        '$objectPath.profile',
      ),
    );
  }

  /// Deserialize [TestScriptOriginBuilder]
  /// from a [String] or [YamlMap] object
  factory TestScriptOriginBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptOriginBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptOriginBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptOriginBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptOriginBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptOriginBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptOriginBuilder.fromJson(json);
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
  FhirIntegerBuilder? index;

  /// [profile]
  /// The type of origin profile the test system supports.
  CodingBuilder? profile;

  /// Converts a [TestScriptOriginBuilder]
  /// to [TestScriptOrigin]
  @override
  TestScriptOrigin build() => TestScriptOrigin.fromJson(toJson());

  /// Converts a [TestScriptOriginBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('index', index);
    addField('profile', profile);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (index != null) {
          fields.add(index!);
        }
      case 'profile':
        if (profile != null) {
          fields.add(profile!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'index':
        {
          if (child is FhirIntegerBuilder) {
            index = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  index = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'profile':
        {
          if (child is CodingBuilder) {
            profile = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'index':
        return ['FhirIntegerBuilder'];
      case 'profile':
        return ['CodingBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptOriginBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'index':
        {
          index = FhirIntegerBuilder.empty();
          return;
        }
      case 'profile':
        {
          profile = CodingBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool index = false,
    bool profile = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (index) this.index = null;
    if (profile) this.profile = null;
  }

  @override
  TestScriptOriginBuilder clone() => throw UnimplementedError();
  @override
  TestScriptOriginBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIntegerBuilder? index,
    CodingBuilder? profile,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptOriginBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      index: index ?? this.index,
      profile: profile ?? this.profile,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptOriginBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [TestScriptDestinationBuilder]
/// An abstract server used in operations within this test script in the
/// destination element.
class TestScriptDestinationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptDestinationBuilder]

  TestScriptDestinationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.index,
    this.profile,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TestScript.destination',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TestScriptDestinationBuilder.empty() =>
      TestScriptDestinationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptDestinationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.destination';
    return TestScriptDestinationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      index: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'index',
        FhirIntegerBuilder.fromJson,
        '$objectPath.index',
      ),
      profile: JsonParser.parseObject<CodingBuilder>(
        json,
        'profile',
        CodingBuilder.fromJson,
        '$objectPath.profile',
      ),
    );
  }

  /// Deserialize [TestScriptDestinationBuilder]
  /// from a [String] or [YamlMap] object
  factory TestScriptDestinationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptDestinationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptDestinationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptDestinationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptDestinationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptDestinationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptDestinationBuilder.fromJson(json);
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
  FhirIntegerBuilder? index;

  /// [profile]
  /// The type of destination profile the test system supports.
  CodingBuilder? profile;

  /// Converts a [TestScriptDestinationBuilder]
  /// to [TestScriptDestination]
  @override
  TestScriptDestination build() => TestScriptDestination.fromJson(toJson());

  /// Converts a [TestScriptDestinationBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('index', index);
    addField('profile', profile);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (index != null) {
          fields.add(index!);
        }
      case 'profile':
        if (profile != null) {
          fields.add(profile!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'index':
        {
          if (child is FhirIntegerBuilder) {
            index = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  index = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'profile':
        {
          if (child is CodingBuilder) {
            profile = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'index':
        return ['FhirIntegerBuilder'];
      case 'profile':
        return ['CodingBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptDestinationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'index':
        {
          index = FhirIntegerBuilder.empty();
          return;
        }
      case 'profile':
        {
          profile = CodingBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool index = false,
    bool profile = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (index) this.index = null;
    if (profile) this.profile = null;
  }

  @override
  TestScriptDestinationBuilder clone() => throw UnimplementedError();
  @override
  TestScriptDestinationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIntegerBuilder? index,
    CodingBuilder? profile,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptDestinationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      index: index ?? this.index,
      profile: profile ?? this.profile,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptDestinationBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [TestScriptMetadataBuilder]
/// The required capability must exist and are assumed to function
/// correctly on the FHIR server being tested.
class TestScriptMetadataBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptMetadataBuilder]

  TestScriptMetadataBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.link,
    this.capability,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TestScript.metadata',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TestScriptMetadataBuilder.empty() => TestScriptMetadataBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptMetadataBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.metadata';
    return TestScriptMetadataBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      link: (json['link'] as List<dynamic>?)
          ?.map<TestScriptLinkBuilder>(
            (v) => TestScriptLinkBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.link',
              },
            ),
          )
          .toList(),
      capability: (json['capability'] as List<dynamic>?)
          ?.map<TestScriptCapabilityBuilder>(
            (v) => TestScriptCapabilityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.capability',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [TestScriptMetadataBuilder]
  /// from a [String] or [YamlMap] object
  factory TestScriptMetadataBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptMetadataBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptMetadataBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptMetadataBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptMetadataBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptMetadataBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptMetadataBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestScriptMetadata';

  /// [link]
  /// A link to the FHIR specification that this test is covering.
  List<TestScriptLinkBuilder>? link;

  /// [capability]
  /// Capabilities that must exist and are assumed to function correctly on
  /// the FHIR server being tested.
  List<TestScriptCapabilityBuilder>? capability;

  /// Converts a [TestScriptMetadataBuilder]
  /// to [TestScriptMetadata]
  @override
  TestScriptMetadata build() => TestScriptMetadata.fromJson(toJson());

  /// Converts a [TestScriptMetadataBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('link', link);
    addField('capability', capability);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (capability != null) {
          fields.addAll(capability!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'link':
        {
          if (child is List<TestScriptLinkBuilder>) {
            // Replace or create new list
            link = child;
            return;
          } else if (child is TestScriptLinkBuilder) {
            // Add single element to existing list or create new list
            link = [
              ...(link ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'capability':
        {
          if (child is List<TestScriptCapabilityBuilder>) {
            // Replace or create new list
            capability = child;
            return;
          } else if (child is TestScriptCapabilityBuilder) {
            // Add single element to existing list or create new list
            capability = [
              ...(capability ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'link':
        return ['TestScriptLinkBuilder'];
      case 'capability':
        return ['TestScriptCapabilityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptMetadataBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'link':
        {
          link = <TestScriptLinkBuilder>[];
          return;
        }
      case 'capability':
        {
          capability = <TestScriptCapabilityBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool link = false,
    bool capability = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (link) this.link = null;
    if (capability) this.capability = null;
  }

  @override
  TestScriptMetadataBuilder clone() => throw UnimplementedError();
  @override
  TestScriptMetadataBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<TestScriptLinkBuilder>? link,
    List<TestScriptCapabilityBuilder>? capability,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptMetadataBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      link: link ?? this.link,
      capability: capability ?? this.capability,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptMetadataBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<TestScriptLinkBuilder>(
      link,
      o.link,
    )) {
      return false;
    }
    if (!listEquals<TestScriptCapabilityBuilder>(
      capability,
      o.capability,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptLinkBuilder]
/// A link to the FHIR specification that this test is covering.
class TestScriptLinkBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptLinkBuilder]

  TestScriptLinkBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.description,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TestScript.metadata.link',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TestScriptLinkBuilder.empty() => TestScriptLinkBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptLinkBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.metadata.link';
    return TestScriptLinkBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
    );
  }

  /// Deserialize [TestScriptLinkBuilder]
  /// from a [String] or [YamlMap] object
  factory TestScriptLinkBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptLinkBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptLinkBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptLinkBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptLinkBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptLinkBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptLinkBuilder.fromJson(json);
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
  FhirUriBuilder? url;

  /// [description]
  /// Short description of the link.
  FhirStringBuilder? description;

  /// Converts a [TestScriptLinkBuilder]
  /// to [TestScriptLink]
  @override
  TestScriptLink build() => TestScriptLink.fromJson(toJson());

  /// Converts a [TestScriptLinkBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('url', url);
    addField('description', description);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (url != null) {
          fields.add(url!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'url':
        return ['FhirUriBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptLinkBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool url = false,
    bool description = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (url) this.url = null;
    if (description) this.description = null;
  }

  @override
  TestScriptLinkBuilder clone() => throw UnimplementedError();
  @override
  TestScriptLinkBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? url,
    FhirStringBuilder? description,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptLinkBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      description: description ?? this.description,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptLinkBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [TestScriptCapabilityBuilder]
/// Capabilities that must exist and are assumed to function correctly on
/// the FHIR server being tested.
class TestScriptCapabilityBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptCapabilityBuilder]

  TestScriptCapabilityBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.required_,
    this.validated,
    this.description,
    this.origin,
    this.destination,
    this.link,
    this.capabilities,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TestScript.metadata.capability',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TestScriptCapabilityBuilder.empty() => TestScriptCapabilityBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptCapabilityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.metadata.capability';
    return TestScriptCapabilityBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      required_: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'required',
        FhirBooleanBuilder.fromJson,
        '$objectPath.required',
      ),
      validated: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'validated',
        FhirBooleanBuilder.fromJson,
        '$objectPath.validated',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      origin: JsonParser.parsePrimitiveList<FhirIntegerBuilder>(
        json,
        'origin',
        FhirIntegerBuilder.fromJson,
        '$objectPath.origin',
      ),
      destination: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'destination',
        FhirIntegerBuilder.fromJson,
        '$objectPath.destination',
      ),
      link: JsonParser.parsePrimitiveList<FhirUriBuilder>(
        json,
        'link',
        FhirUriBuilder.fromJson,
        '$objectPath.link',
      ),
      capabilities: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'capabilities',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.capabilities',
      ),
    );
  }

  /// Deserialize [TestScriptCapabilityBuilder]
  /// from a [String] or [YamlMap] object
  factory TestScriptCapabilityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptCapabilityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptCapabilityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptCapabilityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptCapabilityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptCapabilityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptCapabilityBuilder.fromJson(json);
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
  FhirBooleanBuilder? required_;

  /// [validated]
  /// Whether or not the test execution will validate the given capabilities
  /// of the server in order for this test script to execute.
  FhirBooleanBuilder? validated;

  /// [description]
  /// Description of the capabilities that this test script is requiring the
  /// server to support.
  FhirStringBuilder? description;

  /// [origin]
  /// Which origin server these requirements apply to.
  List<FhirIntegerBuilder>? origin;

  /// [destination]
  /// Which server these requirements apply to.
  FhirIntegerBuilder? destination;

  /// [link]
  /// Links to the FHIR specification that describes this interaction and the
  /// resources involved in more detail.
  List<FhirUriBuilder>? link;

  /// [capabilities]
  /// Minimum capabilities required of server for test script to execute
  /// successfully. If server does not meet at a minimum the referenced
  /// capability statement, then all tests in this script are skipped.
  FhirCanonicalBuilder? capabilities;

  /// Converts a [TestScriptCapabilityBuilder]
  /// to [TestScriptCapability]
  @override
  TestScriptCapability build() => TestScriptCapability.fromJson(toJson());

  /// Converts a [TestScriptCapabilityBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('required', required_);
    addField('validated', validated);
    addField('description', description);
    addField('origin', origin);
    addField('destination', destination);
    addField('link', link);
    addField('capabilities', capabilities);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (required_ != null) {
          fields.add(required_!);
        }
      case 'validated':
        if (validated != null) {
          fields.add(validated!);
        }
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
        if (capabilities != null) {
          fields.add(capabilities!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'required':
        {
          if (child is FhirBooleanBuilder) {
            required_ = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                required_ = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'validated':
        {
          if (child is FhirBooleanBuilder) {
            validated = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                validated = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'origin':
        {
          if (child is List<FhirIntegerBuilder>) {
            // Replace or create new list
            origin = child;
            return;
          } else if (child is FhirIntegerBuilder) {
            // Add single element to existing list or create new list
            origin = [
              ...(origin ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirIntegerBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirIntegerBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              origin = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  origin = [...(origin ?? []), converted];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'destination':
        {
          if (child is FhirIntegerBuilder) {
            destination = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  destination = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'link':
        {
          if (child is List<FhirUriBuilder>) {
            // Replace or create new list
            link = child;
            return;
          } else if (child is FhirUriBuilder) {
            // Add single element to existing list or create new list
            link = [
              ...(link ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUriBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirUriBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              link = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                link = [...(link ?? []), converted];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'capabilities':
        {
          if (child is FhirCanonicalBuilder) {
            capabilities = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                capabilities = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'required':
        return ['FhirBooleanBuilder'];
      case 'validated':
        return ['FhirBooleanBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'origin':
        return ['FhirIntegerBuilder'];
      case 'destination':
        return ['FhirIntegerBuilder'];
      case 'link':
        return ['FhirUriBuilder'];
      case 'capabilities':
        return ['FhirCanonicalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptCapabilityBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'required':
        {
          required_ = FhirBooleanBuilder.empty();
          return;
        }
      case 'validated':
        {
          validated = FhirBooleanBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'origin':
        {
          origin = <FhirIntegerBuilder>[];
          return;
        }
      case 'destination':
        {
          destination = FhirIntegerBuilder.empty();
          return;
        }
      case 'link':
        {
          link = <FhirUriBuilder>[];
          return;
        }
      case 'capabilities':
        {
          capabilities = FhirCanonicalBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool required_ = false,
    bool validated = false,
    bool description = false,
    bool origin = false,
    bool destination = false,
    bool link = false,
    bool capabilities = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (required_) this.required_ = null;
    if (validated) this.validated = null;
    if (description) this.description = null;
    if (origin) this.origin = null;
    if (destination) this.destination = null;
    if (link) this.link = null;
    if (capabilities) this.capabilities = null;
  }

  @override
  TestScriptCapabilityBuilder clone() => throw UnimplementedError();
  @override
  TestScriptCapabilityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirBooleanBuilder? required_,
    FhirBooleanBuilder? validated,
    FhirStringBuilder? description,
    List<FhirIntegerBuilder>? origin,
    FhirIntegerBuilder? destination,
    List<FhirUriBuilder>? link,
    FhirCanonicalBuilder? capabilities,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptCapabilityBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptCapabilityBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<FhirIntegerBuilder>(
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
    if (!listEquals<FhirUriBuilder>(
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

/// [TestScriptFixtureBuilder]
/// Fixture in the test script - by reference (uri). All fixtures are
/// required for the test script to execute.
class TestScriptFixtureBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptFixtureBuilder]

  TestScriptFixtureBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.autocreate,
    this.autodelete,
    this.resource,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TestScript.fixture',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TestScriptFixtureBuilder.empty() => TestScriptFixtureBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptFixtureBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.fixture';
    return TestScriptFixtureBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      autocreate: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'autocreate',
        FhirBooleanBuilder.fromJson,
        '$objectPath.autocreate',
      ),
      autodelete: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'autodelete',
        FhirBooleanBuilder.fromJson,
        '$objectPath.autodelete',
      ),
      resource: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'resource',
        ReferenceBuilder.fromJson,
        '$objectPath.resource',
      ),
    );
  }

  /// Deserialize [TestScriptFixtureBuilder]
  /// from a [String] or [YamlMap] object
  factory TestScriptFixtureBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptFixtureBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptFixtureBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptFixtureBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptFixtureBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptFixtureBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptFixtureBuilder.fromJson(json);
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
  FhirBooleanBuilder? autocreate;

  /// [autodelete]
  /// Whether or not to implicitly delete the fixture during teardown. If
  /// true, the fixture is automatically deleted on each server being tested
  /// during teardown, therefore no delete operation is required for this
  /// fixture in the TestScript.teardown section.
  FhirBooleanBuilder? autodelete;

  /// [resource]
  /// Reference to the resource (containing the contents of the resource
  /// needed for operations).
  ReferenceBuilder? resource;

  /// Converts a [TestScriptFixtureBuilder]
  /// to [TestScriptFixture]
  @override
  TestScriptFixture build() => TestScriptFixture.fromJson(toJson());

  /// Converts a [TestScriptFixtureBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('autocreate', autocreate);
    addField('autodelete', autodelete);
    addField('resource', resource);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (autocreate != null) {
          fields.add(autocreate!);
        }
      case 'autodelete':
        if (autodelete != null) {
          fields.add(autodelete!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'autocreate':
        {
          if (child is FhirBooleanBuilder) {
            autocreate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                autocreate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'autodelete':
        {
          if (child is FhirBooleanBuilder) {
            autodelete = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                autodelete = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'resource':
        {
          if (child is ReferenceBuilder) {
            resource = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'autocreate':
        return ['FhirBooleanBuilder'];
      case 'autodelete':
        return ['FhirBooleanBuilder'];
      case 'resource':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptFixtureBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'autocreate':
        {
          autocreate = FhirBooleanBuilder.empty();
          return;
        }
      case 'autodelete':
        {
          autodelete = FhirBooleanBuilder.empty();
          return;
        }
      case 'resource':
        {
          resource = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool autocreate = false,
    bool autodelete = false,
    bool resource = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (autocreate) this.autocreate = null;
    if (autodelete) this.autodelete = null;
    if (resource) this.resource = null;
  }

  @override
  TestScriptFixtureBuilder clone() => throw UnimplementedError();
  @override
  TestScriptFixtureBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirBooleanBuilder? autocreate,
    FhirBooleanBuilder? autodelete,
    ReferenceBuilder? resource,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptFixtureBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      autocreate: autocreate ?? this.autocreate,
      autodelete: autodelete ?? this.autodelete,
      resource: resource ?? this.resource,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptFixtureBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [TestScriptVariableBuilder]
/// Variable is set based either on element value in response body or on
/// header field value in the response headers.
class TestScriptVariableBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptVariableBuilder]

  TestScriptVariableBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
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
  /// For Builder classes, no fields are required
  factory TestScriptVariableBuilder.empty() => TestScriptVariableBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptVariableBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.variable';
    return TestScriptVariableBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      defaultValue: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'defaultValue',
        FhirStringBuilder.fromJson,
        '$objectPath.defaultValue',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      expression: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'expression',
        FhirStringBuilder.fromJson,
        '$objectPath.expression',
      ),
      headerField: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'headerField',
        FhirStringBuilder.fromJson,
        '$objectPath.headerField',
      ),
      hint: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'hint',
        FhirStringBuilder.fromJson,
        '$objectPath.hint',
      ),
      path: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'path',
        FhirStringBuilder.fromJson,
        '$objectPath.path',
      ),
      sourceId: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'sourceId',
        FhirIdBuilder.fromJson,
        '$objectPath.sourceId',
      ),
    );
  }

  /// Deserialize [TestScriptVariableBuilder]
  /// from a [String] or [YamlMap] object
  factory TestScriptVariableBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptVariableBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptVariableBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptVariableBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptVariableBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptVariableBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptVariableBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestScriptVariable';

  /// [name]
  /// Descriptive name for this variable.
  FhirStringBuilder? name;

  /// [defaultValue]
  /// A default, hard-coded, or user-defined value for this variable.
  FhirStringBuilder? defaultValue;

  /// [description]
  /// A free text natural language description of the variable and its
  /// purpose.
  FhirStringBuilder? description;

  /// [expression]
  /// The FHIRPath expression to evaluate against the fixture body. When
  /// variables are defined, only one of either expression, headerField or
  /// path must be specified.
  FhirStringBuilder? expression;

  /// [headerField]
  /// Will be used to grab the HTTP header field value from the headers that
  /// sourceId is pointing to.
  FhirStringBuilder? headerField;

  /// [hint]
  /// Displayable text string with hint help information to the user when
  /// entering a default value.
  FhirStringBuilder? hint;

  /// [path]
  /// XPath or JSONPath to evaluate against the fixture body. When variables
  /// are defined, only one of either expression, headerField or path must be
  /// specified.
  FhirStringBuilder? path;

  /// [sourceId]
  /// Fixture to evaluate the XPath/JSONPath expression or the headerField
  /// against within this variable.
  FhirIdBuilder? sourceId;

  /// Converts a [TestScriptVariableBuilder]
  /// to [TestScriptVariable]
  @override
  TestScriptVariable build() => TestScriptVariable.fromJson(toJson());

  /// Converts a [TestScriptVariableBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('name', name);
    addField('defaultValue', defaultValue);
    addField('description', description);
    addField('expression', expression);
    addField('headerField', headerField);
    addField('hint', hint);
    addField('path', path);
    addField('sourceId', sourceId);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'defaultValue':
        {
          if (child is FhirStringBuilder) {
            defaultValue = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                defaultValue = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expression':
        {
          if (child is FhirStringBuilder) {
            expression = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                expression = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'headerField':
        {
          if (child is FhirStringBuilder) {
            headerField = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                headerField = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'hint':
        {
          if (child is FhirStringBuilder) {
            hint = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                hint = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'path':
        {
          if (child is FhirStringBuilder) {
            path = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                path = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sourceId':
        {
          if (child is FhirIdBuilder) {
            sourceId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                sourceId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'defaultValue':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'expression':
        return ['FhirStringBuilder'];
      case 'headerField':
        return ['FhirStringBuilder'];
      case 'hint':
        return ['FhirStringBuilder'];
      case 'path':
        return ['FhirStringBuilder'];
      case 'sourceId':
        return ['FhirIdBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptVariableBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'defaultValue':
        {
          defaultValue = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'expression':
        {
          expression = FhirStringBuilder.empty();
          return;
        }
      case 'headerField':
        {
          headerField = FhirStringBuilder.empty();
          return;
        }
      case 'hint':
        {
          hint = FhirStringBuilder.empty();
          return;
        }
      case 'path':
        {
          path = FhirStringBuilder.empty();
          return;
        }
      case 'sourceId':
        {
          sourceId = FhirIdBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool name = false,
    bool defaultValue = false,
    bool description = false,
    bool expression = false,
    bool headerField = false,
    bool hint = false,
    bool path = false,
    bool sourceId = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (name) this.name = null;
    if (defaultValue) this.defaultValue = null;
    if (description) this.description = null;
    if (expression) this.expression = null;
    if (headerField) this.headerField = null;
    if (hint) this.hint = null;
    if (path) this.path = null;
    if (sourceId) this.sourceId = null;
  }

  @override
  TestScriptVariableBuilder clone() => throw UnimplementedError();
  @override
  TestScriptVariableBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    FhirStringBuilder? defaultValue,
    FhirStringBuilder? description,
    FhirStringBuilder? expression,
    FhirStringBuilder? headerField,
    FhirStringBuilder? hint,
    FhirStringBuilder? path,
    FhirIdBuilder? sourceId,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptVariableBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptVariableBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [TestScriptSetupBuilder]
/// A series of required setup operations before tests are executed.
class TestScriptSetupBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptSetupBuilder]

  TestScriptSetupBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.action,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TestScript.setup',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TestScriptSetupBuilder.empty() => TestScriptSetupBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptSetupBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.setup';
    return TestScriptSetupBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<TestScriptActionBuilder>(
            (v) => TestScriptActionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [TestScriptSetupBuilder]
  /// from a [String] or [YamlMap] object
  factory TestScriptSetupBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptSetupBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptSetupBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptSetupBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptSetupBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptSetupBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptSetupBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestScriptSetup';

  /// [action]
  /// Action would contain either an operation or an assertion.
  List<TestScriptActionBuilder>? action;

  /// Converts a [TestScriptSetupBuilder]
  /// to [TestScriptSetup]
  @override
  TestScriptSetup build() => TestScriptSetup.fromJson(toJson());

  /// Converts a [TestScriptSetupBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('action', action);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (action != null) {
          fields.addAll(action!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'action':
        {
          if (child is List<TestScriptActionBuilder>) {
            // Replace or create new list
            action = child;
            return;
          } else if (child is TestScriptActionBuilder) {
            // Add single element to existing list or create new list
            action = [
              ...(action ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'action':
        return ['TestScriptActionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptSetupBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'action':
        {
          action = <TestScriptActionBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool action = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (action) this.action = null;
  }

  @override
  TestScriptSetupBuilder clone() => throw UnimplementedError();
  @override
  TestScriptSetupBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<TestScriptActionBuilder>? action,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptSetupBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptSetupBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<TestScriptActionBuilder>(
      action,
      o.action,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptActionBuilder]
/// Action would contain either an operation or an assertion.
class TestScriptActionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptActionBuilder]

  TestScriptActionBuilder({
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
  /// For Builder classes, no fields are required
  factory TestScriptActionBuilder.empty() => TestScriptActionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptActionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.setup.action';
    return TestScriptActionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      operation: JsonParser.parseObject<TestScriptOperationBuilder>(
        json,
        'operation',
        TestScriptOperationBuilder.fromJson,
        '$objectPath.operation',
      ),
      assert_: JsonParser.parseObject<TestScriptAssertBuilder>(
        json,
        'assert',
        TestScriptAssertBuilder.fromJson,
        '$objectPath.assert',
      ),
    );
  }

  /// Deserialize [TestScriptActionBuilder]
  /// from a [String] or [YamlMap] object
  factory TestScriptActionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptActionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptActionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptActionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptActionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptActionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptActionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestScriptAction';

  /// [operation]
  /// The operation to perform.
  TestScriptOperationBuilder? operation;

  /// [assert_]
  /// Evaluates the results of previous operations to determine if the server
  /// under test behaves appropriately.
  TestScriptAssertBuilder? assert_;

  /// Converts a [TestScriptActionBuilder]
  /// to [TestScriptAction]
  @override
  TestScriptAction build() => TestScriptAction.fromJson(toJson());

  /// Converts a [TestScriptActionBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('operation', operation);
    addField('assert', assert_);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'operation':
        {
          if (child is TestScriptOperationBuilder) {
            operation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'assert':
        {
          if (child is TestScriptAssertBuilder) {
            assert_ = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'operation':
        return ['TestScriptOperationBuilder'];
      case 'assert':
        return ['TestScriptAssertBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptActionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'operation':
        {
          operation = TestScriptOperationBuilder.empty();
          return;
        }
      case 'assert':
        {
          assert_ = TestScriptAssertBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool operation = false,
    bool assert_ = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (operation) this.operation = null;
    if (assert_) this.assert_ = null;
  }

  @override
  TestScriptActionBuilder clone() => throw UnimplementedError();
  @override
  TestScriptActionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    TestScriptOperationBuilder? operation,
    TestScriptAssertBuilder? assert_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptActionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
      assert_: assert_ ?? this.assert_,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptActionBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [TestScriptOperationBuilder]
/// The operation to perform.
class TestScriptOperationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptOperationBuilder]

  TestScriptOperationBuilder({
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
    this.encodeRequestUrl,
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
  /// For Builder classes, no fields are required
  factory TestScriptOperationBuilder.empty() => TestScriptOperationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptOperationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.setup.action.operation';
    return TestScriptOperationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodingBuilder>(
        json,
        'type',
        CodingBuilder.fromJson,
        '$objectPath.type',
      ),
      resource: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'resource',
        FhirCodeBuilder.fromJson,
        '$objectPath.resource',
      ),
      label: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'label',
        FhirStringBuilder.fromJson,
        '$objectPath.label',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      accept: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'accept',
        FhirCodeBuilder.fromJson,
        '$objectPath.accept',
      ),
      contentType: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'contentType',
        FhirCodeBuilder.fromJson,
        '$objectPath.contentType',
      ),
      destination: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'destination',
        FhirIntegerBuilder.fromJson,
        '$objectPath.destination',
      ),
      encodeRequestUrl: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'encodeRequestUrl',
        FhirBooleanBuilder.fromJson,
        '$objectPath.encodeRequestUrl',
      ),
      method: JsonParser.parsePrimitive<TestScriptRequestMethodCodeBuilder>(
        json,
        'method',
        TestScriptRequestMethodCodeBuilder.fromJson,
        '$objectPath.method',
      ),
      origin: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'origin',
        FhirIntegerBuilder.fromJson,
        '$objectPath.origin',
      ),
      params: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'params',
        FhirStringBuilder.fromJson,
        '$objectPath.params',
      ),
      requestHeader: (json['requestHeader'] as List<dynamic>?)
          ?.map<TestScriptRequestHeaderBuilder>(
            (v) => TestScriptRequestHeaderBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.requestHeader',
              },
            ),
          )
          .toList(),
      requestId: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'requestId',
        FhirIdBuilder.fromJson,
        '$objectPath.requestId',
      ),
      responseId: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'responseId',
        FhirIdBuilder.fromJson,
        '$objectPath.responseId',
      ),
      sourceId: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'sourceId',
        FhirIdBuilder.fromJson,
        '$objectPath.sourceId',
      ),
      targetId: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'targetId',
        FhirIdBuilder.fromJson,
        '$objectPath.targetId',
      ),
      url: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'url',
        FhirStringBuilder.fromJson,
        '$objectPath.url',
      ),
    );
  }

  /// Deserialize [TestScriptOperationBuilder]
  /// from a [String] or [YamlMap] object
  factory TestScriptOperationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptOperationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptOperationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptOperationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptOperationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptOperationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptOperationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestScriptOperation';

  /// [type]
  /// Server interaction or operation type.
  CodingBuilder? type;

  /// [resource]
  /// The type of the resource. See http://build.fhir.org/resourcelist.html.
  FhirCodeBuilder? resource;

  /// [label]
  /// The label would be used for tracking/logging purposes by test engines.
  FhirStringBuilder? label;

  /// [description]
  /// The description would be used by test engines for tracking and
  /// reporting purposes.
  FhirStringBuilder? description;

  /// [accept]
  /// The mime-type to use for RESTful operation in the 'Accept' header.
  FhirCodeBuilder? accept;

  /// [contentType]
  /// The mime-type to use for RESTful operation in the 'Content-Type'
  /// header.
  FhirCodeBuilder? contentType;

  /// [destination]
  /// The server where the request message is destined for. Must be one of
  /// the server numbers listed in TestScript.destination section.
  FhirIntegerBuilder? destination;

  /// [encodeRequestUrl]
  /// Whether or not to implicitly send the request url in encoded format.
  /// The default is true to match the standard RESTful client behavior. Set
  /// to false when communicating with a server that does not support encoded
  /// url paths.
  FhirBooleanBuilder? encodeRequestUrl;

  /// [method]
  /// The HTTP method the test engine MUST use for this operation regardless
  /// of any other operation details.
  TestScriptRequestMethodCodeBuilder? method;

  /// [origin]
  /// The server where the request message originates from. Must be one of
  /// the server numbers listed in TestScript.origin section.
  FhirIntegerBuilder? origin;

  /// [params]
  /// Path plus parameters after [type]. Used to set parts of the request URL
  /// explicitly.
  FhirStringBuilder? params;

  /// [requestHeader]
  /// Header elements would be used to set HTTP headers.
  List<TestScriptRequestHeaderBuilder>? requestHeader;

  /// [requestId]
  /// The fixture id (maybe new) to map to the request.
  FhirIdBuilder? requestId;

  /// [responseId]
  /// The fixture id (maybe new) to map to the response.
  FhirIdBuilder? responseId;

  /// [sourceId]
  /// The id of the fixture used as the body of a PUT or POST request.
  FhirIdBuilder? sourceId;

  /// [targetId]
  /// Id of fixture used for extracting the [id], [type], and [vid] for GET
  /// requests.
  FhirIdBuilder? targetId;

  /// [url]
  /// Complete request URL.
  FhirStringBuilder? url;

  /// Converts a [TestScriptOperationBuilder]
  /// to [TestScriptOperation]
  @override
  TestScriptOperation build() => TestScriptOperation.fromJson(toJson());

  /// Converts a [TestScriptOperationBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('resource', resource);
    addField('label', label);
    addField('description', description);
    addField('accept', accept);
    addField('contentType', contentType);
    addField('destination', destination);
    addField('encodeRequestUrl', encodeRequestUrl);
    addField('method', method);
    addField('origin', origin);
    addField('params', params);
    addField('requestHeader', requestHeader);
    addField('requestId', requestId);
    addField('responseId', responseId);
    addField('sourceId', sourceId);
    addField('targetId', targetId);
    addField('url', url);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (encodeRequestUrl != null) {
          fields.add(encodeRequestUrl!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodingBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'resource':
        {
          if (child is FhirCodeBuilder) {
            resource = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                resource = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'label':
        {
          if (child is FhirStringBuilder) {
            label = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                label = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'accept':
        {
          if (child is FhirCodeBuilder) {
            accept = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                accept = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contentType':
        {
          if (child is FhirCodeBuilder) {
            contentType = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                contentType = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'destination':
        {
          if (child is FhirIntegerBuilder) {
            destination = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  destination = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'encodeRequestUrl':
        {
          if (child is FhirBooleanBuilder) {
            encodeRequestUrl = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                encodeRequestUrl = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'method':
        {
          if (child is TestScriptRequestMethodCodeBuilder) {
            method = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    TestScriptRequestMethodCodeBuilder(stringValue);
                method = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'origin':
        {
          if (child is FhirIntegerBuilder) {
            origin = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  origin = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'params':
        {
          if (child is FhirStringBuilder) {
            params = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                params = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requestHeader':
        {
          if (child is List<TestScriptRequestHeaderBuilder>) {
            // Replace or create new list
            requestHeader = child;
            return;
          } else if (child is TestScriptRequestHeaderBuilder) {
            // Add single element to existing list or create new list
            requestHeader = [
              ...(requestHeader ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requestId':
        {
          if (child is FhirIdBuilder) {
            requestId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                requestId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'responseId':
        {
          if (child is FhirIdBuilder) {
            responseId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                responseId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sourceId':
        {
          if (child is FhirIdBuilder) {
            sourceId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                sourceId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'targetId':
        {
          if (child is FhirIdBuilder) {
            targetId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                targetId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'url':
        {
          if (child is FhirStringBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodingBuilder'];
      case 'resource':
        return ['FhirCodeBuilder'];
      case 'label':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'accept':
        return ['FhirCodeBuilder'];
      case 'contentType':
        return ['FhirCodeBuilder'];
      case 'destination':
        return ['FhirIntegerBuilder'];
      case 'encodeRequestUrl':
        return ['FhirBooleanBuilder'];
      case 'method':
        return ['FhirCodeEnumBuilder'];
      case 'origin':
        return ['FhirIntegerBuilder'];
      case 'params':
        return ['FhirStringBuilder'];
      case 'requestHeader':
        return ['TestScriptRequestHeaderBuilder'];
      case 'requestId':
        return ['FhirIdBuilder'];
      case 'responseId':
        return ['FhirIdBuilder'];
      case 'sourceId':
        return ['FhirIdBuilder'];
      case 'targetId':
        return ['FhirIdBuilder'];
      case 'url':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptOperationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodingBuilder.empty();
          return;
        }
      case 'resource':
        {
          resource = FhirCodeBuilder.empty();
          return;
        }
      case 'label':
        {
          label = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'accept':
        {
          accept = FhirCodeBuilder.empty();
          return;
        }
      case 'contentType':
        {
          contentType = FhirCodeBuilder.empty();
          return;
        }
      case 'destination':
        {
          destination = FhirIntegerBuilder.empty();
          return;
        }
      case 'encodeRequestUrl':
        {
          encodeRequestUrl = FhirBooleanBuilder.empty();
          return;
        }
      case 'method':
        {
          method = TestScriptRequestMethodCodeBuilder.empty();
          return;
        }
      case 'origin':
        {
          origin = FhirIntegerBuilder.empty();
          return;
        }
      case 'params':
        {
          params = FhirStringBuilder.empty();
          return;
        }
      case 'requestHeader':
        {
          requestHeader = <TestScriptRequestHeaderBuilder>[];
          return;
        }
      case 'requestId':
        {
          requestId = FhirIdBuilder.empty();
          return;
        }
      case 'responseId':
        {
          responseId = FhirIdBuilder.empty();
          return;
        }
      case 'sourceId':
        {
          sourceId = FhirIdBuilder.empty();
          return;
        }
      case 'targetId':
        {
          targetId = FhirIdBuilder.empty();
          return;
        }
      case 'url':
        {
          url = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
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
    bool encodeRequestUrl = false,
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
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (resource) this.resource = null;
    if (label) this.label = null;
    if (description) this.description = null;
    if (accept) this.accept = null;
    if (contentType) this.contentType = null;
    if (destination) this.destination = null;
    if (encodeRequestUrl) this.encodeRequestUrl = null;
    if (method) this.method = null;
    if (origin) this.origin = null;
    if (params) this.params = null;
    if (requestHeader) this.requestHeader = null;
    if (requestId) this.requestId = null;
    if (responseId) this.responseId = null;
    if (sourceId) this.sourceId = null;
    if (targetId) this.targetId = null;
    if (url) this.url = null;
  }

  @override
  TestScriptOperationBuilder clone() => throw UnimplementedError();
  @override
  TestScriptOperationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodingBuilder? type,
    FhirCodeBuilder? resource,
    FhirStringBuilder? label,
    FhirStringBuilder? description,
    FhirCodeBuilder? accept,
    FhirCodeBuilder? contentType,
    FhirIntegerBuilder? destination,
    FhirBooleanBuilder? encodeRequestUrl,
    TestScriptRequestMethodCodeBuilder? method,
    FhirIntegerBuilder? origin,
    FhirStringBuilder? params,
    List<TestScriptRequestHeaderBuilder>? requestHeader,
    FhirIdBuilder? requestId,
    FhirIdBuilder? responseId,
    FhirIdBuilder? sourceId,
    FhirIdBuilder? targetId,
    FhirStringBuilder? url,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptOperationBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptOperationBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<TestScriptRequestHeaderBuilder>(
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

/// [TestScriptRequestHeaderBuilder]
/// Header elements would be used to set HTTP headers.
class TestScriptRequestHeaderBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptRequestHeaderBuilder]

  TestScriptRequestHeaderBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.field,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TestScript.setup.action.operation.requestHeader',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TestScriptRequestHeaderBuilder.empty() =>
      TestScriptRequestHeaderBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptRequestHeaderBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.setup.action.operation.requestHeader';
    return TestScriptRequestHeaderBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      field: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'field',
        FhirStringBuilder.fromJson,
        '$objectPath.field',
      ),
      value: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'value',
        FhirStringBuilder.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [TestScriptRequestHeaderBuilder]
  /// from a [String] or [YamlMap] object
  factory TestScriptRequestHeaderBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptRequestHeaderBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptRequestHeaderBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptRequestHeaderBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptRequestHeaderBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptRequestHeaderBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptRequestHeaderBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestScriptRequestHeader';

  /// [field]
  /// The HTTP header field e.g. "Accept".
  FhirStringBuilder? field;

  /// [value]
  /// The value of the header e.g. "application/fhir+xml".
  FhirStringBuilder? value;

  /// Converts a [TestScriptRequestHeaderBuilder]
  /// to [TestScriptRequestHeader]
  @override
  TestScriptRequestHeader build() => TestScriptRequestHeader.fromJson(toJson());

  /// Converts a [TestScriptRequestHeaderBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('field', field);
    addField('value', value);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (field != null) {
          fields.add(field!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'field':
        {
          if (child is FhirStringBuilder) {
            field = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                field = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
        {
          if (child is FhirStringBuilder) {
            value = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                value = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'field':
        return ['FhirStringBuilder'];
      case 'value':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptRequestHeaderBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'field':
        {
          field = FhirStringBuilder.empty();
          return;
        }
      case 'value':
        {
          value = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool field = false,
    bool value = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (field) this.field = null;
    if (value) this.value = null;
  }

  @override
  TestScriptRequestHeaderBuilder clone() => throw UnimplementedError();
  @override
  TestScriptRequestHeaderBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? field,
    FhirStringBuilder? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptRequestHeaderBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      field: field ?? this.field,
      value: value ?? this.value,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptRequestHeaderBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [TestScriptAssertBuilder]
/// Evaluates the results of previous operations to determine if the server
/// under test behaves appropriately.
class TestScriptAssertBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptAssertBuilder]

  TestScriptAssertBuilder({
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
    this.warningOnly,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TestScript.setup.action.assert',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TestScriptAssertBuilder.empty() => TestScriptAssertBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptAssertBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.setup.action.assert';
    return TestScriptAssertBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      label: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'label',
        FhirStringBuilder.fromJson,
        '$objectPath.label',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      direction: JsonParser.parsePrimitive<AssertionDirectionTypeBuilder>(
        json,
        'direction',
        AssertionDirectionTypeBuilder.fromJson,
        '$objectPath.direction',
      ),
      compareToSourceId: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'compareToSourceId',
        FhirStringBuilder.fromJson,
        '$objectPath.compareToSourceId',
      ),
      compareToSourceExpression: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'compareToSourceExpression',
        FhirStringBuilder.fromJson,
        '$objectPath.compareToSourceExpression',
      ),
      compareToSourcePath: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'compareToSourcePath',
        FhirStringBuilder.fromJson,
        '$objectPath.compareToSourcePath',
      ),
      contentType: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'contentType',
        FhirCodeBuilder.fromJson,
        '$objectPath.contentType',
      ),
      expression: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'expression',
        FhirStringBuilder.fromJson,
        '$objectPath.expression',
      ),
      headerField: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'headerField',
        FhirStringBuilder.fromJson,
        '$objectPath.headerField',
      ),
      minimumId: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'minimumId',
        FhirStringBuilder.fromJson,
        '$objectPath.minimumId',
      ),
      navigationLinks: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'navigationLinks',
        FhirBooleanBuilder.fromJson,
        '$objectPath.navigationLinks',
      ),
      operator_: JsonParser.parsePrimitive<AssertionOperatorTypeBuilder>(
        json,
        'operator',
        AssertionOperatorTypeBuilder.fromJson,
        '$objectPath.operator',
      ),
      path: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'path',
        FhirStringBuilder.fromJson,
        '$objectPath.path',
      ),
      requestMethod:
          JsonParser.parsePrimitive<TestScriptRequestMethodCodeBuilder>(
        json,
        'requestMethod',
        TestScriptRequestMethodCodeBuilder.fromJson,
        '$objectPath.requestMethod',
      ),
      requestURL: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'requestURL',
        FhirStringBuilder.fromJson,
        '$objectPath.requestURL',
      ),
      resource: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'resource',
        FhirCodeBuilder.fromJson,
        '$objectPath.resource',
      ),
      response: JsonParser.parsePrimitive<AssertionResponseTypesBuilder>(
        json,
        'response',
        AssertionResponseTypesBuilder.fromJson,
        '$objectPath.response',
      ),
      responseCode: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'responseCode',
        FhirStringBuilder.fromJson,
        '$objectPath.responseCode',
      ),
      sourceId: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'sourceId',
        FhirIdBuilder.fromJson,
        '$objectPath.sourceId',
      ),
      validateProfileId: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'validateProfileId',
        FhirIdBuilder.fromJson,
        '$objectPath.validateProfileId',
      ),
      value: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'value',
        FhirStringBuilder.fromJson,
        '$objectPath.value',
      ),
      warningOnly: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'warningOnly',
        FhirBooleanBuilder.fromJson,
        '$objectPath.warningOnly',
      ),
    );
  }

  /// Deserialize [TestScriptAssertBuilder]
  /// from a [String] or [YamlMap] object
  factory TestScriptAssertBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptAssertBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptAssertBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptAssertBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptAssertBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptAssertBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptAssertBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestScriptAssert';

  /// [label]
  /// The label would be used for tracking/logging purposes by test engines.
  FhirStringBuilder? label;

  /// [description]
  /// The description would be used by test engines for tracking and
  /// reporting purposes.
  FhirStringBuilder? description;

  /// [direction]
  /// The direction to use for the assertion.
  AssertionDirectionTypeBuilder? direction;

  /// [compareToSourceId]
  /// Id of the source fixture used as the contents to be evaluated by either
  /// the "source/expression" or "sourceId/path" definition.
  FhirStringBuilder? compareToSourceId;

  /// [compareToSourceExpression]
  /// The FHIRPath expression to evaluate against the source fixture. When
  /// compareToSourceId is defined, either compareToSourceExpression or
  /// compareToSourcePath must be defined, but not both.
  FhirStringBuilder? compareToSourceExpression;

  /// [compareToSourcePath]
  /// XPath or JSONPath expression to evaluate against the source fixture.
  /// When compareToSourceId is defined, either compareToSourceExpression or
  /// compareToSourcePath must be defined, but not both.
  FhirStringBuilder? compareToSourcePath;

  /// [contentType]
  /// The mime-type contents to compare against the request or response
  /// message 'Content-Type' header.
  FhirCodeBuilder? contentType;

  /// [expression]
  /// The FHIRPath expression to be evaluated against the request or response
  /// message contents - HTTP headers and payload.
  FhirStringBuilder? expression;

  /// [headerField]
  /// The HTTP header field name e.g. 'Location'.
  FhirStringBuilder? headerField;

  /// [minimumId]
  /// The ID of a fixture. Asserts that the response contains at a minimum
  /// the fixture specified by minimumId.
  FhirStringBuilder? minimumId;

  /// [navigationLinks]
  /// Whether or not the test execution performs validation on the bundle
  /// navigation links.
  FhirBooleanBuilder? navigationLinks;

  /// [operator_]
  /// The operator type defines the conditional behavior of the assert. If
  /// not defined, the default is equals.
  AssertionOperatorTypeBuilder? operator_;

  /// [path]
  /// The XPath or JSONPath expression to be evaluated against the fixture
  /// representing the response received from server.
  FhirStringBuilder? path;

  /// [requestMethod]
  /// The request method or HTTP operation code to compare against that used
  /// by the client system under test.
  TestScriptRequestMethodCodeBuilder? requestMethod;

  /// [requestURL]
  /// The value to use in a comparison against the request URL path string.
  FhirStringBuilder? requestURL;

  /// [resource]
  /// The type of the resource. See http://build.fhir.org/resourcelist.html.
  FhirCodeBuilder? resource;

  /// [response]
  /// okay | created | noContent | notModified | bad | forbidden | notFound |
  /// methodNotAllowed | conflict | gone | preconditionFailed |
  /// unprocessable.
  AssertionResponseTypesBuilder? response;

  /// [responseCode]
  /// The value of the HTTP response code to be tested.
  FhirStringBuilder? responseCode;

  /// [sourceId]
  /// Fixture to evaluate the XPath/JSONPath expression or the headerField
  /// against.
  FhirIdBuilder? sourceId;

  /// [validateProfileId]
  /// The ID of the Profile to validate against.
  FhirIdBuilder? validateProfileId;

  /// [value]
  /// The value to compare to.
  FhirStringBuilder? value;

  /// [warningOnly]
  /// Whether or not the test execution will produce a warning only on error
  /// for this assert.
  FhirBooleanBuilder? warningOnly;

  /// Converts a [TestScriptAssertBuilder]
  /// to [TestScriptAssert]
  @override
  TestScriptAssert build() => TestScriptAssert.fromJson(toJson());

  /// Converts a [TestScriptAssertBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('label', label);
    addField('description', description);
    addField('direction', direction);
    addField('compareToSourceId', compareToSourceId);
    addField('compareToSourceExpression', compareToSourceExpression);
    addField('compareToSourcePath', compareToSourcePath);
    addField('contentType', contentType);
    addField('expression', expression);
    addField('headerField', headerField);
    addField('minimumId', minimumId);
    addField('navigationLinks', navigationLinks);
    addField('operator', operator_);
    addField('path', path);
    addField('requestMethod', requestMethod);
    addField('requestURL', requestURL);
    addField('resource', resource);
    addField('response', response);
    addField('responseCode', responseCode);
    addField('sourceId', sourceId);
    addField('validateProfileId', validateProfileId);
    addField('value', value);
    addField('warningOnly', warningOnly);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (warningOnly != null) {
          fields.add(warningOnly!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'label':
        {
          if (child is FhirStringBuilder) {
            label = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                label = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'direction':
        {
          if (child is AssertionDirectionTypeBuilder) {
            direction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AssertionDirectionTypeBuilder(stringValue);
                direction = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'compareToSourceId':
        {
          if (child is FhirStringBuilder) {
            compareToSourceId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                compareToSourceId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'compareToSourceExpression':
        {
          if (child is FhirStringBuilder) {
            compareToSourceExpression = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                compareToSourceExpression = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'compareToSourcePath':
        {
          if (child is FhirStringBuilder) {
            compareToSourcePath = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                compareToSourcePath = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contentType':
        {
          if (child is FhirCodeBuilder) {
            contentType = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                contentType = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expression':
        {
          if (child is FhirStringBuilder) {
            expression = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                expression = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'headerField':
        {
          if (child is FhirStringBuilder) {
            headerField = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                headerField = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'minimumId':
        {
          if (child is FhirStringBuilder) {
            minimumId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                minimumId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'navigationLinks':
        {
          if (child is FhirBooleanBuilder) {
            navigationLinks = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                navigationLinks = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'operator':
        {
          if (child is AssertionOperatorTypeBuilder) {
            operator_ = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AssertionOperatorTypeBuilder(stringValue);
                operator_ = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'path':
        {
          if (child is FhirStringBuilder) {
            path = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                path = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requestMethod':
        {
          if (child is TestScriptRequestMethodCodeBuilder) {
            requestMethod = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    TestScriptRequestMethodCodeBuilder(stringValue);
                requestMethod = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requestURL':
        {
          if (child is FhirStringBuilder) {
            requestURL = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                requestURL = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'resource':
        {
          if (child is FhirCodeBuilder) {
            resource = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                resource = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'response':
        {
          if (child is AssertionResponseTypesBuilder) {
            response = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AssertionResponseTypesBuilder(stringValue);
                response = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'responseCode':
        {
          if (child is FhirStringBuilder) {
            responseCode = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                responseCode = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sourceId':
        {
          if (child is FhirIdBuilder) {
            sourceId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                sourceId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'validateProfileId':
        {
          if (child is FhirIdBuilder) {
            validateProfileId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                validateProfileId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
        {
          if (child is FhirStringBuilder) {
            value = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                value = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'warningOnly':
        {
          if (child is FhirBooleanBuilder) {
            warningOnly = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                warningOnly = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'label':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'direction':
        return ['FhirCodeEnumBuilder'];
      case 'compareToSourceId':
        return ['FhirStringBuilder'];
      case 'compareToSourceExpression':
        return ['FhirStringBuilder'];
      case 'compareToSourcePath':
        return ['FhirStringBuilder'];
      case 'contentType':
        return ['FhirCodeBuilder'];
      case 'expression':
        return ['FhirStringBuilder'];
      case 'headerField':
        return ['FhirStringBuilder'];
      case 'minimumId':
        return ['FhirStringBuilder'];
      case 'navigationLinks':
        return ['FhirBooleanBuilder'];
      case 'operator':
        return ['FhirCodeEnumBuilder'];
      case 'path':
        return ['FhirStringBuilder'];
      case 'requestMethod':
        return ['FhirCodeEnumBuilder'];
      case 'requestURL':
        return ['FhirStringBuilder'];
      case 'resource':
        return ['FhirCodeBuilder'];
      case 'response':
        return ['FhirCodeEnumBuilder'];
      case 'responseCode':
        return ['FhirStringBuilder'];
      case 'sourceId':
        return ['FhirIdBuilder'];
      case 'validateProfileId':
        return ['FhirIdBuilder'];
      case 'value':
        return ['FhirStringBuilder'];
      case 'warningOnly':
        return ['FhirBooleanBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptAssertBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'label':
        {
          label = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'direction':
        {
          direction = AssertionDirectionTypeBuilder.empty();
          return;
        }
      case 'compareToSourceId':
        {
          compareToSourceId = FhirStringBuilder.empty();
          return;
        }
      case 'compareToSourceExpression':
        {
          compareToSourceExpression = FhirStringBuilder.empty();
          return;
        }
      case 'compareToSourcePath':
        {
          compareToSourcePath = FhirStringBuilder.empty();
          return;
        }
      case 'contentType':
        {
          contentType = FhirCodeBuilder.empty();
          return;
        }
      case 'expression':
        {
          expression = FhirStringBuilder.empty();
          return;
        }
      case 'headerField':
        {
          headerField = FhirStringBuilder.empty();
          return;
        }
      case 'minimumId':
        {
          minimumId = FhirStringBuilder.empty();
          return;
        }
      case 'navigationLinks':
        {
          navigationLinks = FhirBooleanBuilder.empty();
          return;
        }
      case 'operator':
        {
          operator_ = AssertionOperatorTypeBuilder.empty();
          return;
        }
      case 'path':
        {
          path = FhirStringBuilder.empty();
          return;
        }
      case 'requestMethod':
        {
          requestMethod = TestScriptRequestMethodCodeBuilder.empty();
          return;
        }
      case 'requestURL':
        {
          requestURL = FhirStringBuilder.empty();
          return;
        }
      case 'resource':
        {
          resource = FhirCodeBuilder.empty();
          return;
        }
      case 'response':
        {
          response = AssertionResponseTypesBuilder.empty();
          return;
        }
      case 'responseCode':
        {
          responseCode = FhirStringBuilder.empty();
          return;
        }
      case 'sourceId':
        {
          sourceId = FhirIdBuilder.empty();
          return;
        }
      case 'validateProfileId':
        {
          validateProfileId = FhirIdBuilder.empty();
          return;
        }
      case 'value':
        {
          value = FhirStringBuilder.empty();
          return;
        }
      case 'warningOnly':
        {
          warningOnly = FhirBooleanBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
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
    bool warningOnly = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (label) this.label = null;
    if (description) this.description = null;
    if (direction) this.direction = null;
    if (compareToSourceId) this.compareToSourceId = null;
    if (compareToSourceExpression) this.compareToSourceExpression = null;
    if (compareToSourcePath) this.compareToSourcePath = null;
    if (contentType) this.contentType = null;
    if (expression) this.expression = null;
    if (headerField) this.headerField = null;
    if (minimumId) this.minimumId = null;
    if (navigationLinks) this.navigationLinks = null;
    if (operator_) this.operator_ = null;
    if (path) this.path = null;
    if (requestMethod) this.requestMethod = null;
    if (requestURL) this.requestURL = null;
    if (resource) this.resource = null;
    if (response) this.response = null;
    if (responseCode) this.responseCode = null;
    if (sourceId) this.sourceId = null;
    if (validateProfileId) this.validateProfileId = null;
    if (value) this.value = null;
    if (warningOnly) this.warningOnly = null;
  }

  @override
  TestScriptAssertBuilder clone() => throw UnimplementedError();
  @override
  TestScriptAssertBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? label,
    FhirStringBuilder? description,
    AssertionDirectionTypeBuilder? direction,
    FhirStringBuilder? compareToSourceId,
    FhirStringBuilder? compareToSourceExpression,
    FhirStringBuilder? compareToSourcePath,
    FhirCodeBuilder? contentType,
    FhirStringBuilder? expression,
    FhirStringBuilder? headerField,
    FhirStringBuilder? minimumId,
    FhirBooleanBuilder? navigationLinks,
    AssertionOperatorTypeBuilder? operator_,
    FhirStringBuilder? path,
    TestScriptRequestMethodCodeBuilder? requestMethod,
    FhirStringBuilder? requestURL,
    FhirCodeBuilder? resource,
    AssertionResponseTypesBuilder? response,
    FhirStringBuilder? responseCode,
    FhirIdBuilder? sourceId,
    FhirIdBuilder? validateProfileId,
    FhirStringBuilder? value,
    FhirBooleanBuilder? warningOnly,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptAssertBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptAssertBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [TestScriptTestBuilder]
/// A test in this script.
class TestScriptTestBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptTestBuilder]

  TestScriptTestBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.description,
    this.action,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TestScript.test',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TestScriptTestBuilder.empty() => TestScriptTestBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptTestBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.test';
    return TestScriptTestBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      action: (json['action'] as List<dynamic>?)
          ?.map<TestScriptActionBuilder>(
            (v) => TestScriptActionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [TestScriptTestBuilder]
  /// from a [String] or [YamlMap] object
  factory TestScriptTestBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptTestBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptTestBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptTestBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptTestBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptTestBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptTestBuilder.fromJson(json);
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
  FhirStringBuilder? name;

  /// [description]
  /// A short description of the test used by test engines for tracking and
  /// reporting purposes.
  FhirStringBuilder? description;

  /// [action]
  /// Action would contain either an operation or an assertion.
  List<TestScriptActionBuilder>? action;

  /// Converts a [TestScriptTestBuilder]
  /// to [TestScriptTest]
  @override
  TestScriptTest build() => TestScriptTest.fromJson(toJson());

  /// Converts a [TestScriptTestBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('name', name);
    addField('description', description);
    addField('action', action);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (action != null) {
          fields.addAll(action!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'action':
        {
          if (child is List<TestScriptActionBuilder>) {
            // Replace or create new list
            action = child;
            return;
          } else if (child is TestScriptActionBuilder) {
            // Add single element to existing list or create new list
            action = [
              ...(action ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'action':
        return ['TestScriptActionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptTestBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'action':
        {
          action = <TestScriptActionBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool name = false,
    bool description = false,
    bool action = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (name) this.name = null;
    if (description) this.description = null;
    if (action) this.action = null;
  }

  @override
  TestScriptTestBuilder clone() => throw UnimplementedError();
  @override
  TestScriptTestBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    FhirStringBuilder? description,
    List<TestScriptActionBuilder>? action,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptTestBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      description: description ?? this.description,
      action: action ?? this.action,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptTestBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<TestScriptActionBuilder>(
      action,
      o.action,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptAction1Builder]
/// Action would contain either an operation or an assertion.
class TestScriptAction1Builder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptAction1Builder]

  TestScriptAction1Builder({
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
  /// For Builder classes, no fields are required
  factory TestScriptAction1Builder.empty() => TestScriptAction1Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptAction1Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.test.action';
    return TestScriptAction1Builder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      operation: JsonParser.parseObject<TestScriptOperationBuilder>(
        json,
        'operation',
        TestScriptOperationBuilder.fromJson,
        '$objectPath.operation',
      ),
      assert_: JsonParser.parseObject<TestScriptAssertBuilder>(
        json,
        'assert',
        TestScriptAssertBuilder.fromJson,
        '$objectPath.assert',
      ),
    );
  }

  /// Deserialize [TestScriptAction1Builder]
  /// from a [String] or [YamlMap] object
  factory TestScriptAction1Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptAction1Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptAction1Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptAction1Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptAction1Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptAction1Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptAction1Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestScriptAction1';

  /// [operation]
  /// An operation would involve a REST request to a server.
  TestScriptOperationBuilder? operation;

  /// [assert_]
  /// Evaluates the results of previous operations to determine if the server
  /// under test behaves appropriately.
  TestScriptAssertBuilder? assert_;

  /// Converts a [TestScriptAction1Builder]
  /// to [TestScriptAction1]
  @override
  TestScriptAction1 build() => TestScriptAction1.fromJson(toJson());

  /// Converts a [TestScriptAction1Builder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('operation', operation);
    addField('assert', assert_);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'operation':
        {
          if (child is TestScriptOperationBuilder) {
            operation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'assert':
        {
          if (child is TestScriptAssertBuilder) {
            assert_ = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'operation':
        return ['TestScriptOperationBuilder'];
      case 'assert':
        return ['TestScriptAssertBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptAction1Builder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'operation':
        {
          operation = TestScriptOperationBuilder.empty();
          return;
        }
      case 'assert':
        {
          assert_ = TestScriptAssertBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool operation = false,
    bool assert_ = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (operation) this.operation = null;
    if (assert_) this.assert_ = null;
  }

  @override
  TestScriptAction1Builder clone() => throw UnimplementedError();
  @override
  TestScriptAction1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    TestScriptOperationBuilder? operation,
    TestScriptAssertBuilder? assert_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptAction1Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
      assert_: assert_ ?? this.assert_,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptAction1Builder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [TestScriptTeardownBuilder]
/// A series of operations required to clean up after all the tests are
/// executed (successfully or otherwise).
class TestScriptTeardownBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptTeardownBuilder]

  TestScriptTeardownBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.action,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TestScript.teardown',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TestScriptTeardownBuilder.empty() => TestScriptTeardownBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptTeardownBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.teardown';
    return TestScriptTeardownBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<TestScriptActionBuilder>(
            (v) => TestScriptActionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [TestScriptTeardownBuilder]
  /// from a [String] or [YamlMap] object
  factory TestScriptTeardownBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptTeardownBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptTeardownBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptTeardownBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptTeardownBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptTeardownBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptTeardownBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestScriptTeardown';

  /// [action]
  /// The teardown action will only contain an operation.
  List<TestScriptActionBuilder>? action;

  /// Converts a [TestScriptTeardownBuilder]
  /// to [TestScriptTeardown]
  @override
  TestScriptTeardown build() => TestScriptTeardown.fromJson(toJson());

  /// Converts a [TestScriptTeardownBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('action', action);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (action != null) {
          fields.addAll(action!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'action':
        {
          if (child is List<TestScriptActionBuilder>) {
            // Replace or create new list
            action = child;
            return;
          } else if (child is TestScriptActionBuilder) {
            // Add single element to existing list or create new list
            action = [
              ...(action ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'action':
        return ['TestScriptActionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptTeardownBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'action':
        {
          action = <TestScriptActionBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool action = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (action) this.action = null;
  }

  @override
  TestScriptTeardownBuilder clone() => throw UnimplementedError();
  @override
  TestScriptTeardownBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<TestScriptActionBuilder>? action,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptTeardownBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptTeardownBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<TestScriptActionBuilder>(
      action,
      o.action,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestScriptAction2Builder]
/// The teardown action will only contain an operation.
class TestScriptAction2Builder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [TestScriptAction2Builder]

  TestScriptAction2Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TestScript.teardown.action',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory TestScriptAction2Builder.empty() => TestScriptAction2Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestScriptAction2Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TestScript.teardown.action';
    return TestScriptAction2Builder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      operation: JsonParser.parseObject<TestScriptOperationBuilder>(
        json,
        'operation',
        TestScriptOperationBuilder.fromJson,
        '$objectPath.operation',
      ),
    );
  }

  /// Deserialize [TestScriptAction2Builder]
  /// from a [String] or [YamlMap] object
  factory TestScriptAction2Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestScriptAction2Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestScriptAction2Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestScriptAction2Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestScriptAction2Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestScriptAction2Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestScriptAction2Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestScriptAction2';

  /// [operation]
  /// An operation would involve a REST request to a server.
  TestScriptOperationBuilder? operation;

  /// Converts a [TestScriptAction2Builder]
  /// to [TestScriptAction2]
  @override
  TestScriptAction2 build() => TestScriptAction2.fromJson(toJson());

  /// Converts a [TestScriptAction2Builder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('operation', operation);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'operation':
        {
          if (child is TestScriptOperationBuilder) {
            operation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'operation':
        return ['TestScriptOperationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TestScriptAction2Builder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'operation':
        {
          operation = TestScriptOperationBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool operation = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (operation) this.operation = null;
  }

  @override
  TestScriptAction2Builder clone() => throw UnimplementedError();
  @override
  TestScriptAction2Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    TestScriptOperationBuilder? operation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = TestScriptAction2Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TestScriptAction2Builder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
