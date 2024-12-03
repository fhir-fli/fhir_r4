import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SearchParameter]
/// A search parameter that defines a named search item that can be used to
/// search/filter on a resource.
class SearchParameter extends DomainResource {
  /// Primary constructor for
  /// [SearchParameter]

  SearchParameter({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.url,
    this.version,
    required this.name,
    this.derivedFrom,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    required this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    required this.code,
    required this.base,
    required this.type,
    this.expression,
    this.xpath,
    this.xpathUsage,
    this.target,
    this.multipleOr,
    this.multipleAnd,
    this.comparator,
    this.modifier,
    this.chain,
    this.component,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.SearchParameter,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SearchParameter.fromJson(
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
    return SearchParameter(
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
      url: FhirUri.fromJson({
        'value': json['url'],
        '_value': json['_url'],
      }),
      version: parseField<FhirString>(
        json['version'],
        json['_version'],
        FhirString.fromJson,
      ),
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      derivedFrom: parseField<FhirCanonical>(
        json['derivedFrom'],
        json['_derivedFrom'],
        FhirCanonical.fromJson,
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
      description: FhirMarkdown.fromJson({
        'value': json['description'],
        '_value': json['_description'],
      }),
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
      purpose: parseField<FhirMarkdown>(
        json['purpose'],
        json['_purpose'],
        FhirMarkdown.fromJson,
      ),
      code: FhirCode.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      base: parseList<FhirCode>(
        json['base'] as List<dynamic>?,
        json['_base'] as List<dynamic>?,
        FhirCode.fromJson,
      )!,
      type: SearchParamType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      expression: parseField<FhirString>(
        json['expression'],
        json['_expression'],
        FhirString.fromJson,
      ),
      xpath: parseField<FhirString>(
        json['xpath'],
        json['_xpath'],
        FhirString.fromJson,
      ),
      xpathUsage: parseField<XPathUsageType>(
        json['xpathUsage'],
        json['_xpathUsage'],
        XPathUsageType.fromJson,
      ),
      target: parseList<FhirCode>(
        json['target'] as List<dynamic>?,
        json['_target'] as List<dynamic>?,
        FhirCode.fromJson,
      ),
      multipleOr: parseField<FhirBoolean>(
        json['multipleOr'],
        json['_multipleOr'],
        FhirBoolean.fromJson,
      ),
      multipleAnd: parseField<FhirBoolean>(
        json['multipleAnd'],
        json['_multipleAnd'],
        FhirBoolean.fromJson,
      ),
      comparator: parseList<SearchComparator>(
        json['comparator'] as List<dynamic>?,
        json['_comparator'] as List<dynamic>?,
        SearchComparator.fromJson,
      ),
      modifier: parseList<SearchModifierCode>(
        json['modifier'] as List<dynamic>?,
        json['_modifier'] as List<dynamic>?,
        SearchModifierCode.fromJson,
      ),
      chain: parseList<FhirString>(
        json['chain'] as List<dynamic>?,
        json['_chain'] as List<dynamic>?,
        FhirString.fromJson,
      ),
      component: parseList<SearchParameterComponent>(
        json['component'] as List<dynamic>?,
        json['_component'] as List<dynamic>?,
        SearchParameterComponent.fromJson,
      ),
    );
  }

  /// Deserialize [SearchParameter]
  /// from a [String] or [YamlMap] object
  factory SearchParameter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SearchParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SearchParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SearchParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SearchParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SearchParameter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SearchParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SearchParameter';

  /// [url]
  /// An absolute URI that is used to identify this search parameter when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this search parameter is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  /// search parameter is stored on different servers.
  final FhirUri url;

  /// [version]
  /// The identifier that is used to identify this version of the search
  /// parameter when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the search parameter
  /// author and is not expected to be globally unique. For example, it might
  /// be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  /// There is also no expectation that versions can be placed in a
  /// lexicographical sequence.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the search parameter. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [derivedFrom]
  /// Where this search parameter is originally defined. If a derivedFrom is
  /// provided, then the details in the search parameter must be consistent
  /// with the definition from which it is defined. i.e. the parameter should
  /// have the same meaning, and (usually) the functionality should be a
  /// proper subset of the underlying search parameter.
  final FhirCanonical? derivedFrom;

  /// [status]
  /// The status of this search parameter. Enables tracking the life-cycle of
  /// the content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this search parameter is authored for
  /// testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the search parameter was published.
  /// The date must change when the business version changes and it must
  /// change if the status code changes. In addition, it should change when
  /// the substantive content of the search parameter changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the search
  /// parameter.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// And how it used.
  final FhirMarkdown description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate search parameter instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the search parameter is intended
  /// to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this search parameter is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [code]
  /// The code used in the URL or the parameter name in a parameters resource
  /// for this search parameter.
  final FhirCode code;

  /// [base]
  /// The base resource type(s) that this search parameter can be used
  /// against.
  final List<FhirCode> base;

  /// [type]
  /// The type of value that a search parameter may contain, and how the
  /// content is interpreted.
  final SearchParamType type;

  /// [expression]
  /// A FHIRPath expression that returns a set of elements for the search
  /// parameter.
  final FhirString? expression;

  /// [xpath]
  /// An XPath expression that returns a set of elements for the search
  /// parameter.
  final FhirString? xpath;

  /// [xpathUsage]
  /// How the search parameter relates to the set of elements returned by
  /// evaluating the xpath query.
  final XPathUsageType? xpathUsage;

  /// [target]
  /// Types of resource (if a resource is referenced).
  final List<FhirCode>? target;

  /// [multipleOr]
  /// Whether multiple values are allowed for each time the parameter exists.
  /// Values are separated by commas, and the parameter matches if any of the
  /// values match.
  final FhirBoolean? multipleOr;

  /// [multipleAnd]
  /// Whether multiple parameters are allowed - e.g. more than one parameter
  /// with the same name. The search matches if all the parameters match.
  final FhirBoolean? multipleAnd;

  /// [comparator]
  /// Comparators supported for the search parameter.
  final List<SearchComparator>? comparator;

  /// [modifier]
  /// A modifier supported for the search parameter.
  final List<SearchModifierCode>? modifier;

  /// [chain]
  /// Contains the names of any search parameters which may be chained to the
  /// containing search parameter. Chained parameters may be added to search
  /// parameters of type reference and specify that resources will only be
  /// returned if they contain a reference to a resource which matches the
  /// chained parameter value. Values for this field should be drawn from
  /// SearchParameter.code for a parameter on the target resource type.
  final List<FhirString>? chain;

  /// [component]
  /// Used to define the parts of a composite search parameter.
  final List<SearchParameterComponent>? component;
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
    addField('version', version);
    addField('name', name);
    addField('derivedFrom', derivedFrom);
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

    addField('purpose', purpose);
    addField('code', code);
    if (base.isNotEmpty) {
      final fieldJson0 = base.map((e) => e.toJson()).toList();
      json['base'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_base'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    addField('type', type);
    addField('expression', expression);
    addField('xpath', xpath);
    addField('xpathUsage', xpathUsage);
    if (target != null && target!.isNotEmpty) {
      final fieldJson1 = target!.map((e) => e.toJson()).toList();
      json['target'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_target'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    addField('multipleOr', multipleOr);
    addField('multipleAnd', multipleAnd);
    if (comparator != null && comparator!.isNotEmpty) {
      final fieldJson2 = comparator!.map((e) => e.toJson()).toList();
      json['comparator'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_comparator'] = fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (modifier != null && modifier!.isNotEmpty) {
      final fieldJson3 = modifier!.map((e) => e.toJson()).toList();
      json['modifier'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_modifier'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (chain != null && chain!.isNotEmpty) {
      final fieldJson4 = chain!.map((e) => e.toJson()).toList();
      json['chain'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_chain'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (component != null && component!.isNotEmpty) {
      json['component'] = component!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  SearchParameter clone() => throw UnimplementedError();
  @override
  SearchParameter copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    FhirString? version,
    FhirString? name,
    FhirCanonical? derivedFrom,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirCode? code,
    List<FhirCode>? base,
    SearchParamType? type,
    FhirString? expression,
    FhirString? xpath,
    XPathUsageType? xpathUsage,
    List<FhirCode>? target,
    FhirBoolean? multipleOr,
    FhirBoolean? multipleAnd,
    List<SearchComparator>? comparator,
    List<SearchModifierCode>? modifier,
    List<FhirString>? chain,
    List<SearchParameterComponent>? component,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SearchParameter(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      version: version ?? this.version,
      name: name ?? this.name,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      code: code ?? this.code,
      base: base ?? this.base,
      type: type ?? this.type,
      expression: expression ?? this.expression,
      xpath: xpath ?? this.xpath,
      xpathUsage: xpathUsage ?? this.xpathUsage,
      target: target ?? this.target,
      multipleOr: multipleOr ?? this.multipleOr,
      multipleAnd: multipleAnd ?? this.multipleAnd,
      comparator: comparator ?? this.comparator,
      modifier: modifier ?? this.modifier,
      chain: chain ?? this.chain,
      component: component ?? this.component,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SearchParameterComponent]
/// Used to define the parts of a composite search parameter.
class SearchParameterComponent extends BackboneElement {
  /// Primary constructor for
  /// [SearchParameterComponent]

  SearchParameterComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.definition,
    required this.expression,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SearchParameterComponent.fromJson(
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
    return SearchParameterComponent(
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
      definition: FhirCanonical.fromJson({
        'value': json['definition'],
        '_value': json['_definition'],
      }),
      expression: FhirString.fromJson({
        'value': json['expression'],
        '_value': json['_expression'],
      }),
    );
  }

  /// Deserialize [SearchParameterComponent]
  /// from a [String] or [YamlMap] object
  factory SearchParameterComponent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SearchParameterComponent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SearchParameterComponent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SearchParameterComponent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SearchParameterComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SearchParameterComponent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SearchParameterComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SearchParameterComponent';

  /// [definition]
  /// The definition of the search parameter that describes this part.
  final FhirCanonical definition;

  /// [expression]
  /// A sub-expression that defines how to extract values for this component
  /// from the output of the main SearchParameter.expression.
  final FhirString expression;
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

    addField('definition', definition);
    addField('expression', expression);
    return json;
  }

  @override
  SearchParameterComponent clone() => throw UnimplementedError();
  @override
  SearchParameterComponent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? definition,
    FhirString? expression,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SearchParameterComponent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      definition: definition ?? this.definition,
      expression: expression ?? this.expression,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
