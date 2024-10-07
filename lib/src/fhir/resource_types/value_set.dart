import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ValueSet] /// A ValueSet resource instance specifies a set of codes drawn from one or
/// more code systems, intended for use in a particular context. Value sets
/// link between [CodeSystem](codesystem.html) definitions and their use in
/// [coded elements](terminologies.html).
class ValueSet extends DomainResource {
  ValueSet({
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
    this.immutable,
    this.immutableElement,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.compose,
    this.expansion,
  }) : super(resourceType: R4ResourceType.ValueSet);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this value set when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this value
  /// set is (or will be) published. This URL can be the target of a canonical
  /// reference. It SHALL remain the same when the value set is stored on
  /// different servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this value set when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the value set when
  /// it is referenced in a specification, model, design or instance. This is an
  /// arbitrary value managed by the value set author and is not expected to be
  /// globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  /// managed version is not available. There is also no expectation that
  /// versions can be placed in a lexicographical sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the value set. This name should be
  /// usable as an identifier for the module by machine processing applications
  /// such as code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the value set.
  final FhirString? title;
  final Element? titleElement;

  /// [status] /// The status of this value set. Enables tracking the life-cycle of the
  /// content. The status of the value set applies to the value set definition
  /// (ValueSet.compose) and the associated ValueSet metadata. Expansions do not
  /// have a state.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this value set is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be used
  /// for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the value set was created or revised
  /// (e.g. the 'content logical definition').
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the value set.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the value set from a consumer's
  /// perspective. The textual description specifies the span of meanings for
  /// concepts to be included within the Value Set Expansion, and also may
  /// specify the intended use and limitations of the Value Set.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate value set instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the value set is intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [immutable] /// If this is set to 'true', then no new versions of the content logical
  /// definition can be created. Note: Other metadata might still change.
  final FhirBoolean? immutable;
  final Element? immutableElement;

  /// [purpose] /// Explanation of why this value set is needed and why it has been designed as
  /// it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the value set and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the value set.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [compose] /// A set of criteria that define the contents of the value set by including or
  /// excluding codes selected from the specified code system(s) that the value
  /// set draws from. This is also known as the Content Logical Definition (CLD).
  final ValueSetCompose? compose;

