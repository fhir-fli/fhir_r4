import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  }) : super(resourceType: R4ResourceType.TestScript);

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
  final FhirCode status;
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
  TestScript clone() => throw UnimplementedError();
  TestScript copy({
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
    FhirUri? url,
    Element? urlElement,
    Identifier? identifier,
    FhirString? version,
    Element? versionElement,
    FhirString? name,
    Element? nameElement,
    FhirString? title,
    Element? titleElement,
    FhirCode? status,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [index] /// Abstract name given to an origin server in this test script. The name is
  /// provided as a number starting at 1.
  final FhirInteger index;
  final Element? indexElement;

  /// [profile] /// The type of origin profile the test system supports.
  final Coding profile;
  @override
  TestScriptOrigin clone() => throw UnimplementedError();
  TestScriptOrigin copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? index,
    Element? indexElement,
    Coding? profile,
  }) {
    return TestScriptOrigin(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      index: index ?? this.index,
      indexElement: indexElement ?? this.indexElement,
      profile: profile ?? this.profile,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [index] /// Abstract name given to a destination server in this test script. The name
  /// is provided as a number starting at 1.
  final FhirInteger index;
  final Element? indexElement;

  /// [profile] /// The type of destination profile the test system supports.
  final Coding profile;
  @override
  TestScriptDestination clone() => throw UnimplementedError();
  TestScriptDestination copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? index,
    Element? indexElement,
    Coding? profile,
  }) {
    return TestScriptDestination(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      index: index ?? this.index,
      indexElement: indexElement ?? this.indexElement,
      profile: profile ?? this.profile,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TestScriptMetadata] /// The required capability must exist and are assumed to function correctly on
/// the FHIR server being tested.
class TestScriptMetadata extends BackboneElement {
  TestScriptMetadata({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.link,
    required this.capability,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [link] /// A link to the FHIR specification that this test is covering.
  final List<TestScriptLink>? link;

  /// [capability] /// Capabilities that must exist and are assumed to function correctly on the
  /// FHIR server being tested.
  final List<TestScriptCapability> capability;
  @override
  TestScriptMetadata clone() => throw UnimplementedError();
  TestScriptMetadata copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<TestScriptLink>? link,
    List<TestScriptCapability>? capability,
  }) {
    return TestScriptMetadata(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      link: link ?? this.link,
      capability: capability ?? this.capability,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// URL to a particular requirement or feature within the FHIR specification.
  final FhirUri url;
  final Element? urlElement;

  /// [description] /// Short description of the link.
  final FhirString? description;
  final Element? descriptionElement;
  @override
  TestScriptLink clone() => throw UnimplementedError();
  TestScriptLink copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    Element? urlElement,
    FhirString? description,
    Element? descriptionElement,
  }) {
    return TestScriptLink(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  TestScriptCapability clone() => throw UnimplementedError();
  TestScriptCapability copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  TestScriptFixture clone() => throw UnimplementedError();
  TestScriptFixture copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? autocreate,
    Element? autocreateElement,
    FhirBoolean? autodelete,
    Element? autodeleteElement,
    Reference? resource,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  TestScriptVariable clone() => throw UnimplementedError();
  TestScriptVariable copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TestScriptSetup] /// A series of required setup operations before tests are executed.
class TestScriptSetup extends BackboneElement {
  TestScriptSetup({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [action] /// Action would contain either an operation or an assertion.
  final List<TestScriptAction> action;
  @override
  TestScriptSetup clone() => throw UnimplementedError();
  TestScriptSetup copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<TestScriptAction>? action,
  }) {
    return TestScriptSetup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TestScriptAction] /// Action would contain either an operation or an assertion.
class TestScriptAction extends BackboneElement {
  TestScriptAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    this.assert_,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [operation] /// The operation to perform.
  final TestScriptOperation? operation;

  /// [assert_] /// Evaluates the results of previous operations to determine if the server
  /// under test behaves appropriately.
  final TestScriptAssert? assert_;
  @override
  TestScriptAction clone() => throw UnimplementedError();
  TestScriptAction copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestScriptOperation? operation,
    TestScriptAssert? assert_,
  }) {
    return TestScriptAction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
      assert_: assert_ ?? this.assert_,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Server interaction or operation type.
  final Coding? type;

  /// [resource] /// The type of the resource. See http://build.fhir.org/resourcelist.html.
  final FhirCode? resource;
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
  final FhirCode? method;
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
  TestScriptOperation clone() => throw UnimplementedError();
  TestScriptOperation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? type,
    FhirCode? resource,
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
    FhirCode? method,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [field] /// The HTTP header field e.g. "Accept".
  final FhirString field;
  final Element? fieldElement;

  /// [value] /// The value of the header e.g. "application/fhir+xml".
  final FhirString value;
  final Element? valueElement;
  @override
  TestScriptRequestHeader clone() => throw UnimplementedError();
  TestScriptRequestHeader copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? field,
    Element? fieldElement,
    FhirString? value,
    Element? valueElement,
  }) {
    return TestScriptRequestHeader(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      field: field ?? this.field,
      fieldElement: fieldElement ?? this.fieldElement,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [label] /// The label would be used for tracking/logging purposes by test engines.
  final FhirString? label;
  final Element? labelElement;

  /// [description] /// The description would be used by test engines for tracking and reporting
  /// purposes.
  final FhirString? description;
  final Element? descriptionElement;

  /// [direction] /// The direction to use for the assertion.
  final FhirCode? direction;
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
  final FhirCode? operator_;
  final Element? operatorElement;

  /// [path] /// The XPath or JSONPath expression to be evaluated against the fixture
  /// representing the response received from server.
  final FhirString? path;
  final Element? pathElement;

  /// [requestMethod] /// The request method or HTTP operation code to compare against that used by
  /// the client system under test.
  final FhirCode? requestMethod;
  final Element? requestMethodElement;

  /// [requestURL] /// The value to use in a comparison against the request URL path string.
  final FhirString? requestURL;
  final Element? requestURLElement;

  /// [resource] /// The type of the resource. See http://build.fhir.org/resourcelist.html.
  final FhirCode? resource;
  final Element? resourceElement;

  /// [response] /// okay | created | noContent | notModified | bad | forbidden | notFound |
  /// methodNotAllowed | conflict | gone | preconditionFailed | unprocessable.
  final FhirCode? response;
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
  TestScriptAssert clone() => throw UnimplementedError();
  TestScriptAssert copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? label,
    Element? labelElement,
    FhirString? description,
    Element? descriptionElement,
    FhirCode? direction,
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
    FhirCode? operator_,
    Element? operatorElement,
    FhirString? path,
    Element? pathElement,
    FhirCode? requestMethod,
    Element? requestMethodElement,
    FhirString? requestURL,
    Element? requestURLElement,
    FhirCode? resource,
    Element? resourceElement,
    FhirCode? response,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  TestScriptTest clone() => throw UnimplementedError();
  TestScriptTest copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? description,
    Element? descriptionElement,
    List<TestScriptAction>? action,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TestScriptAction1] /// Action would contain either an operation or an assertion.
class TestScriptAction1 extends BackboneElement {
  TestScriptAction1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    this.assert_,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [operation] /// An operation would involve a REST request to a server.
  final TestScriptOperation? operation;

  /// [assert_] /// Evaluates the results of previous operations to determine if the server
  /// under test behaves appropriately.
  final TestScriptAssert? assert_;
  @override
  TestScriptAction1 clone() => throw UnimplementedError();
  TestScriptAction1 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestScriptOperation? operation,
    TestScriptAssert? assert_,
  }) {
    return TestScriptAction1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
      assert_: assert_ ?? this.assert_,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TestScriptTeardown] /// A series of operations required to clean up after all the tests are
/// executed (successfully or otherwise).
class TestScriptTeardown extends BackboneElement {
  TestScriptTeardown({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [action] /// The teardown action will only contain an operation.
  final List<TestScriptAction> action;
  @override
  TestScriptTeardown clone() => throw UnimplementedError();
  TestScriptTeardown copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<TestScriptAction>? action,
  }) {
    return TestScriptTeardown(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TestScriptAction2] /// The teardown action will only contain an operation.
class TestScriptAction2 extends BackboneElement {
  TestScriptAction2({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.operation,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [operation] /// An operation would involve a REST request to a server.
  final TestScriptOperation operation;
  @override
  TestScriptAction2 clone() => throw UnimplementedError();
  TestScriptAction2 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TestScriptOperation? operation,
  }) {
    return TestScriptAction2(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
    );
  }
}
