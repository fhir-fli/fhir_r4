import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ConceptMap] /// A statement of relationships from one set of concepts to one or more other
/// concepts - either concepts in code systems, or data element/data element
/// concepts, or classes in class models.
class ConceptMap extends DomainResource {
  ConceptMap({
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
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
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
    this.sourceUri,
    this.sourceUriElement,
    this.sourceCanonical,
    this.sourceCanonicalElement,
    this.targetUri,
    this.targetUriElement,
    this.targetCanonical,
    this.targetCanonicalElement,
    this.group,
  }) : super(resourceType: R4ResourceType.ConceptMap);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this concept map when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this concept
  /// map is (or will be) published. This URL can be the target of a canonical
  /// reference. It SHALL remain the same when the concept map is stored on
  /// different servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this concept map when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final Identifier? identifier;

  /// [version] /// The identifier that is used to identify this version of the concept map
  /// when it is referenced in a specification, model, design or instance. This
  /// is an arbitrary value managed by the concept map author and is not expected
  /// to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd)
  /// if a managed version is not available. There is also no expectation that
  /// versions can be placed in a lexicographical sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the concept map. This name should be
  /// usable as an identifier for the module by machine processing applications
  /// such as code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the concept map.
  final FhirString? title;
  final Element? titleElement;

  /// [status] /// The status of this concept map. Enables tracking the life-cycle of the
  /// content.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this concept map is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be used
  /// for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the concept map was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the concept map changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the concept map.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the concept map from a
  /// consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate concept map instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the concept map is intended to be
  /// used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this concept map is needed and why it has been designed
  /// as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the concept map and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the concept map.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [sourceUri] /// Identifier for the source value set that contains the concepts that are
  /// being mapped and provides context for the mappings.
  final FhirUri? sourceUri;
  final Element? sourceUriElement;

  /// [sourceCanonical] /// Identifier for the source value set that contains the concepts that are
  /// being mapped and provides context for the mappings.
  final FhirCanonical? sourceCanonical;
  final Element? sourceCanonicalElement;

  /// [targetUri] /// The target value set provides context for the mappings. Note that the
  /// mapping is made between concepts, not between value sets, but the value set
  /// provides important context about how the concept mapping choices are made.
  final FhirUri? targetUri;
  final Element? targetUriElement;

  /// [targetCanonical] /// The target value set provides context for the mappings. Note that the
  /// mapping is made between concepts, not between value sets, but the value set
  /// provides important context about how the concept mapping choices are made.
  final FhirCanonical? targetCanonical;
  final Element? targetCanonicalElement;

