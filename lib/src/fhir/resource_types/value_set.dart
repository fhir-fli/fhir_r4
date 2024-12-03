import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ValueSet]
/// A ValueSet resource instance specifies a set of codes drawn from one or
/// more code systems, intended for use in a particular context. Value sets
/// link between [CodeSystem](codesystem.html) definitions and their use in
/// [coded elements](terminologies.html).
class ValueSet extends DomainResource {
  /// Primary constructor for
  /// [ValueSet]

  ValueSet({
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
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.immutable,
    this.purpose,
    this.copyright,
    this.compose,
    this.expansion,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.ValueSet,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSet.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ValueSet(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: parseField<FhirUri>(
        json['implicitRules'],
        json['_implicitRules'],
        FhirUri.fromJson,
      ),
      language: parseField<CommonLanguages>(
        json['language'],
        json['_language'],
        CommonLanguages.fromJson,
      ),
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: parseList<Resource>(
        json['contained'] as List<dynamic>?,
        json['_contained'] as List<dynamic>?,
        Resource.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      url: parseField<FhirUri>(
        json['url'],
        json['_url'],
        FhirUri.fromJson,
      ),
      identifier: parseList<Identifier>(
        json['identifier'] as List<dynamic>?,
        json['_identifier'] as List<dynamic>?,
        Identifier.fromJson,
      ),
      version: parseField<FhirString>(
        json['version'],
        json['_version'],
        FhirString.fromJson,
      ),
      name: parseField<FhirString>(
        json['name'],
        json['_name'],
        FhirString.fromJson,
      ),
      title: parseField<FhirString>(
        json['title'],
        json['_title'],
        FhirString.fromJson,
      ),
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      experimental: parseField<FhirBoolean>(
        json['experimental'],
        json['_experimental'],
        FhirBoolean.fromJson,
      ),
      date: parseField<FhirDateTime>(
        json['date'],
        json['_date'],
        FhirDateTime.fromJson,
      ),
      publisher: parseField<FhirString>(
        json['publisher'],
        json['_publisher'],
        FhirString.fromJson,
      ),
      contact: parseList<ContactDetail>(
        json['contact'] as List<dynamic>?,
        json['_contact'] as List<dynamic>?,
        ContactDetail.fromJson,
      ),
      description: parseField<FhirMarkdown>(
        json['description'],
        json['_description'],
        FhirMarkdown.fromJson,
      ),
      useContext: parseList<UsageContext>(
        json['useContext'] as List<dynamic>?,
        json['_useContext'] as List<dynamic>?,
        UsageContext.fromJson,
      ),
      jurisdiction: parseList<CodeableConcept>(
        json['jurisdiction'] as List<dynamic>?,
        json['_jurisdiction'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      immutable: parseField<FhirBoolean>(
        json['immutable'],
        json['_immutable'],
        FhirBoolean.fromJson,
      ),
      purpose: parseField<FhirMarkdown>(
        json['purpose'],
        json['_purpose'],
        FhirMarkdown.fromJson,
      ),
      copyright: parseField<FhirMarkdown>(
        json['copyright'],
        json['_copyright'],
        FhirMarkdown.fromJson,
      ),
      compose: json['compose'] != null
          ? ValueSetCompose.fromJson(
              json['compose'] as Map<String, dynamic>,
            )
          : null,
      expansion: json['expansion'] != null
          ? ValueSetExpansion.fromJson(
              json['expansion'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ValueSet]
  /// from a [String] or [YamlMap] object
  factory ValueSet.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSet.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSet.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSet '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSet]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSet.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSet.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ValueSet';

  /// [url]
  /// An absolute URI that is used to identify this value set when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this value set is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the value set
  /// is stored on different servers.
  final FhirUri? url;

  /// [identifier]
  /// A formal identifier that is used to identify this value set when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the value set
  /// when it is referenced in a specification, model, design or instance.
  /// This is an arbitrary value managed by the value set author and is not
  /// expected to be globally unique. For example, it might be a timestamp
  /// (e.g. yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the value set. This name should be
  /// usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the value set.
  final FhirString? title;

  /// [status]
  /// The status of this value set. Enables tracking the life-cycle of the
  /// content. The status of the value set applies to the value set
  /// definition (ValueSet.compose) and the associated ValueSet metadata.
  /// Expansions do not have a state.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this value set is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be
  /// used for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the value set was created or
  /// revised (e.g. the 'content logical definition').
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the value
  /// set.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the value set from a
  /// consumer's perspective. The textual description specifies the span of
  /// meanings for concepts to be included within the Value Set Expansion,
  /// and also may specify the intended use and limitations of the Value Set.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate value set instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the value set is intended to be
  /// used.
  final List<CodeableConcept>? jurisdiction;

  /// [immutable]
  /// If this is set to 'true', then no new versions of the content logical
  /// definition can be created. Note: Other metadata might still change.
  final FhirBoolean? immutable;

  /// [purpose]
  /// Explanation of why this value set is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the value set and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the value set.
  final FhirMarkdown? copyright;

  /// [compose]
  /// A set of criteria that define the contents of the value set by
  /// including or excluding codes selected from the specified code system(s)
  /// that the value set draws from. This is also known as the Content
  /// Logical Definition (CLD).
  final ValueSetCompose? compose;

  /// [expansion]
  /// A value set can also be "expanded", where the value set is turned into
  /// a simple collection of enumerated codes. This element holds the
  /// expansion, if it has been performed.
  final ValueSetExpansion? expansion;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('url', url);
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('version', version);
    addField('name', name);
    addField('title', title);
    addField('status', status);
    addField('experimental', experimental);
    addField('date', date);
    addField('publisher', publisher);
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    addField('description', description);
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    addField('immutable', immutable);
    addField('purpose', purpose);
    addField('copyright', copyright);
    if (compose != null) {
      json['compose'] = compose!.toJson();
    }

    if (expansion != null) {
      json['expansion'] = expansion!.toJson();
    }

    return json;
  }

  @override
  ValueSet clone() => throw UnimplementedError();
  @override
  ValueSet copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    List<Identifier>? identifier,
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
    FhirBoolean? immutable,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    ValueSetCompose? compose,
    ValueSetExpansion? expansion,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSet(
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
      immutable: immutable ?? this.immutable,
      purpose: purpose ?? this.purpose,
      copyright: copyright ?? this.copyright,
      compose: compose ?? this.compose,
      expansion: expansion ?? this.expansion,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ValueSetCompose]
/// A set of criteria that define the contents of the value set by
/// including or excluding codes selected from the specified code system(s)
/// that the value set draws from. This is also known as the Content
/// Logical Definition (CLD).
class ValueSetCompose extends BackboneElement {
  /// Primary constructor for
  /// [ValueSetCompose]

  ValueSetCompose({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.lockedDate,
    this.inactive,
    required this.include,
    this.exclude,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetCompose.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ValueSetCompose(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      lockedDate: parseField<FhirDate>(
        json['lockedDate'],
        json['_lockedDate'],
        FhirDate.fromJson,
      ),
      inactive: parseField<FhirBoolean>(
        json['inactive'],
        json['_inactive'],
        FhirBoolean.fromJson,
      ),
      include: parseList<ValueSetInclude>(
        json['include'] as List<dynamic>?,
        json['_include'] as List<dynamic>?,
        ValueSetInclude.fromJson,
      )!,
      exclude: parseList<ValueSetInclude>(
        json['exclude'] as List<dynamic>?,
        json['_exclude'] as List<dynamic>?,
        ValueSetInclude.fromJson,
      ),
    );
  }

  /// Deserialize [ValueSetCompose]
  /// from a [String] or [YamlMap] object
  factory ValueSetCompose.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetCompose.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetCompose.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetCompose '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetCompose]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetCompose.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetCompose.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ValueSetCompose';

  /// [lockedDate]
  /// The Locked Date is the effective date that is used to determine the
  /// version of all referenced Code Systems and Value Set Definitions
  /// included in the compose that are not already tied to a specific
  /// version.
  final FhirDate? lockedDate;

  /// [inactive]
  /// Whether inactive codes - codes that are not approved for current use -
  /// are in the value set. If inactive = true, inactive codes are to be
  /// included in the expansion, if inactive = false, the inactive codes will
  /// not be included in the expansion. If absent, the behavior is determined
  /// by the implementation, or by the applicable $expand parameters (but
  /// generally, inactive codes would be expected to be included).
  final FhirBoolean? inactive;

  /// [include]
  /// Include one or more codes from a code system or other value set(s).
  final List<ValueSetInclude> include;

  /// [exclude]
  /// Exclude one or more codes from the value set based on code system
  /// filters and/or other value sets.
  final List<ValueSetInclude>? exclude;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('lockedDate', lockedDate);
    addField('inactive', inactive);
    if (include.isNotEmpty) {
      json['include'] = include.map((e) => e.toJson()).toList();
    }

    if (exclude != null && exclude!.isNotEmpty) {
      json['exclude'] = exclude!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ValueSetCompose clone() => throw UnimplementedError();
  @override
  ValueSetCompose copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDate? lockedDate,
    FhirBoolean? inactive,
    List<ValueSetInclude>? include,
    List<ValueSetInclude>? exclude,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetCompose(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      lockedDate: lockedDate ?? this.lockedDate,
      inactive: inactive ?? this.inactive,
      include: include ?? this.include,
      exclude: exclude ?? this.exclude,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ValueSetInclude]
/// Include one or more codes from a code system or other value set(s).
class ValueSetInclude extends BackboneElement {
  /// Primary constructor for
  /// [ValueSetInclude]

  ValueSetInclude({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.system,
    this.version,
    this.concept,
    this.filter,
    this.valueSet,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetInclude.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ValueSetInclude(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      system: parseField<FhirUri>(
        json['system'],
        json['_system'],
        FhirUri.fromJson,
      ),
      version: parseField<FhirString>(
        json['version'],
        json['_version'],
        FhirString.fromJson,
      ),
      concept: parseList<ValueSetConcept>(
        json['concept'] as List<dynamic>?,
        json['_concept'] as List<dynamic>?,
        ValueSetConcept.fromJson,
      ),
      filter: parseList<ValueSetFilter>(
        json['filter'] as List<dynamic>?,
        json['_filter'] as List<dynamic>?,
        ValueSetFilter.fromJson,
      ),
      valueSet: parseList<FhirCanonical>(
        json['valueSet'] as List<dynamic>?,
        json['_valueSet'] as List<dynamic>?,
        FhirCanonical.fromJson,
      ),
    );
  }

  /// Deserialize [ValueSetInclude]
  /// from a [String] or [YamlMap] object
  factory ValueSetInclude.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetInclude.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetInclude.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetInclude '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetInclude]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetInclude.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetInclude.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ValueSetInclude';

  /// [system]
  /// An absolute URI which is the code system from which the selected codes
  /// come from.
  final FhirUri? system;

  /// [version]
  /// The version of the code system that the codes are selected from, or the
  /// special version '*' for all versions.
  final FhirString? version;

  /// [concept]
  /// Specifies a concept to be included or excluded.
  final List<ValueSetConcept>? concept;

  /// [filter]
  /// Select concepts by specify a matching criterion based on the properties
  /// (including relationships) defined by the system, or on filters defined
  /// by the system. If multiple filters are specified, they SHALL all be
  /// true.
  final List<ValueSetFilter>? filter;

  /// [valueSet]
  /// Selects the concepts found in this value set (based on its value set
  /// definition). This is an absolute URI that is a reference to
  /// ValueSet.url. If multiple value sets are specified this includes the
  /// union of the contents of all of the referenced value sets.
  final List<FhirCanonical>? valueSet;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('system', system);
    addField('version', version);
    if (concept != null && concept!.isNotEmpty) {
      json['concept'] = concept!.map((e) => e.toJson()).toList();
    }

    if (filter != null && filter!.isNotEmpty) {
      json['filter'] = filter!.map((e) => e.toJson()).toList();
    }

    if (valueSet != null && valueSet!.isNotEmpty) {
      final fieldJson0 = valueSet!.map((e) => e.toJson()).toList();
      json['valueSet'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_valueSet'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  ValueSetInclude clone() => throw UnimplementedError();
  @override
  ValueSetInclude copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? system,
    FhirString? version,
    List<ValueSetConcept>? concept,
    List<ValueSetFilter>? filter,
    List<FhirCanonical>? valueSet,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetInclude(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      system: system ?? this.system,
      version: version ?? this.version,
      concept: concept ?? this.concept,
      filter: filter ?? this.filter,
      valueSet: valueSet ?? this.valueSet,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ValueSetConcept]
/// Specifies a concept to be included or excluded.
class ValueSetConcept extends BackboneElement {
  /// Primary constructor for
  /// [ValueSetConcept]

  ValueSetConcept({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.display,
    this.designation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetConcept.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ValueSetConcept(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      code: FhirCode.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      display: parseField<FhirString>(
        json['display'],
        json['_display'],
        FhirString.fromJson,
      ),
      designation: parseList<ValueSetDesignation>(
        json['designation'] as List<dynamic>?,
        json['_designation'] as List<dynamic>?,
        ValueSetDesignation.fromJson,
      ),
    );
  }

  /// Deserialize [ValueSetConcept]
  /// from a [String] or [YamlMap] object
  factory ValueSetConcept.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetConcept.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetConcept.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetConcept '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetConcept]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetConcept.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetConcept.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ValueSetConcept';

  /// [code]
  /// Specifies a code for the concept to be included or excluded.
  final FhirCode code;

  /// [display]
  /// The text to display to the user for this concept in the context of this
  /// valueset. If no display is provided, then applications using the value
  /// set use the display specified for the code by the system.
  final FhirString? display;

  /// [designation]
  /// Additional representations for this concept when used in this value set
  /// - other languages, aliases, specialized purposes, used for particular
  /// purposes, etc.
  final List<ValueSetDesignation>? designation;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('code', code);
    addField('display', display);
    if (designation != null && designation!.isNotEmpty) {
      json['designation'] = designation!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ValueSetConcept clone() => throw UnimplementedError();
  @override
  ValueSetConcept copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? display,
    List<ValueSetDesignation>? designation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetConcept(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      display: display ?? this.display,
      designation: designation ?? this.designation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ValueSetDesignation]
/// Additional representations for this concept when used in this value set
/// - other languages, aliases, specialized purposes, used for particular
/// purposes, etc.
class ValueSetDesignation extends BackboneElement {
  /// Primary constructor for
  /// [ValueSetDesignation]

  ValueSetDesignation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.language,
    this.use,
    required this.value,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetDesignation.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ValueSetDesignation(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      language: parseField<CommonLanguages>(
        json['language'],
        json['_language'],
        CommonLanguages.fromJson,
      ),
      use: json['use'] != null
          ? Coding.fromJson(
              json['use'] as Map<String, dynamic>,
            )
          : null,
      value: FhirString.fromJson({
        'value': json['value'],
        '_value': json['_value'],
      }),
    );
  }

  /// Deserialize [ValueSetDesignation]
  /// from a [String] or [YamlMap] object
  factory ValueSetDesignation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetDesignation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetDesignation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetDesignation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetDesignation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetDesignation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetDesignation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ValueSetDesignation';

  /// [language]
  /// The language this designation is defined for.
  final CommonLanguages? language;

  /// [use]
  /// A code that represents types of uses of designations.
  final Coding? use;

  /// [value]
  /// The text value for this designation.
  final FhirString value;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('language', language);
    if (use != null) {
      json['use'] = use!.toJson();
    }

    addField('value', value);
    return json;
  }

  @override
  ValueSetDesignation clone() => throw UnimplementedError();
  @override
  ValueSetDesignation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CommonLanguages? language,
    Coding? use,
    FhirString? value,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetDesignation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      language: language ?? this.language,
      use: use ?? this.use,
      value: value ?? this.value,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ValueSetFilter]
/// Select concepts by specify a matching criterion based on the properties
/// (including relationships) defined by the system, or on filters defined
/// by the system. If multiple filters are specified, they SHALL all be
/// true.
class ValueSetFilter extends BackboneElement {
  /// Primary constructor for
  /// [ValueSetFilter]

  ValueSetFilter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.property,
    required this.op,
    required this.value,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetFilter.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ValueSetFilter(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      property: FhirCode.fromJson({
        'value': json['property'],
        '_value': json['_property'],
      }),
      op: FilterOperator.fromJson({
        'value': json['op'],
        '_value': json['_op'],
      }),
      value: FhirString.fromJson({
        'value': json['value'],
        '_value': json['_value'],
      }),
    );
  }

  /// Deserialize [ValueSetFilter]
  /// from a [String] or [YamlMap] object
  factory ValueSetFilter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetFilter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetFilter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetFilter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetFilter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetFilter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetFilter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ValueSetFilter';

  /// [property]
  /// A code that identifies a property or a filter defined in the code
  /// system.
  final FhirCode property;

  /// [op]
  /// The kind of operation to perform as a part of the filter criteria.
  final FilterOperator op;

  /// [value]
  /// The match value may be either a code defined by the system, or a string
  /// value, which is a regex match on the literal string of the property
  /// value (if the filter represents a property defined in CodeSystem) or of
  /// the system filter value (if the filter represents a filter defined in
  /// CodeSystem) when the operation is 'regex', or one of the values (true
  /// and false), when the operation is 'exists'.
  final FhirString value;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('property', property);
    addField('op', op);
    addField('value', value);
    return json;
  }

  @override
  ValueSetFilter clone() => throw UnimplementedError();
  @override
  ValueSetFilter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? property,
    FilterOperator? op,
    FhirString? value,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetFilter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      property: property ?? this.property,
      op: op ?? this.op,
      value: value ?? this.value,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ValueSetExpansion]
/// A value set can also be "expanded", where the value set is turned into
/// a simple collection of enumerated codes. This element holds the
/// expansion, if it has been performed.
class ValueSetExpansion extends BackboneElement {
  /// Primary constructor for
  /// [ValueSetExpansion]

  ValueSetExpansion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.timestamp,
    this.total,
    this.offset,
    this.parameter,
    this.contains,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetExpansion.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ValueSetExpansion(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      identifier: parseField<FhirUri>(
        json['identifier'],
        json['_identifier'],
        FhirUri.fromJson,
      ),
      timestamp: FhirDateTime.fromJson({
        'value': json['timestamp'],
        '_value': json['_timestamp'],
      }),
      total: parseField<FhirInteger>(
        json['total'],
        json['_total'],
        FhirInteger.fromJson,
      ),
      offset: parseField<FhirInteger>(
        json['offset'],
        json['_offset'],
        FhirInteger.fromJson,
      ),
      parameter: parseList<ValueSetParameter>(
        json['parameter'] as List<dynamic>?,
        json['_parameter'] as List<dynamic>?,
        ValueSetParameter.fromJson,
      ),
      contains: parseList<ValueSetContains>(
        json['contains'] as List<dynamic>?,
        json['_contains'] as List<dynamic>?,
        ValueSetContains.fromJson,
      ),
    );
  }

  /// Deserialize [ValueSetExpansion]
  /// from a [String] or [YamlMap] object
  factory ValueSetExpansion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetExpansion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetExpansion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetExpansion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetExpansion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetExpansion.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetExpansion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ValueSetExpansion';

  /// [identifier]
  /// An identifier that uniquely identifies this expansion of the valueset,
  /// based on a unique combination of the provided parameters, the system
  /// default parameters, and the underlying system code system versions etc.
  /// Systems may re-use the same identifier as long as those factors remain
  /// the same, and the expansion is the same, but are not required to do so.
  /// This is a business identifier.
  final FhirUri? identifier;

  /// [timestamp]
  /// The time at which the expansion was produced by the expanding system.
  final FhirDateTime timestamp;

  /// [total]
  /// The total number of concepts in the expansion. If the number of concept
  /// nodes in this resource is less than the stated number, then the server
  /// can return more using the offset parameter.
  final FhirInteger? total;

  /// [offset]
  /// If paging is being used, the offset at which this resource starts. I.e.
  /// this resource is a partial view into the expansion. If paging is not
  /// being used, this element SHALL NOT be present.
  final FhirInteger? offset;

  /// [parameter]
  /// A parameter that controlled the expansion process. These parameters may
  /// be used by users of expanded value sets to check whether the expansion
  /// is suitable for a particular purpose, or to pick the correct expansion.
  final List<ValueSetParameter>? parameter;

  /// [contains]
  /// The codes that are contained in the value set expansion.
  final List<ValueSetContains>? contains;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('identifier', identifier);
    addField('timestamp', timestamp);
    addField('total', total);
    addField('offset', offset);
    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] = parameter!.map((e) => e.toJson()).toList();
    }

    if (contains != null && contains!.isNotEmpty) {
      json['contains'] = contains!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ValueSetExpansion clone() => throw UnimplementedError();
  @override
  ValueSetExpansion copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? identifier,
    FhirDateTime? timestamp,
    FhirInteger? total,
    FhirInteger? offset,
    List<ValueSetParameter>? parameter,
    List<ValueSetContains>? contains,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetExpansion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      timestamp: timestamp ?? this.timestamp,
      total: total ?? this.total,
      offset: offset ?? this.offset,
      parameter: parameter ?? this.parameter,
      contains: contains ?? this.contains,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ValueSetParameter]
/// A parameter that controlled the expansion process. These parameters may
/// be used by users of expanded value sets to check whether the expansion
/// is suitable for a particular purpose, or to pick the correct expansion.
class ValueSetParameter extends BackboneElement {
  /// Primary constructor for
  /// [ValueSetParameter]

  ValueSetParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.valueString,
    this.valueBoolean,
    this.valueInteger,
    this.valueDecimal,
    this.valueUri,
    this.valueCode,
    this.valueDateTime,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ValueSetParameter(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      valueString: parseField<FhirString>(
        json['valueString'],
        json['_valueString'],
        FhirString.fromJson,
      ),
      valueBoolean: parseField<FhirBoolean>(
        json['valueBoolean'],
        json['_valueBoolean'],
        FhirBoolean.fromJson,
      ),
      valueInteger: parseField<FhirInteger>(
        json['valueInteger'],
        json['_valueInteger'],
        FhirInteger.fromJson,
      ),
      valueDecimal: parseField<FhirDecimal>(
        json['valueDecimal'],
        json['_valueDecimal'],
        FhirDecimal.fromJson,
      ),
      valueUri: parseField<FhirUri>(
        json['valueUri'],
        json['_valueUri'],
        FhirUri.fromJson,
      ),
      valueCode: parseField<FhirCode>(
        json['valueCode'],
        json['_valueCode'],
        FhirCode.fromJson,
      ),
      valueDateTime: parseField<FhirDateTime>(
        json['valueDateTime'],
        json['_valueDateTime'],
        FhirDateTime.fromJson,
      ),
    );
  }

  /// Deserialize [ValueSetParameter]
  /// from a [String] or [YamlMap] object
  factory ValueSetParameter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetParameter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ValueSetParameter';

  /// [name]
  /// Name of the input parameter to the $expand operation; may be a
  /// server-assigned name for additional default or other server-supplied
  /// parameters used to control the expansion process.
  final FhirString name;

  /// [valueString]
  /// The value of the parameter.
  final FhirString? valueString;

  /// [valueBoolean]
  /// The value of the parameter.
  final FhirBoolean? valueBoolean;

  /// [valueInteger]
  /// The value of the parameter.
  final FhirInteger? valueInteger;

  /// [valueDecimal]
  /// The value of the parameter.
  final FhirDecimal? valueDecimal;

  /// [valueUri]
  /// The value of the parameter.
  final FhirUri? valueUri;

  /// [valueCode]
  /// The value of the parameter.
  final FhirCode? valueCode;

  /// [valueDateTime]
  /// The value of the parameter.
  final FhirDateTime? valueDateTime;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('name', name);
    addField('valueString', valueString);
    addField('valueBoolean', valueBoolean);
    addField('valueInteger', valueInteger);
    addField('valueDecimal', valueDecimal);
    addField('valueUri', valueUri);
    addField('valueCode', valueCode);
    addField('valueDateTime', valueDateTime);
    return json;
  }

  @override
  ValueSetParameter clone() => throw UnimplementedError();
  @override
  ValueSetParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? valueString,
    FhirBoolean? valueBoolean,
    FhirInteger? valueInteger,
    FhirDecimal? valueDecimal,
    FhirUri? valueUri,
    FhirCode? valueCode,
    FhirDateTime? valueDateTime,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      valueString: valueString ?? this.valueString,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueInteger: valueInteger ?? this.valueInteger,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueUri: valueUri ?? this.valueUri,
      valueCode: valueCode ?? this.valueCode,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ValueSetContains]
/// The codes that are contained in the value set expansion.
class ValueSetContains extends BackboneElement {
  /// Primary constructor for
  /// [ValueSetContains]

  ValueSetContains({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.system,
    this.abstract_,
    this.inactive,
    this.version,
    this.code,
    this.display,
    this.designation,
    this.contains,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetContains.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ValueSetContains(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      system: parseField<FhirUri>(
        json['system'],
        json['_system'],
        FhirUri.fromJson,
      ),
      abstract_: parseField<FhirBoolean>(
        json['abstract'],
        json['_abstract'],
        FhirBoolean.fromJson,
      ),
      inactive: parseField<FhirBoolean>(
        json['inactive'],
        json['_inactive'],
        FhirBoolean.fromJson,
      ),
      version: parseField<FhirString>(
        json['version'],
        json['_version'],
        FhirString.fromJson,
      ),
      code: parseField<FhirCode>(
        json['code'],
        json['_code'],
        FhirCode.fromJson,
      ),
      display: parseField<FhirString>(
        json['display'],
        json['_display'],
        FhirString.fromJson,
      ),
      designation: parseList<ValueSetDesignation>(
        json['designation'] as List<dynamic>?,
        json['_designation'] as List<dynamic>?,
        ValueSetDesignation.fromJson,
      ),
      contains: parseList<ValueSetContains>(
        json['contains'] as List<dynamic>?,
        json['_contains'] as List<dynamic>?,
        ValueSetContains.fromJson,
      ),
    );
  }

  /// Deserialize [ValueSetContains]
  /// from a [String] or [YamlMap] object
  factory ValueSetContains.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetContains.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetContains.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetContains '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetContains]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetContains.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetContains.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ValueSetContains';

  /// [system]
  /// An absolute URI which is the code system in which the code for this
  /// item in the expansion is defined.
  final FhirUri? system;

  /// [abstract_]
  /// If true, this entry is included in the expansion for navigational
  /// purposes, and the user cannot select the code directly as a proper
  /// value.
  final FhirBoolean? abstract_;

  /// [inactive]
  /// If the concept is inactive in the code system that defines it. Inactive
  /// codes are those that are no longer to be used, but are maintained by
  /// the code system for understanding legacy data. It might not be known or
  /// specified whether an concept is inactive (and it may depend on the
  /// context of use).
  final FhirBoolean? inactive;

  /// [version]
  /// The version of the code system from this code was taken. Note that a
  /// well-maintained code system does not need the version reported, because
  /// the meaning of codes is consistent across versions. However this cannot
  /// consistently be assured, and when the meaning is not guaranteed to be
  /// consistent, the version SHOULD be exchanged.
  final FhirString? version;

  /// [code]
  /// The code for this item in the expansion hierarchy. If this code is
  /// missing the entry in the hierarchy is a place holder (abstract) and
  /// does not represent a valid code in the value set.
  final FhirCode? code;

  /// [display]
  /// The recommended display for this item in the expansion.
  final FhirString? display;

  /// [designation]
  /// Additional representations for this item - other languages, aliases,
  /// specialized purposes, used for particular purposes, etc. These are
  /// relevant when the conditions of the expansion do not fix to a single
  /// correct representation.
  final List<ValueSetDesignation>? designation;

  /// [contains]
  /// Other codes and entries contained under this entry in the hierarchy.
  final List<ValueSetContains>? contains;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('system', system);
    addField('abstract', abstract_);
    addField('inactive', inactive);
    addField('version', version);
    addField('code', code);
    addField('display', display);
    if (designation != null && designation!.isNotEmpty) {
      json['designation'] = designation!.map((e) => e.toJson()).toList();
    }

    if (contains != null && contains!.isNotEmpty) {
      json['contains'] = contains!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ValueSetContains clone() => throw UnimplementedError();
  @override
  ValueSetContains copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? system,
    FhirBoolean? abstract_,
    FhirBoolean? inactive,
    FhirString? version,
    FhirCode? code,
    FhirString? display,
    List<ValueSetDesignation>? designation,
    List<ValueSetContains>? contains,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetContains(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      system: system ?? this.system,
      abstract_: abstract_ ?? this.abstract_,
      inactive: inactive ?? this.inactive,
      version: version ?? this.version,
      code: code ?? this.code,
      display: display ?? this.display,
      designation: designation ?? this.designation,
      contains: contains ?? this.contains,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
