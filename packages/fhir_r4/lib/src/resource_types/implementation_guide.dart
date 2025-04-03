import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ImplementationGuide]
/// A set of rules of how a particular interoperability or standards
/// problem is solved - typically through the use of FHIR resources. This
/// resource is used to gather all the parts of an implementation guide
/// into a logical whole and to publish a computable definition of all the
/// parts.
class ImplementationGuide extends CanonicalResource {
  /// Primary constructor for
  /// [ImplementationGuide]

  const ImplementationGuide({
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
    this.title,
    required super.status,
    super.experimental,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.copyright,
    required this.packageId,
    this.license,
    required this.fhirVersion,
    this.dependsOn,
    this.global,
    this.definition,
    this.manifest,
  }) : super(
          objectPath: 'ImplementationGuide',
          resourceType: R4ResourceType.ImplementationGuide,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImplementationGuide.empty() => ImplementationGuide(
        url: FhirUri.empty(),
        name: FhirString.empty(),
        status: PublicationStatus.values.first,
        packageId: FhirId.empty(),
        fhirVersion: <FHIRVersion>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuide.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImplementationGuide';
    return ImplementationGuide(
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
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
        '$objectPath.copyright',
      ),
      packageId: JsonParser.parsePrimitive<FhirId>(
        json,
        'packageId',
        FhirId.fromJson,
        '$objectPath.packageId',
      )!,
      license: JsonParser.parsePrimitive<SPDXLicense>(
        json,
        'license',
        SPDXLicense.fromJson,
        '$objectPath.license',
      ),
      fhirVersion: JsonParser.parsePrimitiveList<FHIRVersion>(
        json,
        'fhirVersion',
        FHIRVersion.fromJson,
        '$objectPath.fhirVersion',
      )!,
      dependsOn: (json['dependsOn'] as List<dynamic>?)
          ?.map<ImplementationGuideDependsOn>(
            (v) => ImplementationGuideDependsOn.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dependsOn',
              },
            ),
          )
          .toList(),
      global: (json['global'] as List<dynamic>?)
          ?.map<ImplementationGuideGlobal>(
            (v) => ImplementationGuideGlobal.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.global',
              },
            ),
          )
          .toList(),
      definition: JsonParser.parseObject<ImplementationGuideDefinition>(
        json,
        'definition',
        ImplementationGuideDefinition.fromJson,
        '$objectPath.definition',
      ),
      manifest: JsonParser.parseObject<ImplementationGuideManifest>(
        json,
        'manifest',
        ImplementationGuideManifest.fromJson,
        '$objectPath.manifest',
      ),
    );
  }

  /// Deserialize [ImplementationGuide]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuide.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImplementationGuide.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuide.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuide '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuide]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuide.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImplementationGuide.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuide';

  /// [name]
  /// A natural language name identifying the implementation guide. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [title]
  /// A short, descriptive, user-friendly title for the implementation guide.
  final FhirString? title;

  /// [copyright]
  /// A copyright statement relating to the implementation guide and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the implementation guide.
  final FhirMarkdown? copyright;

  /// [packageId]
  /// The NPM package name for this Implementation Guide, used in the NPM
  /// package distribution, which is the primary mechanism by which FHIR
  /// based tooling manages IG dependencies. This value must be globally
  /// unique, and should be assigned with care.
  final FhirId packageId;

  /// [license]
  /// The license that applies to this Implementation Guide, using an SPDX
  /// license code, or 'not-open-source'.
  final SPDXLicense? license;

  /// [fhirVersion]
  /// The version(s) of the FHIR specification that this ImplementationGuide
  /// targets - e.g. describes how to use. The value of this element is the
  /// formal version of the specification, without the revision number, e.g.
  /// [publication].[major].[minor], which is 4.3.0 for this version.
  final List<FHIRVersion> fhirVersion;

  /// [dependsOn]
  /// Another implementation guide that this implementation depends on.
  /// Typically, an implementation guide uses value sets, profiles
  /// etc.defined in other implementation guides.
  final List<ImplementationGuideDependsOn>? dependsOn;

  /// [global]
  /// A set of profiles that all resources covered by this implementation
  /// guide must conform to.
  final List<ImplementationGuideGlobal>? global;

  /// [definition]
  /// The information needed by an IG publisher tool to publish the whole
  /// implementation guide.
  final ImplementationGuideDefinition? definition;

  /// [manifest]
  /// Information about an assembled implementation guide, created by the
  /// publication tooling.
  final ImplementationGuideManifest? manifest;
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
      'copyright',
      copyright,
    );
    addField(
      'packageId',
      packageId,
    );
    addField(
      'license',
      license,
    );
    addField(
      'fhirVersion',
      fhirVersion,
    );
    addField(
      'dependsOn',
      dependsOn,
    );
    addField(
      'global',
      global,
    );
    addField(
      'definition',
      definition,
    );
    addField(
      'manifest',
      manifest,
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
      'copyright',
      'packageId',
      'license',
      'fhirVersion',
      'dependsOn',
      'global',
      'definition',
      'manifest',
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
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
        }
      case 'packageId':
        fields.add(packageId);
      case 'license':
        if (license != null) {
          fields.add(license!);
        }
      case 'fhirVersion':
        fields.addAll(fhirVersion);
      case 'dependsOn':
        if (dependsOn != null) {
          fields.addAll(dependsOn!);
        }
      case 'global':
        if (global != null) {
          fields.addAll(global!);
        }
      case 'definition':
        if (definition != null) {
          fields.add(definition!);
        }
      case 'manifest':
        if (manifest != null) {
          fields.add(manifest!);
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
            final newList = [
              ...?contained,
              child,
            ];
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
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
            final newList = [
              ...?contact,
              child,
            ];
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
            final newList = [
              ...?useContext,
              child,
            ];
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
            final newList = [
              ...?jurisdiction,
              child,
            ];
            return copyWith(jurisdiction: newList);
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
      case 'packageId':
        {
          if (child is FhirId) {
            return copyWith(packageId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'license':
        {
          if (child is SPDXLicense) {
            return copyWith(license: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fhirVersion':
        {
          if (child is List<FHIRVersion>) {
            // Add all elements from passed list
            final newList = [...fhirVersion, ...child];
            return copyWith(fhirVersion: newList);
          } else if (child is FHIRVersion) {
            // Add single element to existing list or create new list
            final newList = [
              ...fhirVersion,
              child,
            ];
            return copyWith(fhirVersion: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dependsOn':
        {
          if (child is List<ImplementationGuideDependsOn>) {
            // Add all elements from passed list
            final newList = [...?dependsOn, ...child];
            return copyWith(dependsOn: newList);
          } else if (child is ImplementationGuideDependsOn) {
            // Add single element to existing list or create new list
            final newList = [
              ...?dependsOn,
              child,
            ];
            return copyWith(dependsOn: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'global':
        {
          if (child is List<ImplementationGuideGlobal>) {
            // Add all elements from passed list
            final newList = [...?global, ...child];
            return copyWith(global: newList);
          } else if (child is ImplementationGuideGlobal) {
            // Add single element to existing list or create new list
            final newList = [
              ...?global,
              child,
            ];
            return copyWith(global: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definition':
        {
          if (child is ImplementationGuideDefinition) {
            return copyWith(definition: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'manifest':
        {
          if (child is ImplementationGuideManifest) {
            return copyWith(manifest: child);
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
      case 'copyright':
        return ['FhirMarkdown'];
      case 'packageId':
        return ['FhirId'];
      case 'license':
        return ['FhirCode'];
      case 'fhirVersion':
        return ['FhirCode'];
      case 'dependsOn':
        return ['ImplementationGuideDependsOn'];
      case 'global':
        return ['ImplementationGuideGlobal'];
      case 'definition':
        return ['ImplementationGuideDefinition'];
      case 'manifest':
        return ['ImplementationGuideManifest'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImplementationGuide]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImplementationGuide createProperty(
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
      case 'copyright':
        {
          return copyWith(
            copyright: FhirMarkdown.empty(),
          );
        }
      case 'packageId':
        {
          return copyWith(
            packageId: FhirId.empty(),
          );
        }
      case 'license':
        {
          return copyWith(
            license: SPDXLicense.empty(),
          );
        }
      case 'fhirVersion':
        {
          return copyWith(
            fhirVersion: <FHIRVersion>[],
          );
        }
      case 'dependsOn':
        {
          return copyWith(
            dependsOn: <ImplementationGuideDependsOn>[],
          );
        }
      case 'global':
        {
          return copyWith(
            global: <ImplementationGuideGlobal>[],
          );
        }
      case 'definition':
        {
          return copyWith(
            definition: ImplementationGuideDefinition.empty(),
          );
        }
      case 'manifest':
        {
          return copyWith(
            manifest: ImplementationGuideManifest.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImplementationGuide clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool version = false,
    bool title = false,
    bool experimental = false,
    bool date = false,
    bool publisher = false,
    bool contact = false,
    bool description = false,
    bool useContext = false,
    bool jurisdiction = false,
    bool copyright = false,
    bool license = false,
    bool dependsOn = false,
    bool global = false,
    bool definition = false,
    bool manifest = false,
  }) {
    return ImplementationGuide(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      url: url,
      version: version ? null : this.version,
      name: name,
      title: title ? null : this.title,
      status: status,
      experimental: experimental ? null : this.experimental,
      date: date ? null : this.date,
      publisher: publisher ? null : this.publisher,
      contact: contact ? null : this.contact,
      description: description ? null : this.description,
      useContext: useContext ? null : this.useContext,
      jurisdiction: jurisdiction ? null : this.jurisdiction,
      copyright: copyright ? null : this.copyright,
      packageId: packageId,
      license: license ? null : this.license,
      fhirVersion: fhirVersion,
      dependsOn: dependsOn ? null : this.dependsOn,
      global: global ? null : this.global,
      definition: definition ? null : this.definition,
      manifest: manifest ? null : this.manifest,
    );
  }

  @override
  ImplementationGuide clone() => throw UnimplementedError();
  @override
  ImplementationGuide copyWith({
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
    FhirMarkdown? copyright,
    FhirId? packageId,
    SPDXLicense? license,
    List<FHIRVersion>? fhirVersion,
    List<ImplementationGuideDependsOn>? dependsOn,
    List<ImplementationGuideGlobal>? global,
    ImplementationGuideDefinition? definition,
    ImplementationGuideManifest? manifest,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return ImplementationGuide(
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
      copyright: copyright?.copyWith(
            objectPath: '$newObjectPath.copyright',
          ) ??
          this.copyright,
      packageId: packageId?.copyWith(
            objectPath: '$newObjectPath.packageId',
          ) ??
          this.packageId,
      license: license?.copyWith(
            objectPath: '$newObjectPath.license',
          ) ??
          this.license,
      fhirVersion: fhirVersion
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.fhirVersion',
                ),
              )
              .toList() ??
          this.fhirVersion,
      dependsOn: dependsOn
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.dependsOn',
                ),
              )
              .toList() ??
          this.dependsOn,
      global: global
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.global',
                ),
              )
              .toList() ??
          this.global,
      definition: definition?.copyWith(
            objectPath: '$newObjectPath.definition',
          ) ??
          this.definition,
      manifest: manifest?.copyWith(
            objectPath: '$newObjectPath.manifest',
          ) ??
          this.manifest,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImplementationGuide) {
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
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      packageId,
      o.packageId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      license,
      o.license,
    )) {
      return false;
    }
    if (!listEquals<FHIRVersion>(
      fhirVersion,
      o.fhirVersion,
    )) {
      return false;
    }
    if (!listEquals<ImplementationGuideDependsOn>(
      dependsOn,
      o.dependsOn,
    )) {
      return false;
    }
    if (!listEquals<ImplementationGuideGlobal>(
      global,
      o.global,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      definition,
      o.definition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      manifest,
      o.manifest,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImplementationGuideDependsOn]
/// Another implementation guide that this implementation depends on.
/// Typically, an implementation guide uses value sets, profiles
/// etc.defined in other implementation guides.
class ImplementationGuideDependsOn extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideDependsOn]

  const ImplementationGuideDependsOn({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.uri,
    this.packageId,
    this.version,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImplementationGuide.dependsOn',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImplementationGuideDependsOn.empty() => ImplementationGuideDependsOn(
        uri: FhirCanonical.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideDependsOn.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImplementationGuide.dependsOn';
    return ImplementationGuideDependsOn(
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
      )!,
      packageId: JsonParser.parsePrimitive<FhirId>(
        json,
        'packageId',
        FhirId.fromJson,
        '$objectPath.packageId',
      ),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
    );
  }

  /// Deserialize [ImplementationGuideDependsOn]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideDependsOn.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImplementationGuideDependsOn.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideDependsOn.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideDependsOn '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideDependsOn]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideDependsOn.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImplementationGuideDependsOn.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideDependsOn';

  /// [uri]
  /// A canonical reference to the Implementation guide for the dependency.
  final FhirCanonical uri;

  /// [packageId]
  /// The NPM package name for the Implementation Guide that this IG depends
  /// on.
  final FhirId? packageId;

  /// [version]
  /// The version of the IG that is depended on, when the correct version is
  /// required to understand the IG correctly.
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
      'uri',
      uri,
    );
    addField(
      'packageId',
      packageId,
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
      'uri',
      'packageId',
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
      case 'uri':
        fields.add(uri);
      case 'packageId':
        if (packageId != null) {
          fields.add(packageId!);
        }
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
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
      case 'packageId':
        {
          if (child is FhirId) {
            return copyWith(packageId: child);
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
      case 'uri':
        return ['FhirCanonical'];
      case 'packageId':
        return ['FhirId'];
      case 'version':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImplementationGuideDependsOn]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImplementationGuideDependsOn createProperty(
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
      case 'packageId':
        {
          return copyWith(
            packageId: FhirId.empty(),
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
  ImplementationGuideDependsOn clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool packageId = false,
    bool version = false,
  }) {
    return ImplementationGuideDependsOn(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      uri: uri,
      packageId: packageId ? null : this.packageId,
      version: version ? null : this.version,
    );
  }

  @override
  ImplementationGuideDependsOn clone() => throw UnimplementedError();
  @override
  ImplementationGuideDependsOn copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? uri,
    FhirId? packageId,
    FhirString? version,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImplementationGuideDependsOn(
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
      packageId: packageId?.copyWith(
            objectPath: '$newObjectPath.packageId',
          ) ??
          this.packageId,
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImplementationGuideDependsOn) {
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
    if (!equalsDeepWithNull(
      packageId,
      o.packageId,
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

/// [ImplementationGuideGlobal]
/// A set of profiles that all resources covered by this implementation
/// guide must conform to.
class ImplementationGuideGlobal extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideGlobal]

  const ImplementationGuideGlobal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.profile,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImplementationGuide.global',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImplementationGuideGlobal.empty() => ImplementationGuideGlobal(
        type: FhirCode.empty(),
        profile: FhirCanonical.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideGlobal.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImplementationGuide.global';
    return ImplementationGuideGlobal(
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
      type: JsonParser.parsePrimitive<FhirCode>(
        json,
        'type',
        FhirCode.fromJson,
        '$objectPath.type',
      )!,
      profile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
        '$objectPath.profile',
      )!,
    );
  }

  /// Deserialize [ImplementationGuideGlobal]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideGlobal.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImplementationGuideGlobal.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideGlobal.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideGlobal '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideGlobal]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideGlobal.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImplementationGuideGlobal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideGlobal';

  /// [type]
  /// The type of resource that all instances must conform to.
  final FhirCode type;

  /// [profile]
  /// A reference to the profile that all instances must conform to.
  final FhirCanonical profile;
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
      'type',
      type,
    );
    addField(
      'profile',
      profile,
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
      'type',
      'profile',
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
      case 'type':
        fields.add(type);
      case 'profile':
        fields.add(profile);
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is FhirCode) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'profile':
        {
          if (child is FhirCanonical) {
            return copyWith(profile: child);
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
      case 'type':
        return ['FhirCode'];
      case 'profile':
        return ['FhirCanonical'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImplementationGuideGlobal]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImplementationGuideGlobal createProperty(
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
      case 'type':
        {
          return copyWith(
            type: FhirCode.empty(),
          );
        }
      case 'profile':
        {
          return copyWith(
            profile: FhirCanonical.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImplementationGuideGlobal clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return ImplementationGuideGlobal(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      profile: profile,
    );
  }

  @override
  ImplementationGuideGlobal clone() => throw UnimplementedError();
  @override
  ImplementationGuideGlobal copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    FhirCanonical? profile,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImplementationGuideGlobal(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      profile: profile?.copyWith(
            objectPath: '$newObjectPath.profile',
          ) ??
          this.profile,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImplementationGuideGlobal) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      profile,
      o.profile,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImplementationGuideDefinition]
/// The information needed by an IG publisher tool to publish the whole
/// implementation guide.
class ImplementationGuideDefinition extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideDefinition]

  const ImplementationGuideDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.grouping,
    required this.resource,
    this.page,
    this.parameter,
    this.template,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImplementationGuide.definition',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImplementationGuideDefinition.empty() =>
      const ImplementationGuideDefinition(
        resource: <ImplementationGuideResource>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImplementationGuide.definition';
    return ImplementationGuideDefinition(
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
      grouping: (json['grouping'] as List<dynamic>?)
          ?.map<ImplementationGuideGrouping>(
            (v) => ImplementationGuideGrouping.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.grouping',
              },
            ),
          )
          .toList(),
      resource: (json['resource'] as List<dynamic>)
          .map<ImplementationGuideResource>(
            (v) => ImplementationGuideResource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.resource',
              },
            ),
          )
          .toList(),
      page: JsonParser.parseObject<ImplementationGuidePage>(
        json,
        'page',
        ImplementationGuidePage.fromJson,
        '$objectPath.page',
      ),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map<ImplementationGuideParameter>(
            (v) => ImplementationGuideParameter.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parameter',
              },
            ),
          )
          .toList(),
      template: (json['template'] as List<dynamic>?)
          ?.map<ImplementationGuideTemplate>(
            (v) => ImplementationGuideTemplate.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.template',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ImplementationGuideDefinition]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImplementationGuideDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImplementationGuideDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideDefinition';

  /// [grouping]
  /// A logical group of resources. Logical groups can be used when building
  /// pages.
  final List<ImplementationGuideGrouping>? grouping;

  /// [resource]
  /// A resource that is part of the implementation guide. Conformance
  /// resources (value set, structure definition, capability statements etc.)
  /// are obvious candidates for inclusion, but any kind of resource can be
  /// included as an example resource.
  final List<ImplementationGuideResource> resource;

  /// [page]
  /// A page / section in the implementation guide. The root page is the
  /// implementation guide home page.
  final ImplementationGuidePage? page;

  /// [parameter]
  /// Defines how IG is built by tools.
  final List<ImplementationGuideParameter>? parameter;

  /// [template]
  /// A template for building resources.
  final List<ImplementationGuideTemplate>? template;
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
      'grouping',
      grouping,
    );
    addField(
      'resource',
      resource,
    );
    addField(
      'page',
      page,
    );
    addField(
      'parameter',
      parameter,
    );
    addField(
      'template',
      template,
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
      'grouping',
      'resource',
      'page',
      'parameter',
      'template',
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
      case 'grouping':
        if (grouping != null) {
          fields.addAll(grouping!);
        }
      case 'resource':
        fields.addAll(resource);
      case 'page':
        if (page != null) {
          fields.add(page!);
        }
      case 'parameter':
        if (parameter != null) {
          fields.addAll(parameter!);
        }
      case 'template':
        if (template != null) {
          fields.addAll(template!);
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'grouping':
        {
          if (child is List<ImplementationGuideGrouping>) {
            // Add all elements from passed list
            final newList = [...?grouping, ...child];
            return copyWith(grouping: newList);
          } else if (child is ImplementationGuideGrouping) {
            // Add single element to existing list or create new list
            final newList = [
              ...?grouping,
              child,
            ];
            return copyWith(grouping: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'resource':
        {
          if (child is List<ImplementationGuideResource>) {
            // Add all elements from passed list
            final newList = [...resource, ...child];
            return copyWith(resource: newList);
          } else if (child is ImplementationGuideResource) {
            // Add single element to existing list or create new list
            final newList = [
              ...resource,
              child,
            ];
            return copyWith(resource: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'page':
        {
          if (child is ImplementationGuidePage) {
            return copyWith(page: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'parameter':
        {
          if (child is List<ImplementationGuideParameter>) {
            // Add all elements from passed list
            final newList = [...?parameter, ...child];
            return copyWith(parameter: newList);
          } else if (child is ImplementationGuideParameter) {
            // Add single element to existing list or create new list
            final newList = [
              ...?parameter,
              child,
            ];
            return copyWith(parameter: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'template':
        {
          if (child is List<ImplementationGuideTemplate>) {
            // Add all elements from passed list
            final newList = [...?template, ...child];
            return copyWith(template: newList);
          } else if (child is ImplementationGuideTemplate) {
            // Add single element to existing list or create new list
            final newList = [
              ...?template,
              child,
            ];
            return copyWith(template: newList);
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
      case 'grouping':
        return ['ImplementationGuideGrouping'];
      case 'resource':
        return ['ImplementationGuideResource'];
      case 'page':
        return ['ImplementationGuidePage'];
      case 'parameter':
        return ['ImplementationGuideParameter'];
      case 'template':
        return ['ImplementationGuideTemplate'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImplementationGuideDefinition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImplementationGuideDefinition createProperty(
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
      case 'grouping':
        {
          return copyWith(
            grouping: <ImplementationGuideGrouping>[],
          );
        }
      case 'resource':
        {
          return copyWith(
            resource: <ImplementationGuideResource>[],
          );
        }
      case 'page':
        {
          return copyWith(
            page: ImplementationGuidePage.empty(),
          );
        }
      case 'parameter':
        {
          return copyWith(
            parameter: <ImplementationGuideParameter>[],
          );
        }
      case 'template':
        {
          return copyWith(
            template: <ImplementationGuideTemplate>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImplementationGuideDefinition clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool grouping = false,
    bool page = false,
    bool parameter = false,
    bool template = false,
  }) {
    return ImplementationGuideDefinition(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      grouping: grouping ? null : this.grouping,
      resource: resource,
      page: page ? null : this.page,
      parameter: parameter ? null : this.parameter,
      template: template ? null : this.template,
    );
  }

  @override
  ImplementationGuideDefinition clone() => throw UnimplementedError();
  @override
  ImplementationGuideDefinition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ImplementationGuideGrouping>? grouping,
    List<ImplementationGuideResource>? resource,
    ImplementationGuidePage? page,
    List<ImplementationGuideParameter>? parameter,
    List<ImplementationGuideTemplate>? template,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImplementationGuideDefinition(
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
      grouping: grouping
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.grouping',
                ),
              )
              .toList() ??
          this.grouping,
      resource: resource
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.resource',
                ),
              )
              .toList() ??
          this.resource,
      page: page?.copyWith(
            objectPath: '$newObjectPath.page',
          ) ??
          this.page,
      parameter: parameter
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.parameter',
                ),
              )
              .toList() ??
          this.parameter,
      template: template
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.template',
                ),
              )
              .toList() ??
          this.template,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImplementationGuideDefinition) {
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
    if (!listEquals<ImplementationGuideGrouping>(
      grouping,
      o.grouping,
    )) {
      return false;
    }
    if (!listEquals<ImplementationGuideResource>(
      resource,
      o.resource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      page,
      o.page,
    )) {
      return false;
    }
    if (!listEquals<ImplementationGuideParameter>(
      parameter,
      o.parameter,
    )) {
      return false;
    }
    if (!listEquals<ImplementationGuideTemplate>(
      template,
      o.template,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImplementationGuideGrouping]
/// A logical group of resources. Logical groups can be used when building
/// pages.
class ImplementationGuideGrouping extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideGrouping]

  const ImplementationGuideGrouping({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.description,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImplementationGuide.definition.grouping',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImplementationGuideGrouping.empty() => ImplementationGuideGrouping(
        name: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideGrouping.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImplementationGuide.definition.grouping';
    return ImplementationGuideGrouping(
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
    );
  }

  /// Deserialize [ImplementationGuideGrouping]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideGrouping.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImplementationGuideGrouping.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideGrouping.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideGrouping '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideGrouping]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideGrouping.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImplementationGuideGrouping.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideGrouping';

  /// [name]
  /// The human-readable title to display for the package of resources when
  /// rendering the implementation guide.
  final FhirString name;

  /// [description]
  /// Human readable text describing the package.
  final FhirString? description;
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
      'description',
      description,
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
      'description',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
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
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
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
      case 'description':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImplementationGuideGrouping]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImplementationGuideGrouping createProperty(
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
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImplementationGuideGrouping clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
  }) {
    return ImplementationGuideGrouping(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      name: name,
      description: description ? null : this.description,
    );
  }

  @override
  ImplementationGuideGrouping clone() => throw UnimplementedError();
  @override
  ImplementationGuideGrouping copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? description,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImplementationGuideGrouping(
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImplementationGuideGrouping) {
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
      description,
      o.description,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImplementationGuideResource]
/// A resource that is part of the implementation guide. Conformance
/// resources (value set, structure definition, capability statements etc.)
/// are obvious candidates for inclusion, but any kind of resource can be
/// included as an example resource.
class ImplementationGuideResource extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideResource]

  const ImplementationGuideResource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    this.fhirVersion,
    this.name,
    this.description,
    this.exampleX,
    this.groupingId,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImplementationGuide.definition.resource',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImplementationGuideResource.empty() => ImplementationGuideResource(
        reference: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideResource.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImplementationGuide.definition.resource';
    return ImplementationGuideResource(
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
      reference: JsonParser.parseObject<Reference>(
        json,
        'reference',
        Reference.fromJson,
        '$objectPath.reference',
      )!,
      fhirVersion: JsonParser.parsePrimitiveList<FHIRVersion>(
        json,
        'fhirVersion',
        FHIRVersion.fromJson,
        '$objectPath.fhirVersion',
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      exampleX:
          JsonParser.parsePolymorphic<ExampleXImplementationGuideResource>(
        json,
        {
          'exampleBoolean': FhirBoolean.fromJson,
          'exampleCanonical': FhirCanonical.fromJson,
        },
        objectPath,
      ),
      groupingId: JsonParser.parsePrimitive<FhirId>(
        json,
        'groupingId',
        FhirId.fromJson,
        '$objectPath.groupingId',
      ),
    );
  }

  /// Deserialize [ImplementationGuideResource]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideResource.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImplementationGuideResource.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideResource.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideResource '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideResource]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideResource.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImplementationGuideResource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideResource';

  /// [reference]
  /// Where this resource is found.
  final Reference reference;

  /// [fhirVersion]
  /// Indicates the FHIR Version(s) this artifact is intended to apply to. If
  /// no versions are specified, the resource is assumed to apply to all the
  /// versions stated in ImplementationGuide.fhirVersion.
  final List<FHIRVersion>? fhirVersion;

  /// [name]
  /// A human assigned name for the resource. All resources SHOULD have a
  /// name, but the name may be extracted from the resource (e.g.
  /// ValueSet.name).
  final FhirString? name;

  /// [description]
  /// A description of the reason that a resource has been included in the
  /// implementation guide.
  final FhirString? description;

  /// [exampleX]
  /// If true or a reference, indicates the resource is an example instance.
  /// If a reference is present, indicates that the example is an example of
  /// the specified profile.
  final ExampleXImplementationGuideResource? exampleX;

  /// Getter for [exampleBoolean] as a FhirBoolean
  FhirBoolean? get exampleBoolean => exampleX?.isAs<FhirBoolean>();

  /// Getter for [exampleCanonical] as a FhirCanonical
  FhirCanonical? get exampleCanonical => exampleX?.isAs<FhirCanonical>();

  /// [groupingId]
  /// Reference to the id of the grouping this resource appears in.
  final FhirId? groupingId;
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
      'reference',
      reference,
    );
    addField(
      'fhirVersion',
      fhirVersion,
    );
    addField(
      'name',
      name,
    );
    addField(
      'description',
      description,
    );
    if (exampleX != null) {
      final fhirType = exampleX!.fhirType;
      addField(
        'example${fhirType.capitalize()}',
        exampleX,
      );
    }

    addField(
      'groupingId',
      groupingId,
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
      'reference',
      'fhirVersion',
      'name',
      'description',
      'exampleX',
      'groupingId',
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
      case 'reference':
        fields.add(reference);
      case 'fhirVersion':
        if (fhirVersion != null) {
          fields.addAll(fhirVersion!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'example':
        fields.add(exampleX!);
      case 'exampleX':
        fields.add(exampleX!);
      case 'exampleBoolean':
        if (exampleX is FhirBoolean) {
          fields.add(exampleX!);
        }
      case 'exampleCanonical':
        if (exampleX is FhirCanonical) {
          fields.add(exampleX!);
        }
      case 'groupingId':
        if (groupingId != null) {
          fields.add(groupingId!);
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reference':
        {
          if (child is Reference) {
            return copyWith(reference: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fhirVersion':
        {
          if (child is List<FHIRVersion>) {
            // Add all elements from passed list
            final newList = [...?fhirVersion, ...child];
            return copyWith(fhirVersion: newList);
          } else if (child is FHIRVersion) {
            // Add single element to existing list or create new list
            final newList = [
              ...?fhirVersion,
              child,
            ];
            return copyWith(fhirVersion: newList);
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
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'exampleX':
        {
          if (child is ExampleXImplementationGuideResource) {
            return copyWith(exampleX: child);
          } else {
            if (child is FhirBoolean) {
              return copyWith(exampleX: child);
            }
            if (child is FhirCanonical) {
              return copyWith(exampleX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'exampleFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(exampleX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'exampleFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(exampleX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'groupingId':
        {
          if (child is FhirId) {
            return copyWith(groupingId: child);
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
      case 'reference':
        return ['Reference'];
      case 'fhirVersion':
        return ['FhirCode'];
      case 'name':
        return ['FhirString'];
      case 'description':
        return ['FhirString'];
      case 'example':
      case 'exampleX':
        return [
          'FhirBoolean',
          'FhirCanonical',
        ];
      case 'exampleBoolean':
        return ['FhirBoolean'];
      case 'exampleCanonical':
        return ['FhirCanonical'];
      case 'groupingId':
        return ['FhirId'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImplementationGuideResource]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImplementationGuideResource createProperty(
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
      case 'reference':
        {
          return copyWith(
            reference: Reference.empty(),
          );
        }
      case 'fhirVersion':
        {
          return copyWith(
            fhirVersion: <FHIRVersion>[],
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'example':
      case 'exampleX':
      case 'exampleBoolean':
        {
          return copyWith(
            exampleX: FhirBoolean.empty(),
          );
        }
      case 'exampleCanonical':
        {
          return copyWith(
            exampleX: FhirCanonical.empty(),
          );
        }
      case 'groupingId':
        {
          return copyWith(
            groupingId: FhirId.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImplementationGuideResource clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool fhirVersion = false,
    bool name = false,
    bool description = false,
    bool example = false,
    bool groupingId = false,
  }) {
    return ImplementationGuideResource(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      reference: reference,
      fhirVersion: fhirVersion ? null : this.fhirVersion,
      name: name ? null : this.name,
      description: description ? null : this.description,
      exampleX: example ? null : exampleX,
      groupingId: groupingId ? null : this.groupingId,
    );
  }

  @override
  ImplementationGuideResource clone() => throw UnimplementedError();
  @override
  ImplementationGuideResource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? reference,
    List<FHIRVersion>? fhirVersion,
    FhirString? name,
    FhirString? description,
    ExampleXImplementationGuideResource? exampleX,
    FhirId? groupingId,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImplementationGuideResource(
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
      reference: reference?.copyWith(
            objectPath: '$newObjectPath.reference',
          ) ??
          this.reference,
      fhirVersion: fhirVersion
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.fhirVersion',
                ),
              )
              .toList() ??
          this.fhirVersion,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      exampleX: exampleX?.copyWith(
            objectPath: '$newObjectPath.exampleX',
          ) as ExampleXImplementationGuideResource? ??
          this.exampleX,
      groupingId: groupingId?.copyWith(
            objectPath: '$newObjectPath.groupingId',
          ) ??
          this.groupingId,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImplementationGuideResource) {
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
      reference,
      o.reference,
    )) {
      return false;
    }
    if (!listEquals<FHIRVersion>(
      fhirVersion,
      o.fhirVersion,
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      exampleX,
      o.exampleX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      groupingId,
      o.groupingId,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImplementationGuidePage]
/// A page / section in the implementation guide. The root page is the
/// implementation guide home page.
class ImplementationGuidePage extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuidePage]

  const ImplementationGuidePage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.nameX,
    required this.title,
    required this.generation,
    this.page,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImplementationGuide.definition.page',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImplementationGuidePage.empty() => ImplementationGuidePage(
        nameX: FhirUrl.empty(),
        title: FhirString.empty(),
        generation: GuidePageGeneration.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuidePage.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImplementationGuide.definition.page';
    return ImplementationGuidePage(
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
      nameX: JsonParser.parsePolymorphic<NameXImplementationGuidePage>(
        json,
        {
          'nameUrl': FhirUrl.fromJson,
          'nameReference': Reference.fromJson,
        },
        objectPath,
      )!,
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      )!,
      generation: JsonParser.parsePrimitive<GuidePageGeneration>(
        json,
        'generation',
        GuidePageGeneration.fromJson,
        '$objectPath.generation',
      )!,
      page: (json['page'] as List<dynamic>?)
          ?.map<ImplementationGuidePage>(
            (v) => ImplementationGuidePage.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.page',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ImplementationGuidePage]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuidePage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImplementationGuidePage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuidePage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuidePage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuidePage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuidePage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImplementationGuidePage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuidePage';

  /// [nameX]
  /// The source address for the page.
  final NameXImplementationGuidePage nameX;

  /// Getter for [nameUrl] as a FhirUrl
  FhirUrl? get nameUrl => nameX.isAs<FhirUrl>();

  /// Getter for [nameReference] as a Reference
  Reference? get nameReference => nameX.isAs<Reference>();

  /// [title]
  /// A short title used to represent this page in navigational structures
  /// such as table of contents, bread crumbs, etc.
  final FhirString title;

  /// [generation]
  /// A code that indicates how the page is generated.
  final GuidePageGeneration generation;

  /// [page]
  /// Nested Pages/Sections under this page.
  final List<ImplementationGuidePage>? page;
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
    final nameXFhirType = nameX.fhirType;
    addField(
      'name${nameXFhirType.capitalize()}',
      nameX,
    );

    addField(
      'title',
      title,
    );
    addField(
      'generation',
      generation,
    );
    addField(
      'page',
      page,
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
      'nameX',
      'title',
      'generation',
      'page',
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
        fields.add(nameX);
      case 'nameX':
        fields.add(nameX);
      case 'nameUrl':
        if (nameX is FhirUrl) {
          fields.add(nameX);
        }
      case 'nameReference':
        if (nameX is Reference) {
          fields.add(nameX);
        }
      case 'title':
        fields.add(title);
      case 'generation':
        fields.add(generation);
      case 'page':
        if (page != null) {
          fields.addAll(page!);
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'nameX':
        {
          if (child is NameXImplementationGuidePage) {
            return copyWith(nameX: child);
          } else {
            if (child is FhirUrl) {
              return copyWith(nameX: child);
            }
            if (child is Reference) {
              return copyWith(nameX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'nameFhirUrl':
        {
          if (child is FhirUrl) {
            return copyWith(nameX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'nameReference':
        {
          if (child is Reference) {
            return copyWith(nameX: child);
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
      case 'generation':
        {
          if (child is GuidePageGeneration) {
            return copyWith(generation: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'page':
        {
          if (child is List<ImplementationGuidePage>) {
            // Add all elements from passed list
            final newList = [...?page, ...child];
            return copyWith(page: newList);
          } else if (child is ImplementationGuidePage) {
            // Add single element to existing list or create new list
            final newList = [
              ...?page,
              child,
            ];
            return copyWith(page: newList);
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
      case 'nameX':
        return [
          'FhirUrl',
          'Reference',
        ];
      case 'nameUrl':
        return ['FhirUrl'];
      case 'nameReference':
        return ['Reference'];
      case 'title':
        return ['FhirString'];
      case 'generation':
        return ['FhirCode'];
      case 'page':
        return ['ImplementationGuidePage'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImplementationGuidePage]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImplementationGuidePage createProperty(
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
      case 'nameX':
      case 'nameUrl':
        {
          return copyWith(
            nameX: FhirUrl.empty(),
          );
        }
      case 'nameReference':
        {
          return copyWith(
            nameX: Reference.empty(),
          );
        }
      case 'title':
        {
          return copyWith(
            title: FhirString.empty(),
          );
        }
      case 'generation':
        {
          return copyWith(
            generation: GuidePageGeneration.empty(),
          );
        }
      case 'page':
        {
          return copyWith(
            page: <ImplementationGuidePage>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImplementationGuidePage clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool page = false,
  }) {
    return ImplementationGuidePage(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      nameX: nameX,
      title: title,
      generation: generation,
      page: page ? null : this.page,
    );
  }

  @override
  ImplementationGuidePage clone() => throw UnimplementedError();
  @override
  ImplementationGuidePage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    NameXImplementationGuidePage? nameX,
    FhirString? title,
    GuidePageGeneration? generation,
    List<ImplementationGuidePage>? page,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImplementationGuidePage(
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
      nameX: nameX?.copyWith(
            objectPath: '$newObjectPath.nameX',
          ) as NameXImplementationGuidePage? ??
          this.nameX,
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      generation: generation?.copyWith(
            objectPath: '$newObjectPath.generation',
          ) ??
          this.generation,
      page: page
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.page',
                ),
              )
              .toList() ??
          this.page,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImplementationGuidePage) {
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
      nameX,
      o.nameX,
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
      generation,
      o.generation,
    )) {
      return false;
    }
    if (!listEquals<ImplementationGuidePage>(
      page,
      o.page,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImplementationGuideParameter]
/// Defines how IG is built by tools.
class ImplementationGuideParameter extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideParameter]

  const ImplementationGuideParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImplementationGuide.definition.parameter',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImplementationGuideParameter.empty() => ImplementationGuideParameter(
        code: GuideParameterCode.values.first,
        value: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImplementationGuide.definition.parameter';
    return ImplementationGuideParameter(
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
      code: JsonParser.parsePrimitive<GuideParameterCode>(
        json,
        'code',
        GuideParameterCode.fromJson,
        '$objectPath.code',
      )!,
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
        '$objectPath.value',
      )!,
    );
  }

  /// Deserialize [ImplementationGuideParameter]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideParameter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImplementationGuideParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideParameter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImplementationGuideParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideParameter';

  /// [code]
  /// apply | path-resource | path-pages | path-tx-cache |
  /// expansion-parameter | rule-broken-links | generate-xml | generate-json
  /// | generate-turtle | html-template.
  final GuideParameterCode code;

  /// [value]
  /// Value for named type.
  final FhirString value;
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
      'value',
      value,
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
      'value',
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
      case 'value':
        fields.add(value);
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is GuideParameterCode) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is FhirString) {
            return copyWith(value: child);
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
      case 'value':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImplementationGuideParameter]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImplementationGuideParameter createProperty(
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
            code: GuideParameterCode.empty(),
          );
        }
      case 'value':
        {
          return copyWith(
            value: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImplementationGuideParameter clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return ImplementationGuideParameter(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      value: value,
    );
  }

  @override
  ImplementationGuideParameter clone() => throw UnimplementedError();
  @override
  ImplementationGuideParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    GuideParameterCode? code,
    FhirString? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImplementationGuideParameter(
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
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImplementationGuideParameter) {
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
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImplementationGuideTemplate]
/// A template for building resources.
class ImplementationGuideTemplate extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideTemplate]

  const ImplementationGuideTemplate({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.source,
    this.scope,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImplementationGuide.definition.template',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImplementationGuideTemplate.empty() => ImplementationGuideTemplate(
        code: FhirCode.empty(),
        source: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideTemplate.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImplementationGuide.definition.template';
    return ImplementationGuideTemplate(
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
      source: JsonParser.parsePrimitive<FhirString>(
        json,
        'source',
        FhirString.fromJson,
        '$objectPath.source',
      )!,
      scope: JsonParser.parsePrimitive<FhirString>(
        json,
        'scope',
        FhirString.fromJson,
        '$objectPath.scope',
      ),
    );
  }

  /// Deserialize [ImplementationGuideTemplate]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideTemplate.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImplementationGuideTemplate.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideTemplate.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideTemplate '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideTemplate]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideTemplate.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImplementationGuideTemplate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideTemplate';

  /// [code]
  /// Type of template specified.
  final FhirCode code;

  /// [source]
  /// The source location for the template.
  final FhirString source;

  /// [scope]
  /// The scope in which the template applies.
  final FhirString? scope;
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
      'source',
      source,
    );
    addField(
      'scope',
      scope,
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
      'source',
      'scope',
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
      case 'source':
        fields.add(source);
      case 'scope':
        if (scope != null) {
          fields.add(scope!);
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
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
      case 'source':
        {
          if (child is FhirString) {
            return copyWith(source: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'scope':
        {
          if (child is FhirString) {
            return copyWith(scope: child);
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
      case 'source':
        return ['FhirString'];
      case 'scope':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImplementationGuideTemplate]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImplementationGuideTemplate createProperty(
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
      case 'source':
        {
          return copyWith(
            source: FhirString.empty(),
          );
        }
      case 'scope':
        {
          return copyWith(
            scope: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImplementationGuideTemplate clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool scope = false,
  }) {
    return ImplementationGuideTemplate(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      source: source,
      scope: scope ? null : this.scope,
    );
  }

  @override
  ImplementationGuideTemplate clone() => throw UnimplementedError();
  @override
  ImplementationGuideTemplate copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? source,
    FhirString? scope,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImplementationGuideTemplate(
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
      source: source?.copyWith(
            objectPath: '$newObjectPath.source',
          ) ??
          this.source,
      scope: scope?.copyWith(
            objectPath: '$newObjectPath.scope',
          ) ??
          this.scope,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImplementationGuideTemplate) {
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
      source,
      o.source,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      scope,
      o.scope,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImplementationGuideManifest]
/// Information about an assembled implementation guide, created by the
/// publication tooling.
class ImplementationGuideManifest extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideManifest]

  const ImplementationGuideManifest({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.rendering,
    required this.resource,
    this.page,
    this.image,
    this.other,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImplementationGuide.manifest',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImplementationGuideManifest.empty() => const ImplementationGuideManifest(
        resource: <ImplementationGuideResource1>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideManifest.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImplementationGuide.manifest';
    return ImplementationGuideManifest(
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
      rendering: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'rendering',
        FhirUrl.fromJson,
        '$objectPath.rendering',
      ),
      resource: (json['resource'] as List<dynamic>)
          .map<ImplementationGuideResource1>(
            (v) => ImplementationGuideResource1.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.resource',
              },
            ),
          )
          .toList(),
      page: (json['page'] as List<dynamic>?)
          ?.map<ImplementationGuidePage1>(
            (v) => ImplementationGuidePage1.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.page',
              },
            ),
          )
          .toList(),
      image: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'image',
        FhirString.fromJson,
        '$objectPath.image',
      ),
      other: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'other',
        FhirString.fromJson,
        '$objectPath.other',
      ),
    );
  }

  /// Deserialize [ImplementationGuideManifest]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideManifest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImplementationGuideManifest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideManifest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideManifest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideManifest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideManifest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImplementationGuideManifest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideManifest';

  /// [rendering]
  /// A pointer to official web page, PDF or other rendering of the
  /// implementation guide.
  final FhirUrl? rendering;

  /// [resource]
  /// A resource that is part of the implementation guide. Conformance
  /// resources (value set, structure definition, capability statements etc.)
  /// are obvious candidates for inclusion, but any kind of resource can be
  /// included as an example resource.
  final List<ImplementationGuideResource1> resource;

  /// [page]
  /// Information about a page within the IG.
  final List<ImplementationGuidePage1>? page;

  /// [image]
  /// Indicates a relative path to an image that exists within the IG.
  final List<FhirString>? image;

  /// [other]
  /// Indicates the relative path of an additional non-page, non-image file
  /// that is part of the IG - e.g. zip, jar and similar files that could be
  /// the target of a hyperlink in a derived IG.
  final List<FhirString>? other;
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
      'rendering',
      rendering,
    );
    addField(
      'resource',
      resource,
    );
    addField(
      'page',
      page,
    );
    addField(
      'image',
      image,
    );
    addField(
      'other',
      other,
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
      'rendering',
      'resource',
      'page',
      'image',
      'other',
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
      case 'rendering':
        if (rendering != null) {
          fields.add(rendering!);
        }
      case 'resource':
        fields.addAll(resource);
      case 'page':
        if (page != null) {
          fields.addAll(page!);
        }
      case 'image':
        if (image != null) {
          fields.addAll(image!);
        }
      case 'other':
        if (other != null) {
          fields.addAll(other!);
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rendering':
        {
          if (child is FhirUrl) {
            return copyWith(rendering: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'resource':
        {
          if (child is List<ImplementationGuideResource1>) {
            // Add all elements from passed list
            final newList = [...resource, ...child];
            return copyWith(resource: newList);
          } else if (child is ImplementationGuideResource1) {
            // Add single element to existing list or create new list
            final newList = [
              ...resource,
              child,
            ];
            return copyWith(resource: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'page':
        {
          if (child is List<ImplementationGuidePage1>) {
            // Add all elements from passed list
            final newList = [...?page, ...child];
            return copyWith(page: newList);
          } else if (child is ImplementationGuidePage1) {
            // Add single element to existing list or create new list
            final newList = [
              ...?page,
              child,
            ];
            return copyWith(page: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'image':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?image, ...child];
            return copyWith(image: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?image,
              child,
            ];
            return copyWith(image: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'other':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?other, ...child];
            return copyWith(other: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?other,
              child,
            ];
            return copyWith(other: newList);
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
      case 'rendering':
        return ['FhirUrl'];
      case 'resource':
        return ['ImplementationGuideResource'];
      case 'page':
        return ['ImplementationGuidePage'];
      case 'image':
        return ['FhirString'];
      case 'other':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImplementationGuideManifest]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImplementationGuideManifest createProperty(
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
      case 'rendering':
        {
          return copyWith(
            rendering: FhirUrl.empty(),
          );
        }
      case 'resource':
        {
          return copyWith(
            resource: <ImplementationGuideResource1>[],
          );
        }
      case 'page':
        {
          return copyWith(
            page: <ImplementationGuidePage1>[],
          );
        }
      case 'image':
        {
          return copyWith(
            image: <FhirString>[],
          );
        }
      case 'other':
        {
          return copyWith(
            other: <FhirString>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImplementationGuideManifest clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool rendering = false,
    bool page = false,
    bool image = false,
    bool other = false,
  }) {
    return ImplementationGuideManifest(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      rendering: rendering ? null : this.rendering,
      resource: resource,
      page: page ? null : this.page,
      image: image ? null : this.image,
      other: other ? null : this.other,
    );
  }

  @override
  ImplementationGuideManifest clone() => throw UnimplementedError();
  @override
  ImplementationGuideManifest copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUrl? rendering,
    List<ImplementationGuideResource1>? resource,
    List<ImplementationGuidePage1>? page,
    List<FhirString>? image,
    List<FhirString>? other,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImplementationGuideManifest(
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
      rendering: rendering?.copyWith(
            objectPath: '$newObjectPath.rendering',
          ) ??
          this.rendering,
      resource: resource
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.resource',
                ),
              )
              .toList() ??
          this.resource,
      page: page
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.page',
                ),
              )
              .toList() ??
          this.page,
      image: image
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.image',
                ),
              )
              .toList() ??
          this.image,
      other: other
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.other',
                ),
              )
              .toList() ??
          this.other,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImplementationGuideManifest) {
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
      rendering,
      o.rendering,
    )) {
      return false;
    }
    if (!listEquals<ImplementationGuideResource>(
      resource,
      o.resource,
    )) {
      return false;
    }
    if (!listEquals<ImplementationGuidePage>(
      page,
      o.page,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      image,
      o.image,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      other,
      o.other,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImplementationGuideResource1]
/// A resource that is part of the implementation guide. Conformance
/// resources (value set, structure definition, capability statements etc.)
/// are obvious candidates for inclusion, but any kind of resource can be
/// included as an example resource.
class ImplementationGuideResource1 extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideResource1]

  const ImplementationGuideResource1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    this.exampleX,
    this.relativePath,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImplementationGuide.manifest.resource',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImplementationGuideResource1.empty() => ImplementationGuideResource1(
        reference: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideResource1.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImplementationGuide.manifest.resource';
    return ImplementationGuideResource1(
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
      reference: JsonParser.parseObject<Reference>(
        json,
        'reference',
        Reference.fromJson,
        '$objectPath.reference',
      )!,
      exampleX:
          JsonParser.parsePolymorphic<ExampleXImplementationGuideResource1>(
        json,
        {
          'exampleBoolean': FhirBoolean.fromJson,
          'exampleCanonical': FhirCanonical.fromJson,
        },
        objectPath,
      ),
      relativePath: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'relativePath',
        FhirUrl.fromJson,
        '$objectPath.relativePath',
      ),
    );
  }

  /// Deserialize [ImplementationGuideResource1]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideResource1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImplementationGuideResource1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideResource1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideResource1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideResource1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideResource1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImplementationGuideResource1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideResource1';

  /// [reference]
  /// Where this resource is found.
  final Reference reference;

  /// [exampleX]
  /// If true or a reference, indicates the resource is an example instance.
  /// If a reference is present, indicates that the example is an example of
  /// the specified profile.
  final ExampleXImplementationGuideResource1? exampleX;

  /// Getter for [exampleBoolean] as a FhirBoolean
  FhirBoolean? get exampleBoolean => exampleX?.isAs<FhirBoolean>();

  /// Getter for [exampleCanonical] as a FhirCanonical
  FhirCanonical? get exampleCanonical => exampleX?.isAs<FhirCanonical>();

  /// [relativePath]
  /// The relative path for primary page for this resource within the IG.
  final FhirUrl? relativePath;
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
      'reference',
      reference,
    );
    if (exampleX != null) {
      final fhirType = exampleX!.fhirType;
      addField(
        'example${fhirType.capitalize()}',
        exampleX,
      );
    }

    addField(
      'relativePath',
      relativePath,
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
      'reference',
      'exampleX',
      'relativePath',
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
      case 'reference':
        fields.add(reference);
      case 'example':
        fields.add(exampleX!);
      case 'exampleX':
        fields.add(exampleX!);
      case 'exampleBoolean':
        if (exampleX is FhirBoolean) {
          fields.add(exampleX!);
        }
      case 'exampleCanonical':
        if (exampleX is FhirCanonical) {
          fields.add(exampleX!);
        }
      case 'relativePath':
        if (relativePath != null) {
          fields.add(relativePath!);
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reference':
        {
          if (child is Reference) {
            return copyWith(reference: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'exampleX':
        {
          if (child is ExampleXImplementationGuideResource1) {
            return copyWith(exampleX: child);
          } else {
            if (child is FhirBoolean) {
              return copyWith(exampleX: child);
            }
            if (child is FhirCanonical) {
              return copyWith(exampleX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'exampleFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(exampleX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'exampleFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(exampleX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'relativePath':
        {
          if (child is FhirUrl) {
            return copyWith(relativePath: child);
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
      case 'reference':
        return ['Reference'];
      case 'example':
      case 'exampleX':
        return [
          'FhirBoolean',
          'FhirCanonical',
        ];
      case 'exampleBoolean':
        return ['FhirBoolean'];
      case 'exampleCanonical':
        return ['FhirCanonical'];
      case 'relativePath':
        return ['FhirUrl'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImplementationGuideResource1]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImplementationGuideResource1 createProperty(
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
      case 'reference':
        {
          return copyWith(
            reference: Reference.empty(),
          );
        }
      case 'example':
      case 'exampleX':
      case 'exampleBoolean':
        {
          return copyWith(
            exampleX: FhirBoolean.empty(),
          );
        }
      case 'exampleCanonical':
        {
          return copyWith(
            exampleX: FhirCanonical.empty(),
          );
        }
      case 'relativePath':
        {
          return copyWith(
            relativePath: FhirUrl.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImplementationGuideResource1 clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool example = false,
    bool relativePath = false,
  }) {
    return ImplementationGuideResource1(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      reference: reference,
      exampleX: example ? null : exampleX,
      relativePath: relativePath ? null : this.relativePath,
    );
  }

  @override
  ImplementationGuideResource1 clone() => throw UnimplementedError();
  @override
  ImplementationGuideResource1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? reference,
    ExampleXImplementationGuideResource1? exampleX,
    FhirUrl? relativePath,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImplementationGuideResource1(
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
      reference: reference?.copyWith(
            objectPath: '$newObjectPath.reference',
          ) ??
          this.reference,
      exampleX: exampleX?.copyWith(
            objectPath: '$newObjectPath.exampleX',
          ) as ExampleXImplementationGuideResource1? ??
          this.exampleX,
      relativePath: relativePath?.copyWith(
            objectPath: '$newObjectPath.relativePath',
          ) ??
          this.relativePath,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImplementationGuideResource1) {
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
      reference,
      o.reference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      exampleX,
      o.exampleX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      relativePath,
      o.relativePath,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImplementationGuidePage1]
/// Information about a page within the IG.
class ImplementationGuidePage1 extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuidePage1]

  const ImplementationGuidePage1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.title,
    this.anchor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImplementationGuide.manifest.page',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImplementationGuidePage1.empty() => ImplementationGuidePage1(
        name: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuidePage1.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImplementationGuide.manifest.page';
    return ImplementationGuidePage1(
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
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      anchor: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'anchor',
        FhirString.fromJson,
        '$objectPath.anchor',
      ),
    );
  }

  /// Deserialize [ImplementationGuidePage1]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuidePage1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImplementationGuidePage1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuidePage1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuidePage1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuidePage1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuidePage1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImplementationGuidePage1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuidePage1';

  /// [name]
  /// Relative path to the page.
  final FhirString name;

  /// [title]
  /// Label for the page intended for human display.
  final FhirString? title;

  /// [anchor]
  /// The name of an anchor available on the page.
  final List<FhirString>? anchor;
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
      'title',
      title,
    );
    addField(
      'anchor',
      anchor,
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
      'title',
      'anchor',
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
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'anchor':
        if (anchor != null) {
          fields.addAll(anchor!);
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
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
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'anchor':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?anchor, ...child];
            return copyWith(anchor: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?anchor,
              child,
            ];
            return copyWith(anchor: newList);
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
      case 'title':
        return ['FhirString'];
      case 'anchor':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImplementationGuidePage1]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImplementationGuidePage1 createProperty(
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
      case 'title':
        {
          return copyWith(
            title: FhirString.empty(),
          );
        }
      case 'anchor':
        {
          return copyWith(
            anchor: <FhirString>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImplementationGuidePage1 clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool title = false,
    bool anchor = false,
  }) {
    return ImplementationGuidePage1(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      name: name,
      title: title ? null : this.title,
      anchor: anchor ? null : this.anchor,
    );
  }

  @override
  ImplementationGuidePage1 clone() => throw UnimplementedError();
  @override
  ImplementationGuidePage1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? title,
    List<FhirString>? anchor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImplementationGuidePage1(
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
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      anchor: anchor
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.anchor',
                ),
              )
              .toList() ??
          this.anchor,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImplementationGuidePage1) {
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
      title,
      o.title,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      anchor,
      o.anchor,
    )) {
      return false;
    }
    return true;
  }
}
