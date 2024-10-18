import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ConceptMap]
/// A statement of relationships from one set of concepts to one or more
/// other concepts - either concepts in code systems, or data element/data
/// element concepts, or classes in class models.
class ConceptMap extends DomainResource {
  /// Primary constructor for [ConceptMap]

  ConceptMap({
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
    this.purpose,
    this.copyright,
    this.sourceUri,
    this.sourceCanonical,
    this.targetUri,
    this.targetCanonical,
    this.group,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.ConceptMap,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMap.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConceptMap(
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
      url: json['url'] != null
          ? FhirUri.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      version: json['version'] != null
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      title: json['title'] != null
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
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
      description: json['description'] != null
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
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
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
      sourceUri: json['sourceUri'] != null
          ? FhirUri.fromJson({
              'value': json['sourceUri'],
              '_value': json['_sourceUri'],
            })
          : null,
      sourceCanonical: json['sourceCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['sourceCanonical'],
              '_value': json['_sourceCanonical'],
            })
          : null,
      targetUri: json['targetUri'] != null
          ? FhirUri.fromJson({
              'value': json['targetUri'],
              '_value': json['_targetUri'],
            })
          : null,
      targetCanonical: json['targetCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['targetCanonical'],
              '_value': json['_targetCanonical'],
            })
          : null,
      group: json['group'] != null
          ? (json['group'] as List<dynamic>)
              .map<ConceptMapGroup>(
                (v) => ConceptMapGroup.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ConceptMap] from a [String]
  /// or [YamlMap] object
  factory ConceptMap.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ConceptMap.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ConceptMap.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ConceptMap cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ConceptMap]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMap.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMap.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMap';

  /// [url]
  /// An absolute URI that is used to identify this concept map when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this concept map is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  /// concept map is stored on different servers.
  final FhirUri? url;

  /// [identifier]
  /// A formal identifier that is used to identify this concept map when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final Identifier? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the concept map
  /// when it is referenced in a specification, model, design or instance.
  /// This is an arbitrary value managed by the concept map author and is not
  /// expected to be globally unique. For example, it might be a timestamp
  /// (e.g. yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the concept map. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the concept map.
  final FhirString? title;

  /// [status]
  /// The status of this concept map. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this concept map is authored for
  /// testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the concept map was published. The
  /// date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the concept map changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the concept
  /// map.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the concept map from a
  /// consumer's perspective.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate concept map instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the concept map is intended to be
  /// used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this concept map is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the concept map and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the concept map.
  final FhirMarkdown? copyright;

  /// [sourceUri]
  /// Identifier for the source value set that contains the concepts that are
  /// being mapped and provides context for the mappings.
  final FhirUri? sourceUri;

  /// [sourceCanonical]
  /// Identifier for the source value set that contains the concepts that are
  /// being mapped and provides context for the mappings.
  final FhirCanonical? sourceCanonical;

  /// [targetUri]
  /// The target value set provides context for the mappings. Note that the
  /// mapping is made between concepts, not between value sets, but the value
  /// set provides important context about how the concept mapping choices
  /// are made.
  final FhirUri? targetUri;

  /// [targetCanonical]
  /// The target value set provides context for the mappings. Note that the
  /// mapping is made between concepts, not between value sets, but the value
  /// set provides important context about how the concept mapping choices
  /// are made.
  final FhirCanonical? targetCanonical;

