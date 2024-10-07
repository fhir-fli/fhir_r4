import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ChargeItemDefinition] /// The ChargeItemDefinition resource provides the properties that apply to the
/// (billing) codes necessary to calculate costs and prices. The properties may
/// differ largely depending on type and realm, therefore this resource gives
/// only a rough structure and requires profiling for each type of billing code
/// system.
class ChargeItemDefinition extends DomainResource {
  ChargeItemDefinition({
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
    this.title,
    this.titleElement,
    this.derivedFromUri,
    this.derivedFromUriElement,
    this.partOf,
    this.partOfElement,
    this.replaces,
    this.replacesElement,
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
    this.copyright,
    this.copyrightElement,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.effectivePeriod,
    this.code,
    this.instance,
    this.applicability,
    this.propertyGroup,
  }) : super(resourceType: R4ResourceType.ChargeItemDefinition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this charge item definition when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// charge item definition is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the charge
  /// item definition is stored on different servers.
  final FhirUri url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this charge item definition
  /// when it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the charge item
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the charge item definition
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence. To provide a version consistent with the Decision Support Service
  /// specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more
  /// information on versioning knowledge assets, refer to the Decision Support
  /// Service specification. Note that a version is required for non-experimental
  /// active assets.
  final FhirString? version;
  final Element? versionElement;

  /// [title] /// A short, descriptive, user-friendly title for the charge item definition.
  final FhirString? title;
  final Element? titleElement;

  /// [derivedFromUri] /// The URL pointing to an externally-defined charge item definition that is
  /// adhered to in whole or in part by this definition.
  final List<FhirUri>? derivedFromUri;
  final List<Element>? derivedFromUriElement;

  /// [partOf] /// A larger definition of which this particular definition is a component or
  /// step.
  final List<FhirCanonical>? partOf;
  final List<Element>? partOfElement;

  /// [replaces] /// As new versions of a protocol or guideline are defined, allows
  /// identification of what versions are replaced by a new instance.
  final List<FhirCanonical>? replaces;
  final List<Element>? replacesElement;

  /// [status] /// The current state of the ChargeItemDefinition.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this charge item definition is authored
  /// for testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the charge item definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  /// the substantive content of the charge item definition changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the charge item
  /// definition.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the charge item definition from
  /// a consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate charge item definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the charge item definition is
  /// intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [copyright] /// A copyright statement relating to the charge item definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  /// and publishing of the charge item definition.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [approvalDate] /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for usage.
  final FhirDate? approvalDate;
  final Element? approvalDateElement;

  /// [lastReviewDate] /// The date on which the resource content was last reviewed. Review happens
  /// periodically after approval but does not change the original approval date.
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;

  /// [effectivePeriod] /// The period during which the charge item definition content was or is
  /// planned to be in active use.
  final Period? effectivePeriod;

  /// [code] /// The defined billing details in this resource pertain to the given billing
  /// code.
  final CodeableConcept? code;

  /// [instance] /// The defined billing details in this resource pertain to the given product
  /// instance(s).
  final List<Reference>? instance;

  /// [applicability] /// Expressions that describe applicability criteria for the billing code.
  final List<ChargeItemDefinitionApplicability>? applicability;

  /// [propertyGroup] /// Group of properties which are applicable under the same conditions. If no
  /// applicability rules are established for the group, then all properties
  /// always apply.
  final List<ChargeItemDefinitionPropertyGroup>? propertyGroup;
  @override
  ChargeItemDefinition clone() => throw UnimplementedError();
  ChargeItemDefinition copy({
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
    FhirString? title,
    Element? titleElement,
    List<FhirUri>? derivedFromUri,
    List<Element>? derivedFromUriElement,
    List<FhirCanonical>? partOf,
    List<Element>? partOfElement,
    List<FhirCanonical>? replaces,
    List<Element>? replacesElement,
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
    FhirMarkdown? copyright,
    Element? copyrightElement,
    FhirDate? approvalDate,
    Element? approvalDateElement,
    FhirDate? lastReviewDate,
    Element? lastReviewDateElement,
    Period? effectivePeriod,
    CodeableConcept? code,
    List<Reference>? instance,
    List<ChargeItemDefinitionApplicability>? applicability,
    List<ChargeItemDefinitionPropertyGroup>? propertyGroup,
  }) {
    return ChargeItemDefinition(
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
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      derivedFromUri: derivedFromUri ?? this.derivedFromUri,
      derivedFromUriElement:
          derivedFromUriElement ?? this.derivedFromUriElement,
      partOf: partOf ?? this.partOf,
      partOfElement: partOfElement ?? this.partOfElement,
      replaces: replaces ?? this.replaces,
      replacesElement: replacesElement ?? this.replacesElement,
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
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
      approvalDate: approvalDate ?? this.approvalDate,
      approvalDateElement: approvalDateElement ?? this.approvalDateElement,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      lastReviewDateElement:
          lastReviewDateElement ?? this.lastReviewDateElement,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      code: code ?? this.code,
      instance: instance ?? this.instance,
      applicability: applicability ?? this.applicability,
      propertyGroup: propertyGroup ?? this.propertyGroup,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ChargeItemDefinitionApplicability] /// Expressions that describe applicability criteria for the billing code.
class ChargeItemDefinitionApplicability extends BackboneElement {
  ChargeItemDefinitionApplicability({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.language,
    this.languageElement,
    this.expression,
    this.expressionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// A brief, natural language description of the condition that effectively
  /// communicates the intended semantics.
  final FhirString? description;
  final Element? descriptionElement;

  /// [language] /// The media type of the language for the expression, e.g. "text/cql" for
  /// Clinical Query Language expressions or "text/fhirpath" for FHIRPath
  /// expressions.
  final FhirString? language;
  final Element? languageElement;

  /// [expression] /// An expression that returns true or false, indicating whether the condition
  /// is satisfied. When using FHIRPath expressions, the %context environment
  /// variable must be replaced at runtime with the ChargeItem resource to which
  /// this definition is applied.
  final FhirString? expression;
  final Element? expressionElement;
  @override
  ChargeItemDefinitionApplicability clone() => throw UnimplementedError();
  ChargeItemDefinitionApplicability copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    FhirString? language,
    Element? languageElement,
    FhirString? expression,
    Element? expressionElement,
  }) {
    return ChargeItemDefinitionApplicability(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      expression: expression ?? this.expression,
      expressionElement: expressionElement ?? this.expressionElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ChargeItemDefinitionPropertyGroup] /// Group of properties which are applicable under the same conditions. If no
/// applicability rules are established for the group, then all properties
/// always apply.
class ChargeItemDefinitionPropertyGroup extends BackboneElement {
  ChargeItemDefinitionPropertyGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.applicability,
    this.priceComponent,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [applicability] /// Expressions that describe applicability criteria for the priceComponent.
  final List<ChargeItemDefinitionApplicability>? applicability;

  /// [priceComponent] /// The price for a ChargeItem may be calculated as a base price with
  /// surcharges/deductions that apply in certain conditions. A
  /// ChargeItemDefinition resource that defines the prices, factors and
  /// conditions that apply to a billing code is currently under development. The
  /// priceComponent element can be used to offer transparency to the recipient
  /// of the Invoice of how the prices have been calculated.
  final List<ChargeItemDefinitionPriceComponent>? priceComponent;
  @override
  ChargeItemDefinitionPropertyGroup clone() => throw UnimplementedError();
  ChargeItemDefinitionPropertyGroup copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ChargeItemDefinitionApplicability>? applicability,
    List<ChargeItemDefinitionPriceComponent>? priceComponent,
  }) {
    return ChargeItemDefinitionPropertyGroup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      applicability: applicability ?? this.applicability,
      priceComponent: priceComponent ?? this.priceComponent,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ChargeItemDefinitionPriceComponent] /// The price for a ChargeItem may be calculated as a base price with
/// surcharges/deductions that apply in certain conditions. A
/// ChargeItemDefinition resource that defines the prices, factors and
/// conditions that apply to a billing code is currently under development. The
/// priceComponent element can be used to offer transparency to the recipient
/// of the Invoice of how the prices have been calculated.
class ChargeItemDefinitionPriceComponent extends BackboneElement {
  ChargeItemDefinitionPriceComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    this.code,
    this.factor,
    this.factorElement,
    this.amount,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// This code identifies the type of the component.
  final FhirCode type;
  final Element? typeElement;

  /// [code] /// A code that identifies the component. Codes may be used to differentiate
  /// between kinds of taxes, surcharges, discounts etc.
  final CodeableConcept? code;

  /// [factor] /// The factor that has been applied on the base price for calculating this
  /// component.
  final FhirDecimal? factor;
  final Element? factorElement;

  /// [amount] /// The amount calculated for this component.
  final Money? amount;
  @override
  ChargeItemDefinitionPriceComponent clone() => throw UnimplementedError();
  ChargeItemDefinitionPriceComponent copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    Element? typeElement,
    CodeableConcept? code,
    FhirDecimal? factor,
    Element? factorElement,
    Money? amount,
  }) {
    return ChargeItemDefinitionPriceComponent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      code: code ?? this.code,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      amount: amount ?? this.amount,
    );
  }
}
