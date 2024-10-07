import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [StructureMap] /// A Map of relationships between 2 structures that can be used to transform
/// data.
class StructureMap extends DomainResource {
  StructureMap({
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
    this.structure,
    this.import_,
    this.importElement,
    required this.group,
  }) : super(resourceType: R4ResourceType.StructureMap);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this structure map when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// structure map is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the structure map is
  /// stored on different servers.
  final FhirUri url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this structure map when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the structure map
  /// when it is referenced in a specification, model, design or instance. This
  /// is an arbitrary value managed by the structure map author and is not
  /// expected to be globally unique. For example, it might be a timestamp (e.g.
  /// yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the structure map. This name should be
  /// usable as an identifier for the module by machine processing applications
  /// such as code generation.
  final FhirString name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the structure map.
  final FhirString? title;
  final Element? titleElement;

  /// [status] /// The status of this structure map. Enables tracking the life-cycle of the
  /// content.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this structure map is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be used
  /// for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the structure map was published. The
  /// date must change when the business version changes and it must change if
  /// the status code changes. In addition, it should change when the substantive
  /// content of the structure map changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the structure
  /// map.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the structure map from a
  /// consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate structure map instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the structure map is intended to be
  /// used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this structure map is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the structure map and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the structure map.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [structure] /// A structure definition used by this map. The structure definition may
  /// describe instances that are converted, or the instances that are produced.
  final List<StructureMapStructure>? structure;

  /// [import_] /// Other maps used by this map (canonical URLs).
  final List<FhirCanonical>? import_;
  final List<Element>? importElement;

