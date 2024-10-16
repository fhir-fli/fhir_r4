import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ChargeItemDefinition]
/// The ChargeItemDefinition resource provides the properties that apply to
/// the (billing) codes necessary to calculate costs and prices. The
/// properties may differ largely depending on type and realm, therefore
/// this resource gives only a rough structure and requires profiling for
/// each type of billing code system.
class ChargeItemDefinition extends DomainResource {
  /// Primary constructor for [ChargeItemDefinition]

  ChargeItemDefinition({
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
    this.title,
    this.derivedFromUri,
    this.partOf,
    this.replaces,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    this.effectivePeriod,
    this.code,
    this.instance,
    this.applicability,
    this.propertyGroup,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.ChargeItemDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemDefinition.fromJson(Map<String, dynamic> json) {
    return ChargeItemDefinition(
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
      title: json['title'] != null
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      derivedFromUri: parsePrimitiveList<FhirUri>(
          json['derivedFromUri'] as List<dynamic>?,
          json['_derivedFromUri'] as List<dynamic>?,
          fromJson: FhirUri.fromJson),
      partOf: parsePrimitiveList<FhirCanonical>(
          json['partOf'] as List<dynamic>?, json['_partOf'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
      replaces: parsePrimitiveList<FhirCanonical>(
          json['replaces'] as List<dynamic>?,
          json['_replaces'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
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
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
      approvalDate: json['approvalDate'] != null
          ? FhirDate.fromJson({
              'value': json['approvalDate'],
              '_value': json['_approvalDate'],
            })
          : null,
      lastReviewDate: json['lastReviewDate'] != null
          ? FhirDate.fromJson({
              'value': json['lastReviewDate'],
              '_value': json['_lastReviewDate'],
            })
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              json['effectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      instance: json['instance'] != null
          ? (json['instance'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      applicability: json['applicability'] != null
          ? (json['applicability'] as List<dynamic>)
              .map<ChargeItemDefinitionApplicability>(
                (v) => ChargeItemDefinitionApplicability.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      propertyGroup: json['propertyGroup'] != null
          ? (json['propertyGroup'] as List<dynamic>)
              .map<ChargeItemDefinitionPropertyGroup>(
                (v) => ChargeItemDefinitionPropertyGroup.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ChargeItemDefinition] from a [String]
  /// or [YamlMap] object
  factory ChargeItemDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ChargeItemDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ChargeItemDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ChargeItemDefinition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ChargeItemDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItemDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemDefinition';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [url]
  /// An absolute URI that is used to identify this charge item definition
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique
  /// and SHOULD be a literal address at which at which an authoritative
  /// instance of this charge item definition is (or will be) published. This
  /// URL can be the target of a canonical reference. It SHALL remain the
  /// same when the charge item definition is stored on different servers.
  final FhirUri url;

  /// [identifier]
  /// A formal identifier that is used to identify this charge item
  /// definition when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the charge item
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the charge item
  /// definition author and is not expected to be globally unique. For
  /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version
  /// is not available. There is also no expectation that versions can be
  /// placed in a lexicographical sequence. To provide a version consistent
  /// with the Decision Support Service specification, use the format
  /// Major.Minor.Revision (e.g. 1.0.0). For more information on versioning
  /// knowledge assets, refer to the Decision Support Service specification.
  /// Note that a version is required for non-experimental active assets.
  final FhirString? version;

  /// [title]
  /// A short, descriptive, user-friendly title for the charge item
  /// definition.
  final FhirString? title;

  /// [derivedFromUri]
  /// The URL pointing to an externally-defined charge item definition that
  /// is adhered to in whole or in part by this definition.
  final List<FhirUri>? derivedFromUri;

  /// [partOf]
  /// A larger definition of which this particular definition is a component
  /// or step.
  final List<FhirCanonical>? partOf;

  /// [replaces]
  /// As new versions of a protocol or guideline are defined, allows
  /// identification of what versions are replaced by a new instance.
  final List<FhirCanonical>? replaces;

  /// [status]
  /// The current state of the ChargeItemDefinition.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this charge item definition is
  /// authored for testing purposes (or education/evaluation/marketing) and
  /// is not intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the charge item definition was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the charge item definition
  /// changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the charge
  /// item definition.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the charge item definition
  /// from a consumer's perspective.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate charge item definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the charge item definition is
  /// intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [copyright]
  /// A copyright statement relating to the charge item definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the charge item definition.
  final FhirMarkdown? copyright;

  /// [approvalDate]
  /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for
  /// usage.
  final FhirDate? approvalDate;

  /// [lastReviewDate]
  /// The date on which the resource content was last reviewed. Review
  /// happens periodically after approval but does not change the original
  /// approval date.
  final FhirDate? lastReviewDate;

  /// [effectivePeriod]
  /// The period during which the charge item definition content was or is
  /// planned to be in active use.
  final Period? effectivePeriod;

  /// [code]
  /// The defined billing details in this resource pertain to the given
  /// billing code.
  final CodeableConcept? code;

  /// [instance]
  /// The defined billing details in this resource pertain to the given
  /// product instance(s).
  final List<Reference>? instance;

  /// [applicability]
  /// Expressions that describe applicability criteria for the billing code.
  final List<ChargeItemDefinitionApplicability>? applicability;

  /// [propertyGroup]
  /// Group of properties which are applicable under the same conditions. If
  /// no applicability rules are established for the group, then all
  /// properties always apply.
  final List<ChargeItemDefinitionPropertyGroup>? propertyGroup;
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

    if (title != null) {
      final fieldJson11 = title!.toJson();
      json['title'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_title'] = fieldJson11['_value'];
      }
    }

    if (derivedFromUri != null && derivedFromUri!.isNotEmpty) {
      final fieldJson12 = derivedFromUri!.map((e) => e.toJson()).toList();
      json['derivedFromUri'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_derivedFromUri'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (partOf != null && partOf!.isNotEmpty) {
      final fieldJson13 = partOf!.map((e) => e.toJson()).toList();
      json['partOf'] = fieldJson13.map((e) => e['value']).toList();
      if (fieldJson13.any((e) => e['_value'] != null)) {
        json['_partOf'] = fieldJson13.map((e) => e['_value']).toList();
      }
    }

    if (replaces != null && replaces!.isNotEmpty) {
      final fieldJson14 = replaces!.map((e) => e.toJson()).toList();
      json['replaces'] = fieldJson14.map((e) => e['value']).toList();
      if (fieldJson14.any((e) => e['_value'] != null)) {
        json['_replaces'] = fieldJson14.map((e) => e['_value']).toList();
      }
    }

    final fieldJson15 = status.toJson();
    json['status'] = fieldJson15['value'];
    if (fieldJson15['_value'] != null) {
      json['_status'] = fieldJson15['_value'];
    }

    if (experimental != null) {
      final fieldJson16 = experimental!.toJson();
      json['experimental'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_experimental'] = fieldJson16['_value'];
      }
    }

    if (date != null) {
      final fieldJson17 = date!.toJson();
      json['date'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_date'] = fieldJson17['_value'];
      }
    }

    if (publisher != null) {
      final fieldJson18 = publisher!.toJson();
      json['publisher'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_publisher'] = fieldJson18['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      final fieldJson19 = contact!.map((e) => e.toJson()).toList();
      json['contact'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_contact'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (description != null) {
      final fieldJson20 = description!.toJson();
      json['description'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_description'] = fieldJson20['_value'];
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      final fieldJson21 = useContext!.map((e) => e.toJson()).toList();
      json['useContext'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_useContext'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      final fieldJson22 = jurisdiction!.map((e) => e.toJson()).toList();
      json['jurisdiction'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_jurisdiction'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    if (copyright != null) {
      final fieldJson23 = copyright!.toJson();
      json['copyright'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_copyright'] = fieldJson23['_value'];
      }
    }

    if (approvalDate != null) {
      final fieldJson24 = approvalDate!.toJson();
      json['approvalDate'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_approvalDate'] = fieldJson24['_value'];
      }
    }

    if (lastReviewDate != null) {
      final fieldJson25 = lastReviewDate!.toJson();
      json['lastReviewDate'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_lastReviewDate'] = fieldJson25['_value'];
      }
    }

    if (effectivePeriod != null) {
      final fieldJson26 = effectivePeriod!.toJson();
      json['effectivePeriod'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_effectivePeriod'] = fieldJson26['_value'];
      }
    }

    if (code != null) {
      final fieldJson27 = code!.toJson();
      json['code'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_code'] = fieldJson27['_value'];
      }
    }

    if (instance != null && instance!.isNotEmpty) {
      final fieldJson28 = instance!.map((e) => e.toJson()).toList();
      json['instance'] = fieldJson28.map((e) => e['value']).toList();
      if (fieldJson28.any((e) => e['_value'] != null)) {
        json['_instance'] = fieldJson28.map((e) => e['_value']).toList();
      }
    }

    if (applicability != null && applicability!.isNotEmpty) {
      final fieldJson29 = applicability!.map((e) => e.toJson()).toList();
      json['applicability'] = fieldJson29.map((e) => e['value']).toList();
      if (fieldJson29.any((e) => e['_value'] != null)) {
        json['_applicability'] = fieldJson29.map((e) => e['_value']).toList();
      }
    }

    if (propertyGroup != null && propertyGroup!.isNotEmpty) {
      final fieldJson30 = propertyGroup!.map((e) => e.toJson()).toList();
      json['propertyGroup'] = fieldJson30.map((e) => e['value']).toList();
      if (fieldJson30.any((e) => e['_value'] != null)) {
        json['_propertyGroup'] = fieldJson30.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  ChargeItemDefinition clone() => throw UnimplementedError();
  @override
  ChargeItemDefinition copyWith({
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
    FhirString? title,
    List<FhirUri>? derivedFromUri,
    List<FhirCanonical>? partOf,
    List<FhirCanonical>? replaces,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? copyright,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    Period? effectivePeriod,
    CodeableConcept? code,
    List<Reference>? instance,
    List<ChargeItemDefinitionApplicability>? applicability,
    List<ChargeItemDefinitionPropertyGroup>? propertyGroup,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ChargeItemDefinition(
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
      title: title ?? this.title,
      derivedFromUri: derivedFromUri ?? this.derivedFromUri,
      partOf: partOf ?? this.partOf,
      replaces: replaces ?? this.replaces,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      copyright: copyright ?? this.copyright,
      approvalDate: approvalDate ?? this.approvalDate,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      code: code ?? this.code,
      instance: instance ?? this.instance,
      applicability: applicability ?? this.applicability,
      propertyGroup: propertyGroup ?? this.propertyGroup,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ChargeItemDefinitionApplicability]
/// Expressions that describe applicability criteria for the billing code.
class ChargeItemDefinitionApplicability extends BackboneElement {
  /// Primary constructor for [ChargeItemDefinitionApplicability]

  ChargeItemDefinitionApplicability({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.description,
    this.language,
    this.expression,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemDefinitionApplicability.fromJson(
      Map<String, dynamic> json) {
    return ChargeItemDefinitionApplicability(
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
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      language: json['language'] != null
          ? FhirString.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      expression: json['expression'] != null
          ? FhirString.fromJson({
              'value': json['expression'],
              '_value': json['_expression'],
            })
          : null,
    );
  }

  /// Deserialize [ChargeItemDefinitionApplicability] from a [String]
  /// or [YamlMap] object
  factory ChargeItemDefinitionApplicability.fromYaml(dynamic yaml) => yaml
          is String
      ? ChargeItemDefinitionApplicability.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ChargeItemDefinitionApplicability.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ChargeItemDefinitionApplicability cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ChargeItemDefinitionApplicability]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemDefinitionApplicability.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItemDefinitionApplicability.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemDefinitionApplicability';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [description]
  /// A brief, natural language description of the condition that effectively
  /// communicates the intended semantics.
  final FhirString? description;

  /// [language]
  /// The media type of the language for the expression, e.g. "text/cql" for
  /// Clinical Query Language expressions or "text/fhirpath" for FHIRPath
  /// expressions.
  final FhirString? language;

  /// [expression]
  /// An expression that returns true or false, indicating whether the
  /// condition is satisfied. When using FHIRPath expressions, the %context
  /// environment variable must be replaced at runtime with the ChargeItem
  /// resource to which this definition is applied.
  final FhirString? expression;
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

    if (description != null) {
      final fieldJson3 = description!.toJson();
      json['description'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_description'] = fieldJson3['_value'];
      }
    }

    if (language != null) {
      final fieldJson4 = language!.toJson();
      json['language'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_language'] = fieldJson4['_value'];
      }
    }

    if (expression != null) {
      final fieldJson5 = expression!.toJson();
      json['expression'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_expression'] = fieldJson5['_value'];
      }
    }

    return json;
  }

  @override
  ChargeItemDefinitionApplicability clone() => throw UnimplementedError();
  @override
  ChargeItemDefinitionApplicability copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    FhirString? language,
    FhirString? expression,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ChargeItemDefinitionApplicability(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      language: language ?? this.language,
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

/// [ChargeItemDefinitionPropertyGroup]
/// Group of properties which are applicable under the same conditions. If
/// no applicability rules are established for the group, then all
/// properties always apply.
class ChargeItemDefinitionPropertyGroup extends BackboneElement {
  /// Primary constructor for [ChargeItemDefinitionPropertyGroup]

  ChargeItemDefinitionPropertyGroup({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.applicability,
    this.priceComponent,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemDefinitionPropertyGroup.fromJson(
      Map<String, dynamic> json) {
    return ChargeItemDefinitionPropertyGroup(
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
      applicability: json['applicability'] != null
          ? (json['applicability'] as List<dynamic>)
              .map<ChargeItemDefinitionApplicability>(
                (v) => ChargeItemDefinitionApplicability.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      priceComponent: json['priceComponent'] != null
          ? (json['priceComponent'] as List<dynamic>)
              .map<ChargeItemDefinitionPriceComponent>(
                (v) => ChargeItemDefinitionPriceComponent.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ChargeItemDefinitionPropertyGroup] from a [String]
  /// or [YamlMap] object
  factory ChargeItemDefinitionPropertyGroup.fromYaml(dynamic yaml) => yaml
          is String
      ? ChargeItemDefinitionPropertyGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ChargeItemDefinitionPropertyGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ChargeItemDefinitionPropertyGroup cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ChargeItemDefinitionPropertyGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemDefinitionPropertyGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItemDefinitionPropertyGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemDefinitionPropertyGroup';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [applicability]
  /// Expressions that describe applicability criteria for the
  /// priceComponent.
  final List<ChargeItemDefinitionApplicability>? applicability;

  /// [priceComponent]
  /// The price for a ChargeItem may be calculated as a base price with
  /// surcharges/deductions that apply in certain conditions. A
  /// ChargeItemDefinition resource that defines the prices, factors and
  /// conditions that apply to a billing code is currently under development.
  /// The priceComponent element can be used to offer transparency to the
  /// recipient of the Invoice of how the prices have been calculated.
  final List<ChargeItemDefinitionPriceComponent>? priceComponent;
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

    if (applicability != null && applicability!.isNotEmpty) {
      final fieldJson3 = applicability!.map((e) => e.toJson()).toList();
      json['applicability'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_applicability'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (priceComponent != null && priceComponent!.isNotEmpty) {
      final fieldJson4 = priceComponent!.map((e) => e.toJson()).toList();
      json['priceComponent'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_priceComponent'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  ChargeItemDefinitionPropertyGroup clone() => throw UnimplementedError();
  @override
  ChargeItemDefinitionPropertyGroup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ChargeItemDefinitionApplicability>? applicability,
    List<ChargeItemDefinitionPriceComponent>? priceComponent,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ChargeItemDefinitionPropertyGroup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      applicability: applicability ?? this.applicability,
      priceComponent: priceComponent ?? this.priceComponent,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ChargeItemDefinitionPriceComponent]
/// The price for a ChargeItem may be calculated as a base price with
/// surcharges/deductions that apply in certain conditions. A
/// ChargeItemDefinition resource that defines the prices, factors and
/// conditions that apply to a billing code is currently under development.
/// The priceComponent element can be used to offer transparency to the
/// recipient of the Invoice of how the prices have been calculated.
class ChargeItemDefinitionPriceComponent extends BackboneElement {
  /// Primary constructor for [ChargeItemDefinitionPriceComponent]

  ChargeItemDefinitionPriceComponent({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.type,
    this.code,
    this.factor,
    this.amount,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemDefinitionPriceComponent.fromJson(
      Map<String, dynamic> json) {
    return ChargeItemDefinitionPriceComponent(
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
      type: InvoicePriceComponentType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      factor: json['factor'] != null
          ? FhirDecimal.fromJson({
              'value': json['factor'],
              '_value': json['_factor'],
            })
          : null,
      amount: json['amount'] != null
          ? Money.fromJson(
              json['amount'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ChargeItemDefinitionPriceComponent] from a [String]
  /// or [YamlMap] object
  factory ChargeItemDefinitionPriceComponent.fromYaml(dynamic yaml) => yaml
          is String
      ? ChargeItemDefinitionPriceComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ChargeItemDefinitionPriceComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ChargeItemDefinitionPriceComponent cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ChargeItemDefinitionPriceComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemDefinitionPriceComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItemDefinitionPriceComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemDefinitionPriceComponent';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// This code identifies the type of the component.
  final InvoicePriceComponentType type;

  /// [code]
  /// A code that identifies the component. Codes may be used to
  /// differentiate between kinds of taxes, surcharges, discounts etc.
  final CodeableConcept? code;

  /// [factor]
  /// The factor that has been applied on the base price for calculating this
  /// component.
  final FhirDecimal? factor;

  /// [amount]
  /// The amount calculated for this component.
  final Money? amount;
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

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (code != null) {
      final fieldJson4 = code!.toJson();
      json['code'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_code'] = fieldJson4['_value'];
      }
    }

    if (factor != null) {
      final fieldJson5 = factor!.toJson();
      json['factor'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_factor'] = fieldJson5['_value'];
      }
    }

    if (amount != null) {
      final fieldJson6 = amount!.toJson();
      json['amount'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_amount'] = fieldJson6['_value'];
      }
    }

    return json;
  }

  @override
  ChargeItemDefinitionPriceComponent clone() => throw UnimplementedError();
  @override
  ChargeItemDefinitionPriceComponent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    InvoicePriceComponentType? type,
    CodeableConcept? code,
    FhirDecimal? factor,
    Money? amount,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ChargeItemDefinitionPriceComponent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      code: code ?? this.code,
      factor: factor ?? this.factor,
      amount: amount ?? this.amount,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
