import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [StructureDefinition] /// A definition of a FHIR structure. This resource is used to describe the
/// underlying resources, data types defined in FHIR, and also for describing
/// extensions and constraints on resources and data types.
class StructureDefinition extends DomainResource {
  StructureDefinition({
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
    this.keyword,
    this.fhirVersion,
    this.fhirVersionElement,
    this.mapping,
    required this.kind,
    this.kindElement,
    required this.abstract_,
    this.abstractElement,
    this.context,
    required this.type,
    this.typeElement,
    this.baseDefinition,
    this.baseDefinitionElement,
    this.derivation,
    this.derivationElement,
    this.snapshot,
    this.differential,
  }) : super(resourceType: R4ResourceType.StructureDefinition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this structure definition when it
  /// is referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// structure definition is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the structure
  /// definition is stored on different servers.
  final FhirUri url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this structure definition when
  /// it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the structure
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the structure definition
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the structure definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the structure definition.
  final FhirString? title;
  final Element? titleElement;

  /// [status] /// The status of this structure definition. Enables tracking the life-cycle of
  /// the content.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this structure definition is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the structure definition was published.
  /// The date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the structure definition changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the structure
  /// definition.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the structure definition from a
  /// consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate structure definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the structure definition is intended
  /// to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this structure definition is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the structure definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  /// and publishing of the structure definition.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [keyword] /// A set of key words or terms from external terminologies that may be used to
  /// assist with indexing and searching of templates nby describing the use of
  /// this structure definition, or the content it describes.
  final List<Coding>? keyword;

  /// [fhirVersion] /// The version of the FHIR specification on which this StructureDefinition is
  /// based - this is the formal version of the specification, without the
  /// revision number, e.g. [publication].[major].[minor], which is 4.3.0 for
  /// this version.
  final FhirCode? fhirVersion;
  final Element? fhirVersionElement;

  /// [mapping] /// An external specification that the content is mapped to.
  final List<StructureDefinitionMapping>? mapping;

  /// [kind] /// Defines the kind of structure that this definition is describing.
  final FhirCode kind;
  final Element? kindElement;

  /// [abstract_] /// Whether structure this definition describes is abstract or not - that is,
  /// whether the structure is not intended to be instantiated. For Resources and
  /// Data types, abstract types will never be exchanged between systems.
  final FhirBoolean abstract_;
  final Element? abstractElement;

  /// [context] /// Identifies the types of resource or data type elements to which the
  /// extension can be applied.
  final List<StructureDefinitionContext>? context;

  /// [type] /// The type this structure describes. If the derivation kind is
  /// 'specialization' then this is the master definition for a type, and there
  /// is always one of these (a data type, an extension, a resource, including
  /// abstract ones). Otherwise the structure definition is a constraint on the
  /// stated type (and in this case, the type cannot be an abstract type).
  /// References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  /// allowed in logical models.
  final FhirUri type;
  final Element? typeElement;

  /// [baseDefinition] /// An absolute URI that is the base structure from which this type is derived,
  /// either by specialization or constraint.
  final FhirCanonical? baseDefinition;
  final Element? baseDefinitionElement;

  /// [derivation] /// How the type relates to the baseDefinition.
  final FhirCode? derivation;
  final Element? derivationElement;

  /// [snapshot] /// A snapshot view is expressed in a standalone form that can be used and
  /// interpreted without considering the base StructureDefinition.
  final StructureDefinitionSnapshot? snapshot;

  /// [differential] /// A differential view is expressed relative to the base StructureDefinition -
  /// a statement of differences that it applies.
  final StructureDefinitionDifferential? differential;
  @override
  StructureDefinition clone() => throw UnimplementedError();
  StructureDefinition copy({
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
    List<Identifier>? identifier,
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
    List<Coding>? keyword,
    FhirCode? fhirVersion,
    Element? fhirVersionElement,
    List<StructureDefinitionMapping>? mapping,
    FhirCode? kind,
    Element? kindElement,
    FhirBoolean? abstract_,
    Element? abstractElement,
    List<StructureDefinitionContext>? context,
    FhirUri? type,
    Element? typeElement,
    FhirCanonical? baseDefinition,
    Element? baseDefinitionElement,
    FhirCode? derivation,
    Element? derivationElement,
    StructureDefinitionSnapshot? snapshot,
    StructureDefinitionDifferential? differential,
  }) {
    return StructureDefinition(
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
      keyword: keyword ?? this.keyword,
      fhirVersion: fhirVersion ?? this.fhirVersion,
      fhirVersionElement: fhirVersionElement ?? this.fhirVersionElement,
      mapping: mapping ?? this.mapping,
      kind: kind ?? this.kind,
      kindElement: kindElement ?? this.kindElement,
      abstract_: abstract_ ?? this.abstract_,
      abstractElement: abstractElement ?? this.abstractElement,
      context: context ?? this.context,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      baseDefinition: baseDefinition ?? this.baseDefinition,
      baseDefinitionElement:
          baseDefinitionElement ?? this.baseDefinitionElement,
      derivation: derivation ?? this.derivation,
      derivationElement: derivationElement ?? this.derivationElement,
      snapshot: snapshot ?? this.snapshot,
      differential: differential ?? this.differential,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [StructureDefinitionMapping] /// An external specification that the content is mapped to.
class StructureDefinitionMapping extends BackboneElement {
  StructureDefinitionMapping({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.identity,
    this.identityElement,
    this.uri,
    this.uriElement,
    this.name,
    this.nameElement,
    this.comment,
    this.commentElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identity] /// An Internal id that is used to identify this mapping set when specific
  /// mappings are made.
  final FhirId identity;
  final Element? identityElement;

  /// [uri] /// An absolute URI that identifies the specification that this mapping is
  /// expressed to.
  final FhirUri? uri;
  final Element? uriElement;

  /// [name] /// A name for the specification that is being mapped to.
  final FhirString? name;
  final Element? nameElement;

  /// [comment] /// Comments about this mapping, including version notes, issues, scope
  /// limitations, and other important notes for usage.
  final FhirString? comment;
  final Element? commentElement;
  @override
  StructureDefinitionMapping clone() => throw UnimplementedError();
  StructureDefinitionMapping copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? identity,
    Element? identityElement,
    FhirUri? uri,
    Element? uriElement,
    FhirString? name,
    Element? nameElement,
    FhirString? comment,
    Element? commentElement,
  }) {
    return StructureDefinitionMapping(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identity: identity ?? this.identity,
      identityElement: identityElement ?? this.identityElement,
      uri: uri ?? this.uri,
      uriElement: uriElement ?? this.uriElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [StructureDefinitionContext] /// Identifies the types of resource or data type elements to which the
/// extension can be applied.
class StructureDefinitionContext extends BackboneElement {
  StructureDefinitionContext({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    required this.expression,
    this.expressionElement,
    this.contextInvariant,
    this.contextInvariantElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Defines how to interpret the expression that defines what the context of
  /// the extension is.
  final FhirCode type;
  final Element? typeElement;

  /// [expression] /// An expression that defines where an extension can be used in resources.
  final FhirString expression;
  final Element? expressionElement;

  /// [contextInvariant] /// A set of rules as FHIRPath Invariants about when the extension can be used
  /// (e.g. co-occurrence variants for the extension). All the rules must be
  /// true.
  final List<FhirString>? contextInvariant;
  final List<Element>? contextInvariantElement;
  @override
  StructureDefinitionContext clone() => throw UnimplementedError();
  StructureDefinitionContext copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    Element? typeElement,
    FhirString? expression,
    Element? expressionElement,
    List<FhirString>? contextInvariant,
    List<Element>? contextInvariantElement,
  }) {
    return StructureDefinitionContext(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      expression: expression ?? this.expression,
      expressionElement: expressionElement ?? this.expressionElement,
      contextInvariant: contextInvariant ?? this.contextInvariant,
      contextInvariantElement:
          contextInvariantElement ?? this.contextInvariantElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [StructureDefinitionSnapshot] /// A snapshot view is expressed in a standalone form that can be used and
/// interpreted without considering the base StructureDefinition.
class StructureDefinitionSnapshot extends BackboneElement {
  StructureDefinitionSnapshot({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.element,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [element] /// Captures constraints on each element within the resource.
  final List<ElementDefinition> element;
  @override
  StructureDefinitionSnapshot clone() => throw UnimplementedError();
  StructureDefinitionSnapshot copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ElementDefinition>? element,
  }) {
    return StructureDefinitionSnapshot(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      element: element ?? this.element,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [StructureDefinitionDifferential] /// A differential view is expressed relative to the base StructureDefinition -
/// a statement of differences that it applies.
class StructureDefinitionDifferential extends BackboneElement {
  StructureDefinitionDifferential({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.element,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [element] /// Captures constraints on each element within the resource.
  final List<ElementDefinition> element;
  @override
  StructureDefinitionDifferential clone() => throw UnimplementedError();
  StructureDefinitionDifferential copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ElementDefinition>? element,
  }) {
    return StructureDefinitionDifferential(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      element: element ?? this.element,
    );
  }
}