  /// [group] /// A group of mappings that all have the same source and target system.
  final List<ConceptMapGroup>? group;
  @override
  ConceptMap clone() => throw UnimplementedError();
  ConceptMap copy({
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
    FhirUri? sourceUri,
    Element? sourceUriElement,
    FhirCanonical? sourceCanonical,
    Element? sourceCanonicalElement,
    FhirUri? targetUri,
    Element? targetUriElement,
    FhirCanonical? targetCanonical,
    Element? targetCanonicalElement,
    List<ConceptMapGroup>? group,
  }) {
    return ConceptMap(
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
      sourceUri: sourceUri ?? this.sourceUri,
      sourceUriElement: sourceUriElement ?? this.sourceUriElement,
      sourceCanonical: sourceCanonical ?? this.sourceCanonical,
      sourceCanonicalElement:
          sourceCanonicalElement ?? this.sourceCanonicalElement,
      targetUri: targetUri ?? this.targetUri,
      targetUriElement: targetUriElement ?? this.targetUriElement,
      targetCanonical: targetCanonical ?? this.targetCanonical,
      targetCanonicalElement:
          targetCanonicalElement ?? this.targetCanonicalElement,
      group: group ?? this.group,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ConceptMapGroup] /// A group of mappings that all have the same source and target system.
class ConceptMapGroup extends BackboneElement {
  ConceptMapGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.source,
    this.sourceElement,
    this.sourceVersion,
    this.sourceVersionElement,
    this.target,
    this.targetElement,
    this.targetVersion,
    this.targetVersionElement,
    required this.element,
    this.unmapped,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [source] /// An absolute URI that identifies the source system where the concepts to be
  /// mapped are defined.
  final FhirUri? source;
  final Element? sourceElement;

  /// [sourceVersion] /// The specific version of the code system, as determined by the code system
  /// authority.
  final FhirString? sourceVersion;
  final Element? sourceVersionElement;

  /// [target] /// An absolute URI that identifies the target system that the concepts will be
  /// mapped to.
  final FhirUri? target;
  final Element? targetElement;

  /// [targetVersion] /// The specific version of the code system, as determined by the code system
  /// authority.
  final FhirString? targetVersion;
  final Element? targetVersionElement;

  /// [element] /// Mappings for an individual concept in the source to one or more concepts in
  /// the target.
  final List<ConceptMapElement> element;

  /// [unmapped] /// What to do when there is no mapping for the source concept. "Unmapped" does
  /// not include codes that are unmatched, and the unmapped element is ignored
  /// in a code is specified to have equivalence = unmatched.
  final ConceptMapUnmapped? unmapped;
  @override
  ConceptMapGroup clone() => throw UnimplementedError();
  ConceptMapGroup copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? source,
    Element? sourceElement,
    FhirString? sourceVersion,
    Element? sourceVersionElement,
    FhirUri? target,
    Element? targetElement,
    FhirString? targetVersion,
    Element? targetVersionElement,
    List<ConceptMapElement>? element,
    ConceptMapUnmapped? unmapped,
  }) {
    return ConceptMapGroup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
      sourceElement: sourceElement ?? this.sourceElement,
      sourceVersion: sourceVersion ?? this.sourceVersion,
      sourceVersionElement: sourceVersionElement ?? this.sourceVersionElement,
      target: target ?? this.target,
      targetElement: targetElement ?? this.targetElement,
      targetVersion: targetVersion ?? this.targetVersion,
      targetVersionElement: targetVersionElement ?? this.targetVersionElement,
      element: element ?? this.element,
      unmapped: unmapped ?? this.unmapped,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ConceptMapElement] /// Mappings for an individual concept in the source to one or more concepts in
/// the target.
class ConceptMapElement extends BackboneElement {
  ConceptMapElement({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.target,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Identity (code or path) or the element/item being mapped.
  final FhirCode? code;
  final Element? codeElement;

  /// [display] /// The display for the code. The display is only provided to help editors when
  /// editing the concept map.
  final FhirString? display;
  final Element? displayElement;

  /// [target] /// A concept from the target value set that this concept maps to.
  final List<ConceptMapTarget>? target;
  @override
  ConceptMapElement clone() => throw UnimplementedError();
  ConceptMapElement copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirString? display,
    Element? displayElement,
    List<ConceptMapTarget>? target,
  }) {
    return ConceptMapElement(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      target: target ?? this.target,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ConceptMapTarget] /// A concept from the target value set that this concept maps to.
class ConceptMapTarget extends BackboneElement {
  ConceptMapTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    required this.equivalence,
    this.equivalenceElement,
    this.comment,
    this.commentElement,
    this.dependsOn,
    this.product,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Identity (code or path) or the element/item that the map refers to.
  final FhirCode? code;
  final Element? codeElement;

  /// [display] /// The display for the code. The display is only provided to help editors when
  /// editing the concept map.
  final FhirString? display;
  final Element? displayElement;

  /// [equivalence] /// The equivalence between the source and target concepts (counting for the
  /// dependencies and products). The equivalence is read from target to source
  /// (e.g. the target is 'wider' than the source).
  final FhirCode equivalence;
  final Element? equivalenceElement;

  /// [comment] /// A description of status/issues in mapping that conveys additional
  /// information not represented in the structured data.
  final FhirString? comment;
  final Element? commentElement;

  /// [dependsOn] /// A set of additional dependencies for this mapping to hold. This mapping is
  /// only applicable if the specified element can be resolved, and it has the
  /// specified value.
  final List<ConceptMapDependsOn>? dependsOn;

  /// [product] /// A set of additional outcomes from this mapping to other elements. To
  /// properly execute this mapping, the specified element must be mapped to some
  /// data element or source that is in context. The mapping may still be useful
  /// without a place for the additional data elements, but the equivalence
  /// cannot be relied on.
  final List<ConceptMapDependsOn>? product;
  @override
  ConceptMapTarget clone() => throw UnimplementedError();
  ConceptMapTarget copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirString? display,
    Element? displayElement,
    FhirCode? equivalence,
    Element? equivalenceElement,
    FhirString? comment,
    Element? commentElement,
    List<ConceptMapDependsOn>? dependsOn,
    List<ConceptMapDependsOn>? product,
  }) {
    return ConceptMapTarget(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      equivalence: equivalence ?? this.equivalence,
      equivalenceElement: equivalenceElement ?? this.equivalenceElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      dependsOn: dependsOn ?? this.dependsOn,
      product: product ?? this.product,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ConceptMapDependsOn] /// A set of additional dependencies for this mapping to hold. This mapping is
/// only applicable if the specified element can be resolved, and it has the
/// specified value.
class ConceptMapDependsOn extends BackboneElement {
  ConceptMapDependsOn({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.property,
    this.propertyElement,
    this.system,
    this.systemElement,
    required this.value,
    this.valueElement,
    this.display,
    this.displayElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [property] /// A reference to an element that holds a coded value that corresponds to a
  /// code system property. The idea is that the information model carries an
  /// element somewhere that is labeled to correspond with a code system
  /// property.
  final FhirUri property;
  final Element? propertyElement;

  /// [system] /// An absolute URI that identifies the code system of the dependency code (if
  /// the source/dependency is a value set that crosses code systems).
  final FhirCanonical? system;
  final Element? systemElement;

  /// [value] /// Identity (code or path) or the element/item/ValueSet/text that the map
  /// depends on / refers to.
  final FhirString value;
  final Element? valueElement;

  /// [display] /// The display for the code. The display is only provided to help editors when
  /// editing the concept map.
  final FhirString? display;
  final Element? displayElement;
  @override
  ConceptMapDependsOn clone() => throw UnimplementedError();
  ConceptMapDependsOn copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? property,
    Element? propertyElement,
    FhirCanonical? system,
    Element? systemElement,
    FhirString? value,
    Element? valueElement,
    FhirString? display,
    Element? displayElement,
  }) {
    return ConceptMapDependsOn(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      property: property ?? this.property,
      propertyElement: propertyElement ?? this.propertyElement,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ConceptMapUnmapped] /// What to do when there is no mapping for the source concept. "Unmapped" does
/// not include codes that are unmatched, and the unmapped element is ignored
/// in a code is specified to have equivalence = unmatched.
class ConceptMapUnmapped extends BackboneElement {
  ConceptMapUnmapped({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.modeElement,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.url,
    this.urlElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [mode] /// Defines which action to take if there is no match for the source concept in
  /// the target system designated for the group. One of 3 actions are possible:
  /// use the unmapped code (this is useful when doing a mapping between
  /// versions, and only a few codes have changed), use a fixed code (a default
  /// code), or alternatively, a reference to a different concept map can be
  /// provided (by canonical URL).
  final FhirCode mode;
  final Element? modeElement;

  /// [code] /// The fixed code to use when the mode = 'fixed' - all unmapped codes are
  /// mapped to a single fixed code.
  final FhirCode? code;
  final Element? codeElement;

  /// [display] /// The display for the code. The display is only provided to help editors when
  /// editing the concept map.
  final FhirString? display;
  final Element? displayElement;

  /// [url] /// The canonical reference to an additional ConceptMap resource instance to
  /// use for mapping if this ConceptMap resource contains no matching mapping
  /// for the source concept.
  final FhirCanonical? url;
  final Element? urlElement;
  @override
  ConceptMapUnmapped clone() => throw UnimplementedError();
  ConceptMapUnmapped copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? mode,
    Element? modeElement,
    FhirCode? code,
    Element? codeElement,
    FhirString? display,
    Element? displayElement,
    FhirCanonical? url,
    Element? urlElement,
  }) {
    return ConceptMapUnmapped(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
    );
  }
}