  /// [expansion] /// A value set can also be "expanded", where the value set is turned into a
  /// simple collection of enumerated codes. This element holds the expansion, if
  /// it has been performed.
  final ValueSetExpansion? expansion;
  @override
  ValueSet clone() => throw UnimplementedError();
  ValueSet copy({
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
    FhirBoolean? immutable,
    Element? immutableElement,
    FhirMarkdown? purpose,
    Element? purposeElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
    ValueSetCompose? compose,
    ValueSetExpansion? expansion,
  }) {
    return ValueSet(
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
      immutable: immutable ?? this.immutable,
      immutableElement: immutableElement ?? this.immutableElement,
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
      compose: compose ?? this.compose,
      expansion: expansion ?? this.expansion,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ValueSetCompose] /// A set of criteria that define the contents of the value set by including or
/// excluding codes selected from the specified code system(s) that the value
/// set draws from. This is also known as the Content Logical Definition (CLD).
class ValueSetCompose extends BackboneElement {
  ValueSetCompose({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.lockedDate,
    this.lockedDateElement,
    this.inactive,
    this.inactiveElement,
    required this.include,
    this.exclude,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [lockedDate] /// The Locked Date is the effective date that is used to determine the version
  /// of all referenced Code Systems and Value Set Definitions included in the
  /// compose that are not already tied to a specific version.
  final FhirDate? lockedDate;
  final Element? lockedDateElement;

  /// [inactive] /// Whether inactive codes - codes that are not approved for current use - are
  /// in the value set. If inactive = true, inactive codes are to be included in
  /// the expansion, if inactive = false, the inactive codes will not be included
  /// in the expansion. If absent, the behavior is determined by the
  /// implementation, or by the applicable $expand parameters (but generally,
  /// inactive codes would be expected to be included).
  final FhirBoolean? inactive;
  final Element? inactiveElement;

  /// [include] /// Include one or more codes from a code system or other value set(s).
  final List<ValueSetInclude> include;

  /// [exclude] /// Exclude one or more codes from the value set based on code system filters
  /// and/or other value sets.
  final List<ValueSetInclude>? exclude;
  @override
  ValueSetCompose clone() => throw UnimplementedError();
  ValueSetCompose copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDate? lockedDate,
    Element? lockedDateElement,
    FhirBoolean? inactive,
    Element? inactiveElement,
    List<ValueSetInclude>? include,
    List<ValueSetInclude>? exclude,
  }) {
    return ValueSetCompose(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      lockedDate: lockedDate ?? this.lockedDate,
      lockedDateElement: lockedDateElement ?? this.lockedDateElement,
      inactive: inactive ?? this.inactive,
      inactiveElement: inactiveElement ?? this.inactiveElement,
      include: include ?? this.include,
      exclude: exclude ?? this.exclude,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ValueSetInclude] /// Include one or more codes from a code system or other value set(s).
class ValueSetInclude extends BackboneElement {
  ValueSetInclude({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.system,
    this.systemElement,
    this.version,
    this.versionElement,
    this.concept,
    this.filter,
    this.valueSet,
    this.valueSetElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [system] /// An absolute URI which is the code system from which the selected codes come
  /// from.
  final FhirUri? system;
  final Element? systemElement;

  /// [version] /// The version of the code system that the codes are selected from, or the
  /// special version '*' for all versions.
  final FhirString? version;
  final Element? versionElement;

  /// [concept] /// Specifies a concept to be included or excluded.
  final List<ValueSetConcept>? concept;

  /// [filter] /// Select concepts by specify a matching criterion based on the properties
  /// (including relationships) defined by the system, or on filters defined by
  /// the system. If multiple filters are specified, they SHALL all be true.
  final List<ValueSetFilter>? filter;

  /// [valueSet] /// Selects the concepts found in this value set (based on its value set
  /// definition). This is an absolute URI that is a reference to ValueSet.url.
  /// If multiple value sets are specified this includes the union of the
  /// contents of all of the referenced value sets.
  final List<FhirCanonical>? valueSet;
  final List<Element>? valueSetElement;
  @override
  ValueSetInclude clone() => throw UnimplementedError();
  ValueSetInclude copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? system,
    Element? systemElement,
    FhirString? version,
    Element? versionElement,
    List<ValueSetConcept>? concept,
    List<ValueSetFilter>? filter,
    List<FhirCanonical>? valueSet,
    List<Element>? valueSetElement,
  }) {
    return ValueSetInclude(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      concept: concept ?? this.concept,
      filter: filter ?? this.filter,
      valueSet: valueSet ?? this.valueSet,
      valueSetElement: valueSetElement ?? this.valueSetElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ValueSetConcept] /// Specifies a concept to be included or excluded.
class ValueSetConcept extends BackboneElement {
  ValueSetConcept({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.designation,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Specifies a code for the concept to be included or excluded.
  final FhirCode code;
  final Element? codeElement;

  /// [display] /// The text to display to the user for this concept in the context of this
  /// valueset. If no display is provided, then applications using the value set
  /// use the display specified for the code by the system.
  final FhirString? display;
  final Element? displayElement;

  /// [designation] /// Additional representations for this concept when used in this value set -
  /// other languages, aliases, specialized purposes, used for particular
  /// purposes, etc.
  final List<ValueSetDesignation>? designation;
  @override
  ValueSetConcept clone() => throw UnimplementedError();
  ValueSetConcept copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirString? display,
    Element? displayElement,
    List<ValueSetDesignation>? designation,
  }) {
    return ValueSetConcept(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      designation: designation ?? this.designation,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ValueSetDesignation] /// Additional representations for this concept when used in this value set -
/// other languages, aliases, specialized purposes, used for particular
/// purposes, etc.
class ValueSetDesignation extends BackboneElement {
  ValueSetDesignation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.language,
    this.languageElement,
    this.use,
    required this.value,
    this.valueElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [language] /// The language this designation is defined for.
  final FhirCode? language;
  final Element? languageElement;

  /// [use] /// A code that represents types of uses of designations.
  final Coding? use;

  /// [value] /// The text value for this designation.
  final FhirString value;
  final Element? valueElement;
  @override
  ValueSetDesignation clone() => throw UnimplementedError();
  ValueSetDesignation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? language,
    Element? languageElement,
    Coding? use,
    FhirString? value,
    Element? valueElement,
  }) {
    return ValueSetDesignation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      use: use ?? this.use,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ValueSetFilter] /// Select concepts by specify a matching criterion based on the properties
/// (including relationships) defined by the system, or on filters defined by
/// the system. If multiple filters are specified, they SHALL all be true.
class ValueSetFilter extends BackboneElement {
  ValueSetFilter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.property,
    this.propertyElement,
    required this.op,
    this.opElement,
    required this.value,
    this.valueElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [property] /// A code that identifies a property or a filter defined in the code system.
  final FhirCode property;
  final Element? propertyElement;

  /// [op] /// The kind of operation to perform as a part of the filter criteria.
  final FhirCode op;
  final Element? opElement;

  /// [value] /// The match value may be either a code defined by the system, or a string
  /// value, which is a regex match on the literal string of the property value
  /// (if the filter represents a property defined in CodeSystem) or of the
  /// system filter value (if the filter represents a filter defined in
  /// CodeSystem) when the operation is 'regex', or one of the values (true and
  /// false), when the operation is 'exists'.
  final FhirString value;
  final Element? valueElement;
  @override
  ValueSetFilter clone() => throw UnimplementedError();
  ValueSetFilter copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? property,
    Element? propertyElement,
    FhirCode? op,
    Element? opElement,
    FhirString? value,
    Element? valueElement,
  }) {
    return ValueSetFilter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      property: property ?? this.property,
      propertyElement: propertyElement ?? this.propertyElement,
      op: op ?? this.op,
      opElement: opElement ?? this.opElement,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ValueSetExpansion] /// A value set can also be "expanded", where the value set is turned into a
/// simple collection of enumerated codes. This element holds the expansion, if
/// it has been performed.
class ValueSetExpansion extends BackboneElement {
  ValueSetExpansion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.identifierElement,
    required this.timestamp,
    this.timestampElement,
    this.total,
    this.totalElement,
    this.offset,
    this.offsetElement,
    this.parameter,
    this.contains,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// An identifier that uniquely identifies this expansion of the valueset,
  /// based on a unique combination of the provided parameters, the system
  /// default parameters, and the underlying system code system versions etc.
  /// Systems may re-use the same identifier as long as those factors remain the
  /// same, and the expansion is the same, but are not required to do so. This is
  /// a business identifier.
  final FhirUri? identifier;
  final Element? identifierElement;

  /// [timestamp] /// The time at which the expansion was produced by the expanding system.
  final FhirDateTime timestamp;
  final Element? timestampElement;

  /// [total] /// The total number of concepts in the expansion. If the number of concept
  /// nodes in this resource is less than the stated number, then the server can
  /// return more using the offset parameter.
  final FhirInteger? total;
  final Element? totalElement;

  /// [offset] /// If paging is being used, the offset at which this resource starts. I.e.
  /// this resource is a partial view into the expansion. If paging is not being
  /// used, this element SHALL NOT be present.
  final FhirInteger? offset;
  final Element? offsetElement;

  /// [parameter] /// A parameter that controlled the expansion process. These parameters may be
  /// used by users of expanded value sets to check whether the expansion is
  /// suitable for a particular purpose, or to pick the correct expansion.
  final List<ValueSetParameter>? parameter;

  /// [contains] /// The codes that are contained in the value set expansion.
  final List<ValueSetContains>? contains;
  @override
  ValueSetExpansion clone() => throw UnimplementedError();
  ValueSetExpansion copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? identifier,
    Element? identifierElement,
    FhirDateTime? timestamp,
    Element? timestampElement,
    FhirInteger? total,
    Element? totalElement,
    FhirInteger? offset,
    Element? offsetElement,
    List<ValueSetParameter>? parameter,
    List<ValueSetContains>? contains,
  }) {
    return ValueSetExpansion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      identifierElement: identifierElement ?? this.identifierElement,
      timestamp: timestamp ?? this.timestamp,
      timestampElement: timestampElement ?? this.timestampElement,
      total: total ?? this.total,
      totalElement: totalElement ?? this.totalElement,
      offset: offset ?? this.offset,
      offsetElement: offsetElement ?? this.offsetElement,
      parameter: parameter ?? this.parameter,
      contains: contains ?? this.contains,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ValueSetParameter] /// A parameter that controlled the expansion process. These parameters may be
/// used by users of expanded value sets to check whether the expansion is
/// suitable for a particular purpose, or to pick the correct expansion.
class ValueSetParameter extends BackboneElement {
  ValueSetParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.valueString,
    this.valueStringElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueDecimal,
    this.valueDecimalElement,
    this.valueUri,
    this.valueUriElement,
    this.valueCode,
    this.valueCodeElement,
    this.valueDateTime,
    this.valueDateTimeElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Name of the input parameter to the $expand operation; may be a
  /// server-assigned name for additional default or other server-supplied
  /// parameters used to control the expansion process.
  final FhirString name;
  final Element? nameElement;

  /// [valueString] /// The value of the parameter.
  final FhirString? valueString;
  final Element? valueStringElement;

  /// [valueBoolean] /// The value of the parameter.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueInteger] /// The value of the parameter.
  final FhirInteger? valueInteger;
  final Element? valueIntegerElement;

  /// [valueDecimal] /// The value of the parameter.
  final FhirDecimal? valueDecimal;
  final Element? valueDecimalElement;

  /// [valueUri] /// The value of the parameter.
  final FhirUri? valueUri;
  final Element? valueUriElement;

  /// [valueCode] /// The value of the parameter.
  final FhirCode? valueCode;
  final Element? valueCodeElement;

  /// [valueDateTime] /// The value of the parameter.
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;
  @override
  ValueSetParameter clone() => throw UnimplementedError();
  ValueSetParameter copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? valueString,
    Element? valueStringElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    FhirDecimal? valueDecimal,
    Element? valueDecimalElement,
    FhirUri? valueUri,
    Element? valueUriElement,
    FhirCode? valueCode,
    Element? valueCodeElement,
    FhirDateTime? valueDateTime,
    Element? valueDateTimeElement,
  }) {
    return ValueSetParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueDecimalElement: valueDecimalElement ?? this.valueDecimalElement,
      valueUri: valueUri ?? this.valueUri,
      valueUriElement: valueUriElement ?? this.valueUriElement,
      valueCode: valueCode ?? this.valueCode,
      valueCodeElement: valueCodeElement ?? this.valueCodeElement,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDateTimeElement: valueDateTimeElement ?? this.valueDateTimeElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ValueSetContains] /// The codes that are contained in the value set expansion.
class ValueSetContains extends BackboneElement {
  ValueSetContains({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.system,
    this.systemElement,
    this.abstract_,
    this.abstractElement,
    this.inactive,
    this.inactiveElement,
    this.version,
    this.versionElement,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.designation,
    this.contains,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [system] /// An absolute URI which is the code system in which the code for this item in
  /// the expansion is defined.
  final FhirUri? system;
  final Element? systemElement;

  /// [abstract_] /// If true, this entry is included in the expansion for navigational purposes,
  /// and the user cannot select the code directly as a proper value.
  final FhirBoolean? abstract_;
  final Element? abstractElement;

  /// [inactive] /// If the concept is inactive in the code system that defines it. Inactive
  /// codes are those that are no longer to be used, but are maintained by the
  /// code system for understanding legacy data. It might not be known or
  /// specified whether an concept is inactive (and it may depend on the context
  /// of use).
  final FhirBoolean? inactive;
  final Element? inactiveElement;

  /// [version] /// The version of the code system from this code was taken. Note that a
  /// well-maintained code system does not need the version reported, because the
  /// meaning of codes is consistent across versions. However this cannot
  /// consistently be assured, and when the meaning is not guaranteed to be
  /// consistent, the version SHOULD be exchanged.
  final FhirString? version;
  final Element? versionElement;

  /// [code] /// The code for this item in the expansion hierarchy. If this code is missing
  /// the entry in the hierarchy is a place holder (abstract) and does not
  /// represent a valid code in the value set.
  final FhirCode? code;
  final Element? codeElement;

  /// [display] /// The recommended display for this item in the expansion.
  final FhirString? display;
  final Element? displayElement;

  /// [designation] /// Additional representations for this item - other languages, aliases,
  /// specialized purposes, used for particular purposes, etc. These are relevant
  /// when the conditions of the expansion do not fix to a single correct
  /// representation.
  final List<ValueSetDesignation>? designation;

  /// [contains] /// Other codes and entries contained under this entry in the hierarchy.
  final List<ValueSetContains>? contains;
  @override
  ValueSetContains clone() => throw UnimplementedError();
  ValueSetContains copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? system,
    Element? systemElement,
    FhirBoolean? abstract_,
    Element? abstractElement,
    FhirBoolean? inactive,
    Element? inactiveElement,
    FhirString? version,
    Element? versionElement,
    FhirCode? code,
    Element? codeElement,
    FhirString? display,
    Element? displayElement,
    List<ValueSetDesignation>? designation,
    List<ValueSetContains>? contains,
  }) {
    return ValueSetContains(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      abstract_: abstract_ ?? this.abstract_,
      abstractElement: abstractElement ?? this.abstractElement,
      inactive: inactive ?? this.inactive,
      inactiveElement: inactiveElement ?? this.inactiveElement,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      designation: designation ?? this.designation,
      contains: contains ?? this.contains,
    );
  }
}
