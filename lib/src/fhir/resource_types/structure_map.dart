import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [StructureMap]
/// A Map of relationships between 2 structures that can be used to
/// transform data.
class StructureMap extends DomainResource {
  /// Primary constructor for [StructureMap]

  StructureMap({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    required this.url,
    this.identifier,
    this.version,
    required this.name,
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
    this.structure,
    this.import_,
    required this.group,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.StructureMap,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMap.fromJson(Map<String, dynamic> json) {
    return StructureMap(
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
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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
      structure: json['structure'] != null
          ? (json['structure'] as List<dynamic>)
              .map<StructureMapStructure>(
                (v) => StructureMapStructure.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      import_: parsePrimitiveList<FhirCanonical>(
          json['import'] as List<dynamic>?, json['_import'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
      group: ensureNonNullList((json['group'] as List<dynamic>)
          .map<StructureMapGroup>(
            (v) => StructureMapGroup.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
    );
  }

  /// Deserialize [StructureMap] from a [String]
  /// or [YamlMap] object
  factory StructureMap.fromYaml(dynamic yaml) => yaml is String
      ? StructureMap.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? StructureMap.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('StructureMap cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [StructureMap]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMap.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMap.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMap';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [url]
  /// An absolute URI that is used to identify this structure map when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this structure map is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  /// structure map is stored on different servers.
  final FhirUri url;

  /// [identifier]
  /// A formal identifier that is used to identify this structure map when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the structure
  /// map when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the structure map
  /// author and is not expected to be globally unique. For example, it might
  /// be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  /// There is also no expectation that versions can be placed in a
  /// lexicographical sequence.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the structure map. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [title]
  /// A short, descriptive, user-friendly title for the structure map.
  final FhirString? title;

  /// [status]
  /// The status of this structure map. Enables tracking the life-cycle of
  /// the content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this structure map is authored for
  /// testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the structure map was published.
  /// The date must change when the business version changes and it must
  /// change if the status code changes. In addition, it should change when
  /// the substantive content of the structure map changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the structure
  /// map.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the structure map from a
  /// consumer's perspective.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate structure map instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the structure map is intended to
  /// be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this structure map is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the structure map and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the structure map.
  final FhirMarkdown? copyright;

  /// [structure]
  /// A structure definition used by this map. The structure definition may
  /// describe instances that are converted, or the instances that are
  /// produced.
  final List<StructureMapStructure>? structure;

  /// [import_]
  /// Other maps used by this map (canonical URLs).
  final List<FhirCanonical>? import_;

  /// [group]
  /// Organizes the mapping into manageable chunks for human review/ease of
  /// maintenance.
  final List<StructureMapGroup> group;
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

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson9 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (version != null) {
      final fieldJson10 = version!.toJson();
      json['version'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_version'] = fieldJson10['_value'];
      }
    }

    final fieldJson11 = name.toJson();
    json['name'] = fieldJson11['value'];
    if (fieldJson11['_value'] != null) {
      json['_name'] = fieldJson11['_value'];
    }

    if (title != null) {
      final fieldJson12 = title!.toJson();
      json['title'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_title'] = fieldJson12['_value'];
      }
    }

    final fieldJson13 = status.toJson();
    json['status'] = fieldJson13['value'];
    if (fieldJson13['_value'] != null) {
      json['_status'] = fieldJson13['_value'];
    }

    if (experimental != null) {
      final fieldJson14 = experimental!.toJson();
      json['experimental'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_experimental'] = fieldJson14['_value'];
      }
    }

    if (date != null) {
      final fieldJson15 = date!.toJson();
      json['date'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_date'] = fieldJson15['_value'];
      }
    }

    if (publisher != null) {
      final fieldJson16 = publisher!.toJson();
      json['publisher'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_publisher'] = fieldJson16['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      final fieldJson17 = contact!.map((e) => e.toJson()).toList();
      json['contact'] = fieldJson17.map((e) => e['value']).toList();
      if (fieldJson17.any((e) => e['_value'] != null)) {
        json['_contact'] = fieldJson17.map((e) => e['_value']).toList();
      }
    }

    if (description != null) {
      final fieldJson18 = description!.toJson();
      json['description'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_description'] = fieldJson18['_value'];
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      final fieldJson19 = useContext!.map((e) => e.toJson()).toList();
      json['useContext'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_useContext'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      final fieldJson20 = jurisdiction!.map((e) => e.toJson()).toList();
      json['jurisdiction'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_jurisdiction'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    if (purpose != null) {
      final fieldJson21 = purpose!.toJson();
      json['purpose'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_purpose'] = fieldJson21['_value'];
      }
    }

    if (copyright != null) {
      final fieldJson22 = copyright!.toJson();
      json['copyright'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_copyright'] = fieldJson22['_value'];
      }
    }

    if (structure != null && structure!.isNotEmpty) {
      final fieldJson23 = structure!.map((e) => e.toJson()).toList();
      json['structure'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_structure'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (import_ != null && import_!.isNotEmpty) {
      final fieldJson24 = import_!.map((e) => e.toJson()).toList();
      json['import'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_import'] = fieldJson24.map((e) => e['_value']).toList();
      }
    }

    final fieldJson25 = group.map((e) => e.toJson()).toList();
    json['group'] = fieldJson25.map((e) => e['value']).toList();
    if (fieldJson25.any((e) => e['_value'] != null)) {
      json['_group'] = fieldJson25.map((e) => e['_value']).toList();
    }

    return json;
  }

  @override
  StructureMap clone() => throw UnimplementedError();
  @override
  StructureMap copyWith({
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
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    List<StructureMapStructure>? structure,
    List<FhirCanonical>? import_,
    List<StructureMapGroup>? group,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMap(
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
      structure: structure ?? this.structure,
      import_: import_ ?? this.import_,
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

/// [StructureMapStructure]
/// A structure definition used by this map. The structure definition may
/// describe instances that are converted, or the instances that are
/// produced.
class StructureMapStructure extends BackboneElement {
  /// Primary constructor for [StructureMapStructure]

  StructureMapStructure({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.url,
    required this.mode,
    this.alias,
    this.documentation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapStructure.fromJson(Map<String, dynamic> json) {
    return StructureMapStructure(
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
      url: FhirCanonical.fromJson({
        'value': json['url'],
        '_value': json['_url'],
      }),
      mode: StructureMapModelMode.fromJson({
        'value': json['mode'],
        '_value': json['_mode'],
      }),
      alias: json['alias'] != null
          ? FhirString.fromJson({
              'value': json['alias'],
              '_value': json['_alias'],
            })
          : null,
      documentation: json['documentation'] != null
          ? FhirString.fromJson({
              'value': json['documentation'],
              '_value': json['_documentation'],
            })
          : null,
    );
  }

  /// Deserialize [StructureMapStructure] from a [String]
  /// or [YamlMap] object
  factory StructureMapStructure.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapStructure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? StructureMapStructure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'StructureMapStructure cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [StructureMapStructure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapStructure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapStructure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapStructure';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [url]
  /// The canonical reference to the structure.
  final FhirCanonical url;

  /// [mode]
  /// How the referenced structure is used in this mapping.
  final StructureMapModelMode mode;

  /// [alias]
  /// The name used for this type in the map.
  final FhirString? alias;

  /// [documentation]
  /// Documentation that describes how the structure is used in the mapping.
  final FhirString? documentation;
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

    final fieldJson3 = url.toJson();
    json['url'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_url'] = fieldJson3['_value'];
    }

    final fieldJson4 = mode.toJson();
    json['mode'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_mode'] = fieldJson4['_value'];
    }

    if (alias != null) {
      final fieldJson5 = alias!.toJson();
      json['alias'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_alias'] = fieldJson5['_value'];
      }
    }

    if (documentation != null) {
      final fieldJson6 = documentation!.toJson();
      json['documentation'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_documentation'] = fieldJson6['_value'];
      }
    }

    return json;
  }

  @override
  StructureMapStructure clone() => throw UnimplementedError();
  @override
  StructureMapStructure copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? url,
    StructureMapModelMode? mode,
    FhirString? alias,
    FhirString? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapStructure(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      mode: mode ?? this.mode,
      alias: alias ?? this.alias,
      documentation: documentation ?? this.documentation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureMapGroup]
/// Organizes the mapping into manageable chunks for human review/ease of
/// maintenance.
class StructureMapGroup extends BackboneElement {
  /// Primary constructor for [StructureMapGroup]

  StructureMapGroup({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.name,
    this.extends_,
    required this.typeMode,
    this.documentation,
    required this.input,
    required this.rule,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapGroup.fromJson(Map<String, dynamic> json) {
    return StructureMapGroup(
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
      name: FhirId.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      extends_: json['extends'] != null
          ? FhirId.fromJson({
              'value': json['extends'],
              '_value': json['_extends'],
            })
          : null,
      typeMode: StructureMapGroupTypeMode.fromJson({
        'value': json['typeMode'],
        '_value': json['_typeMode'],
      }),
      documentation: json['documentation'] != null
          ? FhirString.fromJson({
              'value': json['documentation'],
              '_value': json['_documentation'],
            })
          : null,
      input: ensureNonNullList((json['input'] as List<dynamic>)
          .map<StructureMapInput>(
            (v) => StructureMapInput.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
      rule: ensureNonNullList((json['rule'] as List<dynamic>)
          .map<StructureMapRule>(
            (v) => StructureMapRule.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
    );
  }

  /// Deserialize [StructureMapGroup] from a [String]
  /// or [YamlMap] object
  factory StructureMapGroup.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? StructureMapGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('StructureMapGroup cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [StructureMapGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapGroup';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [name]
  /// A unique name for the group for the convenience of human readers.
  final FhirId name;

  /// [extends_]
  /// Another group that this group adds rules to.
  final FhirId? extends_;

  /// [typeMode]
  /// If this is the default rule set to apply for the source type or this
  /// combination of types.
  final StructureMapGroupTypeMode typeMode;

  /// [documentation]
  /// Additional supporting documentation that explains the purpose of the
  /// group and the types of mappings within it.
  final FhirString? documentation;

  /// [input]
  /// A name assigned to an instance of data. The instance must be provided
  /// when the mapping is invoked.
  final List<StructureMapInput> input;

  /// [rule]
  /// Transform Rule from source to target.
  final List<StructureMapRule> rule;
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

    final fieldJson3 = name.toJson();
    json['name'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_name'] = fieldJson3['_value'];
    }

    if (extends_ != null) {
      final fieldJson4 = extends_!.toJson();
      json['extends'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_extends'] = fieldJson4['_value'];
      }
    }

    final fieldJson5 = typeMode.toJson();
    json['typeMode'] = fieldJson5['value'];
    if (fieldJson5['_value'] != null) {
      json['_typeMode'] = fieldJson5['_value'];
    }

    if (documentation != null) {
      final fieldJson6 = documentation!.toJson();
      json['documentation'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_documentation'] = fieldJson6['_value'];
      }
    }

    final fieldJson7 = input.map((e) => e.toJson()).toList();
    json['input'] = fieldJson7.map((e) => e['value']).toList();
    if (fieldJson7.any((e) => e['_value'] != null)) {
      json['_input'] = fieldJson7.map((e) => e['_value']).toList();
    }

    final fieldJson8 = rule.map((e) => e.toJson()).toList();
    json['rule'] = fieldJson8.map((e) => e['value']).toList();
    if (fieldJson8.any((e) => e['_value'] != null)) {
      json['_rule'] = fieldJson8.map((e) => e['_value']).toList();
    }

    return json;
  }

  @override
  StructureMapGroup clone() => throw UnimplementedError();
  @override
  StructureMapGroup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    FhirId? extends_,
    StructureMapGroupTypeMode? typeMode,
    FhirString? documentation,
    List<StructureMapInput>? input,
    List<StructureMapRule>? rule,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapGroup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      extends_: extends_ ?? this.extends_,
      typeMode: typeMode ?? this.typeMode,
      documentation: documentation ?? this.documentation,
      input: input ?? this.input,
      rule: rule ?? this.rule,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureMapInput]
/// A name assigned to an instance of data. The instance must be provided
/// when the mapping is invoked.
class StructureMapInput extends BackboneElement {
  /// Primary constructor for [StructureMapInput]

  StructureMapInput({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.name,
    this.type,
    required this.mode,
    this.documentation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapInput.fromJson(Map<String, dynamic> json) {
    return StructureMapInput(
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
      name: FhirId.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      type: json['type'] != null
          ? FhirString.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
      mode: StructureMapInputMode.fromJson({
        'value': json['mode'],
        '_value': json['_mode'],
      }),
      documentation: json['documentation'] != null
          ? FhirString.fromJson({
              'value': json['documentation'],
              '_value': json['_documentation'],
            })
          : null,
    );
  }

  /// Deserialize [StructureMapInput] from a [String]
  /// or [YamlMap] object
  factory StructureMapInput.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapInput.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? StructureMapInput.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('StructureMapInput cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [StructureMapInput]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapInput.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapInput.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapInput';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [name]
  /// Name for this instance of data.
  final FhirId name;

  /// [type]
  /// Type for this instance of data.
  final FhirString? type;

  /// [mode]
  /// Mode for this instance of data.
  final StructureMapInputMode mode;

  /// [documentation]
  /// Documentation for this instance of data.
  final FhirString? documentation;
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

    final fieldJson3 = name.toJson();
    json['name'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_name'] = fieldJson3['_value'];
    }

    if (type != null) {
      final fieldJson4 = type!.toJson();
      json['type'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_type'] = fieldJson4['_value'];
      }
    }

    final fieldJson5 = mode.toJson();
    json['mode'] = fieldJson5['value'];
    if (fieldJson5['_value'] != null) {
      json['_mode'] = fieldJson5['_value'];
    }

    if (documentation != null) {
      final fieldJson6 = documentation!.toJson();
      json['documentation'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_documentation'] = fieldJson6['_value'];
      }
    }

    return json;
  }

  @override
  StructureMapInput clone() => throw UnimplementedError();
  @override
  StructureMapInput copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    FhirString? type,
    StructureMapInputMode? mode,
    FhirString? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapInput(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
      mode: mode ?? this.mode,
      documentation: documentation ?? this.documentation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureMapRule]
/// Transform Rule from source to target.
class StructureMapRule extends BackboneElement {
  /// Primary constructor for [StructureMapRule]

  StructureMapRule({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.name,
    required this.source,
    this.target,
    this.dependent,
    this.documentation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapRule.fromJson(Map<String, dynamic> json) {
    return StructureMapRule(
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
      name: FhirId.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      source: ensureNonNullList((json['source'] as List<dynamic>)
          .map<StructureMapSource>(
            (v) => StructureMapSource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
      target: json['target'] != null
          ? (json['target'] as List<dynamic>)
              .map<StructureMapTarget>(
                (v) => StructureMapTarget.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      dependent: json['dependent'] != null
          ? (json['dependent'] as List<dynamic>)
              .map<StructureMapDependent>(
                (v) => StructureMapDependent.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      documentation: json['documentation'] != null
          ? FhirString.fromJson({
              'value': json['documentation'],
              '_value': json['_documentation'],
            })
          : null,
    );
  }

  /// Deserialize [StructureMapRule] from a [String]
  /// or [YamlMap] object
  factory StructureMapRule.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapRule.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? StructureMapRule.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('StructureMapRule cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [StructureMapRule]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapRule.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapRule.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapRule';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [name]
  /// Name of the rule for internal references.
  final FhirId name;

  /// [source]
  /// Source inputs to the mapping.
  final List<StructureMapSource> source;

  /// [target]
  /// Content to create because of this mapping rule.
  final List<StructureMapTarget>? target;

  /// [dependent]
  /// Which other rules to apply in the context of this rule.
  final List<StructureMapDependent>? dependent;

  /// [documentation]
  /// Documentation for this instance of data.
  final FhirString? documentation;
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

    final fieldJson3 = name.toJson();
    json['name'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_name'] = fieldJson3['_value'];
    }

    final fieldJson4 = source.map((e) => e.toJson()).toList();
    json['source'] = fieldJson4.map((e) => e['value']).toList();
    if (fieldJson4.any((e) => e['_value'] != null)) {
      json['_source'] = fieldJson4.map((e) => e['_value']).toList();
    }

    if (target != null && target!.isNotEmpty) {
      final fieldJson5 = target!.map((e) => e.toJson()).toList();
      json['target'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_target'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (dependent != null && dependent!.isNotEmpty) {
      final fieldJson6 = dependent!.map((e) => e.toJson()).toList();
      json['dependent'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_dependent'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (documentation != null) {
      final fieldJson7 = documentation!.toJson();
      json['documentation'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_documentation'] = fieldJson7['_value'];
      }
    }

    return json;
  }

  @override
  StructureMapRule clone() => throw UnimplementedError();
  @override
  StructureMapRule copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    List<StructureMapSource>? source,
    List<StructureMapTarget>? target,
    List<StructureMapDependent>? dependent,
    FhirString? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapRule(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      source: source ?? this.source,
      target: target ?? this.target,
      dependent: dependent ?? this.dependent,
      documentation: documentation ?? this.documentation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureMapSource]
/// Source inputs to the mapping.
class StructureMapSource extends BackboneElement {
  /// Primary constructor for [StructureMapSource]

  StructureMapSource({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.context,
    this.min,
    this.max,
    this.type,
    this.defaultValueBase64Binary,
    this.defaultValueBoolean,
    this.defaultValueCanonical,
    this.defaultValueCode,
    this.defaultValueDate,
    this.defaultValueDateTime,
    this.defaultValueDecimal,
    this.defaultValueId,
    this.defaultValueInstant,
    this.defaultValueInteger,
    this.defaultValueMarkdown,
    this.defaultValueOid,
    this.defaultValuePositiveInt,
    this.defaultValueString,
    this.defaultValueTime,
    this.defaultValueUnsignedInt,
    this.defaultValueUri,
    this.defaultValueUrl,
    this.defaultValueUuid,
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
    this.listMode,
    this.variable,
    this.condition,
    this.check,
    this.logMessage,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapSource.fromJson(Map<String, dynamic> json) {
    return StructureMapSource(
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
      context: FhirId.fromJson({
        'value': json['context'],
        '_value': json['_context'],
      }),
      min: json['min'] != null
          ? FhirInteger.fromJson({
              'value': json['min'],
              '_value': json['_min'],
            })
          : null,
      max: json['max'] != null
          ? FhirString.fromJson({
              'value': json['max'],
              '_value': json['_max'],
            })
          : null,
      type: json['type'] != null
          ? FhirString.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
      defaultValueBase64Binary: json['defaultValueBase64Binary'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['defaultValueBase64Binary'],
              '_value': json['_defaultValueBase64Binary'],
            })
          : null,
      defaultValueBoolean: json['defaultValueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['defaultValueBoolean'],
              '_value': json['_defaultValueBoolean'],
            })
          : null,
      defaultValueCanonical: json['defaultValueCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['defaultValueCanonical'],
              '_value': json['_defaultValueCanonical'],
            })
          : null,
      defaultValueCode: json['defaultValueCode'] != null
          ? FhirCode.fromJson({
              'value': json['defaultValueCode'],
              '_value': json['_defaultValueCode'],
            })
          : null,
      defaultValueDate: json['defaultValueDate'] != null
          ? FhirDate.fromJson({
              'value': json['defaultValueDate'],
              '_value': json['_defaultValueDate'],
            })
          : null,
      defaultValueDateTime: json['defaultValueDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['defaultValueDateTime'],
              '_value': json['_defaultValueDateTime'],
            })
          : null,
      defaultValueDecimal: json['defaultValueDecimal'] != null
          ? FhirDecimal.fromJson({
              'value': json['defaultValueDecimal'],
              '_value': json['_defaultValueDecimal'],
            })
          : null,
      defaultValueId: json['defaultValueId'] != null
          ? FhirId.fromJson({
              'value': json['defaultValueId'],
              '_value': json['_defaultValueId'],
            })
          : null,
      defaultValueInstant: json['defaultValueInstant'] != null
          ? FhirInstant.fromJson({
              'value': json['defaultValueInstant'],
              '_value': json['_defaultValueInstant'],
            })
          : null,
      defaultValueInteger: json['defaultValueInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['defaultValueInteger'],
              '_value': json['_defaultValueInteger'],
            })
          : null,
      defaultValueMarkdown: json['defaultValueMarkdown'] != null
          ? FhirMarkdown.fromJson({
              'value': json['defaultValueMarkdown'],
              '_value': json['_defaultValueMarkdown'],
            })
          : null,
      defaultValueOid: json['defaultValueOid'] != null
          ? FhirOid.fromJson({
              'value': json['defaultValueOid'],
              '_value': json['_defaultValueOid'],
            })
          : null,
      defaultValuePositiveInt: json['defaultValuePositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['defaultValuePositiveInt'],
              '_value': json['_defaultValuePositiveInt'],
            })
          : null,
      defaultValueString: json['defaultValueString'] != null
          ? FhirString.fromJson({
              'value': json['defaultValueString'],
              '_value': json['_defaultValueString'],
            })
          : null,
      defaultValueTime: json['defaultValueTime'] != null
          ? FhirTime.fromJson({
              'value': json['defaultValueTime'],
              '_value': json['_defaultValueTime'],
            })
          : null,
      defaultValueUnsignedInt: json['defaultValueUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson({
              'value': json['defaultValueUnsignedInt'],
              '_value': json['_defaultValueUnsignedInt'],
            })
          : null,
      defaultValueUri: json['defaultValueUri'] != null
          ? FhirUri.fromJson({
              'value': json['defaultValueUri'],
              '_value': json['_defaultValueUri'],
            })
          : null,
      defaultValueUrl: json['defaultValueUrl'] != null
          ? FhirUrl.fromJson({
              'value': json['defaultValueUrl'],
              '_value': json['_defaultValueUrl'],
            })
          : null,
      defaultValueUuid: json['defaultValueUuid'] != null
          ? FhirUuid.fromJson({
              'value': json['defaultValueUuid'],
              '_value': json['_defaultValueUuid'],
            })
          : null,
      defaultValueAddress: json['defaultValueAddress'] != null
          ? Address.fromJson(
              json['defaultValueAddress'] as Map<String, dynamic>,
            )
          : null,
      defaultValueAge: json['defaultValueAge'] != null
          ? Age.fromJson(
              json['defaultValueAge'] as Map<String, dynamic>,
            )
          : null,
      defaultValueAnnotation: json['defaultValueAnnotation'] != null
          ? Annotation.fromJson(
              json['defaultValueAnnotation'] as Map<String, dynamic>,
            )
          : null,
      defaultValueAttachment: json['defaultValueAttachment'] != null
          ? Attachment.fromJson(
              json['defaultValueAttachment'] as Map<String, dynamic>,
            )
          : null,
      defaultValueCodeableConcept: json['defaultValueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['defaultValueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      defaultValueCoding: json['defaultValueCoding'] != null
          ? Coding.fromJson(
              json['defaultValueCoding'] as Map<String, dynamic>,
            )
          : null,
      defaultValueContactPoint: json['defaultValueContactPoint'] != null
          ? ContactPoint.fromJson(
              json['defaultValueContactPoint'] as Map<String, dynamic>,
            )
          : null,
      defaultValueCount: json['defaultValueCount'] != null
          ? Count.fromJson(
              json['defaultValueCount'] as Map<String, dynamic>,
            )
          : null,
      defaultValueDistance: json['defaultValueDistance'] != null
          ? Distance.fromJson(
              json['defaultValueDistance'] as Map<String, dynamic>,
            )
          : null,
      defaultValueDuration: json['defaultValueDuration'] != null
          ? FhirDuration.fromJson(
              json['defaultValueDuration'] as Map<String, dynamic>,
            )
          : null,
      defaultValueHumanName: json['defaultValueHumanName'] != null
          ? HumanName.fromJson(
              json['defaultValueHumanName'] as Map<String, dynamic>,
            )
          : null,
      defaultValueIdentifier: json['defaultValueIdentifier'] != null
          ? Identifier.fromJson(
              json['defaultValueIdentifier'] as Map<String, dynamic>,
            )
          : null,
      defaultValueMoney: json['defaultValueMoney'] != null
          ? Money.fromJson(
              json['defaultValueMoney'] as Map<String, dynamic>,
            )
          : null,
      defaultValuePeriod: json['defaultValuePeriod'] != null
          ? Period.fromJson(
              json['defaultValuePeriod'] as Map<String, dynamic>,
            )
          : null,
      defaultValueQuantity: json['defaultValueQuantity'] != null
          ? Quantity.fromJson(
              json['defaultValueQuantity'] as Map<String, dynamic>,
            )
          : null,
      defaultValueRange: json['defaultValueRange'] != null
          ? Range.fromJson(
              json['defaultValueRange'] as Map<String, dynamic>,
            )
          : null,
      defaultValueRatio: json['defaultValueRatio'] != null
          ? Ratio.fromJson(
              json['defaultValueRatio'] as Map<String, dynamic>,
            )
          : null,
      defaultValueReference: json['defaultValueReference'] != null
          ? Reference.fromJson(
              json['defaultValueReference'] as Map<String, dynamic>,
            )
          : null,
      defaultValueSampledData: json['defaultValueSampledData'] != null
          ? SampledData.fromJson(
              json['defaultValueSampledData'] as Map<String, dynamic>,
            )
          : null,
      defaultValueSignature: json['defaultValueSignature'] != null
          ? Signature.fromJson(
              json['defaultValueSignature'] as Map<String, dynamic>,
            )
          : null,
      defaultValueTiming: json['defaultValueTiming'] != null
          ? Timing.fromJson(
              json['defaultValueTiming'] as Map<String, dynamic>,
            )
          : null,
      defaultValueContactDetail: json['defaultValueContactDetail'] != null
          ? ContactDetail.fromJson(
              json['defaultValueContactDetail'] as Map<String, dynamic>,
            )
          : null,
      defaultValueContributor: json['defaultValueContributor'] != null
          ? Contributor.fromJson(
              json['defaultValueContributor'] as Map<String, dynamic>,
            )
          : null,
      defaultValueDataRequirement: json['defaultValueDataRequirement'] != null
          ? DataRequirement.fromJson(
              json['defaultValueDataRequirement'] as Map<String, dynamic>,
            )
          : null,
      defaultValueExpression: json['defaultValueExpression'] != null
          ? FhirExpression.fromJson(
              json['defaultValueExpression'] as Map<String, dynamic>,
            )
          : null,
      defaultValueParameterDefinition:
          json['defaultValueParameterDefinition'] != null
              ? ParameterDefinition.fromJson(
                  json['defaultValueParameterDefinition']
                      as Map<String, dynamic>,
                )
              : null,
      defaultValueRelatedArtifact: json['defaultValueRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              json['defaultValueRelatedArtifact'] as Map<String, dynamic>,
            )
          : null,
      defaultValueTriggerDefinition:
          json['defaultValueTriggerDefinition'] != null
              ? TriggerDefinition.fromJson(
                  json['defaultValueTriggerDefinition'] as Map<String, dynamic>,
                )
              : null,
      defaultValueUsageContext: json['defaultValueUsageContext'] != null
          ? UsageContext.fromJson(
              json['defaultValueUsageContext'] as Map<String, dynamic>,
            )
          : null,
      defaultValueDosage: json['defaultValueDosage'] != null
          ? Dosage.fromJson(
              json['defaultValueDosage'] as Map<String, dynamic>,
            )
          : null,
      defaultValueMeta: json['defaultValueMeta'] != null
          ? FhirMeta.fromJson(
              json['defaultValueMeta'] as Map<String, dynamic>,
            )
          : null,
      element: json['element'] != null
          ? FhirString.fromJson({
              'value': json['element'],
              '_value': json['_element'],
            })
          : null,
      listMode: json['listMode'] != null
          ? StructureMapSourceListMode.fromJson({
              'value': json['listMode'],
              '_value': json['_listMode'],
            })
          : null,
      variable: json['variable'] != null
          ? FhirId.fromJson({
              'value': json['variable'],
              '_value': json['_variable'],
            })
          : null,
      condition: json['condition'] != null
          ? FhirString.fromJson({
              'value': json['condition'],
              '_value': json['_condition'],
            })
          : null,
      check: json['check'] != null
          ? FhirString.fromJson({
              'value': json['check'],
              '_value': json['_check'],
            })
          : null,
      logMessage: json['logMessage'] != null
          ? FhirString.fromJson({
              'value': json['logMessage'],
              '_value': json['_logMessage'],
            })
          : null,
    );
  }

  /// Deserialize [StructureMapSource] from a [String]
  /// or [YamlMap] object
  factory StructureMapSource.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapSource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? StructureMapSource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('StructureMapSource cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [StructureMapSource]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapSource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapSource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapSource';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [context]
  /// Type or variable this rule applies to.
  final FhirId context;

  /// [min]
  /// Specified minimum cardinality for the element. This is optional; if
  /// present, it acts an implicit check on the input content.
  final FhirInteger? min;

  /// [max]
  /// Specified maximum cardinality for the element - a number or a "*". This
  /// is optional; if present, it acts an implicit check on the input content
  /// (* just serves as documentation; it's the default value).
  final FhirString? max;

  /// [type]
  /// Specified type for the element. This works as a condition on the
  /// mapping - use for polymorphic elements.
  final FhirString? type;

  /// [defaultValueBase64Binary]
  /// A value to use if there is no existing value in the source object.
  final FhirBase64Binary? defaultValueBase64Binary;

  /// [defaultValueBoolean]
  /// A value to use if there is no existing value in the source object.
  final FhirBoolean? defaultValueBoolean;

  /// [defaultValueCanonical]
  /// A value to use if there is no existing value in the source object.
  final FhirCanonical? defaultValueCanonical;

  /// [defaultValueCode]
  /// A value to use if there is no existing value in the source object.
  final FhirCode? defaultValueCode;

  /// [defaultValueDate]
  /// A value to use if there is no existing value in the source object.
  final FhirDate? defaultValueDate;

  /// [defaultValueDateTime]
  /// A value to use if there is no existing value in the source object.
  final FhirDateTime? defaultValueDateTime;

  /// [defaultValueDecimal]
  /// A value to use if there is no existing value in the source object.
  final FhirDecimal? defaultValueDecimal;

  /// [defaultValueId]
  /// A value to use if there is no existing value in the source object.
  final FhirId? defaultValueId;

  /// [defaultValueInstant]
  /// A value to use if there is no existing value in the source object.
  final FhirInstant? defaultValueInstant;

  /// [defaultValueInteger]
  /// A value to use if there is no existing value in the source object.
  final FhirInteger? defaultValueInteger;

  /// [defaultValueMarkdown]
  /// A value to use if there is no existing value in the source object.
  final FhirMarkdown? defaultValueMarkdown;

  /// [defaultValueOid]
  /// A value to use if there is no existing value in the source object.
  final FhirOid? defaultValueOid;

  /// [defaultValuePositiveInt]
  /// A value to use if there is no existing value in the source object.
  final FhirPositiveInt? defaultValuePositiveInt;

  /// [defaultValueString]
  /// A value to use if there is no existing value in the source object.
  final FhirString? defaultValueString;

  /// [defaultValueTime]
  /// A value to use if there is no existing value in the source object.
  final FhirTime? defaultValueTime;

  /// [defaultValueUnsignedInt]
  /// A value to use if there is no existing value in the source object.
  final FhirUnsignedInt? defaultValueUnsignedInt;

  /// [defaultValueUri]
  /// A value to use if there is no existing value in the source object.
  final FhirUri? defaultValueUri;

  /// [defaultValueUrl]
  /// A value to use if there is no existing value in the source object.
  final FhirUrl? defaultValueUrl;

  /// [defaultValueUuid]
  /// A value to use if there is no existing value in the source object.
  final FhirUuid? defaultValueUuid;

  /// [defaultValueAddress]
  /// A value to use if there is no existing value in the source object.
  final Address? defaultValueAddress;

  /// [defaultValueAge]
  /// A value to use if there is no existing value in the source object.
  final Age? defaultValueAge;

  /// [defaultValueAnnotation]
  /// A value to use if there is no existing value in the source object.
  final Annotation? defaultValueAnnotation;

  /// [defaultValueAttachment]
  /// A value to use if there is no existing value in the source object.
  final Attachment? defaultValueAttachment;

  /// [defaultValueCodeableConcept]
  /// A value to use if there is no existing value in the source object.
  final CodeableConcept? defaultValueCodeableConcept;

  /// [defaultValueCoding]
  /// A value to use if there is no existing value in the source object.
  final Coding? defaultValueCoding;

  /// [defaultValueContactPoint]
  /// A value to use if there is no existing value in the source object.
  final ContactPoint? defaultValueContactPoint;

  /// [defaultValueCount]
  /// A value to use if there is no existing value in the source object.
  final Count? defaultValueCount;

  /// [defaultValueDistance]
  /// A value to use if there is no existing value in the source object.
  final Distance? defaultValueDistance;

  /// [defaultValueDuration]
  /// A value to use if there is no existing value in the source object.
  final FhirDuration? defaultValueDuration;

  /// [defaultValueHumanName]
  /// A value to use if there is no existing value in the source object.
  final HumanName? defaultValueHumanName;

  /// [defaultValueIdentifier]
  /// A value to use if there is no existing value in the source object.
  final Identifier? defaultValueIdentifier;

  /// [defaultValueMoney]
  /// A value to use if there is no existing value in the source object.
  final Money? defaultValueMoney;

  /// [defaultValuePeriod]
  /// A value to use if there is no existing value in the source object.
  final Period? defaultValuePeriod;

  /// [defaultValueQuantity]
  /// A value to use if there is no existing value in the source object.
  final Quantity? defaultValueQuantity;

  /// [defaultValueRange]
  /// A value to use if there is no existing value in the source object.
  final Range? defaultValueRange;

  /// [defaultValueRatio]
  /// A value to use if there is no existing value in the source object.
  final Ratio? defaultValueRatio;

  /// [defaultValueReference]
  /// A value to use if there is no existing value in the source object.
  final Reference? defaultValueReference;

  /// [defaultValueSampledData]
  /// A value to use if there is no existing value in the source object.
  final SampledData? defaultValueSampledData;

  /// [defaultValueSignature]
  /// A value to use if there is no existing value in the source object.
  final Signature? defaultValueSignature;

  /// [defaultValueTiming]
  /// A value to use if there is no existing value in the source object.
  final Timing? defaultValueTiming;

  /// [defaultValueContactDetail]
  /// A value to use if there is no existing value in the source object.
  final ContactDetail? defaultValueContactDetail;

  /// [defaultValueContributor]
  /// A value to use if there is no existing value in the source object.
  final Contributor? defaultValueContributor;

  /// [defaultValueDataRequirement]
  /// A value to use if there is no existing value in the source object.
  final DataRequirement? defaultValueDataRequirement;

  /// [defaultValueExpression]
  /// A value to use if there is no existing value in the source object.
  final FhirExpression? defaultValueExpression;

  /// [defaultValueParameterDefinition]
  /// A value to use if there is no existing value in the source object.
  final ParameterDefinition? defaultValueParameterDefinition;

  /// [defaultValueRelatedArtifact]
  /// A value to use if there is no existing value in the source object.
  final RelatedArtifact? defaultValueRelatedArtifact;

  /// [defaultValueTriggerDefinition]
  /// A value to use if there is no existing value in the source object.
  final TriggerDefinition? defaultValueTriggerDefinition;

  /// [defaultValueUsageContext]
  /// A value to use if there is no existing value in the source object.
  final UsageContext? defaultValueUsageContext;

  /// [defaultValueDosage]
  /// A value to use if there is no existing value in the source object.
  final Dosage? defaultValueDosage;

  /// [defaultValueMeta]
  /// A value to use if there is no existing value in the source object.
  final FhirMeta? defaultValueMeta;

  /// [element]
  /// Optional field for this source.
  final FhirString? element;

  /// [listMode]
  /// How to handle the list mode for this element.
  final StructureMapSourceListMode? listMode;

  /// [variable]
  /// Named context for field, if a field is specified.
  final FhirId? variable;

  /// [condition]
  /// FHIRPath expression - must be true or the rule does not apply.
  final FhirString? condition;

  /// [check]
  /// FHIRPath expression - must be true or the mapping engine throws an
  /// error instead of completing.
  final FhirString? check;

  /// [logMessage]
  /// A FHIRPath expression which specifies a message to put in the transform
  /// log when content matching the source rule is found.
  final FhirString? logMessage;
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

    final fieldJson3 = context.toJson();
    json['context'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_context'] = fieldJson3['_value'];
    }

    if (min != null) {
      final fieldJson4 = min!.toJson();
      json['min'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_min'] = fieldJson4['_value'];
      }
    }

    if (max != null) {
      final fieldJson5 = max!.toJson();
      json['max'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_max'] = fieldJson5['_value'];
      }
    }

    if (type != null) {
      final fieldJson6 = type!.toJson();
      json['type'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_type'] = fieldJson6['_value'];
      }
    }

    if (defaultValueBase64Binary != null) {
      final fieldJson7 = defaultValueBase64Binary!.toJson();
      json['defaultValueBase64Binary'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_defaultValueBase64Binary'] = fieldJson7['_value'];
      }
    }

    if (defaultValueBoolean != null) {
      final fieldJson8 = defaultValueBoolean!.toJson();
      json['defaultValueBoolean'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_defaultValueBoolean'] = fieldJson8['_value'];
      }
    }

    if (defaultValueCanonical != null) {
      final fieldJson9 = defaultValueCanonical!.toJson();
      json['defaultValueCanonical'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_defaultValueCanonical'] = fieldJson9['_value'];
      }
    }

    if (defaultValueCode != null) {
      final fieldJson10 = defaultValueCode!.toJson();
      json['defaultValueCode'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_defaultValueCode'] = fieldJson10['_value'];
      }
    }

    if (defaultValueDate != null) {
      final fieldJson11 = defaultValueDate!.toJson();
      json['defaultValueDate'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_defaultValueDate'] = fieldJson11['_value'];
      }
    }

    if (defaultValueDateTime != null) {
      final fieldJson12 = defaultValueDateTime!.toJson();
      json['defaultValueDateTime'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_defaultValueDateTime'] = fieldJson12['_value'];
      }
    }

    if (defaultValueDecimal != null) {
      final fieldJson13 = defaultValueDecimal!.toJson();
      json['defaultValueDecimal'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_defaultValueDecimal'] = fieldJson13['_value'];
      }
    }

    if (defaultValueId != null) {
      final fieldJson14 = defaultValueId!.toJson();
      json['defaultValueId'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_defaultValueId'] = fieldJson14['_value'];
      }
    }

    if (defaultValueInstant != null) {
      final fieldJson15 = defaultValueInstant!.toJson();
      json['defaultValueInstant'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_defaultValueInstant'] = fieldJson15['_value'];
      }
    }

    if (defaultValueInteger != null) {
      final fieldJson16 = defaultValueInteger!.toJson();
      json['defaultValueInteger'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_defaultValueInteger'] = fieldJson16['_value'];
      }
    }

    if (defaultValueMarkdown != null) {
      final fieldJson17 = defaultValueMarkdown!.toJson();
      json['defaultValueMarkdown'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_defaultValueMarkdown'] = fieldJson17['_value'];
      }
    }

    if (defaultValueOid != null) {
      final fieldJson18 = defaultValueOid!.toJson();
      json['defaultValueOid'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_defaultValueOid'] = fieldJson18['_value'];
      }
    }

    if (defaultValuePositiveInt != null) {
      final fieldJson19 = defaultValuePositiveInt!.toJson();
      json['defaultValuePositiveInt'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_defaultValuePositiveInt'] = fieldJson19['_value'];
      }
    }

    if (defaultValueString != null) {
      final fieldJson20 = defaultValueString!.toJson();
      json['defaultValueString'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_defaultValueString'] = fieldJson20['_value'];
      }
    }

    if (defaultValueTime != null) {
      final fieldJson21 = defaultValueTime!.toJson();
      json['defaultValueTime'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_defaultValueTime'] = fieldJson21['_value'];
      }
    }

    if (defaultValueUnsignedInt != null) {
      final fieldJson22 = defaultValueUnsignedInt!.toJson();
      json['defaultValueUnsignedInt'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_defaultValueUnsignedInt'] = fieldJson22['_value'];
      }
    }

    if (defaultValueUri != null) {
      final fieldJson23 = defaultValueUri!.toJson();
      json['defaultValueUri'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_defaultValueUri'] = fieldJson23['_value'];
      }
    }

    if (defaultValueUrl != null) {
      final fieldJson24 = defaultValueUrl!.toJson();
      json['defaultValueUrl'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_defaultValueUrl'] = fieldJson24['_value'];
      }
    }

    if (defaultValueUuid != null) {
      final fieldJson25 = defaultValueUuid!.toJson();
      json['defaultValueUuid'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_defaultValueUuid'] = fieldJson25['_value'];
      }
    }

    if (defaultValueAddress != null) {
      final fieldJson26 = defaultValueAddress!.toJson();
      json['defaultValueAddress'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_defaultValueAddress'] = fieldJson26['_value'];
      }
    }

    if (defaultValueAge != null) {
      final fieldJson27 = defaultValueAge!.toJson();
      json['defaultValueAge'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_defaultValueAge'] = fieldJson27['_value'];
      }
    }

    if (defaultValueAnnotation != null) {
      final fieldJson28 = defaultValueAnnotation!.toJson();
      json['defaultValueAnnotation'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_defaultValueAnnotation'] = fieldJson28['_value'];
      }
    }

    if (defaultValueAttachment != null) {
      final fieldJson29 = defaultValueAttachment!.toJson();
      json['defaultValueAttachment'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_defaultValueAttachment'] = fieldJson29['_value'];
      }
    }

    if (defaultValueCodeableConcept != null) {
      final fieldJson30 = defaultValueCodeableConcept!.toJson();
      json['defaultValueCodeableConcept'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_defaultValueCodeableConcept'] = fieldJson30['_value'];
      }
    }

    if (defaultValueCoding != null) {
      final fieldJson31 = defaultValueCoding!.toJson();
      json['defaultValueCoding'] = fieldJson31['value'];
      if (fieldJson31['_value'] != null) {
        json['_defaultValueCoding'] = fieldJson31['_value'];
      }
    }

    if (defaultValueContactPoint != null) {
      final fieldJson32 = defaultValueContactPoint!.toJson();
      json['defaultValueContactPoint'] = fieldJson32['value'];
      if (fieldJson32['_value'] != null) {
        json['_defaultValueContactPoint'] = fieldJson32['_value'];
      }
    }

    if (defaultValueCount != null) {
      final fieldJson33 = defaultValueCount!.toJson();
      json['defaultValueCount'] = fieldJson33['value'];
      if (fieldJson33['_value'] != null) {
        json['_defaultValueCount'] = fieldJson33['_value'];
      }
    }

    if (defaultValueDistance != null) {
      final fieldJson34 = defaultValueDistance!.toJson();
      json['defaultValueDistance'] = fieldJson34['value'];
      if (fieldJson34['_value'] != null) {
        json['_defaultValueDistance'] = fieldJson34['_value'];
      }
    }

    if (defaultValueDuration != null) {
      final fieldJson35 = defaultValueDuration!.toJson();
      json['defaultValueDuration'] = fieldJson35['value'];
      if (fieldJson35['_value'] != null) {
        json['_defaultValueDuration'] = fieldJson35['_value'];
      }
    }

    if (defaultValueHumanName != null) {
      final fieldJson36 = defaultValueHumanName!.toJson();
      json['defaultValueHumanName'] = fieldJson36['value'];
      if (fieldJson36['_value'] != null) {
        json['_defaultValueHumanName'] = fieldJson36['_value'];
      }
    }

    if (defaultValueIdentifier != null) {
      final fieldJson37 = defaultValueIdentifier!.toJson();
      json['defaultValueIdentifier'] = fieldJson37['value'];
      if (fieldJson37['_value'] != null) {
        json['_defaultValueIdentifier'] = fieldJson37['_value'];
      }
    }

    if (defaultValueMoney != null) {
      final fieldJson38 = defaultValueMoney!.toJson();
      json['defaultValueMoney'] = fieldJson38['value'];
      if (fieldJson38['_value'] != null) {
        json['_defaultValueMoney'] = fieldJson38['_value'];
      }
    }

    if (defaultValuePeriod != null) {
      final fieldJson39 = defaultValuePeriod!.toJson();
      json['defaultValuePeriod'] = fieldJson39['value'];
      if (fieldJson39['_value'] != null) {
        json['_defaultValuePeriod'] = fieldJson39['_value'];
      }
    }

    if (defaultValueQuantity != null) {
      final fieldJson40 = defaultValueQuantity!.toJson();
      json['defaultValueQuantity'] = fieldJson40['value'];
      if (fieldJson40['_value'] != null) {
        json['_defaultValueQuantity'] = fieldJson40['_value'];
      }
    }

    if (defaultValueRange != null) {
      final fieldJson41 = defaultValueRange!.toJson();
      json['defaultValueRange'] = fieldJson41['value'];
      if (fieldJson41['_value'] != null) {
        json['_defaultValueRange'] = fieldJson41['_value'];
      }
    }

    if (defaultValueRatio != null) {
      final fieldJson42 = defaultValueRatio!.toJson();
      json['defaultValueRatio'] = fieldJson42['value'];
      if (fieldJson42['_value'] != null) {
        json['_defaultValueRatio'] = fieldJson42['_value'];
      }
    }

    if (defaultValueReference != null) {
      final fieldJson43 = defaultValueReference!.toJson();
      json['defaultValueReference'] = fieldJson43['value'];
      if (fieldJson43['_value'] != null) {
        json['_defaultValueReference'] = fieldJson43['_value'];
      }
    }

    if (defaultValueSampledData != null) {
      final fieldJson44 = defaultValueSampledData!.toJson();
      json['defaultValueSampledData'] = fieldJson44['value'];
      if (fieldJson44['_value'] != null) {
        json['_defaultValueSampledData'] = fieldJson44['_value'];
      }
    }

    if (defaultValueSignature != null) {
      final fieldJson45 = defaultValueSignature!.toJson();
      json['defaultValueSignature'] = fieldJson45['value'];
      if (fieldJson45['_value'] != null) {
        json['_defaultValueSignature'] = fieldJson45['_value'];
      }
    }

    if (defaultValueTiming != null) {
      final fieldJson46 = defaultValueTiming!.toJson();
      json['defaultValueTiming'] = fieldJson46['value'];
      if (fieldJson46['_value'] != null) {
        json['_defaultValueTiming'] = fieldJson46['_value'];
      }
    }

    if (defaultValueContactDetail != null) {
      final fieldJson47 = defaultValueContactDetail!.toJson();
      json['defaultValueContactDetail'] = fieldJson47['value'];
      if (fieldJson47['_value'] != null) {
        json['_defaultValueContactDetail'] = fieldJson47['_value'];
      }
    }

    if (defaultValueContributor != null) {
      final fieldJson48 = defaultValueContributor!.toJson();
      json['defaultValueContributor'] = fieldJson48['value'];
      if (fieldJson48['_value'] != null) {
        json['_defaultValueContributor'] = fieldJson48['_value'];
      }
    }

    if (defaultValueDataRequirement != null) {
      final fieldJson49 = defaultValueDataRequirement!.toJson();
      json['defaultValueDataRequirement'] = fieldJson49['value'];
      if (fieldJson49['_value'] != null) {
        json['_defaultValueDataRequirement'] = fieldJson49['_value'];
      }
    }

    if (defaultValueExpression != null) {
      final fieldJson50 = defaultValueExpression!.toJson();
      json['defaultValueExpression'] = fieldJson50['value'];
      if (fieldJson50['_value'] != null) {
        json['_defaultValueExpression'] = fieldJson50['_value'];
      }
    }

    if (defaultValueParameterDefinition != null) {
      final fieldJson51 = defaultValueParameterDefinition!.toJson();
      json['defaultValueParameterDefinition'] = fieldJson51['value'];
      if (fieldJson51['_value'] != null) {
        json['_defaultValueParameterDefinition'] = fieldJson51['_value'];
      }
    }

    if (defaultValueRelatedArtifact != null) {
      final fieldJson52 = defaultValueRelatedArtifact!.toJson();
      json['defaultValueRelatedArtifact'] = fieldJson52['value'];
      if (fieldJson52['_value'] != null) {
        json['_defaultValueRelatedArtifact'] = fieldJson52['_value'];
      }
    }

    if (defaultValueTriggerDefinition != null) {
      final fieldJson53 = defaultValueTriggerDefinition!.toJson();
      json['defaultValueTriggerDefinition'] = fieldJson53['value'];
      if (fieldJson53['_value'] != null) {
        json['_defaultValueTriggerDefinition'] = fieldJson53['_value'];
      }
    }

    if (defaultValueUsageContext != null) {
      final fieldJson54 = defaultValueUsageContext!.toJson();
      json['defaultValueUsageContext'] = fieldJson54['value'];
      if (fieldJson54['_value'] != null) {
        json['_defaultValueUsageContext'] = fieldJson54['_value'];
      }
    }

    if (defaultValueDosage != null) {
      final fieldJson55 = defaultValueDosage!.toJson();
      json['defaultValueDosage'] = fieldJson55['value'];
      if (fieldJson55['_value'] != null) {
        json['_defaultValueDosage'] = fieldJson55['_value'];
      }
    }

    if (defaultValueMeta != null) {
      final fieldJson56 = defaultValueMeta!.toJson();
      json['defaultValueMeta'] = fieldJson56['value'];
      if (fieldJson56['_value'] != null) {
        json['_defaultValueMeta'] = fieldJson56['_value'];
      }
    }

    if (element != null) {
      final fieldJson57 = element!.toJson();
      json['element'] = fieldJson57['value'];
      if (fieldJson57['_value'] != null) {
        json['_element'] = fieldJson57['_value'];
      }
    }

    if (listMode != null) {
      final fieldJson58 = listMode!.toJson();
      json['listMode'] = fieldJson58['value'];
      if (fieldJson58['_value'] != null) {
        json['_listMode'] = fieldJson58['_value'];
      }
    }

    if (variable != null) {
      final fieldJson59 = variable!.toJson();
      json['variable'] = fieldJson59['value'];
      if (fieldJson59['_value'] != null) {
        json['_variable'] = fieldJson59['_value'];
      }
    }

    if (condition != null) {
      final fieldJson60 = condition!.toJson();
      json['condition'] = fieldJson60['value'];
      if (fieldJson60['_value'] != null) {
        json['_condition'] = fieldJson60['_value'];
      }
    }

    if (check != null) {
      final fieldJson61 = check!.toJson();
      json['check'] = fieldJson61['value'];
      if (fieldJson61['_value'] != null) {
        json['_check'] = fieldJson61['_value'];
      }
    }

    if (logMessage != null) {
      final fieldJson62 = logMessage!.toJson();
      json['logMessage'] = fieldJson62['value'];
      if (fieldJson62['_value'] != null) {
        json['_logMessage'] = fieldJson62['_value'];
      }
    }

    return json;
  }

  @override
  StructureMapSource clone() => throw UnimplementedError();
  @override
  StructureMapSource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? context,
    FhirInteger? min,
    FhirString? max,
    FhirString? type,
    FhirBase64Binary? defaultValueBase64Binary,
    FhirBoolean? defaultValueBoolean,
    FhirCanonical? defaultValueCanonical,
    FhirCode? defaultValueCode,
    FhirDate? defaultValueDate,
    FhirDateTime? defaultValueDateTime,
    FhirDecimal? defaultValueDecimal,
    FhirId? defaultValueId,
    FhirInstant? defaultValueInstant,
    FhirInteger? defaultValueInteger,
    FhirMarkdown? defaultValueMarkdown,
    FhirOid? defaultValueOid,
    FhirPositiveInt? defaultValuePositiveInt,
    FhirString? defaultValueString,
    FhirTime? defaultValueTime,
    FhirUnsignedInt? defaultValueUnsignedInt,
    FhirUri? defaultValueUri,
    FhirUrl? defaultValueUrl,
    FhirUuid? defaultValueUuid,
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
    StructureMapSourceListMode? listMode,
    FhirId? variable,
    FhirString? condition,
    FhirString? check,
    FhirString? logMessage,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapSource(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      context: context ?? this.context,
      min: min ?? this.min,
      max: max ?? this.max,
      type: type ?? this.type,
      defaultValueBase64Binary:
          defaultValueBase64Binary ?? this.defaultValueBase64Binary,
      defaultValueBoolean: defaultValueBoolean ?? this.defaultValueBoolean,
      defaultValueCanonical:
          defaultValueCanonical ?? this.defaultValueCanonical,
      defaultValueCode: defaultValueCode ?? this.defaultValueCode,
      defaultValueDate: defaultValueDate ?? this.defaultValueDate,
      defaultValueDateTime: defaultValueDateTime ?? this.defaultValueDateTime,
      defaultValueDecimal: defaultValueDecimal ?? this.defaultValueDecimal,
      defaultValueId: defaultValueId ?? this.defaultValueId,
      defaultValueInstant: defaultValueInstant ?? this.defaultValueInstant,
      defaultValueInteger: defaultValueInteger ?? this.defaultValueInteger,
      defaultValueMarkdown: defaultValueMarkdown ?? this.defaultValueMarkdown,
      defaultValueOid: defaultValueOid ?? this.defaultValueOid,
      defaultValuePositiveInt:
          defaultValuePositiveInt ?? this.defaultValuePositiveInt,
      defaultValueString: defaultValueString ?? this.defaultValueString,
      defaultValueTime: defaultValueTime ?? this.defaultValueTime,
      defaultValueUnsignedInt:
          defaultValueUnsignedInt ?? this.defaultValueUnsignedInt,
      defaultValueUri: defaultValueUri ?? this.defaultValueUri,
      defaultValueUrl: defaultValueUrl ?? this.defaultValueUrl,
      defaultValueUuid: defaultValueUuid ?? this.defaultValueUuid,
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
      listMode: listMode ?? this.listMode,
      variable: variable ?? this.variable,
      condition: condition ?? this.condition,
      check: check ?? this.check,
      logMessage: logMessage ?? this.logMessage,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureMapTarget]
/// Content to create because of this mapping rule.
class StructureMapTarget extends BackboneElement {
  /// Primary constructor for [StructureMapTarget]

  StructureMapTarget({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.context,
    this.contextType,
    this.element,
    this.variable,
    this.listMode,
    this.listRuleId,
    this.transform,
    this.parameter,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapTarget.fromJson(Map<String, dynamic> json) {
    return StructureMapTarget(
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
      context: json['context'] != null
          ? FhirId.fromJson({
              'value': json['context'],
              '_value': json['_context'],
            })
          : null,
      contextType: json['contextType'] != null
          ? StructureMapContextType.fromJson({
              'value': json['contextType'],
              '_value': json['_contextType'],
            })
          : null,
      element: json['element'] != null
          ? FhirString.fromJson({
              'value': json['element'],
              '_value': json['_element'],
            })
          : null,
      variable: json['variable'] != null
          ? FhirId.fromJson({
              'value': json['variable'],
              '_value': json['_variable'],
            })
          : null,
      listMode: parsePrimitiveList<StructureMapTargetListMode>(
          json['listMode'] as List<dynamic>?,
          json['_listMode'] as List<dynamic>?,
          fromJson: StructureMapTargetListMode.fromJson),
      listRuleId: json['listRuleId'] != null
          ? FhirId.fromJson({
              'value': json['listRuleId'],
              '_value': json['_listRuleId'],
            })
          : null,
      transform: json['transform'] != null
          ? StructureMapTransform.fromJson({
              'value': json['transform'],
              '_value': json['_transform'],
            })
          : null,
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<StructureMapParameter>(
                (v) => StructureMapParameter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [StructureMapTarget] from a [String]
  /// or [YamlMap] object
  factory StructureMapTarget.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapTarget.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? StructureMapTarget.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('StructureMapTarget cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [StructureMapTarget]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapTarget.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapTarget';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [context]
  /// Type or variable this rule applies to.
  final FhirId? context;

  /// [contextType]
  /// How to interpret the context.
  final StructureMapContextType? contextType;

  /// [element]
  /// Field to create in the context.
  final FhirString? element;

  /// [variable]
  /// Named context for field, if desired, and a field is specified.
  final FhirId? variable;

  /// [listMode]
  /// If field is a list, how to manage the list.
  final List<StructureMapTargetListMode>? listMode;

  /// [listRuleId]
  /// Internal rule reference for shared list items.
  final FhirId? listRuleId;

  /// [transform]
  /// How the data is copied / created.
  final StructureMapTransform? transform;

  /// [parameter]
  /// Parameters to the transform.
  final List<StructureMapParameter>? parameter;
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

    if (context != null) {
      final fieldJson3 = context!.toJson();
      json['context'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_context'] = fieldJson3['_value'];
      }
    }

    if (contextType != null) {
      final fieldJson4 = contextType!.toJson();
      json['contextType'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_contextType'] = fieldJson4['_value'];
      }
    }

    if (element != null) {
      final fieldJson5 = element!.toJson();
      json['element'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_element'] = fieldJson5['_value'];
      }
    }

    if (variable != null) {
      final fieldJson6 = variable!.toJson();
      json['variable'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_variable'] = fieldJson6['_value'];
      }
    }

    if (listMode != null && listMode!.isNotEmpty) {
      final fieldJson7 = listMode!.map((e) => e.toJson()).toList();
      json['listMode'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_listMode'] = fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (listRuleId != null) {
      final fieldJson8 = listRuleId!.toJson();
      json['listRuleId'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_listRuleId'] = fieldJson8['_value'];
      }
    }

    if (transform != null) {
      final fieldJson9 = transform!.toJson();
      json['transform'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_transform'] = fieldJson9['_value'];
      }
    }

    if (parameter != null && parameter!.isNotEmpty) {
      final fieldJson10 = parameter!.map((e) => e.toJson()).toList();
      json['parameter'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_parameter'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  StructureMapTarget clone() => throw UnimplementedError();
  @override
  StructureMapTarget copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? context,
    StructureMapContextType? contextType,
    FhirString? element,
    FhirId? variable,
    List<StructureMapTargetListMode>? listMode,
    FhirId? listRuleId,
    StructureMapTransform? transform,
    List<StructureMapParameter>? parameter,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapTarget(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      context: context ?? this.context,
      contextType: contextType ?? this.contextType,
      element: element ?? this.element,
      variable: variable ?? this.variable,
      listMode: listMode ?? this.listMode,
      listRuleId: listRuleId ?? this.listRuleId,
      transform: transform ?? this.transform,
      parameter: parameter ?? this.parameter,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureMapParameter]
/// Parameters to the transform.
class StructureMapParameter extends BackboneElement {
  /// Primary constructor for [StructureMapParameter]

  StructureMapParameter({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.valueId,
    this.valueString,
    this.valueBoolean,
    this.valueInteger,
    this.valueDecimal,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapParameter.fromJson(Map<String, dynamic> json) {
    return StructureMapParameter(
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
      valueId: json['valueId'] != null
          ? FhirId.fromJson({
              'value': json['valueId'],
              '_value': json['_valueId'],
            })
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson({
              'value': json['valueString'],
              '_value': json['_valueString'],
            })
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['valueInteger'],
              '_value': json['_valueInteger'],
            })
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal.fromJson({
              'value': json['valueDecimal'],
              '_value': json['_valueDecimal'],
            })
          : null,
    );
  }

  /// Deserialize [StructureMapParameter] from a [String]
  /// or [YamlMap] object
  factory StructureMapParameter.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? StructureMapParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'StructureMapParameter cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [StructureMapParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapParameter';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [valueId]
  /// Parameter value - variable or literal.
  final FhirId? valueId;

  /// [valueString]
  /// Parameter value - variable or literal.
  final FhirString? valueString;

  /// [valueBoolean]
  /// Parameter value - variable or literal.
  final FhirBoolean? valueBoolean;

  /// [valueInteger]
  /// Parameter value - variable or literal.
  final FhirInteger? valueInteger;

  /// [valueDecimal]
  /// Parameter value - variable or literal.
  final FhirDecimal? valueDecimal;
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

    if (valueId != null) {
      final fieldJson3 = valueId!.toJson();
      json['valueId'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_valueId'] = fieldJson3['_value'];
      }
    }

    if (valueString != null) {
      final fieldJson4 = valueString!.toJson();
      json['valueString'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueString'] = fieldJson4['_value'];
      }
    }

    if (valueBoolean != null) {
      final fieldJson5 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueBoolean'] = fieldJson5['_value'];
      }
    }

    if (valueInteger != null) {
      final fieldJson6 = valueInteger!.toJson();
      json['valueInteger'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueInteger'] = fieldJson6['_value'];
      }
    }

    if (valueDecimal != null) {
      final fieldJson7 = valueDecimal!.toJson();
      json['valueDecimal'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_valueDecimal'] = fieldJson7['_value'];
      }
    }

    return json;
  }

  @override
  StructureMapParameter clone() => throw UnimplementedError();
  @override
  StructureMapParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? valueId,
    FhirString? valueString,
    FhirBoolean? valueBoolean,
    FhirInteger? valueInteger,
    FhirDecimal? valueDecimal,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueId: valueId ?? this.valueId,
      valueString: valueString ?? this.valueString,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueInteger: valueInteger ?? this.valueInteger,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureMapDependent]
/// Which other rules to apply in the context of this rule.
class StructureMapDependent extends BackboneElement {
  /// Primary constructor for [StructureMapDependent]

  StructureMapDependent({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.name,
    required this.variable,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapDependent.fromJson(Map<String, dynamic> json) {
    return StructureMapDependent(
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
      name: FhirId.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      variable: ensureNonNullList(parsePrimitiveList<FhirString>(
          json['variable'] as List<dynamic>?,
          json['_variable'] as List<dynamic>?,
          fromJson: FhirString.fromJson)),
    );
  }

  /// Deserialize [StructureMapDependent] from a [String]
  /// or [YamlMap] object
  factory StructureMapDependent.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapDependent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? StructureMapDependent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'StructureMapDependent cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [StructureMapDependent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapDependent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapDependent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapDependent';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [name]
  /// Name of a rule or group to apply.
  final FhirId name;

  /// [variable]
  /// Variable to pass to the rule or group.
  final List<FhirString> variable;
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

    final fieldJson3 = name.toJson();
    json['name'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_name'] = fieldJson3['_value'];
    }

    final fieldJson4 = variable.map((e) => e.toJson()).toList();
    json['variable'] = fieldJson4.map((e) => e['value']).toList();
    if (fieldJson4.any((e) => e['_value'] != null)) {
      json['_variable'] = fieldJson4.map((e) => e['_value']).toList();
    }

    return json;
  }

  @override
  StructureMapDependent clone() => throw UnimplementedError();
  @override
  StructureMapDependent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    List<FhirString>? variable,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapDependent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      variable: variable ?? this.variable,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
