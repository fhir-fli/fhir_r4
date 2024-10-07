import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'charge_item_definition.g.dart';

/// [ChargeItemDefinition] /// The ChargeItemDefinition resource provides the properties that apply to the
/// (billing) codes necessary to calculate costs and prices. The properties may
/// differ largely depending on type and realm, therefore this resource gives
/// only a rough structure and requires profiling for each type of billing code
/// system.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
            resourceType: R4ResourceType.ChargeItemDefinition,
            fhirType: 'ChargeItemDefinition');
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
  @JsonKey(name: 'url')
  final FhirUri url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this charge item definition
  /// when it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  @JsonKey(name: 'identifier')
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
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [title] /// A short, descriptive, user-friendly title for the charge item definition.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [derivedFromUri] /// The URL pointing to an externally-defined charge item definition that is
  /// adhered to in whole or in part by this definition.
  @JsonKey(name: 'derivedFromUri')
  final List<FhirUri>? derivedFromUri;
  @JsonKey(name: '_derivedFromUri')
  final List<Element>? derivedFromUriElement;

  /// [partOf] /// A larger definition of which this particular definition is a component or
  /// step.
  @JsonKey(name: 'partOf')
  final List<FhirCanonical>? partOf;
  @JsonKey(name: '_partOf')
  final List<Element>? partOfElement;

  /// [replaces] /// As new versions of a protocol or guideline are defined, allows
  /// identification of what versions are replaced by a new instance.
  @JsonKey(name: 'replaces')
  final List<FhirCanonical>? replaces;
  @JsonKey(name: '_replaces')
  final List<Element>? replacesElement;

  /// [status] /// The current state of the ChargeItemDefinition.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this charge item definition is authored
  /// for testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  @JsonKey(name: 'experimental')
  final FhirBoolean? experimental;
  @JsonKey(name: '_experimental')
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the charge item definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  /// the substantive content of the charge item definition changes.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the charge item
  /// definition.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the charge item definition from
  /// a consumer's perspective.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate charge item definition instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the charge item definition is
  /// intended to be used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [copyright] /// A copyright statement relating to the charge item definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  /// and publishing of the charge item definition.
  @JsonKey(name: 'copyright')
  final FhirMarkdown? copyright;
  @JsonKey(name: '_copyright')
  final Element? copyrightElement;

  /// [approvalDate] /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for usage.
  @JsonKey(name: 'approvalDate')
  final FhirDate? approvalDate;
  @JsonKey(name: '_approvalDate')
  final Element? approvalDateElement;

  /// [lastReviewDate] /// The date on which the resource content was last reviewed. Review happens
  /// periodically after approval but does not change the original approval date.
  @JsonKey(name: 'lastReviewDate')
  final FhirDate? lastReviewDate;
  @JsonKey(name: '_lastReviewDate')
  final Element? lastReviewDateElement;

  /// [effectivePeriod] /// The period during which the charge item definition content was or is
  /// planned to be in active use.
  @JsonKey(name: 'effectivePeriod')
  final Period? effectivePeriod;

  /// [code] /// The defined billing details in this resource pertain to the given billing
  /// code.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [instance] /// The defined billing details in this resource pertain to the given product
  /// instance(s).
  @JsonKey(name: 'instance')
  final List<Reference>? instance;

  /// [applicability] /// Expressions that describe applicability criteria for the billing code.
  @JsonKey(name: 'applicability')
  final List<ChargeItemDefinitionApplicability>? applicability;

  /// [propertyGroup] /// Group of properties which are applicable under the same conditions. If no
  /// applicability rules are established for the group, then all properties
  /// always apply.
  @JsonKey(name: 'propertyGroup')
  final List<ChargeItemDefinitionPropertyGroup>? propertyGroup;
  factory ChargeItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$ChargeItemDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ChargeItemDefinitionToJson(this);

  @override
  ChargeItemDefinition clone() => throw UnimplementedError();
  @override
  ChargeItemDefinition copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ChargeItemDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ChargeItemDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ChargeItemDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ChargeItemDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ChargeItemDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItemDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ChargeItemDefinitionApplicability] /// Expressions that describe applicability criteria for the billing code.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ChargeItemDefinitionApplicability');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// A brief, natural language description of the condition that effectively
  /// communicates the intended semantics.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [language] /// The media type of the language for the expression, e.g. "text/cql" for
  /// Clinical Query Language expressions or "text/fhirpath" for FHIRPath
  /// expressions.
  @JsonKey(name: 'language')
  final FhirString? language;
  @JsonKey(name: '_language')
  final Element? languageElement;

  /// [expression] /// An expression that returns true or false, indicating whether the condition
  /// is satisfied. When using FHIRPath expressions, the %context environment
  /// variable must be replaced at runtime with the ChargeItem resource to which
  /// this definition is applied.
  @JsonKey(name: 'expression')
  final FhirString? expression;
  @JsonKey(name: '_expression')
  final Element? expressionElement;
  factory ChargeItemDefinitionApplicability.fromJson(
          Map<String, dynamic> json) =>
      _$ChargeItemDefinitionApplicabilityFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ChargeItemDefinitionApplicabilityToJson(this);

  @override
  ChargeItemDefinitionApplicability clone() => throw UnimplementedError();
  @override
  ChargeItemDefinitionApplicability copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    FhirString? language,
    Element? languageElement,
    FhirString? expression,
    Element? expressionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ChargeItemDefinitionApplicability.fromYaml(dynamic yaml) => yaml
          is String
      ? ChargeItemDefinitionApplicability.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ChargeItemDefinitionApplicability.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ChargeItemDefinitionApplicability cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ChargeItemDefinitionApplicability.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItemDefinitionApplicability.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ChargeItemDefinitionPropertyGroup] /// Group of properties which are applicable under the same conditions. If no
