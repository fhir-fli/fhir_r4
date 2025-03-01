import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SearchParameter]
/// A search parameter that defines a named search item that can be used to
/// search/filter on a resource.
class SearchParameter extends CanonicalResource {
  /// Primary constructor for
  /// [SearchParameter]

  const SearchParameter({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required super.url,
    super.version,
    required this.name,
    this.derivedFrom,
    required super.status,
    super.experimental,
    super.date,
    super.publisher,
    super.contact,
    required super.description,
    super.useContext,
    super.jurisdiction,
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
  }) : super(
          objectPath: 'SearchParameter',
          resourceType: R4ResourceType.SearchParameter,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SearchParameter.empty() => SearchParameter(
        url: FhirUri.empty(),
        name: FhirString.empty(),
        status: PublicationStatus.values.first,
        description: FhirMarkdown.empty(),
        code: FhirCode.empty(),
        base: <FhirCode>[],
        type: SearchParamType.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SearchParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SearchParameter';
    return SearchParameter(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
      ),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      )!,
      derivedFrom: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'derivedFrom',
        FhirCanonical.fromJson,
        '$objectPath.derivedFrom',
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
        '$objectPath.status',
      ),
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
        '$objectPath.experimental',
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
        '$objectPath.description',
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.jurisdiction',
              },
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
        '$objectPath.purpose',
      ),
      code: JsonParser.parsePrimitive<FhirCode>(
        json,
        'code',
        FhirCode.fromJson,
        '$objectPath.code',
      )!,
      base: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'base',
        FhirCode.fromJson,
        '$objectPath.base',
      )!,
      type: JsonParser.parsePrimitive<SearchParamType>(
        json,
        'type',
        SearchParamType.fromJson,
        '$objectPath.type',
      )!,
      expression: JsonParser.parsePrimitive<FhirString>(
        json,
        'expression',
        FhirString.fromJson,
        '$objectPath.expression',
      ),
      xpath: JsonParser.parsePrimitive<FhirString>(
        json,
        'xpath',
        FhirString.fromJson,
        '$objectPath.xpath',
      ),
      xpathUsage: JsonParser.parsePrimitive<XPathUsageType>(
        json,
        'xpathUsage',
        XPathUsageType.fromJson,
        '$objectPath.xpathUsage',
      ),
      target: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'target',
        FhirCode.fromJson,
        '$objectPath.target',
      ),
      multipleOr: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'multipleOr',
        FhirBoolean.fromJson,
        '$objectPath.multipleOr',
      ),
      multipleAnd: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'multipleAnd',
        FhirBoolean.fromJson,
        '$objectPath.multipleAnd',
      ),
      comparator: JsonParser.parsePrimitiveList<SearchComparator>(
        json,
        'comparator',
        SearchComparator.fromJson,
        '$objectPath.comparator',
      ),
      modifier: JsonParser.parsePrimitiveList<SearchModifierCode>(
        json,
        'modifier',
        SearchModifierCode.fromJson,
        '$objectPath.modifier',
      ),
      chain: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'chain',
        FhirString.fromJson,
        '$objectPath.chain',
      ),
      component: (json['component'] as List<dynamic>?)
          ?.map<SearchParameterComponent>(
            (v) => SearchParameterComponent.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.component',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return SearchParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SearchParameter';

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('url', url);
    addField('version', version);
    addField('name', name);
    addField('derivedFrom', derivedFrom);
    addField('status', status);
    addField('experimental', experimental);
    addField('date', date);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('description', description);
    addField('useContext', useContext);
    addField('jurisdiction', jurisdiction);
    addField('purpose', purpose);
    addField('code', code);
    addField('base', base);
    addField('type', type);
    addField('expression', expression);
    addField('xpath', xpath);
    addField('xpathUsage', xpathUsage);
    addField('target', target);
    addField('multipleOr', multipleOr);
    addField('multipleAnd', multipleAnd);
    addField('comparator', comparator);
    addField('modifier', modifier);
    addField('chain', chain);
    addField('component', component);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'url',
      'version',
      'name',
      'derivedFrom',
      'status',
      'experimental',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'jurisdiction',
      'purpose',
      'code',
      'base',
      'type',
      'expression',
      'xpath',
      'xpathUsage',
      'target',
      'multipleOr',
      'multipleAnd',
      'comparator',
      'modifier',
      'chain',
      'component',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'name':
        fields.add(name);
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.add(derivedFrom!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.addAll(jurisdiction!);
        }
      case 'purpose':
        if (purpose != null) {
          fields.add(purpose!);
        }
      case 'code':
        fields.add(code);
      case 'base':
        fields.addAll(base);
      case 'type':
        fields.add(type);
      case 'expression':
        if (expression != null) {
          fields.add(expression!);
        }
      case 'xpath':
        if (xpath != null) {
          fields.add(xpath!);
        }
      case 'xpathUsage':
        if (xpathUsage != null) {
          fields.add(xpathUsage!);
        }
      case 'target':
        if (target != null) {
          fields.addAll(target!);
        }
      case 'multipleOr':
        if (multipleOr != null) {
          fields.add(multipleOr!);
        }
      case 'multipleAnd':
        if (multipleAnd != null) {
          fields.add(multipleAnd!);
        }
      case 'comparator':
        if (comparator != null) {
          fields.addAll(comparator!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'chain':
        if (chain != null) {
          fields.addAll(chain!);
        }
      case 'component':
        if (component != null) {
          fields.addAll(component!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'version':
        {
          if (child is FhirString) {
            return copyWith(version: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'derivedFrom':
        {
          if (child is FhirCanonical) {
            return copyWith(derivedFrom: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is PublicationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'experimental':
        {
          if (child is FhirBoolean) {
            return copyWith(experimental: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'publisher':
        {
          if (child is FhirString) {
            return copyWith(publisher: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contact':
        {
          if (child is List<ContactDetail>) {
            return copyWith(contact: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'useContext':
        {
          if (child is List<UsageContext>) {
            return copyWith(useContext: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(jurisdiction: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'purpose':
        {
          if (child is FhirMarkdown) {
            return copyWith(purpose: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is FhirCode) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'base':
        {
          if (child is List<FhirCode>) {
            return copyWith(base: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is SearchParamType) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'expression':
        {
          if (child is FhirString) {
            return copyWith(expression: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'xpath':
        {
          if (child is FhirString) {
            return copyWith(xpath: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'xpathUsage':
        {
          if (child is XPathUsageType) {
            return copyWith(xpathUsage: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'target':
        {
          if (child is List<FhirCode>) {
            return copyWith(target: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'multipleOr':
        {
          if (child is FhirBoolean) {
            return copyWith(multipleOr: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'multipleAnd':
        {
          if (child is FhirBoolean) {
            return copyWith(multipleAnd: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'comparator':
        {
          if (child is List<SearchComparator>) {
            return copyWith(comparator: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifier':
        {
          if (child is List<SearchModifierCode>) {
            return copyWith(modifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'chain':
        {
          if (child is List<FhirString>) {
            return copyWith(chain: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'component':
        {
          if (child is List<SearchParameterComponent>) {
            return copyWith(component: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'url':
        return ['FhirUri'];
      case 'version':
        return ['FhirString'];
      case 'name':
        return ['FhirString'];
      case 'derivedFrom':
        return ['FhirCanonical'];
      case 'status':
        return ['FhirCode'];
      case 'experimental':
        return ['FhirBoolean'];
      case 'date':
        return ['FhirDateTime'];
      case 'publisher':
        return ['FhirString'];
      case 'contact':
        return ['ContactDetail'];
      case 'description':
        return ['FhirMarkdown'];
      case 'useContext':
        return ['UsageContext'];
      case 'jurisdiction':
        return ['CodeableConcept'];
      case 'purpose':
        return ['FhirMarkdown'];
      case 'code':
        return ['FhirCode'];
      case 'base':
        return ['FhirCode'];
      case 'type':
        return ['FhirCode'];
      case 'expression':
        return ['FhirString'];
      case 'xpath':
        return ['FhirString'];
      case 'xpathUsage':
        return ['FhirCode'];
      case 'target':
        return ['FhirCode'];
      case 'multipleOr':
        return ['FhirBoolean'];
      case 'multipleAnd':
        return ['FhirBoolean'];
      case 'comparator':
        return ['FhirCode'];
      case 'modifier':
        return ['FhirCode'];
      case 'chain':
        return ['FhirString'];
      case 'component':
        return ['SearchParameterComponent'];
      default:
        return <String>[];
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return SearchParameter(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      derivedFrom: derivedFrom?.copyWith(
            objectPath: '$newObjectPath.derivedFrom',
          ) ??
          this.derivedFrom,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      experimental: experimental?.copyWith(
            objectPath: '$newObjectPath.experimental',
          ) ??
          this.experimental,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      publisher: publisher?.copyWith(
            objectPath: '$newObjectPath.publisher',
          ) ??
          this.publisher,
      contact: contact
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contact',
                ),
              )
              .toList() ??
          this.contact,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      useContext: useContext
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.useContext',
                ),
              )
              .toList() ??
          this.useContext,
      jurisdiction: jurisdiction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.jurisdiction',
                ),
              )
              .toList() ??
          this.jurisdiction,
      purpose: purpose?.copyWith(
            objectPath: '$newObjectPath.purpose',
          ) ??
          this.purpose,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      base: base
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.base',
                ),
              )
              .toList() ??
          this.base,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      expression: expression?.copyWith(
            objectPath: '$newObjectPath.expression',
          ) ??
          this.expression,
      xpath: xpath?.copyWith(
            objectPath: '$newObjectPath.xpath',
          ) ??
          this.xpath,
      xpathUsage: xpathUsage?.copyWith(
            objectPath: '$newObjectPath.xpathUsage',
          ) ??
          this.xpathUsage,
      target: target
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.target',
                ),
              )
              .toList() ??
          this.target,
      multipleOr: multipleOr?.copyWith(
            objectPath: '$newObjectPath.multipleOr',
          ) ??
          this.multipleOr,
      multipleAnd: multipleAnd?.copyWith(
            objectPath: '$newObjectPath.multipleAnd',
          ) ??
          this.multipleAnd,
      comparator: comparator
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.comparator',
                ),
              )
              .toList() ??
          this.comparator,
      modifier: modifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifier',
                ),
              )
              .toList() ??
          this.modifier,
      chain: chain
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.chain',
                ),
              )
              .toList() ??
          this.chain,
      component: component
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.component',
                ),
              )
              .toList() ??
          this.component,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SearchParameter) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(url, o.url)) {
      return false;
    }
    if (!equalsDeepWithNull(version, o.version)) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(derivedFrom, o.derivedFrom)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(experimental, o.experimental)) {
      return false;
    }
    if (!equalsDeepWithNull(date, o.date)) {
      return false;
    }
    if (!equalsDeepWithNull(publisher, o.publisher)) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(purpose, o.purpose)) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!listEquals<FhirCode>(
      base,
      o.base,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(expression, o.expression)) {
      return false;
    }
    if (!equalsDeepWithNull(xpath, o.xpath)) {
      return false;
    }
    if (!equalsDeepWithNull(xpathUsage, o.xpathUsage)) {
      return false;
    }
    if (!listEquals<FhirCode>(
      target,
      o.target,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(multipleOr, o.multipleOr)) {
      return false;
    }
    if (!equalsDeepWithNull(multipleAnd, o.multipleAnd)) {
      return false;
    }
    if (!listEquals<SearchComparator>(
      comparator,
      o.comparator,
    )) {
      return false;
    }
    if (!listEquals<SearchModifierCode>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      chain,
      o.chain,
    )) {
      return false;
    }
    if (!listEquals<SearchParameterComponent>(
      component,
      o.component,
    )) {
      return false;
    }
    return true;
  }
}

/// [SearchParameterComponent]
/// Used to define the parts of a composite search parameter.
class SearchParameterComponent extends BackboneElement {
  /// Primary constructor for
  /// [SearchParameterComponent]

  const SearchParameterComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.definition,
    required this.expression,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SearchParameter.component',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SearchParameterComponent.empty() => SearchParameterComponent(
        definition: FhirCanonical.empty(),
        expression: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SearchParameterComponent.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SearchParameter.component';
    return SearchParameterComponent(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      definition: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'definition',
        FhirCanonical.fromJson,
        '$objectPath.definition',
      )!,
      expression: JsonParser.parsePrimitive<FhirString>(
        json,
        'expression',
        FhirString.fromJson,
        '$objectPath.expression',
      )!,
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
    if (json is Map<String, dynamic>) {
      return SearchParameterComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('definition', definition);
    addField('expression', expression);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'definition',
      'expression',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'definition':
        fields.add(definition);
      case 'expression':
        fields.add(expression);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'definition':
        {
          if (child is FhirCanonical) {
            return copyWith(definition: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'expression':
        {
          if (child is FhirString) {
            return copyWith(expression: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'definition':
        return ['FhirCanonical'];
      case 'expression':
        return ['FhirString'];
      default:
        return <String>[];
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SearchParameterComponent(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      definition: definition?.copyWith(
            objectPath: '$newObjectPath.definition',
          ) ??
          this.definition,
      expression: expression?.copyWith(
            objectPath: '$newObjectPath.expression',
          ) ??
          this.expression,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SearchParameterComponent) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(definition, o.definition)) {
      return false;
    }
    if (!equalsDeepWithNull(expression, o.expression)) {
      return false;
    }
    return true;
  }
}