  /// [group]
  /// A group of mappings that all have the same source and target system.
  final List<ConceptMapGroup>? group;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      json['language'] = language!.toJson();
    }

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

    if (url != null) {
      final fieldJson7 = url!.toJson();
      json['url'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_url'] = fieldJson7['_value'];
      }
    }

    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }

    if (version != null) {
      final fieldJson9 = version!.toJson();
      json['version'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_version'] = fieldJson9['_value'];
      }
    }

    if (name != null) {
      final fieldJson10 = name!.toJson();
      json['name'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_name'] = fieldJson10['_value'];
      }
    }

    if (title != null) {
      final fieldJson11 = title!.toJson();
      json['title'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_title'] = fieldJson11['_value'];
      }
    }

    json['status'] = status.toJson();

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
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      final fieldJson17 = description!.toJson();
      json['description'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_description'] = fieldJson17['_value'];
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    if (purpose != null) {
      final fieldJson20 = purpose!.toJson();
      json['purpose'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_purpose'] = fieldJson20['_value'];
      }
    }

    if (copyright != null) {
      final fieldJson21 = copyright!.toJson();
      json['copyright'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_copyright'] = fieldJson21['_value'];
      }
    }

    if (sourceUri != null) {
      final fieldJson22 = sourceUri!.toJson();
      json['sourceUri'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_sourceUri'] = fieldJson22['_value'];
      }
    }

    if (sourceCanonical != null) {
      final fieldJson23 = sourceCanonical!.toJson();
      json['sourceCanonical'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_sourceCanonical'] = fieldJson23['_value'];
      }
    }

    if (targetUri != null) {
      final fieldJson24 = targetUri!.toJson();
      json['targetUri'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_targetUri'] = fieldJson24['_value'];
      }
    }

    if (targetCanonical != null) {
      final fieldJson25 = targetCanonical!.toJson();
      json['targetCanonical'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_targetCanonical'] = fieldJson25['_value'];
      }
    }

    if (group != null && group!.isNotEmpty) {
      json['group'] = group!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ConceptMap clone() => throw UnimplementedError();
  @override
  ConceptMap copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    Identifier? identifier,
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
    FhirUri? sourceUri,
    FhirCanonical? sourceCanonical,
    FhirUri? targetUri,
    FhirCanonical? targetCanonical,
    List<ConceptMapGroup>? group,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConceptMap(
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
      purpose: purpose ?? this.purpose,
      copyright: copyright ?? this.copyright,
      sourceUri: sourceUri ?? this.sourceUri,
      sourceCanonical: sourceCanonical ?? this.sourceCanonical,
      targetUri: targetUri ?? this.targetUri,
      targetCanonical: targetCanonical ?? this.targetCanonical,
      group: group ?? this.group,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ConceptMapGroup]
/// A group of mappings that all have the same source and target system.
class ConceptMapGroup extends BackboneElement {
  /// Primary constructor for [ConceptMapGroup]

  ConceptMapGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.source,
    this.sourceVersion,
    this.target,
    this.targetVersion,
    required this.element,
    this.unmapped,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConceptMapGroup(
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
      source: json['source'] != null
          ? FhirUri.fromJson({
              'value': json['source'],
              '_value': json['_source'],
            })
          : null,
      sourceVersion: json['sourceVersion'] != null
          ? FhirString.fromJson({
              'value': json['sourceVersion'],
              '_value': json['_sourceVersion'],
            })
          : null,
      target: json['target'] != null
          ? FhirUri.fromJson({
              'value': json['target'],
              '_value': json['_target'],
            })
          : null,
      targetVersion: json['targetVersion'] != null
          ? FhirString.fromJson({
              'value': json['targetVersion'],
              '_value': json['_targetVersion'],
            })
          : null,
      element: ensureNonNullList((json['element'] as List<dynamic>)
          .map<ConceptMapElement>(
            (v) => ConceptMapElement.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
      unmapped: json['unmapped'] != null
          ? ConceptMapUnmapped.fromJson(
              json['unmapped'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ConceptMapGroup] from a [String]
  /// or [YamlMap] object
  factory ConceptMapGroup.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ConceptMapGroup.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ConceptMapGroup.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ConceptMapGroup cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ConceptMapGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapGroup.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapGroup';

  /// [source]
  /// An absolute URI that identifies the source system where the concepts to
  /// be mapped are defined.
  final FhirUri? source;

  /// [sourceVersion]
  /// The specific version of the code system, as determined by the code
  /// system authority.
  final FhirString? sourceVersion;

  /// [target]
  /// An absolute URI that identifies the target system that the concepts
  /// will be mapped to.
  final FhirUri? target;

  /// [targetVersion]
  /// The specific version of the code system, as determined by the code
  /// system authority.
  final FhirString? targetVersion;

  /// [element]
  /// Mappings for an individual concept in the source to one or more
  /// concepts in the target.
  final List<ConceptMapElement> element;

  /// [unmapped]
  /// What to do when there is no mapping for the source concept. "Unmapped"
  /// does not include codes that are unmatched, and the unmapped element is
  /// ignored in a code is specified to have equivalence = unmatched.
  final ConceptMapUnmapped? unmapped;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (source != null) {
      final fieldJson2 = source!.toJson();
      json['source'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_source'] = fieldJson2['_value'];
      }
    }

    if (sourceVersion != null) {
      final fieldJson3 = sourceVersion!.toJson();
      json['sourceVersion'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_sourceVersion'] = fieldJson3['_value'];
      }
    }

    if (target != null) {
      final fieldJson4 = target!.toJson();
      json['target'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_target'] = fieldJson4['_value'];
      }
    }

    if (targetVersion != null) {
      final fieldJson5 = targetVersion!.toJson();
      json['targetVersion'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_targetVersion'] = fieldJson5['_value'];
      }
    }

    json['element'] = element.map((e) => e.toJson()).toList();

    if (unmapped != null) {
      json['unmapped'] = unmapped!.toJson();
    }

    return json;
  }

  @override
  ConceptMapGroup clone() => throw UnimplementedError();
  @override
  ConceptMapGroup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? source,
    FhirString? sourceVersion,
    FhirUri? target,
    FhirString? targetVersion,
    List<ConceptMapElement>? element,
    ConceptMapUnmapped? unmapped,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConceptMapGroup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
      sourceVersion: sourceVersion ?? this.sourceVersion,
      target: target ?? this.target,
      targetVersion: targetVersion ?? this.targetVersion,
      element: element ?? this.element,
      unmapped: unmapped ?? this.unmapped,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ConceptMapElement]
/// Mappings for an individual concept in the source to one or more
/// concepts in the target.
class ConceptMapElement extends BackboneElement {
  /// Primary constructor for [ConceptMapElement]

  ConceptMapElement({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.display,
    this.target,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapElement.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConceptMapElement(
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
      code: json['code'] != null
          ? FhirCode.fromJson({
              'value': json['code'],
              '_value': json['_code'],
            })
          : null,
      display: json['display'] != null
          ? FhirString.fromJson({
              'value': json['display'],
              '_value': json['_display'],
            })
          : null,
      target: json['target'] != null
          ? (json['target'] as List<dynamic>)
              .map<ConceptMapTarget>(
                (v) => ConceptMapTarget.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ConceptMapElement] from a [String]
  /// or [YamlMap] object
  factory ConceptMapElement.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ConceptMapElement.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ConceptMapElement.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ConceptMapElement cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ConceptMapElement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapElement.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapElement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapElement';

  /// [code]
  /// Identity (code or path) or the element/item being mapped.
  final FhirCode? code;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  final FhirString? display;

  /// [target]
  /// A concept from the target value set that this concept maps to.
  final List<ConceptMapTarget>? target;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (code != null) {
      final fieldJson2 = code!.toJson();
      json['code'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_code'] = fieldJson2['_value'];
      }
    }

    if (display != null) {
      final fieldJson3 = display!.toJson();
      json['display'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_display'] = fieldJson3['_value'];
      }
    }

    if (target != null && target!.isNotEmpty) {
      json['target'] = target!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ConceptMapElement clone() => throw UnimplementedError();
  @override
  ConceptMapElement copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? display,
    List<ConceptMapTarget>? target,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConceptMapElement(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      display: display ?? this.display,
      target: target ?? this.target,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ConceptMapTarget]
/// A concept from the target value set that this concept maps to.
class ConceptMapTarget extends BackboneElement {
  /// Primary constructor for [ConceptMapTarget]

  ConceptMapTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.display,
    required this.equivalence,
    this.comment,
    this.dependsOn,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapTarget.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConceptMapTarget(
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
      code: json['code'] != null
          ? FhirCode.fromJson({
              'value': json['code'],
              '_value': json['_code'],
            })
          : null,
      display: json['display'] != null
          ? FhirString.fromJson({
              'value': json['display'],
              '_value': json['_display'],
            })
          : null,
      equivalence: ConceptMapEquivalence.fromJson({
        'value': json['equivalence'],
        '_value': json['_equivalence'],
      }),
      comment: json['comment'] != null
          ? FhirString.fromJson({
              'value': json['comment'],
              '_value': json['_comment'],
            })
          : null,
      dependsOn: json['dependsOn'] != null
          ? (json['dependsOn'] as List<dynamic>)
              .map<ConceptMapDependsOn>(
                (v) => ConceptMapDependsOn.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ConceptMapTarget] from a [String]
  /// or [YamlMap] object
  factory ConceptMapTarget.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ConceptMapTarget.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ConceptMapTarget.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ConceptMapTarget cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ConceptMapTarget]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapTarget.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapTarget';

  /// [code]
  /// Identity (code or path) or the element/item that the map refers to.
  final FhirCode? code;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  final FhirString? display;

  /// [equivalence]
  /// The equivalence between the source and target concepts (counting for
  /// the dependencies and products). The equivalence is read from target to
  /// source (e.g. the target is 'wider' than the source).
  final ConceptMapEquivalence equivalence;

  /// [comment]
  /// A description of status/issues in mapping that conveys additional
  /// information not represented in the structured data.
  final FhirString? comment;

  /// [dependsOn]
  /// A set of additional dependencies for this mapping to hold. This mapping
  /// is only applicable if the specified element can be resolved, and it has
  /// the specified value.
  final List<ConceptMapDependsOn>? dependsOn;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (code != null) {
      final fieldJson2 = code!.toJson();
      json['code'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_code'] = fieldJson2['_value'];
      }
    }

    if (display != null) {
      final fieldJson3 = display!.toJson();
      json['display'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_display'] = fieldJson3['_value'];
      }
    }

    json['equivalence'] = equivalence.toJson();

    if (comment != null) {
      final fieldJson5 = comment!.toJson();
      json['comment'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_comment'] = fieldJson5['_value'];
      }
    }

    if (dependsOn != null && dependsOn!.isNotEmpty) {
      json['dependsOn'] = dependsOn!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ConceptMapTarget clone() => throw UnimplementedError();
  @override
  ConceptMapTarget copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? display,
    ConceptMapEquivalence? equivalence,
    FhirString? comment,
    List<ConceptMapDependsOn>? dependsOn,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConceptMapTarget(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      display: display ?? this.display,
      equivalence: equivalence ?? this.equivalence,
      comment: comment ?? this.comment,
      dependsOn: dependsOn ?? this.dependsOn,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ConceptMapDependsOn]
/// A set of additional dependencies for this mapping to hold. This mapping
/// is only applicable if the specified element can be resolved, and it has
/// the specified value.
class ConceptMapDependsOn extends BackboneElement {
  /// Primary constructor for [ConceptMapDependsOn]

  ConceptMapDependsOn({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.property,
    this.system,
    required this.value,
    this.display,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapDependsOn.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConceptMapDependsOn(
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
      property: FhirUri.fromJson({
        'value': json['property'],
        '_value': json['_property'],
      }),
      system: json['system'] != null
          ? FhirCanonical.fromJson({
              'value': json['system'],
              '_value': json['_system'],
            })
          : null,
      value: FhirString.fromJson({
        'value': json['value'],
        '_value': json['_value'],
      }),
      display: json['display'] != null
          ? FhirString.fromJson({
              'value': json['display'],
              '_value': json['_display'],
            })
          : null,
    );
  }

  /// Deserialize [ConceptMapDependsOn] from a [String]
  /// or [YamlMap] object
  factory ConceptMapDependsOn.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ConceptMapDependsOn.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ConceptMapDependsOn.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ConceptMapDependsOn cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ConceptMapDependsOn]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapDependsOn.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapDependsOn.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapDependsOn';

  /// [property]
  /// A reference to an element that holds a coded value that corresponds to
  /// a code system property. The idea is that the information model carries
  /// an element somewhere that is labeled to correspond with a code system
  /// property.
  final FhirUri property;

  /// [system]
  /// An absolute URI that identifies the code system of the dependency code
  /// (if the source/dependency is a value set that crosses code systems).
  final FhirCanonical? system;

  /// [value]
  /// Identity (code or path) or the element/item/ValueSet/text that the map
  /// depends on / refers to.
  final FhirString value;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  final FhirString? display;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = property.toJson();
    json['property'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_property'] = fieldJson2['_value'];
    }

    if (system != null) {
      final fieldJson3 = system!.toJson();
      json['system'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_system'] = fieldJson3['_value'];
      }
    }

    final fieldJson4 = value.toJson();
    json['value'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_value'] = fieldJson4['_value'];
    }

    if (display != null) {
      final fieldJson5 = display!.toJson();
      json['display'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_display'] = fieldJson5['_value'];
      }
    }

    return json;
  }

  @override
  ConceptMapDependsOn clone() => throw UnimplementedError();
  @override
  ConceptMapDependsOn copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? property,
    FhirCanonical? system,
    FhirString? value,
    FhirString? display,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConceptMapDependsOn(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      property: property ?? this.property,
      system: system ?? this.system,
      value: value ?? this.value,
      display: display ?? this.display,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ConceptMapUnmapped]
/// What to do when there is no mapping for the source concept. "Unmapped"
/// does not include codes that are unmatched, and the unmapped element is
/// ignored in a code is specified to have equivalence = unmatched.
class ConceptMapUnmapped extends BackboneElement {
  /// Primary constructor for [ConceptMapUnmapped]

  ConceptMapUnmapped({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.code,
    this.display,
    this.url,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapUnmapped.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConceptMapUnmapped(
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
      mode: ConceptMapGroupUnmappedMode.fromJson({
        'value': json['mode'],
        '_value': json['_mode'],
      }),
      code: json['code'] != null
          ? FhirCode.fromJson({
              'value': json['code'],
              '_value': json['_code'],
            })
          : null,
      display: json['display'] != null
          ? FhirString.fromJson({
              'value': json['display'],
              '_value': json['_display'],
            })
          : null,
      url: json['url'] != null
          ? FhirCanonical.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
    );
  }

  /// Deserialize [ConceptMapUnmapped] from a [String]
  /// or [YamlMap] object
  factory ConceptMapUnmapped.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ConceptMapUnmapped.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ConceptMapUnmapped.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ConceptMapUnmapped cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ConceptMapUnmapped]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapUnmapped.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapUnmapped.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapUnmapped';

  /// [mode]
  /// Defines which action to take if there is no match for the source
  /// concept in the target system designated for the group. One of 3 actions
  /// are possible: use the unmapped code (this is useful when doing a
  /// mapping between versions, and only a few codes have changed), use a
  /// fixed code (a default code), or alternatively, a reference to a
  /// different concept map can be provided (by canonical URL).
  final ConceptMapGroupUnmappedMode mode;

  /// [code]
  /// The fixed code to use when the mode = 'fixed' - all unmapped codes are
  /// mapped to a single fixed code.
  final FhirCode? code;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  final FhirString? display;

  /// [url]
  /// The canonical reference to an additional ConceptMap resource instance
  /// to use for mapping if this ConceptMap resource contains no matching
  /// mapping for the source concept.
  final FhirCanonical? url;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['mode'] = mode.toJson();

    if (code != null) {
      final fieldJson3 = code!.toJson();
      json['code'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_code'] = fieldJson3['_value'];
      }
    }

    if (display != null) {
      final fieldJson4 = display!.toJson();
      json['display'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_display'] = fieldJson4['_value'];
      }
    }

    if (url != null) {
      final fieldJson5 = url!.toJson();
      json['url'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_url'] = fieldJson5['_value'];
      }
    }

    return json;
  }

  @override
  ConceptMapUnmapped clone() => throw UnimplementedError();
  @override
  ConceptMapUnmapped copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ConceptMapGroupUnmappedMode? mode,
    FhirCode? code,
    FhirString? display,
    FhirCanonical? url,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConceptMapUnmapped(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      code: code ?? this.code,
      display: display ?? this.display,
      url: url ?? this.url,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
