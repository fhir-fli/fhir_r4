import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SearchParameter]
/// A search parameter that defines a named search item that can be used to
/// search/filter on a resource.
class SearchParameter extends DomainResource {
  /// Primary constructor for [SearchParameter]

  SearchParameter({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
  factory SearchParameter.fromJson(Map<String, dynamic> json) {
    return SearchParameter(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      url: FhirUri.fromJson({
        'value': json['url'],
        '_value': json['_url'],
      }),
      version: json['version'] != null
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      derivedFrom: json['derivedFrom'] != null
          ? FhirCanonical.fromJson({
              'value': json['derivedFrom'],
              '_value': json['_derivedFrom'],
            })
          : null,
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      experimental: json['experimental'] != null
          ? FhirBoolean.fromJson({
              'value': json['experimental'],
              '_value': json['_experimental'],
            })
          : null,
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      publisher: json['publisher'] != null
          ? FhirString.fromJson({
              'value': json['publisher'],
              '_value': json['_publisher'],
            })
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: FhirMarkdown.fromJson({
        'value': json['description'],
        '_value': json['_description'],
      }),
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>(
                (v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson({
              'value': json['purpose'],
              '_value': json['_purpose'],
            })
          : null,
      code: FhirCode.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      base: ensureNonNullList(parsePrimitiveList<FhirCode>(
          json['base'] as List<dynamic>?, json['_base'] as List<dynamic>?,
          fromJson: FhirCode.fromJson)),
      type: SearchParamType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      expression: json['expression'] != null
          ? FhirString.fromJson({
              'value': json['expression'],
              '_value': json['_expression'],
            })
          : null,
      xpath: json['xpath'] != null
          ? FhirString.fromJson({
              'value': json['xpath'],
              '_value': json['_xpath'],
            })
          : null,
      xpathUsage: json['xpathUsage'] != null
          ? XPathUsageType.fromJson({
              'value': json['xpathUsage'],
              '_value': json['_xpathUsage'],
            })
          : null,
      target: parsePrimitiveList<FhirCode>(
          json['target'] as List<dynamic>?, json['_target'] as List<dynamic>?,
          fromJson: FhirCode.fromJson),
      multipleOr: json['multipleOr'] != null
          ? FhirBoolean.fromJson({
              'value': json['multipleOr'],
              '_value': json['_multipleOr'],
            })
          : null,
      multipleAnd: json['multipleAnd'] != null
          ? FhirBoolean.fromJson({
              'value': json['multipleAnd'],
              '_value': json['_multipleAnd'],
            })
          : null,
      comparator: parsePrimitiveList<SearchComparator>(
          json['comparator'] as List<dynamic>?,
          json['_comparator'] as List<dynamic>?,
          fromJson: SearchComparator.fromJson),
      modifier: parsePrimitiveList<SearchModifierCode>(
          json['modifier'] as List<dynamic>?,
          json['_modifier'] as List<dynamic>?,
          fromJson: SearchModifierCode.fromJson),
      chain: parsePrimitiveList<FhirString>(
          json['chain'] as List<dynamic>?, json['_chain'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      component: json['component'] != null
          ? (json['component'] as List<dynamic>)
              .map<SearchParameterComponent>(
                (v) => SearchParameterComponent.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [SearchParameter] from a [String]
  /// or [YamlMap] object
  factory SearchParameter.fromYaml(dynamic yaml) => yaml is String
      ? SearchParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SearchParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('SearchParameter cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SearchParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SearchParameter.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    final fieldJson8 = url.toJson();
    json['url'] = fieldJson8['value'];
    if (fieldJson8['_value'] != null) {
      json['_url'] = fieldJson8['_value'];
    }

    if (version != null) {
      final fieldJson9 = version!.toJson();
      json['version'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_version'] = fieldJson9['_value'];
      }
    }

    final fieldJson10 = name.toJson();
    json['name'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_name'] = fieldJson10['_value'];
    }

    if (derivedFrom != null) {
      final fieldJson11 = derivedFrom!.toJson();
      json['derivedFrom'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_derivedFrom'] = fieldJson11['_value'];
      }
    }

    final fieldJson12 = status.toJson();
    json['status'] = fieldJson12['value'];
    if (fieldJson12['_value'] != null) {
      json['_status'] = fieldJson12['_value'];
    }

    if (experimental != null) {
      final fieldJson13 = experimental!.toJson();
      json['experimental'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_experimental'] = fieldJson13['_value'];
      }
    }

    if (date != null) {
      final fieldJson14 = date!.toJson();
      json['date'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_date'] = fieldJson14['_value'];
      }
    }

    if (publisher != null) {
      final fieldJson15 = publisher!.toJson();
      json['publisher'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_publisher'] = fieldJson15['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      final fieldJson16 = contact!.map((e) => e.toJson()).toList();
      json['contact'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_contact'] = fieldJson16.map((e) => e['_value']).toList();
      }
    }

    final fieldJson17 = description.toJson();
    json['description'] = fieldJson17['value'];
    if (fieldJson17['_value'] != null) {
      json['_description'] = fieldJson17['_value'];
    }

    if (useContext != null && useContext!.isNotEmpty) {
      final fieldJson18 = useContext!.map((e) => e.toJson()).toList();
      json['useContext'] = fieldJson18.map((e) => e['value']).toList();
      if (fieldJson18.any((e) => e['_value'] != null)) {
        json['_useContext'] = fieldJson18.map((e) => e['_value']).toList();
      }
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      final fieldJson19 = jurisdiction!.map((e) => e.toJson()).toList();
      json['jurisdiction'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_jurisdiction'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (purpose != null) {
      final fieldJson20 = purpose!.toJson();
      json['purpose'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_purpose'] = fieldJson20['_value'];
      }
    }

    final fieldJson21 = code.toJson();
    json['code'] = fieldJson21['value'];
    if (fieldJson21['_value'] != null) {
      json['_code'] = fieldJson21['_value'];
    }

    final fieldJson22 = base.map((e) => e.toJson()).toList();
    json['base'] = fieldJson22.map((e) => e['value']).toList();
    if (fieldJson22.any((e) => e['_value'] != null)) {
      json['_base'] = fieldJson22.map((e) => e['_value']).toList();
    }

    final fieldJson23 = type.toJson();
    json['type'] = fieldJson23['value'];
    if (fieldJson23['_value'] != null) {
      json['_type'] = fieldJson23['_value'];
    }

    if (expression != null) {
      final fieldJson24 = expression!.toJson();
      json['expression'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_expression'] = fieldJson24['_value'];
      }
    }

    if (xpath != null) {
      final fieldJson25 = xpath!.toJson();
      json['xpath'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_xpath'] = fieldJson25['_value'];
      }
    }

    if (xpathUsage != null) {
      final fieldJson26 = xpathUsage!.toJson();
      json['xpathUsage'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_xpathUsage'] = fieldJson26['_value'];
      }
    }

    if (target != null && target!.isNotEmpty) {
      final fieldJson27 = target!.map((e) => e.toJson()).toList();
      json['target'] = fieldJson27.map((e) => e['value']).toList();
      if (fieldJson27.any((e) => e['_value'] != null)) {
        json['_target'] = fieldJson27.map((e) => e['_value']).toList();
      }
    }

    if (multipleOr != null) {
      final fieldJson28 = multipleOr!.toJson();
      json['multipleOr'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_multipleOr'] = fieldJson28['_value'];
      }
    }

    if (multipleAnd != null) {
      final fieldJson29 = multipleAnd!.toJson();
      json['multipleAnd'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_multipleAnd'] = fieldJson29['_value'];
      }
    }

    if (comparator != null && comparator!.isNotEmpty) {
      final fieldJson30 = comparator!.map((e) => e.toJson()).toList();
      json['comparator'] = fieldJson30.map((e) => e['value']).toList();
      if (fieldJson30.any((e) => e['_value'] != null)) {
        json['_comparator'] = fieldJson30.map((e) => e['_value']).toList();
      }
    }

    if (modifier != null && modifier!.isNotEmpty) {
      final fieldJson31 = modifier!.map((e) => e.toJson()).toList();
      json['modifier'] = fieldJson31.map((e) => e['value']).toList();
      if (fieldJson31.any((e) => e['_value'] != null)) {
        json['_modifier'] = fieldJson31.map((e) => e['_value']).toList();
      }
    }

    if (chain != null && chain!.isNotEmpty) {
      final fieldJson32 = chain!.map((e) => e.toJson()).toList();
      json['chain'] = fieldJson32.map((e) => e['value']).toList();
      if (fieldJson32.any((e) => e['_value'] != null)) {
        json['_chain'] = fieldJson32.map((e) => e['_value']).toList();
      }
    }

    if (component != null && component!.isNotEmpty) {
      final fieldJson33 = component!.map((e) => e.toJson()).toList();
      json['component'] = fieldJson33.map((e) => e['value']).toList();
      if (fieldJson33.any((e) => e['_value'] != null)) {
        json['_component'] = fieldJson33.map((e) => e['_value']).toList();
      }
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
  /// Primary constructor for [SearchParameterComponent]

  SearchParameterComponent({
    super.id,
    this.extension_,
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
  factory SearchParameterComponent.fromJson(Map<String, dynamic> json) {
    return SearchParameterComponent(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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

  /// Deserialize [SearchParameterComponent] from a [String]
  /// or [YamlMap] object
  factory SearchParameterComponent.fromYaml(dynamic yaml) => yaml is String
      ? SearchParameterComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SearchParameterComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'SearchParameterComponent cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SearchParameterComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SearchParameterComponent.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = definition.toJson();
    json['definition'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_definition'] = fieldJson3['_value'];
    }

    final fieldJson4 = expression.toJson();
    json['expression'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_expression'] = fieldJson4['_value'];
    }

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
