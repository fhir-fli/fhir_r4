import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [CompartmentDefinition] /// A compartment definition that defines how resources are accessed on a
/// server.
class CompartmentDefinition extends DomainResource {
  CompartmentDefinition({
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
    this.version,
    this.versionElement,
    required this.name,
    this.nameElement,
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
    this.purpose,
    this.purposeElement,
    required this.code,
    this.codeElement,
    required this.search,
    this.searchElement,
    this.resource,
  }) : super(resourceType: R4ResourceType.CompartmentDefinition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this compartment definition when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// compartment definition is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  /// compartment definition is stored on different servers.
  final FhirUri url;
  final Element? urlElement;

  /// [version] /// The identifier that is used to identify this version of the compartment
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the compartment definition
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the compartment definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;
  final Element? nameElement;

  /// [status] /// The status of this compartment definition. Enables tracking the life-cycle
  /// of the content.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this compartment definition is authored
  /// for testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the compartment definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  /// the substantive content of the compartment definition changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the compartment
  /// definition.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the compartment definition from
  /// a consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate compartment definition instances.
  final List<UsageContext>? useContext;

  /// [purpose] /// Explanation of why this compartment definition is needed and why it has
  /// been designed as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [code] /// Which compartment this definition describes.
  final FhirCode code;
  final Element? codeElement;

  /// [search] /// Whether the search syntax is supported,.
  final FhirBoolean search;
  final Element? searchElement;

  /// [resource] /// Information about how a resource is related to the compartment.
  final List<CompartmentDefinitionResource>? resource;
  @override
  CompartmentDefinition clone() => throw UnimplementedError();
  CompartmentDefinition copy({
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
    FhirString? version,
    Element? versionElement,
    FhirString? name,
    Element? nameElement,
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
    FhirMarkdown? purpose,
    Element? purposeElement,
    FhirCode? code,
    Element? codeElement,
    FhirBoolean? search,
    Element? searchElement,
    List<CompartmentDefinitionResource>? resource,
  }) {
    return CompartmentDefinition(
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
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
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
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      search: search ?? this.search,
      searchElement: searchElement ?? this.searchElement,
      resource: resource ?? this.resource,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CompartmentDefinitionResource] /// Information about how a resource is related to the compartment.
class CompartmentDefinitionResource extends BackboneElement {
  CompartmentDefinitionResource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.param,
    this.paramElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The name of a resource supported by the server.
  final FhirCode code;
  final Element? codeElement;

  /// [param] /// The name of a search parameter that represents the link to the compartment.
  /// More than one may be listed because a resource may be linked to a
  /// compartment in more than one way,.
  final List<FhirString>? param;
  final List<Element>? paramElement;

  /// [documentation] /// Additional documentation about the resource and compartment.
  final FhirString? documentation;
  final Element? documentationElement;
  @override
  CompartmentDefinitionResource clone() => throw UnimplementedError();
  CompartmentDefinitionResource copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    List<FhirString>? param,
    List<Element>? paramElement,
    FhirString? documentation,
    Element? documentationElement,
  }) {
    return CompartmentDefinitionResource(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      param: param ?? this.param,
      paramElement: paramElement ?? this.paramElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
    );
  }
}