/// applicability rules are established for the group, then all properties
/// always apply.
@JsonSerializable()
class ChargeItemDefinitionPropertyGroup extends BackboneElement {
  ChargeItemDefinitionPropertyGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.applicability,
    this.priceComponent,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ChargeItemDefinitionPropertyGroup');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [applicability] /// Expressions that describe applicability criteria for the priceComponent.
  @JsonKey(name: 'applicability')
  final List<ChargeItemDefinitionApplicability>? applicability;

  /// [priceComponent] /// The price for a ChargeItem may be calculated as a base price with
  /// surcharges/deductions that apply in certain conditions. A
  /// ChargeItemDefinition resource that defines the prices, factors and
  /// conditions that apply to a billing code is currently under development. The
  /// priceComponent element can be used to offer transparency to the recipient
  /// of the Invoice of how the prices have been calculated.
  @JsonKey(name: 'priceComponent')
  final List<ChargeItemDefinitionPriceComponent>? priceComponent;
  factory ChargeItemDefinitionPropertyGroup.fromJson(
          Map<String, dynamic> json) =>
      _$ChargeItemDefinitionPropertyGroupFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ChargeItemDefinitionPropertyGroupToJson(this);

  @override
  ChargeItemDefinitionPropertyGroup clone() => throw UnimplementedError();
  @override
  ChargeItemDefinitionPropertyGroup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ChargeItemDefinitionApplicability>? applicability,
    List<ChargeItemDefinitionPriceComponent>? priceComponent,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ChargeItemDefinitionPropertyGroup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      applicability: applicability ?? this.applicability,
      priceComponent: priceComponent ?? this.priceComponent,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ChargeItemDefinitionPropertyGroup.fromYaml(dynamic yaml) => yaml
          is String
      ? ChargeItemDefinitionPropertyGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ChargeItemDefinitionPropertyGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ChargeItemDefinitionPropertyGroup cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ChargeItemDefinitionPropertyGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItemDefinitionPropertyGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ChargeItemDefinitionPriceComponent] /// The price for a ChargeItem may be calculated as a base price with
/// surcharges/deductions that apply in certain conditions. A
/// ChargeItemDefinition resource that defines the prices, factors and
/// conditions that apply to a billing code is currently under development. The
/// priceComponent element can be used to offer transparency to the recipient
/// of the Invoice of how the prices have been calculated.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ChargeItemDefinitionPriceComponent');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// This code identifies the type of the component.
  @JsonKey(name: 'type')
  final FhirCode type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [code] /// A code that identifies the component. Codes may be used to differentiate
  /// between kinds of taxes, surcharges, discounts etc.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [factor] /// The factor that has been applied on the base price for calculating this
  /// component.
  @JsonKey(name: 'factor')
  final FhirDecimal? factor;
  @JsonKey(name: '_factor')
  final Element? factorElement;

  /// [amount] /// The amount calculated for this component.
  @JsonKey(name: 'amount')
  final Money? amount;
  factory ChargeItemDefinitionPriceComponent.fromJson(
          Map<String, dynamic> json) =>
      _$ChargeItemDefinitionPriceComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ChargeItemDefinitionPriceComponentToJson(this);

  @override
  ChargeItemDefinitionPriceComponent clone() => throw UnimplementedError();
  @override
  ChargeItemDefinitionPriceComponent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    Element? typeElement,
    CodeableConcept? code,
    FhirDecimal? factor,
    Element? factorElement,
    Money? amount,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ChargeItemDefinitionPriceComponent.fromYaml(dynamic yaml) => yaml
          is String
      ? ChargeItemDefinitionPriceComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ChargeItemDefinitionPriceComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ChargeItemDefinitionPriceComponent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ChargeItemDefinitionPriceComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItemDefinitionPriceComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
