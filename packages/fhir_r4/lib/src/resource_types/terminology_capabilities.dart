import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [TerminologyCapabilities]
/// A TerminologyCapabilities resource documents a set of capabilities
/// (behaviors) of a FHIR Terminology Server that may be used as a
/// statement of actual server functionality or a statement of required or
/// desired server implementation.
class TerminologyCapabilities extends CanonicalResource {
  /// Primary constructor for
  /// [TerminologyCapabilities]

  const TerminologyCapabilities({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    super.url,
    super.version,
    this.name,
    this.title,
    required super.status,
    super.experimental,
    required super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    this.copyright,
    required this.kind,
    this.software,
    this.implementation,
    this.lockedDate,
    this.codeSystem,
    this.expansion,
    this.codeSearch,
    this.validateCode,
    this.translation,
    this.closure,
  }) : super(
          objectPath: 'TerminologyCapabilities',
          resourceType: R4ResourceType.TerminologyCapabilities,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TerminologyCapabilities.empty() => TerminologyCapabilities(
        status: PublicationStatus.values.first,
        date: FhirDateTime.empty(),
        kind: CapabilityStatementKind.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilities.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TerminologyCapabilities';
    return TerminologyCapabilities(
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
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
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
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
        '$objectPath.copyright',
      ),
      kind: JsonParser.parsePrimitive<CapabilityStatementKind>(
        json,
        'kind',
        CapabilityStatementKind.fromJson,
        '$objectPath.kind',
      )!,
      software: JsonParser.parseObject<TerminologyCapabilitiesSoftware>(
        json,
        'software',
        TerminologyCapabilitiesSoftware.fromJson,
        '$objectPath.software',
      ),
      implementation:
          JsonParser.parseObject<TerminologyCapabilitiesImplementation>(
        json,
        'implementation',
        TerminologyCapabilitiesImplementation.fromJson,
        '$objectPath.implementation',
      ),
      lockedDate: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'lockedDate',
        FhirBoolean.fromJson,
        '$objectPath.lockedDate',
      ),
      codeSystem: (json['codeSystem'] as List<dynamic>?)
          ?.map<TerminologyCapabilitiesCodeSystem>(
            (v) => TerminologyCapabilitiesCodeSystem.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.codeSystem',
              },
            ),
          )
          .toList(),
      expansion: JsonParser.parseObject<TerminologyCapabilitiesExpansion>(
        json,
        'expansion',
        TerminologyCapabilitiesExpansion.fromJson,
        '$objectPath.expansion',
      ),
      codeSearch: JsonParser.parsePrimitive<CodeSearchSupport>(
        json,
        'codeSearch',
        CodeSearchSupport.fromJson,
        '$objectPath.codeSearch',
      ),
      validateCode: JsonParser.parseObject<TerminologyCapabilitiesValidateCode>(
        json,
        'validateCode',
        TerminologyCapabilitiesValidateCode.fromJson,
        '$objectPath.validateCode',
      ),
      translation: JsonParser.parseObject<TerminologyCapabilitiesTranslation>(
        json,
        'translation',
        TerminologyCapabilitiesTranslation.fromJson,
        '$objectPath.translation',
      ),
      closure: JsonParser.parseObject<TerminologyCapabilitiesClosure>(
        json,
        'closure',
        TerminologyCapabilitiesClosure.fromJson,
        '$objectPath.closure',
      ),
    );
  }

  /// Deserialize [TerminologyCapabilities]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilities.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilities.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilities.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilities '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilities]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilities.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TerminologyCapabilities.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilities';

  /// [name]
  /// A natural language name identifying the terminology capabilities. This
  /// name should be usable as an identifier for the module by machine
  /// processing applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the terminology
  /// capabilities.
  final FhirString? title;

  /// [purpose]
  /// Explanation of why this terminology capabilities is needed and why it
  /// has been designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the terminology capabilities and/or
  /// its contents. Copyright statements are generally legal restrictions on
  /// the use and publishing of the terminology capabilities.
  final FhirMarkdown? copyright;

  /// [kind]
  /// The way that this statement is intended to be used, to describe an
  /// actual running instance of software, a particular product (kind, not
  /// instance of software) or a class of implementation (e.g. a desired
  /// purchase).
  final CapabilityStatementKind kind;

  /// [software]
  /// Software that is covered by this terminology capability statement. It
  /// is used when the statement describes the capabilities of a particular
  /// software version, independent of an installation.
  final TerminologyCapabilitiesSoftware? software;

  /// [implementation]
  /// Identifies a specific implementation instance that is described by the
  /// terminology capability statement - i.e. a particular installation,
  /// rather than the capabilities of a software program.
  final TerminologyCapabilitiesImplementation? implementation;

  /// [lockedDate]
  /// Whether the server supports lockedDate.
  final FhirBoolean? lockedDate;

  /// [codeSystem]
  /// Identifies a code system that is supported by the server. If there is a
  /// no code system URL, then this declares the general assumptions a client
  /// can make about support for any CodeSystem resource.
  final List<TerminologyCapabilitiesCodeSystem>? codeSystem;

  /// [expansion]
  /// Information about the
  /// [ValueSet/$expand](valueset-operation-expand.html) operation.
  final TerminologyCapabilitiesExpansion? expansion;

  /// [codeSearch]
  /// The degree to which the server supports the code search parameter on
  /// ValueSet, if it is supported.
  final CodeSearchSupport? codeSearch;

  /// [validateCode]
  /// Information about the
  /// [ValueSet/$validate-code](valueset-operation-validate-code.html)
  /// operation.
  final TerminologyCapabilitiesValidateCode? validateCode;

  /// [translation]
  /// Information about the
  /// [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
  final TerminologyCapabilitiesTranslation? translation;

  /// [closure]
  /// Whether the $closure operation is supported.
  final TerminologyCapabilitiesClosure? closure;
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
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'url',
      url,
    );
    addField(
      'version',
      version,
    );
    addField(
      'name',
      name,
    );
    addField(
      'title',
      title,
    );
    addField(
      'status',
      status,
    );
    addField(
      'experimental',
      experimental,
    );
    addField(
      'date',
      date,
    );
    addField(
      'publisher',
      publisher,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'description',
      description,
    );
    addField(
      'useContext',
      useContext,
    );
    addField(
      'jurisdiction',
      jurisdiction,
    );
    addField(
      'purpose',
      purpose,
    );
    addField(
      'copyright',
      copyright,
    );
    addField(
      'kind',
      kind,
    );
    addField(
      'software',
      software,
    );
    addField(
      'implementation',
      implementation,
    );
    addField(
      'lockedDate',
      lockedDate,
    );
    addField(
      'codeSystem',
      codeSystem,
    );
    addField(
      'expansion',
      expansion,
    );
    addField(
      'codeSearch',
      codeSearch,
    );
    addField(
      'validateCode',
      validateCode,
    );
    addField(
      'translation',
      translation,
    );
    addField(
      'closure',
      closure,
    );
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
      'title',
      'status',
      'experimental',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'jurisdiction',
      'purpose',
      'copyright',
      'kind',
      'software',
      'implementation',
      'lockedDate',
      'codeSystem',
      'expansion',
      'codeSearch',
      'validateCode',
      'translation',
      'closure',
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
        if (name != null) {
          fields.add(name!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
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
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
        }
      case 'kind':
        fields.add(kind);
      case 'software':
        if (software != null) {
          fields.add(software!);
        }
      case 'implementation':
        if (implementation != null) {
          fields.add(implementation!);
        }
      case 'lockedDate':
        if (lockedDate != null) {
          fields.add(lockedDate!);
        }
      case 'codeSystem':
        if (codeSystem != null) {
          fields.addAll(codeSystem!);
        }
      case 'expansion':
        if (expansion != null) {
          fields.add(expansion!);
        }
      case 'codeSearch':
        if (codeSearch != null) {
          fields.add(codeSearch!);
        }
      case 'validateCode':
        if (validateCode != null) {
          fields.add(validateCode!);
        }
      case 'translation':
        if (translation != null) {
          fields.add(translation!);
        }
      case 'closure':
        if (closure != null) {
          fields.add(closure!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [...?contained, child];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is FhirString) {
            return copyWith(version: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is PublicationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'experimental':
        {
          if (child is FhirBoolean) {
            return copyWith(experimental: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'publisher':
        {
          if (child is FhirString) {
            return copyWith(publisher: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contact':
        {
          if (child is List<ContactDetail>) {
            // Add all elements from passed list
            final newList = [...?contact, ...child];
            return copyWith(contact: newList);
          } else if (child is ContactDetail) {
            // Add single element to existing list or create new list
            final newList = [...?contact, child];
            return copyWith(contact: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'useContext':
        {
          if (child is List<UsageContext>) {
            // Add all elements from passed list
            final newList = [...?useContext, ...child];
            return copyWith(useContext: newList);
          } else if (child is UsageContext) {
            // Add single element to existing list or create new list
            final newList = [...?useContext, child];
            return copyWith(useContext: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?jurisdiction, ...child];
            return copyWith(jurisdiction: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?jurisdiction, child];
            return copyWith(jurisdiction: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'purpose':
        {
          if (child is FhirMarkdown) {
            return copyWith(purpose: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'copyright':
        {
          if (child is FhirMarkdown) {
            return copyWith(copyright: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'kind':
        {
          if (child is CapabilityStatementKind) {
            return copyWith(kind: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'software':
        {
          if (child is TerminologyCapabilitiesSoftware) {
            return copyWith(software: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implementation':
        {
          if (child is TerminologyCapabilitiesImplementation) {
            return copyWith(implementation: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lockedDate':
        {
          if (child is FhirBoolean) {
            return copyWith(lockedDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'codeSystem':
        {
          if (child is List<TerminologyCapabilitiesCodeSystem>) {
            // Add all elements from passed list
            final newList = [...?codeSystem, ...child];
            return copyWith(codeSystem: newList);
          } else if (child is TerminologyCapabilitiesCodeSystem) {
            // Add single element to existing list or create new list
            final newList = [...?codeSystem, child];
            return copyWith(codeSystem: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'expansion':
        {
          if (child is TerminologyCapabilitiesExpansion) {
            return copyWith(expansion: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'codeSearch':
        {
          if (child is CodeSearchSupport) {
            return copyWith(codeSearch: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'validateCode':
        {
          if (child is TerminologyCapabilitiesValidateCode) {
            return copyWith(validateCode: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'translation':
        {
          if (child is TerminologyCapabilitiesTranslation) {
            return copyWith(translation: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'closure':
        {
          if (child is TerminologyCapabilitiesClosure) {
            return copyWith(closure: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'title':
        return ['FhirString'];
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
      case 'copyright':
        return ['FhirMarkdown'];
      case 'kind':
        return ['FhirCode'];
      case 'software':
        return ['TerminologyCapabilitiesSoftware'];
      case 'implementation':
        return ['TerminologyCapabilitiesImplementation'];
      case 'lockedDate':
        return ['FhirBoolean'];
      case 'codeSystem':
        return ['TerminologyCapabilitiesCodeSystem'];
      case 'expansion':
        return ['TerminologyCapabilitiesExpansion'];
      case 'codeSearch':
        return ['FhirCode'];
      case 'validateCode':
        return ['TerminologyCapabilitiesValidateCode'];
      case 'translation':
        return ['TerminologyCapabilitiesTranslation'];
      case 'closure':
        return ['TerminologyCapabilitiesClosure'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TerminologyCapabilities]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TerminologyCapabilities createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'url':
        {
          return copyWith(
            url: FhirUri.empty(),
          );
        }
      case 'version':
        {
          return copyWith(
            version: FhirString.empty(),
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      case 'title':
        {
          return copyWith(
            title: FhirString.empty(),
          );
        }
      case 'status':
        {
          return copyWith(
            status: PublicationStatus.empty(),
          );
        }
      case 'experimental':
        {
          return copyWith(
            experimental: FhirBoolean.empty(),
          );
        }
      case 'date':
        {
          return copyWith(
            date: FhirDateTime.empty(),
          );
        }
      case 'publisher':
        {
          return copyWith(
            publisher: FhirString.empty(),
          );
        }
      case 'contact':
        {
          return copyWith(
            contact: <ContactDetail>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirMarkdown.empty(),
          );
        }
      case 'useContext':
        {
          return copyWith(
            useContext: <UsageContext>[],
          );
        }
      case 'jurisdiction':
        {
          return copyWith(
            jurisdiction: <CodeableConcept>[],
          );
        }
      case 'purpose':
        {
          return copyWith(
            purpose: FhirMarkdown.empty(),
          );
        }
      case 'copyright':
        {
          return copyWith(
            copyright: FhirMarkdown.empty(),
          );
        }
      case 'kind':
        {
          return copyWith(
            kind: CapabilityStatementKind.empty(),
          );
        }
      case 'software':
        {
          return copyWith(
            software: TerminologyCapabilitiesSoftware.empty(),
          );
        }
      case 'implementation':
        {
          return copyWith(
            implementation: TerminologyCapabilitiesImplementation.empty(),
          );
        }
      case 'lockedDate':
        {
          return copyWith(
            lockedDate: FhirBoolean.empty(),
          );
        }
      case 'codeSystem':
        {
          return copyWith(
            codeSystem: <TerminologyCapabilitiesCodeSystem>[],
          );
        }
      case 'expansion':
        {
          return copyWith(
            expansion: TerminologyCapabilitiesExpansion.empty(),
          );
        }
      case 'codeSearch':
        {
          return copyWith(
            codeSearch: CodeSearchSupport.empty(),
          );
        }
      case 'validateCode':
        {
          return copyWith(
            validateCode: TerminologyCapabilitiesValidateCode.empty(),
          );
        }
      case 'translation':
        {
          return copyWith(
            translation: TerminologyCapabilitiesTranslation.empty(),
          );
        }
      case 'closure':
        {
          return copyWith(
            closure: TerminologyCapabilitiesClosure.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TerminologyCapabilities clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool url = false,
    bool version = false,
    bool name = false,
    bool title = false,
    bool experimental = false,
    bool publisher = false,
    bool contact = false,
    bool description = false,
    bool useContext = false,
    bool jurisdiction = false,
    bool purpose = false,
    bool copyright = false,
    bool software = false,
    bool implementation = false,
    bool lockedDate = false,
    bool codeSystem = false,
    bool expansion = false,
    bool codeSearch = false,
    bool validateCode = false,
    bool translation = false,
    bool closure = false,
  }) {
    return TerminologyCapabilities(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      url: url ? null : this.url,
      version: version ? null : this.version,
      name: name ? null : this.name,
      title: title ? null : this.title,
      status: status,
      experimental: experimental ? null : this.experimental,
      date: date,
      publisher: publisher ? null : this.publisher,
      contact: contact ? null : this.contact,
      description: description ? null : this.description,
      useContext: useContext ? null : this.useContext,
      jurisdiction: jurisdiction ? null : this.jurisdiction,
      purpose: purpose ? null : this.purpose,
      copyright: copyright ? null : this.copyright,
      kind: kind,
      software: software ? null : this.software,
      implementation: implementation ? null : this.implementation,
      lockedDate: lockedDate ? null : this.lockedDate,
      codeSystem: codeSystem ? null : this.codeSystem,
      expansion: expansion ? null : this.expansion,
      codeSearch: codeSearch ? null : this.codeSearch,
      validateCode: validateCode ? null : this.validateCode,
      translation: translation ? null : this.translation,
      closure: closure ? null : this.closure,
    );
  }

  @override
  TerminologyCapabilities clone() => throw UnimplementedError();
  @override
  TerminologyCapabilities copyWith({
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
    FhirString? title,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    CapabilityStatementKind? kind,
    TerminologyCapabilitiesSoftware? software,
    TerminologyCapabilitiesImplementation? implementation,
    FhirBoolean? lockedDate,
    List<TerminologyCapabilitiesCodeSystem>? codeSystem,
    TerminologyCapabilitiesExpansion? expansion,
    CodeSearchSupport? codeSearch,
    TerminologyCapabilitiesValidateCode? validateCode,
    TerminologyCapabilitiesTranslation? translation,
    TerminologyCapabilitiesClosure? closure,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return TerminologyCapabilities(
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
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
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
      copyright: copyright?.copyWith(
            objectPath: '$newObjectPath.copyright',
          ) ??
          this.copyright,
      kind: kind?.copyWith(
            objectPath: '$newObjectPath.kind',
          ) ??
          this.kind,
      software: software?.copyWith(
            objectPath: '$newObjectPath.software',
          ) ??
          this.software,
      implementation: implementation?.copyWith(
            objectPath: '$newObjectPath.implementation',
          ) ??
          this.implementation,
      lockedDate: lockedDate?.copyWith(
            objectPath: '$newObjectPath.lockedDate',
          ) ??
          this.lockedDate,
      codeSystem: codeSystem
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.codeSystem',
                ),
              )
              .toList() ??
          this.codeSystem,
      expansion: expansion?.copyWith(
            objectPath: '$newObjectPath.expansion',
          ) ??
          this.expansion,
      codeSearch: codeSearch?.copyWith(
            objectPath: '$newObjectPath.codeSearch',
          ) ??
          this.codeSearch,
      validateCode: validateCode?.copyWith(
            objectPath: '$newObjectPath.validateCode',
          ) ??
          this.validateCode,
      translation: translation?.copyWith(
            objectPath: '$newObjectPath.translation',
          ) ??
          this.translation,
      closure: closure?.copyWith(
            objectPath: '$newObjectPath.closure',
          ) ??
          this.closure,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TerminologyCapabilities) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
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
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      experimental,
      o.experimental,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
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
    if (!equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      kind,
      o.kind,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      software,
      o.software,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implementation,
      o.implementation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lockedDate,
      o.lockedDate,
    )) {
      return false;
    }
    if (!listEquals<TerminologyCapabilitiesCodeSystem>(
      codeSystem,
      o.codeSystem,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expansion,
      o.expansion,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      codeSearch,
      o.codeSearch,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      validateCode,
      o.validateCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      translation,
      o.translation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      closure,
      o.closure,
    )) {
      return false;
    }
    return true;
  }
}

/// [TerminologyCapabilitiesSoftware]
/// Software that is covered by this terminology capability statement. It
/// is used when the statement describes the capabilities of a particular
/// software version, independent of an installation.
class TerminologyCapabilitiesSoftware extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesSoftware]

  const TerminologyCapabilitiesSoftware({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.version,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TerminologyCapabilities.software',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TerminologyCapabilitiesSoftware.empty() =>
      TerminologyCapabilitiesSoftware(
        name: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesSoftware.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TerminologyCapabilities.software';
    return TerminologyCapabilitiesSoftware(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      )!,
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
    );
  }

  /// Deserialize [TerminologyCapabilitiesSoftware]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesSoftware.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesSoftware.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesSoftware.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesSoftware '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesSoftware]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesSoftware.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TerminologyCapabilitiesSoftware.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesSoftware';

  /// [name]
  /// Name the software is known by.
  final FhirString name;

  /// [version]
  /// The version identifier for the software covered by this statement.
  final FhirString? version;
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'name',
      name,
    );
    addField(
      'version',
      version,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'name',
      'version',
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
      case 'name':
        fields.add(name);
      case 'version':
        if (version != null) {
          fields.add(version!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is FhirString) {
            return copyWith(version: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'name':
        return ['FhirString'];
      case 'version':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TerminologyCapabilitiesSoftware]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TerminologyCapabilitiesSoftware createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      case 'version':
        {
          return copyWith(
            version: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TerminologyCapabilitiesSoftware clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool version = false,
  }) {
    return TerminologyCapabilitiesSoftware(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      name: name,
      version: version ? null : this.version,
    );
  }

  @override
  TerminologyCapabilitiesSoftware clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesSoftware copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? version,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TerminologyCapabilitiesSoftware(
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
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TerminologyCapabilitiesSoftware) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    return true;
  }
}

/// [TerminologyCapabilitiesImplementation]
/// Identifies a specific implementation instance that is described by the
/// terminology capability statement - i.e. a particular installation,
/// rather than the capabilities of a software program.
class TerminologyCapabilitiesImplementation extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesImplementation]

  const TerminologyCapabilitiesImplementation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,
    this.url,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TerminologyCapabilities.implementation',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TerminologyCapabilitiesImplementation.empty() =>
      TerminologyCapabilitiesImplementation(
        description: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesImplementation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TerminologyCapabilities.implementation';
    return TerminologyCapabilitiesImplementation(
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      )!,
      url: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'url',
        FhirUrl.fromJson,
        '$objectPath.url',
      ),
    );
  }

  /// Deserialize [TerminologyCapabilitiesImplementation]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesImplementation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesImplementation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesImplementation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesImplementation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesImplementation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesImplementation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TerminologyCapabilitiesImplementation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesImplementation';

  /// [description]
  /// Information about the specific installation that this terminology
  /// capability statement relates to.
  final FhirString description;

  /// [url]
  /// An absolute base URL for the implementation.
  final FhirUrl? url;
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'description',
      description,
    );
    addField(
      'url',
      url,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'description',
      'url',
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
      case 'description':
        fields.add(description);
      case 'url':
        if (url != null) {
          fields.add(url!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUrl) {
            return copyWith(url: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'description':
        return ['FhirString'];
      case 'url':
        return ['FhirUrl'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TerminologyCapabilitiesImplementation]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TerminologyCapabilitiesImplementation createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'url':
        {
          return copyWith(
            url: FhirUrl.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TerminologyCapabilitiesImplementation clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool url = false,
  }) {
    return TerminologyCapabilitiesImplementation(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      description: description,
      url: url ? null : this.url,
    );
  }

  @override
  TerminologyCapabilitiesImplementation clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesImplementation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    FhirUrl? url,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TerminologyCapabilitiesImplementation(
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TerminologyCapabilitiesImplementation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    return true;
  }
}

/// [TerminologyCapabilitiesCodeSystem]
/// Identifies a code system that is supported by the server. If there is a
/// no code system URL, then this declares the general assumptions a client
/// can make about support for any CodeSystem resource.
class TerminologyCapabilitiesCodeSystem extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesCodeSystem]

  const TerminologyCapabilitiesCodeSystem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.uri,
    this.version,
    this.subsumption,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TerminologyCapabilities.codeSystem',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TerminologyCapabilitiesCodeSystem.empty() =>
      const TerminologyCapabilitiesCodeSystem();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesCodeSystem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TerminologyCapabilities.codeSystem';
    return TerminologyCapabilitiesCodeSystem(
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
      uri: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'uri',
        FhirCanonical.fromJson,
        '$objectPath.uri',
      ),
      version: (json['version'] as List<dynamic>?)
          ?.map<TerminologyCapabilitiesVersion>(
            (v) => TerminologyCapabilitiesVersion.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.version',
              },
            ),
          )
          .toList(),
      subsumption: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'subsumption',
        FhirBoolean.fromJson,
        '$objectPath.subsumption',
      ),
    );
  }

  /// Deserialize [TerminologyCapabilitiesCodeSystem]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesCodeSystem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesCodeSystem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesCodeSystem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesCodeSystem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesCodeSystem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesCodeSystem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TerminologyCapabilitiesCodeSystem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesCodeSystem';

  /// [uri]
  /// URI for the Code System.
  final FhirCanonical? uri;

  /// [version]
  /// For the code system, a list of versions that are supported by the
  /// server.
  final List<TerminologyCapabilitiesVersion>? version;

  /// [subsumption]
  /// True if subsumption is supported for this version of the code system.
  final FhirBoolean? subsumption;
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'uri',
      uri,
    );
    addField(
      'version',
      version,
    );
    addField(
      'subsumption',
      subsumption,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'uri',
      'version',
      'subsumption',
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
      case 'uri':
        if (uri != null) {
          fields.add(uri!);
        }
      case 'version':
        if (version != null) {
          fields.addAll(version!);
        }
      case 'subsumption':
        if (subsumption != null) {
          fields.add(subsumption!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'uri':
        {
          if (child is FhirCanonical) {
            return copyWith(uri: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is List<TerminologyCapabilitiesVersion>) {
            // Add all elements from passed list
            final newList = [...?version, ...child];
            return copyWith(version: newList);
          } else if (child is TerminologyCapabilitiesVersion) {
            // Add single element to existing list or create new list
            final newList = [...?version, child];
            return copyWith(version: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subsumption':
        {
          if (child is FhirBoolean) {
            return copyWith(subsumption: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'uri':
        return ['FhirCanonical'];
      case 'version':
        return ['TerminologyCapabilitiesVersion'];
      case 'subsumption':
        return ['FhirBoolean'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TerminologyCapabilitiesCodeSystem]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TerminologyCapabilitiesCodeSystem createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'uri':
        {
          return copyWith(
            uri: FhirCanonical.empty(),
          );
        }
      case 'version':
        {
          return copyWith(
            version: <TerminologyCapabilitiesVersion>[],
          );
        }
      case 'subsumption':
        {
          return copyWith(
            subsumption: FhirBoolean.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TerminologyCapabilitiesCodeSystem clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool uri = false,
    bool version = false,
    bool subsumption = false,
  }) {
    return TerminologyCapabilitiesCodeSystem(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      uri: uri ? null : this.uri,
      version: version ? null : this.version,
      subsumption: subsumption ? null : this.subsumption,
    );
  }

  @override
  TerminologyCapabilitiesCodeSystem clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesCodeSystem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? uri,
    List<TerminologyCapabilitiesVersion>? version,
    FhirBoolean? subsumption,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TerminologyCapabilitiesCodeSystem(
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
      uri: uri?.copyWith(
            objectPath: '$newObjectPath.uri',
          ) ??
          this.uri,
      version: version
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.version',
                ),
              )
              .toList() ??
          this.version,
      subsumption: subsumption?.copyWith(
            objectPath: '$newObjectPath.subsumption',
          ) ??
          this.subsumption,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TerminologyCapabilitiesCodeSystem) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      uri,
      o.uri,
    )) {
      return false;
    }
    if (!listEquals<TerminologyCapabilitiesVersion>(
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subsumption,
      o.subsumption,
    )) {
      return false;
    }
    return true;
  }
}

/// [TerminologyCapabilitiesVersion]
/// For the code system, a list of versions that are supported by the
/// server.
class TerminologyCapabilitiesVersion extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesVersion]

  const TerminologyCapabilitiesVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.isDefault,
    this.compositional,
    this.language,
    this.filter,
    this.property,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TerminologyCapabilities.codeSystem.version',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TerminologyCapabilitiesVersion.empty() =>
      const TerminologyCapabilitiesVersion();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TerminologyCapabilities.codeSystem.version';
    return TerminologyCapabilitiesVersion(
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
      code: JsonParser.parsePrimitive<FhirString>(
        json,
        'code',
        FhirString.fromJson,
        '$objectPath.code',
      ),
      isDefault: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isDefault',
        FhirBoolean.fromJson,
        '$objectPath.isDefault',
      ),
      compositional: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'compositional',
        FhirBoolean.fromJson,
        '$objectPath.compositional',
      ),
      language: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'language',
        FhirCode.fromJson,
        '$objectPath.language',
      ),
      filter: (json['filter'] as List<dynamic>?)
          ?.map<TerminologyCapabilitiesFilter>(
            (v) => TerminologyCapabilitiesFilter.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.filter',
              },
            ),
          )
          .toList(),
      property: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'property',
        FhirCode.fromJson,
        '$objectPath.property',
      ),
    );
  }

  /// Deserialize [TerminologyCapabilitiesVersion]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesVersion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesVersion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesVersion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesVersion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesVersion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesVersion.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TerminologyCapabilitiesVersion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesVersion';

  /// [code]
  /// For version-less code systems, there should be a single version with no
  /// identifier.
  final FhirString? code;

  /// [isDefault]
  /// If this is the default version for this code system.
  final FhirBoolean? isDefault;

  /// [compositional]
  /// If the compositional grammar defined by the code system is supported.
  final FhirBoolean? compositional;

  /// [language]
  /// Language Displays supported.
  final List<FhirCode>? language;

  /// [filter]
  /// Filter Properties supported.
  final List<TerminologyCapabilitiesFilter>? filter;

  /// [property]
  /// Properties supported for $lookup.
  final List<FhirCode>? property;
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'code',
      code,
    );
    addField(
      'isDefault',
      isDefault,
    );
    addField(
      'compositional',
      compositional,
    );
    addField(
      'language',
      language,
    );
    addField(
      'filter',
      filter,
    );
    addField(
      'property',
      property,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'isDefault',
      'compositional',
      'language',
      'filter',
      'property',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'isDefault':
        if (isDefault != null) {
          fields.add(isDefault!);
        }
      case 'compositional':
        if (compositional != null) {
          fields.add(compositional!);
        }
      case 'language':
        if (language != null) {
          fields.addAll(language!);
        }
      case 'filter':
        if (filter != null) {
          fields.addAll(filter!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is FhirString) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'isDefault':
        {
          if (child is FhirBoolean) {
            return copyWith(isDefault: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'compositional':
        {
          if (child is FhirBoolean) {
            return copyWith(compositional: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is List<FhirCode>) {
            // Add all elements from passed list
            final newList = [...?language, ...child];
            return copyWith(language: newList);
          } else if (child is FhirCode) {
            // Add single element to existing list or create new list
            final newList = [...?language, child];
            return copyWith(language: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'filter':
        {
          if (child is List<TerminologyCapabilitiesFilter>) {
            // Add all elements from passed list
            final newList = [...?filter, ...child];
            return copyWith(filter: newList);
          } else if (child is TerminologyCapabilitiesFilter) {
            // Add single element to existing list or create new list
            final newList = [...?filter, child];
            return copyWith(filter: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'property':
        {
          if (child is List<FhirCode>) {
            // Add all elements from passed list
            final newList = [...?property, ...child];
            return copyWith(property: newList);
          } else if (child is FhirCode) {
            // Add single element to existing list or create new list
            final newList = [...?property, child];
            return copyWith(property: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'code':
        return ['FhirString'];
      case 'isDefault':
        return ['FhirBoolean'];
      case 'compositional':
        return ['FhirBoolean'];
      case 'language':
        return ['FhirCode'];
      case 'filter':
        return ['TerminologyCapabilitiesFilter'];
      case 'property':
        return ['FhirCode'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TerminologyCapabilitiesVersion]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TerminologyCapabilitiesVersion createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'code':
        {
          return copyWith(
            code: FhirString.empty(),
          );
        }
      case 'isDefault':
        {
          return copyWith(
            isDefault: FhirBoolean.empty(),
          );
        }
      case 'compositional':
        {
          return copyWith(
            compositional: FhirBoolean.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: <FhirCode>[],
          );
        }
      case 'filter':
        {
          return copyWith(
            filter: <TerminologyCapabilitiesFilter>[],
          );
        }
      case 'property':
        {
          return copyWith(
            property: <FhirCode>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TerminologyCapabilitiesVersion clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool code = false,
    bool isDefault = false,
    bool compositional = false,
    bool language = false,
    bool filter = false,
    bool property = false,
  }) {
    return TerminologyCapabilitiesVersion(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code ? null : this.code,
      isDefault: isDefault ? null : this.isDefault,
      compositional: compositional ? null : this.compositional,
      language: language ? null : this.language,
      filter: filter ? null : this.filter,
      property: property ? null : this.property,
    );
  }

  @override
  TerminologyCapabilitiesVersion clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesVersion copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? code,
    FhirBoolean? isDefault,
    FhirBoolean? compositional,
    List<FhirCode>? language,
    List<TerminologyCapabilitiesFilter>? filter,
    List<FhirCode>? property,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TerminologyCapabilitiesVersion(
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      isDefault: isDefault?.copyWith(
            objectPath: '$newObjectPath.isDefault',
          ) ??
          this.isDefault,
      compositional: compositional?.copyWith(
            objectPath: '$newObjectPath.compositional',
          ) ??
          this.compositional,
      language: language
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.language',
                ),
              )
              .toList() ??
          this.language,
      filter: filter
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.filter',
                ),
              )
              .toList() ??
          this.filter,
      property: property
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.property',
                ),
              )
              .toList() ??
          this.property,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TerminologyCapabilitiesVersion) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      isDefault,
      o.isDefault,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      compositional,
      o.compositional,
    )) {
      return false;
    }
    if (!listEquals<FhirCode>(
      language,
      o.language,
    )) {
      return false;
    }
    if (!listEquals<TerminologyCapabilitiesFilter>(
      filter,
      o.filter,
    )) {
      return false;
    }
    if (!listEquals<FhirCode>(
      property,
      o.property,
    )) {
      return false;
    }
    return true;
  }
}

/// [TerminologyCapabilitiesFilter]
/// Filter Properties supported.
class TerminologyCapabilitiesFilter extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesFilter]

  const TerminologyCapabilitiesFilter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.op,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TerminologyCapabilities.codeSystem.version.filter',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TerminologyCapabilitiesFilter.empty() =>
      TerminologyCapabilitiesFilter(
        code: FhirCode.empty(),
        op: <FhirCode>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesFilter.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TerminologyCapabilities.codeSystem.version.filter';
    return TerminologyCapabilitiesFilter(
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
      code: JsonParser.parsePrimitive<FhirCode>(
        json,
        'code',
        FhirCode.fromJson,
        '$objectPath.code',
      )!,
      op: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'op',
        FhirCode.fromJson,
        '$objectPath.op',
      )!,
    );
  }

  /// Deserialize [TerminologyCapabilitiesFilter]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesFilter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesFilter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesFilter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesFilter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesFilter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesFilter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TerminologyCapabilitiesFilter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesFilter';

  /// [code]
  /// Code of the property supported.
  final FhirCode code;

  /// [op]
  /// Operations supported for the property.
  final List<FhirCode> op;
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'code',
      code,
    );
    addField(
      'op',
      op,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'op',
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
      case 'code':
        fields.add(code);
      case 'op':
        fields.addAll(op);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is FhirCode) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'op':
        {
          if (child is List<FhirCode>) {
            // Add all elements from passed list
            final newList = [...op, ...child];
            return copyWith(op: newList);
          } else if (child is FhirCode) {
            // Add single element to existing list or create new list
            final newList = [...op, child];
            return copyWith(op: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'code':
        return ['FhirCode'];
      case 'op':
        return ['FhirCode'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TerminologyCapabilitiesFilter]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TerminologyCapabilitiesFilter createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'code':
        {
          return copyWith(
            code: FhirCode.empty(),
          );
        }
      case 'op':
        {
          return copyWith(
            op: <FhirCode>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TerminologyCapabilitiesFilter clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return TerminologyCapabilitiesFilter(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      op: op,
    );
  }

  @override
  TerminologyCapabilitiesFilter clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesFilter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    List<FhirCode>? op,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TerminologyCapabilitiesFilter(
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      op: op
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.op',
                ),
              )
              .toList() ??
          this.op,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TerminologyCapabilitiesFilter) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<FhirCode>(
      op,
      o.op,
    )) {
      return false;
    }
    return true;
  }
}

/// [TerminologyCapabilitiesExpansion]
/// Information about the
/// [ValueSet/$expand](valueset-operation-expand.html) operation.
class TerminologyCapabilitiesExpansion extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesExpansion]

  const TerminologyCapabilitiesExpansion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.hierarchical,
    this.paging,
    this.incomplete,
    this.parameter,
    this.textFilter,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TerminologyCapabilities.expansion',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TerminologyCapabilitiesExpansion.empty() =>
      const TerminologyCapabilitiesExpansion();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesExpansion.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TerminologyCapabilities.expansion';
    return TerminologyCapabilitiesExpansion(
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
      hierarchical: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'hierarchical',
        FhirBoolean.fromJson,
        '$objectPath.hierarchical',
      ),
      paging: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'paging',
        FhirBoolean.fromJson,
        '$objectPath.paging',
      ),
      incomplete: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'incomplete',
        FhirBoolean.fromJson,
        '$objectPath.incomplete',
      ),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map<TerminologyCapabilitiesParameter>(
            (v) => TerminologyCapabilitiesParameter.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parameter',
              },
            ),
          )
          .toList(),
      textFilter: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'textFilter',
        FhirMarkdown.fromJson,
        '$objectPath.textFilter',
      ),
    );
  }

  /// Deserialize [TerminologyCapabilitiesExpansion]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesExpansion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesExpansion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesExpansion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesExpansion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesExpansion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesExpansion.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TerminologyCapabilitiesExpansion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesExpansion';

  /// [hierarchical]
  /// Whether the server can return nested value sets.
  final FhirBoolean? hierarchical;

  /// [paging]
  /// Whether the server supports paging on expansion.
  final FhirBoolean? paging;

  /// [incomplete]
  /// Allow request for incomplete expansions?
  final FhirBoolean? incomplete;

  /// [parameter]
  /// Supported expansion parameter.
  final List<TerminologyCapabilitiesParameter>? parameter;

  /// [textFilter]
  /// Documentation about text searching works.
  final FhirMarkdown? textFilter;
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'hierarchical',
      hierarchical,
    );
    addField(
      'paging',
      paging,
    );
    addField(
      'incomplete',
      incomplete,
    );
    addField(
      'parameter',
      parameter,
    );
    addField(
      'textFilter',
      textFilter,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'hierarchical',
      'paging',
      'incomplete',
      'parameter',
      'textFilter',
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
      case 'hierarchical':
        if (hierarchical != null) {
          fields.add(hierarchical!);
        }
      case 'paging':
        if (paging != null) {
          fields.add(paging!);
        }
      case 'incomplete':
        if (incomplete != null) {
          fields.add(incomplete!);
        }
      case 'parameter':
        if (parameter != null) {
          fields.addAll(parameter!);
        }
      case 'textFilter':
        if (textFilter != null) {
          fields.add(textFilter!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'hierarchical':
        {
          if (child is FhirBoolean) {
            return copyWith(hierarchical: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'paging':
        {
          if (child is FhirBoolean) {
            return copyWith(paging: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'incomplete':
        {
          if (child is FhirBoolean) {
            return copyWith(incomplete: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'parameter':
        {
          if (child is List<TerminologyCapabilitiesParameter>) {
            // Add all elements from passed list
            final newList = [...?parameter, ...child];
            return copyWith(parameter: newList);
          } else if (child is TerminologyCapabilitiesParameter) {
            // Add single element to existing list or create new list
            final newList = [...?parameter, child];
            return copyWith(parameter: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'textFilter':
        {
          if (child is FhirMarkdown) {
            return copyWith(textFilter: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'hierarchical':
        return ['FhirBoolean'];
      case 'paging':
        return ['FhirBoolean'];
      case 'incomplete':
        return ['FhirBoolean'];
      case 'parameter':
        return ['TerminologyCapabilitiesParameter'];
      case 'textFilter':
        return ['FhirMarkdown'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TerminologyCapabilitiesExpansion]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TerminologyCapabilitiesExpansion createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'hierarchical':
        {
          return copyWith(
            hierarchical: FhirBoolean.empty(),
          );
        }
      case 'paging':
        {
          return copyWith(
            paging: FhirBoolean.empty(),
          );
        }
      case 'incomplete':
        {
          return copyWith(
            incomplete: FhirBoolean.empty(),
          );
        }
      case 'parameter':
        {
          return copyWith(
            parameter: <TerminologyCapabilitiesParameter>[],
          );
        }
      case 'textFilter':
        {
          return copyWith(
            textFilter: FhirMarkdown.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TerminologyCapabilitiesExpansion clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool hierarchical = false,
    bool paging = false,
    bool incomplete = false,
    bool parameter = false,
    bool textFilter = false,
  }) {
    return TerminologyCapabilitiesExpansion(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      hierarchical: hierarchical ? null : this.hierarchical,
      paging: paging ? null : this.paging,
      incomplete: incomplete ? null : this.incomplete,
      parameter: parameter ? null : this.parameter,
      textFilter: textFilter ? null : this.textFilter,
    );
  }

  @override
  TerminologyCapabilitiesExpansion clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesExpansion copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? hierarchical,
    FhirBoolean? paging,
    FhirBoolean? incomplete,
    List<TerminologyCapabilitiesParameter>? parameter,
    FhirMarkdown? textFilter,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TerminologyCapabilitiesExpansion(
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
      hierarchical: hierarchical?.copyWith(
            objectPath: '$newObjectPath.hierarchical',
          ) ??
          this.hierarchical,
      paging: paging?.copyWith(
            objectPath: '$newObjectPath.paging',
          ) ??
          this.paging,
      incomplete: incomplete?.copyWith(
            objectPath: '$newObjectPath.incomplete',
          ) ??
          this.incomplete,
      parameter: parameter
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.parameter',
                ),
              )
              .toList() ??
          this.parameter,
      textFilter: textFilter?.copyWith(
            objectPath: '$newObjectPath.textFilter',
          ) ??
          this.textFilter,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TerminologyCapabilitiesExpansion) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      hierarchical,
      o.hierarchical,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      paging,
      o.paging,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      incomplete,
      o.incomplete,
    )) {
      return false;
    }
    if (!listEquals<TerminologyCapabilitiesParameter>(
      parameter,
      o.parameter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      textFilter,
      o.textFilter,
    )) {
      return false;
    }
    return true;
  }
}

/// [TerminologyCapabilitiesParameter]
/// Supported expansion parameter.
class TerminologyCapabilitiesParameter extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesParameter]

  const TerminologyCapabilitiesParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.documentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TerminologyCapabilities.expansion.parameter',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TerminologyCapabilitiesParameter.empty() =>
      TerminologyCapabilitiesParameter(
        name: FhirCode.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TerminologyCapabilities.expansion.parameter';
    return TerminologyCapabilitiesParameter(
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
      name: JsonParser.parsePrimitive<FhirCode>(
        json,
        'name',
        FhirCode.fromJson,
        '$objectPath.name',
      )!,
      documentation: JsonParser.parsePrimitive<FhirString>(
        json,
        'documentation',
        FhirString.fromJson,
        '$objectPath.documentation',
      ),
    );
  }

  /// Deserialize [TerminologyCapabilitiesParameter]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesParameter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesParameter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TerminologyCapabilitiesParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesParameter';

  /// [name]
  /// Expansion Parameter name.
  final FhirCode name;

  /// [documentation]
  /// Description of support for parameter.
  final FhirString? documentation;
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'name',
      name,
    );
    addField(
      'documentation',
      documentation,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'name',
      'documentation',
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
      case 'name':
        fields.add(name);
      case 'documentation':
        if (documentation != null) {
          fields.add(documentation!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirCode) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'documentation':
        {
          if (child is FhirString) {
            return copyWith(documentation: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'name':
        return ['FhirCode'];
      case 'documentation':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TerminologyCapabilitiesParameter]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TerminologyCapabilitiesParameter createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirCode.empty(),
          );
        }
      case 'documentation':
        {
          return copyWith(
            documentation: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TerminologyCapabilitiesParameter clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool documentation = false,
  }) {
    return TerminologyCapabilitiesParameter(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      name: name,
      documentation: documentation ? null : this.documentation,
    );
  }

  @override
  TerminologyCapabilitiesParameter clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? name,
    FhirString? documentation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TerminologyCapabilitiesParameter(
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
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      documentation: documentation?.copyWith(
            objectPath: '$newObjectPath.documentation',
          ) ??
          this.documentation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TerminologyCapabilitiesParameter) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    return true;
  }
}

/// [TerminologyCapabilitiesValidateCode]
/// Information about the
/// [ValueSet/$validate-code](valueset-operation-validate-code.html)
/// operation.
class TerminologyCapabilitiesValidateCode extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesValidateCode]

  const TerminologyCapabilitiesValidateCode({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.translations,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TerminologyCapabilities.validateCode',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TerminologyCapabilitiesValidateCode.empty() =>
      TerminologyCapabilitiesValidateCode(
        translations: FhirBoolean.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesValidateCode.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TerminologyCapabilities.validateCode';
    return TerminologyCapabilitiesValidateCode(
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
      translations: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'translations',
        FhirBoolean.fromJson,
        '$objectPath.translations',
      )!,
    );
  }

  /// Deserialize [TerminologyCapabilitiesValidateCode]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesValidateCode.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesValidateCode.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesValidateCode.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesValidateCode '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesValidateCode]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesValidateCode.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TerminologyCapabilitiesValidateCode.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesValidateCode';

  /// [translations]
  /// Whether translations are validated.
  final FhirBoolean translations;
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'translations',
      translations,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'translations',
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
      case 'translations':
        fields.add(translations);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'translations':
        {
          if (child is FhirBoolean) {
            return copyWith(translations: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'translations':
        return ['FhirBoolean'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TerminologyCapabilitiesValidateCode]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TerminologyCapabilitiesValidateCode createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'translations':
        {
          return copyWith(
            translations: FhirBoolean.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TerminologyCapabilitiesValidateCode clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return TerminologyCapabilitiesValidateCode(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      translations: translations,
    );
  }

  @override
  TerminologyCapabilitiesValidateCode clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesValidateCode copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? translations,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TerminologyCapabilitiesValidateCode(
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
      translations: translations?.copyWith(
            objectPath: '$newObjectPath.translations',
          ) ??
          this.translations,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TerminologyCapabilitiesValidateCode) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      translations,
      o.translations,
    )) {
      return false;
    }
    return true;
  }
}

/// [TerminologyCapabilitiesTranslation]
/// Information about the
/// [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
class TerminologyCapabilitiesTranslation extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesTranslation]

  const TerminologyCapabilitiesTranslation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.needsMap,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TerminologyCapabilities.translation',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TerminologyCapabilitiesTranslation.empty() =>
      TerminologyCapabilitiesTranslation(
        needsMap: FhirBoolean.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesTranslation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TerminologyCapabilities.translation';
    return TerminologyCapabilitiesTranslation(
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
      needsMap: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'needsMap',
        FhirBoolean.fromJson,
        '$objectPath.needsMap',
      )!,
    );
  }

  /// Deserialize [TerminologyCapabilitiesTranslation]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesTranslation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesTranslation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesTranslation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesTranslation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesTranslation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesTranslation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TerminologyCapabilitiesTranslation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesTranslation';

  /// [needsMap]
  /// Whether the client must identify the map.
  final FhirBoolean needsMap;
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'needsMap',
      needsMap,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'needsMap',
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
      case 'needsMap':
        fields.add(needsMap);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'needsMap':
        {
          if (child is FhirBoolean) {
            return copyWith(needsMap: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'needsMap':
        return ['FhirBoolean'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TerminologyCapabilitiesTranslation]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TerminologyCapabilitiesTranslation createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'needsMap':
        {
          return copyWith(
            needsMap: FhirBoolean.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TerminologyCapabilitiesTranslation clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return TerminologyCapabilitiesTranslation(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      needsMap: needsMap,
    );
  }

  @override
  TerminologyCapabilitiesTranslation clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesTranslation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? needsMap,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TerminologyCapabilitiesTranslation(
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
      needsMap: needsMap?.copyWith(
            objectPath: '$newObjectPath.needsMap',
          ) ??
          this.needsMap,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TerminologyCapabilitiesTranslation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      needsMap,
      o.needsMap,
    )) {
      return false;
    }
    return true;
  }
}

/// [TerminologyCapabilitiesClosure]
/// Whether the $closure operation is supported.
class TerminologyCapabilitiesClosure extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesClosure]

  const TerminologyCapabilitiesClosure({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.translation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'TerminologyCapabilities.closure',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TerminologyCapabilitiesClosure.empty() =>
      const TerminologyCapabilitiesClosure();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesClosure.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'TerminologyCapabilities.closure';
    return TerminologyCapabilitiesClosure(
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
      translation: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'translation',
        FhirBoolean.fromJson,
        '$objectPath.translation',
      ),
    );
  }

  /// Deserialize [TerminologyCapabilitiesClosure]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesClosure.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesClosure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesClosure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesClosure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesClosure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesClosure.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TerminologyCapabilitiesClosure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesClosure';

  /// [translation]
  /// If cross-system closure is supported.
  final FhirBoolean? translation;
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'translation',
      translation,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'translation',
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
      case 'translation':
        if (translation != null) {
          fields.add(translation!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'translation':
        {
          if (child is FhirBoolean) {
            return copyWith(translation: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'translation':
        return ['FhirBoolean'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TerminologyCapabilitiesClosure]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TerminologyCapabilitiesClosure createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'translation':
        {
          return copyWith(
            translation: FhirBoolean.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TerminologyCapabilitiesClosure clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool translation = false,
  }) {
    return TerminologyCapabilitiesClosure(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      translation: translation ? null : this.translation,
    );
  }

  @override
  TerminologyCapabilitiesClosure clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesClosure copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? translation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TerminologyCapabilitiesClosure(
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
      translation: translation?.copyWith(
            objectPath: '$newObjectPath.translation',
          ) ??
          this.translation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TerminologyCapabilitiesClosure) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      translation,
      o.translation,
    )) {
      return false;
    }
    return true;
  }
}