  /// [group] /// Organizes the mapping into manageable chunks for human review/ease of
  /// maintenance.
  final List<StructureMapGroup> group;
  @override
  StructureMap clone() => throw UnimplementedError();
  StructureMap copy({
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
    List<StructureMapStructure>? structure,
    List<FhirCanonical>? import_,
    List<Element>? importElement,
    List<StructureMapGroup>? group,
  }) {
    return StructureMap(
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
      structure: structure ?? this.structure,
      import_: import_ ?? this.import_,
      importElement: importElement ?? this.importElement,
      group: group ?? this.group,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [StructureMapStructure] /// A structure definition used by this map. The structure definition may
/// describe instances that are converted, or the instances that are produced.
class StructureMapStructure extends BackboneElement {
  StructureMapStructure({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.url,
    this.urlElement,
    required this.mode,
    this.modeElement,
    this.alias,
    this.aliasElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// The canonical reference to the structure.
  final FhirCanonical url;
  final Element? urlElement;

  /// [mode] /// How the referenced structure is used in this mapping.
  final FhirCode mode;
  final Element? modeElement;

  /// [alias] /// The name used for this type in the map.
  final FhirString? alias;
  final Element? aliasElement;

  /// [documentation] /// Documentation that describes how the structure is used in the mapping.
  final FhirString? documentation;
  final Element? documentationElement;
  @override
  StructureMapStructure clone() => throw UnimplementedError();
  StructureMapStructure copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? url,
    Element? urlElement,
    FhirCode? mode,
    Element? modeElement,
    FhirString? alias,
    Element? aliasElement,
    FhirString? documentation,
    Element? documentationElement,
  }) {
    return StructureMapStructure(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      alias: alias ?? this.alias,
      aliasElement: aliasElement ?? this.aliasElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [StructureMapGroup] /// Organizes the mapping into manageable chunks for human review/ease of
/// maintenance.
class StructureMapGroup extends BackboneElement {
  StructureMapGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.extends_,
    this.extendsElement,
    required this.typeMode,
    this.typeModeElement,
    this.documentation,
    this.documentationElement,
    required this.input,
    required this.rule,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// A unique name for the group for the convenience of human readers.
  final FhirId name;
  final Element? nameElement;

  /// [extends_] /// Another group that this group adds rules to.
  final FhirId? extends_;
  final Element? extendsElement;

  /// [typeMode] /// If this is the default rule set to apply for the source type or this
  /// combination of types.
  final FhirCode typeMode;
  final Element? typeModeElement;

  /// [documentation] /// Additional supporting documentation that explains the purpose of the group
  /// and the types of mappings within it.
  final FhirString? documentation;
  final Element? documentationElement;

  /// [input] /// A name assigned to an instance of data. The instance must be provided when
  /// the mapping is invoked.
  final List<StructureMapInput> input;

  /// [rule] /// Transform Rule from source to target.
  final List<StructureMapRule> rule;
  @override
  StructureMapGroup clone() => throw UnimplementedError();
  StructureMapGroup copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    Element? nameElement,
    FhirId? extends_,
    Element? extendsElement,
    FhirCode? typeMode,
    Element? typeModeElement,
    FhirString? documentation,
    Element? documentationElement,
    List<StructureMapInput>? input,
    List<StructureMapRule>? rule,
  }) {
    return StructureMapGroup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      extends_: extends_ ?? this.extends_,
      extendsElement: extendsElement ?? this.extendsElement,
      typeMode: typeMode ?? this.typeMode,
      typeModeElement: typeModeElement ?? this.typeModeElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
      input: input ?? this.input,
      rule: rule ?? this.rule,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [StructureMapInput] /// A name assigned to an instance of data. The instance must be provided when
/// the mapping is invoked.
class StructureMapInput extends BackboneElement {
  StructureMapInput({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.type,
    this.typeElement,
    required this.mode,
    this.modeElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Name for this instance of data.
  final FhirId name;
  final Element? nameElement;

  /// [type] /// Type for this instance of data.
  final FhirString? type;
  final Element? typeElement;

  /// [mode] /// Mode for this instance of data.
  final FhirCode mode;
  final Element? modeElement;

  /// [documentation] /// Documentation for this instance of data.
  final FhirString? documentation;
  final Element? documentationElement;
  @override
  StructureMapInput clone() => throw UnimplementedError();
  StructureMapInput copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    Element? nameElement,
    FhirString? type,
    Element? typeElement,
    FhirCode? mode,
    Element? modeElement,
    FhirString? documentation,
    Element? documentationElement,
  }) {
    return StructureMapInput(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [StructureMapRule] /// Transform Rule from source to target.
class StructureMapRule extends BackboneElement {
  StructureMapRule({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    required this.source,
    this.target,
    this.rule,
    this.dependent,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Name of the rule for internal references.
  final FhirId name;
  final Element? nameElement;

  /// [source] /// Source inputs to the mapping.
  final List<StructureMapSource> source;

  /// [target] /// Content to create because of this mapping rule.
  final List<StructureMapTarget>? target;

  /// [rule] /// Rules contained in this rule.
  final List<StructureMapRule>? rule;

  /// [dependent] /// Which other rules to apply in the context of this rule.
  final List<StructureMapDependent>? dependent;

  /// [documentation] /// Documentation for this instance of data.
  final FhirString? documentation;
  final Element? documentationElement;
  @override
  StructureMapRule clone() => throw UnimplementedError();
  StructureMapRule copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    Element? nameElement,
    List<StructureMapSource>? source,
    List<StructureMapTarget>? target,
    List<StructureMapRule>? rule,
    List<StructureMapDependent>? dependent,
    FhirString? documentation,
    Element? documentationElement,
  }) {
    return StructureMapRule(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      source: source ?? this.source,
      target: target ?? this.target,
      rule: rule ?? this.rule,
      dependent: dependent ?? this.dependent,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [StructureMapSource] /// Source inputs to the mapping.
class StructureMapSource extends BackboneElement {
  StructureMapSource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.context,
    this.contextElement,
    this.min,
    this.minElement,
    this.max,
    this.maxElement,
    this.type,
    this.typeElement,
    this.defaultValueBase64Binary,
    this.defaultValueBase64BinaryElement,
    this.defaultValueBoolean,
    this.defaultValueBooleanElement,
    this.defaultValueCanonical,
    this.defaultValueCanonicalElement,
    this.defaultValueCode,
    this.defaultValueCodeElement,
    this.defaultValueDate,
    this.defaultValueDateElement,
    this.defaultValueDateTime,
    this.defaultValueDateTimeElement,
    this.defaultValueDecimal,
    this.defaultValueDecimalElement,
    this.defaultValueId,
    this.defaultValueIdElement,
    this.defaultValueInstant,
    this.defaultValueInstantElement,
    this.defaultValueInteger,
    this.defaultValueIntegerElement,
    this.defaultValueMarkdown,
    this.defaultValueMarkdownElement,
    this.defaultValueOid,
    this.defaultValueOidElement,
    this.defaultValuePositiveInt,
    this.defaultValuePositiveIntElement,
    this.defaultValueString,
    this.defaultValueStringElement,
    this.defaultValueTime,
    this.defaultValueTimeElement,
    this.defaultValueUnsignedInt,
    this.defaultValueUnsignedIntElement,
    this.defaultValueUri,
    this.defaultValueUriElement,
    this.defaultValueUrl,
    this.defaultValueUrlElement,
    this.defaultValueUuid,
    this.defaultValueUuidElement,
    this.defaultValueAddress,
    this.defaultValueAge,
    this.defaultValueAnnotation,
    this.defaultValueAttachment,
    this.defaultValueCodeableConcept,
    this.defaultValueCoding,
    this.defaultValueContactPoint,
    this.defaultValueCount,
    this.defaultValueDistance,
    this.defaultValueDuration,
    this.defaultValueHumanName,
    this.defaultValueIdentifier,
    this.defaultValueMoney,
    this.defaultValuePeriod,
    this.defaultValueQuantity,
    this.defaultValueRange,
    this.defaultValueRatio,
    this.defaultValueReference,
    this.defaultValueSampledData,
    this.defaultValueSignature,
    this.defaultValueTiming,
    this.defaultValueContactDetail,
    this.defaultValueContributor,
    this.defaultValueDataRequirement,
    this.defaultValueExpression,
    this.defaultValueParameterDefinition,
    this.defaultValueRelatedArtifact,
    this.defaultValueTriggerDefinition,
    this.defaultValueUsageContext,
    this.defaultValueDosage,
    this.defaultValueMeta,
    this.element,
    this.elementElement,
    this.listMode,
    this.listModeElement,
    this.variable,
    this.variableElement,
    this.condition,
    this.conditionElement,
    this.check,
    this.checkElement,
    this.logMessage,
    this.logMessageElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [context] /// Type or variable this rule applies to.
  final FhirId context;
  final Element? contextElement;

  /// [min] /// Specified minimum cardinality for the element. This is optional; if
  /// present, it acts an implicit check on the input content.
  final FhirInteger? min;
  final Element? minElement;

  /// [max] /// Specified maximum cardinality for the element - a number or a "*". This is
  /// optional; if present, it acts an implicit check on the input content (*
  /// just serves as documentation; it's the default value).
  final FhirString? max;
  final Element? maxElement;

  /// [type] /// Specified type for the element. This works as a condition on the mapping -
  /// use for polymorphic elements.
  final FhirString? type;
  final Element? typeElement;

  /// [defaultValueBase64Binary] /// A value to use if there is no existing value in the source object.
  final FhirBase64Binary? defaultValueBase64Binary;
  final Element? defaultValueBase64BinaryElement;

  /// [defaultValueBoolean] /// A value to use if there is no existing value in the source object.
  final FhirBoolean? defaultValueBoolean;
  final Element? defaultValueBooleanElement;

  /// [defaultValueCanonical] /// A value to use if there is no existing value in the source object.
  final FhirCanonical? defaultValueCanonical;
  final Element? defaultValueCanonicalElement;

  /// [defaultValueCode] /// A value to use if there is no existing value in the source object.
  final FhirCode? defaultValueCode;
  final Element? defaultValueCodeElement;

  /// [defaultValueDate] /// A value to use if there is no existing value in the source object.
  final FhirDate? defaultValueDate;
  final Element? defaultValueDateElement;

  /// [defaultValueDateTime] /// A value to use if there is no existing value in the source object.
  final FhirDateTime? defaultValueDateTime;
  final Element? defaultValueDateTimeElement;

  /// [defaultValueDecimal] /// A value to use if there is no existing value in the source object.
  final FhirDecimal? defaultValueDecimal;
  final Element? defaultValueDecimalElement;

  /// [defaultValueId] /// A value to use if there is no existing value in the source object.
  final FhirId? defaultValueId;
  final Element? defaultValueIdElement;

  /// [defaultValueInstant] /// A value to use if there is no existing value in the source object.
  final FhirInstant? defaultValueInstant;
  final Element? defaultValueInstantElement;

  /// [defaultValueInteger] /// A value to use if there is no existing value in the source object.
  final FhirInteger? defaultValueInteger;
  final Element? defaultValueIntegerElement;

  /// [defaultValueMarkdown] /// A value to use if there is no existing value in the source object.
  final FhirMarkdown? defaultValueMarkdown;
  final Element? defaultValueMarkdownElement;

  /// [defaultValueOid] /// A value to use if there is no existing value in the source object.
  final FhirOid? defaultValueOid;
  final Element? defaultValueOidElement;

  /// [defaultValuePositiveInt] /// A value to use if there is no existing value in the source object.
  final FhirPositiveInt? defaultValuePositiveInt;
  final Element? defaultValuePositiveIntElement;

  /// [defaultValueString] /// A value to use if there is no existing value in the source object.
  final FhirString? defaultValueString;
  final Element? defaultValueStringElement;

  /// [defaultValueTime] /// A value to use if there is no existing value in the source object.
  final FhirTime? defaultValueTime;
  final Element? defaultValueTimeElement;

  /// [defaultValueUnsignedInt] /// A value to use if there is no existing value in the source object.
  final FhirUnsignedInt? defaultValueUnsignedInt;
  final Element? defaultValueUnsignedIntElement;

  /// [defaultValueUri] /// A value to use if there is no existing value in the source object.
  final FhirUri? defaultValueUri;
  final Element? defaultValueUriElement;

  /// [defaultValueUrl] /// A value to use if there is no existing value in the source object.
  final FhirUrl? defaultValueUrl;
  final Element? defaultValueUrlElement;

  /// [defaultValueUuid] /// A value to use if there is no existing value in the source object.
  final FhirUuid? defaultValueUuid;
  final Element? defaultValueUuidElement;

  /// [defaultValueAddress] /// A value to use if there is no existing value in the source object.
  final Address? defaultValueAddress;

  /// [defaultValueAge] /// A value to use if there is no existing value in the source object.
  final Age? defaultValueAge;

  /// [defaultValueAnnotation] /// A value to use if there is no existing value in the source object.
  final Annotation? defaultValueAnnotation;

  /// [defaultValueAttachment] /// A value to use if there is no existing value in the source object.
  final Attachment? defaultValueAttachment;

  /// [defaultValueCodeableConcept] /// A value to use if there is no existing value in the source object.
  final CodeableConcept? defaultValueCodeableConcept;

  /// [defaultValueCoding] /// A value to use if there is no existing value in the source object.
  final Coding? defaultValueCoding;

  /// [defaultValueContactPoint] /// A value to use if there is no existing value in the source object.
  final ContactPoint? defaultValueContactPoint;

  /// [defaultValueCount] /// A value to use if there is no existing value in the source object.
  final Count? defaultValueCount;

  /// [defaultValueDistance] /// A value to use if there is no existing value in the source object.
  final Distance? defaultValueDistance;

  /// [defaultValueDuration] /// A value to use if there is no existing value in the source object.
  final FhirDuration? defaultValueDuration;

  /// [defaultValueHumanName] /// A value to use if there is no existing value in the source object.
  final HumanName? defaultValueHumanName;

  /// [defaultValueIdentifier] /// A value to use if there is no existing value in the source object.
  final Identifier? defaultValueIdentifier;

  /// [defaultValueMoney] /// A value to use if there is no existing value in the source object.
  final Money? defaultValueMoney;

  /// [defaultValuePeriod] /// A value to use if there is no existing value in the source object.
  final Period? defaultValuePeriod;

  /// [defaultValueQuantity] /// A value to use if there is no existing value in the source object.
  final Quantity? defaultValueQuantity;

  /// [defaultValueRange] /// A value to use if there is no existing value in the source object.
  final Range? defaultValueRange;

  /// [defaultValueRatio] /// A value to use if there is no existing value in the source object.
  final Ratio? defaultValueRatio;

  /// [defaultValueReference] /// A value to use if there is no existing value in the source object.
  final Reference? defaultValueReference;

  /// [defaultValueSampledData] /// A value to use if there is no existing value in the source object.
  final SampledData? defaultValueSampledData;

  /// [defaultValueSignature] /// A value to use if there is no existing value in the source object.
  final Signature? defaultValueSignature;

  /// [defaultValueTiming] /// A value to use if there is no existing value in the source object.
  final Timing? defaultValueTiming;

  /// [defaultValueContactDetail] /// A value to use if there is no existing value in the source object.
  final ContactDetail? defaultValueContactDetail;

  /// [defaultValueContributor] /// A value to use if there is no existing value in the source object.
  final Contributor? defaultValueContributor;

  /// [defaultValueDataRequirement] /// A value to use if there is no existing value in the source object.
  final DataRequirement? defaultValueDataRequirement;

  /// [defaultValueExpression] /// A value to use if there is no existing value in the source object.
  final FhirExpression? defaultValueExpression;

  /// [defaultValueParameterDefinition] /// A value to use if there is no existing value in the source object.
  final ParameterDefinition? defaultValueParameterDefinition;

  /// [defaultValueRelatedArtifact] /// A value to use if there is no existing value in the source object.
  final RelatedArtifact? defaultValueRelatedArtifact;

  /// [defaultValueTriggerDefinition] /// A value to use if there is no existing value in the source object.
  final TriggerDefinition? defaultValueTriggerDefinition;

  /// [defaultValueUsageContext] /// A value to use if there is no existing value in the source object.
  final UsageContext? defaultValueUsageContext;

  /// [defaultValueDosage] /// A value to use if there is no existing value in the source object.
  final Dosage? defaultValueDosage;

  /// [defaultValueMeta] /// A value to use if there is no existing value in the source object.
  final FhirMeta? defaultValueMeta;

  /// [element] /// Optional field for this source.
  final FhirString? element;
  final Element? elementElement;

  /// [listMode] /// How to handle the list mode for this element.
  final FhirCode? listMode;
  final Element? listModeElement;

  /// [variable] /// Named context for field, if a field is specified.
  final FhirId? variable;
  final Element? variableElement;

  /// [condition] /// FHIRPath expression - must be true or the rule does not apply.
  final FhirString? condition;
  final Element? conditionElement;

  /// [check] /// FHIRPath expression - must be true or the mapping engine throws an error
  /// instead of completing.
  final FhirString? check;
  final Element? checkElement;

  /// [logMessage] /// A FHIRPath expression which specifies a message to put in the transform log
  /// when content matching the source rule is found.
  final FhirString? logMessage;
  final Element? logMessageElement;
  @override
  StructureMapSource clone() => throw UnimplementedError();
  StructureMapSource copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? context,
    Element? contextElement,
    FhirInteger? min,
    Element? minElement,
    FhirString? max,
    Element? maxElement,
    FhirString? type,
    Element? typeElement,
    FhirBase64Binary? defaultValueBase64Binary,
    Element? defaultValueBase64BinaryElement,
    FhirBoolean? defaultValueBoolean,
    Element? defaultValueBooleanElement,
    FhirCanonical? defaultValueCanonical,
    Element? defaultValueCanonicalElement,
    FhirCode? defaultValueCode,
    Element? defaultValueCodeElement,
    FhirDate? defaultValueDate,
    Element? defaultValueDateElement,
    FhirDateTime? defaultValueDateTime,
    Element? defaultValueDateTimeElement,
    FhirDecimal? defaultValueDecimal,
    Element? defaultValueDecimalElement,
    FhirId? defaultValueId,
    Element? defaultValueIdElement,
    FhirInstant? defaultValueInstant,
    Element? defaultValueInstantElement,
    FhirInteger? defaultValueInteger,
    Element? defaultValueIntegerElement,
    FhirMarkdown? defaultValueMarkdown,
    Element? defaultValueMarkdownElement,
    FhirOid? defaultValueOid,
    Element? defaultValueOidElement,
    FhirPositiveInt? defaultValuePositiveInt,
    Element? defaultValuePositiveIntElement,
    FhirString? defaultValueString,
    Element? defaultValueStringElement,
    FhirTime? defaultValueTime,
    Element? defaultValueTimeElement,
    FhirUnsignedInt? defaultValueUnsignedInt,
    Element? defaultValueUnsignedIntElement,
    FhirUri? defaultValueUri,
    Element? defaultValueUriElement,
    FhirUrl? defaultValueUrl,
    Element? defaultValueUrlElement,
    FhirUuid? defaultValueUuid,
    Element? defaultValueUuidElement,
    Address? defaultValueAddress,
    Age? defaultValueAge,
    Annotation? defaultValueAnnotation,
    Attachment? defaultValueAttachment,
    CodeableConcept? defaultValueCodeableConcept,
    Coding? defaultValueCoding,
    ContactPoint? defaultValueContactPoint,
    Count? defaultValueCount,
    Distance? defaultValueDistance,
    FhirDuration? defaultValueDuration,
    HumanName? defaultValueHumanName,
    Identifier? defaultValueIdentifier,
    Money? defaultValueMoney,
    Period? defaultValuePeriod,
    Quantity? defaultValueQuantity,
    Range? defaultValueRange,
    Ratio? defaultValueRatio,
    Reference? defaultValueReference,
    SampledData? defaultValueSampledData,
    Signature? defaultValueSignature,
    Timing? defaultValueTiming,
    ContactDetail? defaultValueContactDetail,
    Contributor? defaultValueContributor,
    DataRequirement? defaultValueDataRequirement,
    FhirExpression? defaultValueExpression,
    ParameterDefinition? defaultValueParameterDefinition,
    RelatedArtifact? defaultValueRelatedArtifact,
    TriggerDefinition? defaultValueTriggerDefinition,
    UsageContext? defaultValueUsageContext,
    Dosage? defaultValueDosage,
    FhirMeta? defaultValueMeta,
    FhirString? element,
    Element? elementElement,
    FhirCode? listMode,
    Element? listModeElement,
    FhirId? variable,
    Element? variableElement,
    FhirString? condition,
    Element? conditionElement,
    FhirString? check,
    Element? checkElement,
    FhirString? logMessage,
    Element? logMessageElement,
  }) {
    return StructureMapSource(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      context: context ?? this.context,
      contextElement: contextElement ?? this.contextElement,
      min: min ?? this.min,
      minElement: minElement ?? this.minElement,
      max: max ?? this.max,
      maxElement: maxElement ?? this.maxElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      defaultValueBase64Binary:
          defaultValueBase64Binary ?? this.defaultValueBase64Binary,
      defaultValueBase64BinaryElement: defaultValueBase64BinaryElement ??
          this.defaultValueBase64BinaryElement,
      defaultValueBoolean: defaultValueBoolean ?? this.defaultValueBoolean,
      defaultValueBooleanElement:
          defaultValueBooleanElement ?? this.defaultValueBooleanElement,
      defaultValueCanonical:
          defaultValueCanonical ?? this.defaultValueCanonical,
      defaultValueCanonicalElement:
          defaultValueCanonicalElement ?? this.defaultValueCanonicalElement,
      defaultValueCode: defaultValueCode ?? this.defaultValueCode,
      defaultValueCodeElement:
          defaultValueCodeElement ?? this.defaultValueCodeElement,
      defaultValueDate: defaultValueDate ?? this.defaultValueDate,
      defaultValueDateElement:
          defaultValueDateElement ?? this.defaultValueDateElement,
      defaultValueDateTime: defaultValueDateTime ?? this.defaultValueDateTime,
      defaultValueDateTimeElement:
          defaultValueDateTimeElement ?? this.defaultValueDateTimeElement,
      defaultValueDecimal: defaultValueDecimal ?? this.defaultValueDecimal,
      defaultValueDecimalElement:
          defaultValueDecimalElement ?? this.defaultValueDecimalElement,
      defaultValueId: defaultValueId ?? this.defaultValueId,
      defaultValueIdElement:
          defaultValueIdElement ?? this.defaultValueIdElement,
      defaultValueInstant: defaultValueInstant ?? this.defaultValueInstant,
      defaultValueInstantElement:
          defaultValueInstantElement ?? this.defaultValueInstantElement,
      defaultValueInteger: defaultValueInteger ?? this.defaultValueInteger,
      defaultValueIntegerElement:
          defaultValueIntegerElement ?? this.defaultValueIntegerElement,
      defaultValueMarkdown: defaultValueMarkdown ?? this.defaultValueMarkdown,
      defaultValueMarkdownElement:
          defaultValueMarkdownElement ?? this.defaultValueMarkdownElement,
      defaultValueOid: defaultValueOid ?? this.defaultValueOid,
      defaultValueOidElement:
          defaultValueOidElement ?? this.defaultValueOidElement,
      defaultValuePositiveInt:
          defaultValuePositiveInt ?? this.defaultValuePositiveInt,
      defaultValuePositiveIntElement:
          defaultValuePositiveIntElement ?? this.defaultValuePositiveIntElement,
      defaultValueString: defaultValueString ?? this.defaultValueString,
      defaultValueStringElement:
          defaultValueStringElement ?? this.defaultValueStringElement,
      defaultValueTime: defaultValueTime ?? this.defaultValueTime,
      defaultValueTimeElement:
          defaultValueTimeElement ?? this.defaultValueTimeElement,
      defaultValueUnsignedInt:
          defaultValueUnsignedInt ?? this.defaultValueUnsignedInt,
      defaultValueUnsignedIntElement:
          defaultValueUnsignedIntElement ?? this.defaultValueUnsignedIntElement,
      defaultValueUri: defaultValueUri ?? this.defaultValueUri,
      defaultValueUriElement:
          defaultValueUriElement ?? this.defaultValueUriElement,
      defaultValueUrl: defaultValueUrl ?? this.defaultValueUrl,
      defaultValueUrlElement:
          defaultValueUrlElement ?? this.defaultValueUrlElement,
      defaultValueUuid: defaultValueUuid ?? this.defaultValueUuid,
      defaultValueUuidElement:
          defaultValueUuidElement ?? this.defaultValueUuidElement,
      defaultValueAddress: defaultValueAddress ?? this.defaultValueAddress,
      defaultValueAge: defaultValueAge ?? this.defaultValueAge,
      defaultValueAnnotation:
          defaultValueAnnotation ?? this.defaultValueAnnotation,
      defaultValueAttachment:
          defaultValueAttachment ?? this.defaultValueAttachment,
      defaultValueCodeableConcept:
          defaultValueCodeableConcept ?? this.defaultValueCodeableConcept,
      defaultValueCoding: defaultValueCoding ?? this.defaultValueCoding,
      defaultValueContactPoint:
          defaultValueContactPoint ?? this.defaultValueContactPoint,
      defaultValueCount: defaultValueCount ?? this.defaultValueCount,
      defaultValueDistance: defaultValueDistance ?? this.defaultValueDistance,
      defaultValueDuration: defaultValueDuration ?? this.defaultValueDuration,
      defaultValueHumanName:
          defaultValueHumanName ?? this.defaultValueHumanName,
      defaultValueIdentifier:
          defaultValueIdentifier ?? this.defaultValueIdentifier,
      defaultValueMoney: defaultValueMoney ?? this.defaultValueMoney,
      defaultValuePeriod: defaultValuePeriod ?? this.defaultValuePeriod,
      defaultValueQuantity: defaultValueQuantity ?? this.defaultValueQuantity,
      defaultValueRange: defaultValueRange ?? this.defaultValueRange,
      defaultValueRatio: defaultValueRatio ?? this.defaultValueRatio,
      defaultValueReference:
          defaultValueReference ?? this.defaultValueReference,
      defaultValueSampledData:
          defaultValueSampledData ?? this.defaultValueSampledData,
      defaultValueSignature:
          defaultValueSignature ?? this.defaultValueSignature,
      defaultValueTiming: defaultValueTiming ?? this.defaultValueTiming,
      defaultValueContactDetail:
          defaultValueContactDetail ?? this.defaultValueContactDetail,
      defaultValueContributor:
          defaultValueContributor ?? this.defaultValueContributor,
      defaultValueDataRequirement:
          defaultValueDataRequirement ?? this.defaultValueDataRequirement,
      defaultValueExpression:
          defaultValueExpression ?? this.defaultValueExpression,
      defaultValueParameterDefinition: defaultValueParameterDefinition ??
          this.defaultValueParameterDefinition,
      defaultValueRelatedArtifact:
          defaultValueRelatedArtifact ?? this.defaultValueRelatedArtifact,
      defaultValueTriggerDefinition:
          defaultValueTriggerDefinition ?? this.defaultValueTriggerDefinition,
      defaultValueUsageContext:
          defaultValueUsageContext ?? this.defaultValueUsageContext,
      defaultValueDosage: defaultValueDosage ?? this.defaultValueDosage,
      defaultValueMeta: defaultValueMeta ?? this.defaultValueMeta,
      element: element ?? this.element,
      elementElement: elementElement ?? this.elementElement,
      listMode: listMode ?? this.listMode,
      listModeElement: listModeElement ?? this.listModeElement,
      variable: variable ?? this.variable,
      variableElement: variableElement ?? this.variableElement,
      condition: condition ?? this.condition,
      conditionElement: conditionElement ?? this.conditionElement,
      check: check ?? this.check,
      checkElement: checkElement ?? this.checkElement,
      logMessage: logMessage ?? this.logMessage,
      logMessageElement: logMessageElement ?? this.logMessageElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [StructureMapTarget] /// Content to create because of this mapping rule.
class StructureMapTarget extends BackboneElement {
  StructureMapTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.context,
    this.contextElement,
    this.contextType,
    this.contextTypeElement,
    this.element,
    this.elementElement,
    this.variable,
    this.variableElement,
    this.listMode,
    this.listModeElement,
    this.listRuleId,
    this.listRuleIdElement,
    this.transform,
    this.transformElement,
    this.parameter,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [context] /// Type or variable this rule applies to.
  final FhirId? context;
  final Element? contextElement;

  /// [contextType] /// How to interpret the context.
  final FhirCode? contextType;
  final Element? contextTypeElement;

  /// [element] /// Field to create in the context.
  final FhirString? element;
  final Element? elementElement;

  /// [variable] /// Named context for field, if desired, and a field is specified.
  final FhirId? variable;
  final Element? variableElement;

  /// [listMode] /// If field is a list, how to manage the list.
  final List<FhirCode>? listMode;
  final List<Element>? listModeElement;

  /// [listRuleId] /// Internal rule reference for shared list items.
  final FhirId? listRuleId;
  final Element? listRuleIdElement;

  /// [transform] /// How the data is copied / created.
  final FhirCode? transform;
  final Element? transformElement;

  /// [parameter] /// Parameters to the transform.
  final List<StructureMapParameter>? parameter;
  @override
  StructureMapTarget clone() => throw UnimplementedError();
  StructureMapTarget copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? context,
    Element? contextElement,
    FhirCode? contextType,
    Element? contextTypeElement,
    FhirString? element,
    Element? elementElement,
    FhirId? variable,
    Element? variableElement,
    List<FhirCode>? listMode,
    List<Element>? listModeElement,
    FhirId? listRuleId,
    Element? listRuleIdElement,
    FhirCode? transform,
    Element? transformElement,
    List<StructureMapParameter>? parameter,
  }) {
    return StructureMapTarget(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      context: context ?? this.context,
      contextElement: contextElement ?? this.contextElement,
      contextType: contextType ?? this.contextType,
      contextTypeElement: contextTypeElement ?? this.contextTypeElement,
      element: element ?? this.element,
      elementElement: elementElement ?? this.elementElement,
      variable: variable ?? this.variable,
      variableElement: variableElement ?? this.variableElement,
      listMode: listMode ?? this.listMode,
      listModeElement: listModeElement ?? this.listModeElement,
      listRuleId: listRuleId ?? this.listRuleId,
      listRuleIdElement: listRuleIdElement ?? this.listRuleIdElement,
      transform: transform ?? this.transform,
      transformElement: transformElement ?? this.transformElement,
      parameter: parameter ?? this.parameter,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [StructureMapParameter] /// Parameters to the transform.
class StructureMapParameter extends BackboneElement {
  StructureMapParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueId,
    this.valueIdElement,
    required this.valueString,
    this.valueStringElement,
    required this.valueBoolean,
    this.valueBooleanElement,
    required this.valueInteger,
    this.valueIntegerElement,
    required this.valueDecimal,
    this.valueDecimalElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [valueId] /// Parameter value - variable or literal.
  final FhirId valueId;
  final Element? valueIdElement;

  /// [valueString] /// Parameter value - variable or literal.
  final FhirString valueString;
  final Element? valueStringElement;

  /// [valueBoolean] /// Parameter value - variable or literal.
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;

  /// [valueInteger] /// Parameter value - variable or literal.
  final FhirInteger valueInteger;
  final Element? valueIntegerElement;

  /// [valueDecimal] /// Parameter value - variable or literal.
  final FhirDecimal valueDecimal;
  final Element? valueDecimalElement;
  @override
  StructureMapParameter clone() => throw UnimplementedError();
  StructureMapParameter copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? valueId,
    Element? valueIdElement,
    FhirString? valueString,
    Element? valueStringElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    FhirDecimal? valueDecimal,
    Element? valueDecimalElement,
  }) {
    return StructureMapParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueId: valueId ?? this.valueId,
      valueIdElement: valueIdElement ?? this.valueIdElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueDecimalElement: valueDecimalElement ?? this.valueDecimalElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [StructureMapDependent] /// Which other rules to apply in the context of this rule.
class StructureMapDependent extends BackboneElement {
  StructureMapDependent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    required this.variable,
    this.variableElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Name of a rule or group to apply.
  final FhirId name;
  final Element? nameElement;

  /// [variable] /// Variable to pass to the rule or group.
  final List<FhirString> variable;
  final List<Element>? variableElement;
  @override
  StructureMapDependent clone() => throw UnimplementedError();
  StructureMapDependent copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    Element? nameElement,
    List<FhirString>? variable,
    List<Element>? variableElement,
  }) {
    return StructureMapDependent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      variable: variable ?? this.variable,
      variableElement: variableElement ?? this.variableElement,
    );
  }
}
