import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        Evidence,
        EvidenceAttributeEstimate,
        EvidenceCertainty,
        EvidenceModelCharacteristic,
        EvidenceModelCharacteristicVariable,
        EvidenceSampleSize,
        EvidenceStatistic,
        EvidenceVariableDefinition,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [EvidenceBuilder]
/// The Evidence Resource provides a machine-interpretable expression of an
/// evidence concept including the evidence variables (eg population,
/// exposures/interventions, comparators, outcomes, measured variables,
/// confounding variables), the statistics, and the certainty of this
/// evidence.
class EvidenceBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [EvidenceBuilder]

  EvidenceBuilder({
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
    this.title,
    this.citeAsX,
    this.status,
    this.date,
    this.useContext,
    this.approvalDate,
    this.lastReviewDate,
    this.publisher,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.description,
    this.assertion,
    this.note,
    this.variableDefinition,
    this.synthesisType,
    this.studyType,
    this.statistic,
    this.certainty,
  }) : super(
          objectPath: 'Evidence',
          resourceType: R4ResourceType.Evidence,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EvidenceBuilder.empty() => EvidenceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence';
    return EvidenceBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      citeAsX: JsonParser.parsePolymorphic<CiteAsXEvidenceBuilder>(
        json,
        {
          'citeAsReference': ReferenceBuilder.fromJson,
          'citeAsMarkdown': FhirMarkdownBuilder.fromJson,
        },
        objectPath,
      ),
      status: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'status',
        PublicationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContextBuilder>(
            (v) => UsageContextBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      approvalDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'approvalDate',
        FhirDateBuilder.fromJson,
        '$objectPath.approvalDate',
      ),
      lastReviewDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'lastReviewDate',
        FhirDateBuilder.fromJson,
        '$objectPath.lastReviewDate',
      ),
      publisher: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'publisher',
        FhirStringBuilder.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      author: (json['author'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.author',
              },
            ),
          )
          .toList(),
      editor: (json['editor'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.editor',
              },
            ),
          )
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reviewer',
              },
            ),
          )
          .toList(),
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endorser',
              },
            ),
          )
          .toList(),
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map<RelatedArtifactBuilder>(
            (v) => RelatedArtifactBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedArtifact',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      assertion: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'assertion',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.assertion',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      variableDefinition: (json['variableDefinition'] as List<dynamic>?)
          ?.map<EvidenceVariableDefinitionBuilder>(
            (v) => EvidenceVariableDefinitionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.variableDefinition',
              },
            ),
          )
          .toList(),
      synthesisType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'synthesisType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.synthesisType',
      ),
      studyType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'studyType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.studyType',
      ),
      statistic: (json['statistic'] as List<dynamic>?)
          ?.map<EvidenceStatisticBuilder>(
            (v) => EvidenceStatisticBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.statistic',
              },
            ),
          )
          .toList(),
      certainty: (json['certainty'] as List<dynamic>?)
          ?.map<EvidenceCertaintyBuilder>(
            (v) => EvidenceCertaintyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.certainty',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Evidence';

  /// [url]
  /// An absolute URI that is used to identify this evidence when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this summary is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the summary is
  /// stored on different servers.
  FhirUriBuilder? url;

  /// [identifier]
  /// A formal identifier that is used to identify this summary when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  List<IdentifierBuilder>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the summary
  /// when it is referenced in a specification, model, design or instance.
  /// This is an arbitrary value managed by the summary author and is not
  /// expected to be globally unique. For example, it might be a timestamp
  /// (e.g. yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  FhirStringBuilder? version;

  /// [title]
  /// A short, descriptive, user-friendly title for the summary.
  FhirStringBuilder? title;

  /// [citeAsX]
  /// Citation Resource or display of suggested citation for this evidence.
  CiteAsXEvidenceBuilder? citeAsX;

  /// Getter for [citeAsReference] as a ReferenceBuilder
  ReferenceBuilder? get citeAsReference => citeAsX?.isAs<ReferenceBuilder>();

  /// Getter for [citeAsMarkdown] as a FhirMarkdownBuilder
  FhirMarkdownBuilder? get citeAsMarkdown =>
      citeAsX?.isAs<FhirMarkdownBuilder>();

  /// [status]
  /// The status of this summary. Enables tracking the life-cycle of the
  /// content.
  PublicationStatusBuilder? status;

  /// [date]
  /// The date (and optionally time) when the summary was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the summary changes.
  FhirDateTimeBuilder? date;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate evidence instances.
  List<UsageContextBuilder>? useContext;

  /// [approvalDate]
  /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for
  /// usage.
  FhirDateBuilder? approvalDate;

  /// [lastReviewDate]
  /// The date on which the resource content was last reviewed. Review
  /// happens periodically after approval but does not change the original
  /// approval date.
  FhirDateBuilder? lastReviewDate;

  /// [publisher]
  /// The name of the organization or individual that published the evidence.
  FhirStringBuilder? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  List<ContactDetailBuilder>? contact;

  /// [author]
  /// An individiual, organization, or device primarily involved in the
  /// creation and maintenance of the content.
  List<ContactDetailBuilder>? author;

  /// [editor]
  /// An individiual, organization, or device primarily responsible for
  /// internal coherence of the content.
  List<ContactDetailBuilder>? editor;

  /// [reviewer]
  /// An individiual, organization, or device primarily responsible for
  /// review of some aspect of the content.
  List<ContactDetailBuilder>? reviewer;

  /// [endorser]
  /// An individiual, organization, or device responsible for officially
  /// endorsing the content for use in some setting.
  List<ContactDetailBuilder>? endorser;

  /// [relatedArtifact]
  /// Link or citation to artifact associated with the summary.
  List<RelatedArtifactBuilder>? relatedArtifact;

  /// [description]
  /// A free text natural language description of the evidence from a
  /// consumer's perspective.
  FhirMarkdownBuilder? description;

  /// [assertion]
  /// Declarative description of the Evidence.
  FhirMarkdownBuilder? assertion;

  /// [note]
  /// Footnotes and/or explanatory notes.
  List<AnnotationBuilder>? note;

  /// [variableDefinition]
  /// Evidence variable such as population, exposure, or outcome.
  List<EvidenceVariableDefinitionBuilder>? variableDefinition;

  /// [synthesisType]
  /// The method to combine studies.
  CodeableConceptBuilder? synthesisType;

  /// [studyType]
  /// The type of study that produced this evidence.
  CodeableConceptBuilder? studyType;

  /// [statistic]
  /// Values and parameters for a single statistic.
  List<EvidenceStatisticBuilder>? statistic;

  /// [certainty]
  /// Assessment of certainty, confidence in the estimates, or quality of the
  /// evidence.
  List<EvidenceCertaintyBuilder>? certainty;

  /// Converts a [EvidenceBuilder]
  /// to [Evidence]
  @override
  Evidence build() => Evidence.fromJson(toJson());

  /// Converts a [EvidenceBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
    addField('identifier', identifier);
    addField('version', version);
    addField('title', title);
    if (citeAsX != null) {
      final fhirType = citeAsX!.fhirType;
      addField('citeAs${fhirType.capitalize()}', citeAsX);
    }

    addField('status', status);
    addField('date', date);
    addField('useContext', useContext);
    addField('approvalDate', approvalDate);
    addField('lastReviewDate', lastReviewDate);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('author', author);
    addField('editor', editor);
    addField('reviewer', reviewer);
    addField('endorser', endorser);
    addField('relatedArtifact', relatedArtifact);
    addField('description', description);
    addField('assertion', assertion);
    addField('note', note);
    addField('variableDefinition', variableDefinition);
    addField('synthesisType', synthesisType);
    addField('studyType', studyType);
    addField('statistic', statistic);
    addField('certainty', certainty);
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
      'identifier',
      'version',
      'title',
      'citeAsX',
      'status',
      'date',
      'useContext',
      'approvalDate',
      'lastReviewDate',
      'publisher',
      'contact',
      'author',
      'editor',
      'reviewer',
      'endorser',
      'relatedArtifact',
      'description',
      'assertion',
      'note',
      'variableDefinition',
      'synthesisType',
      'studyType',
      'statistic',
      'certainty',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'citeAs':
        if (citeAsX != null) {
          fields.add(citeAsX!);
        }
      case 'citeAsX':
        if (citeAsX != null) {
          fields.add(citeAsX!);
        }
      case 'citeAsReference':
        if (citeAsX is ReferenceBuilder) {
          fields.add(citeAsX!);
        }
      case 'citeAsMarkdown':
        if (citeAsX is FhirMarkdownBuilder) {
          fields.add(citeAsX!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'approvalDate':
        if (approvalDate != null) {
          fields.add(approvalDate!);
        }
      case 'lastReviewDate':
        if (lastReviewDate != null) {
          fields.add(lastReviewDate!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'author':
        if (author != null) {
          fields.addAll(author!);
        }
      case 'editor':
        if (editor != null) {
          fields.addAll(editor!);
        }
      case 'reviewer':
        if (reviewer != null) {
          fields.addAll(reviewer!);
        }
      case 'endorser':
        if (endorser != null) {
          fields.addAll(endorser!);
        }
      case 'relatedArtifact':
        if (relatedArtifact != null) {
          fields.addAll(relatedArtifact!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'assertion':
        if (assertion != null) {
          fields.add(assertion!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'variableDefinition':
        if (variableDefinition != null) {
          fields.addAll(variableDefinition!);
        }
      case 'synthesisType':
        if (synthesisType != null) {
          fields.add(synthesisType!);
        }
      case 'studyType':
        if (studyType != null) {
          fields.add(studyType!);
        }
      case 'statistic':
        if (statistic != null) {
          fields.addAll(statistic!);
        }
      case 'certainty':
        if (certainty != null) {
          fields.addAll(certainty!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [...(contained ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [...(identifier ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                version = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'title':
        {
          if (child is FhirStringBuilder) {
            title = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                title = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'citeAsX':
        {
          if (child is CiteAsXEvidenceBuilder) {
            citeAsX = child;
            return;
          } else {
            if (child is ReferenceBuilder) {
              citeAsX = child;
              return;
            }
            if (child is FhirMarkdownBuilder) {
              citeAsX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'citeAsReference':
        {
          if (child is ReferenceBuilder) {
            citeAsX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'citeAsMarkdown':
        {
          if (child is FhirMarkdownBuilder) {
            citeAsX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                date = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'useContext':
        {
          if (child is List<UsageContextBuilder>) {
            // Replace or create new list
            useContext = child;
            return;
          } else if (child is UsageContextBuilder) {
            // Add single element to existing list or create new list
            useContext = [...(useContext ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'approvalDate':
        {
          if (child is FhirDateBuilder) {
            approvalDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                approvalDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lastReviewDate':
        {
          if (child is FhirDateBuilder) {
            lastReviewDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                lastReviewDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'publisher':
        {
          if (child is FhirStringBuilder) {
            publisher = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                publisher = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contact':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            contact = [...(contact ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'author':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            author = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            author = [...(author ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'editor':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            editor = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            editor = [...(editor ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reviewer':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            reviewer = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            reviewer = [...(reviewer ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'endorser':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            endorser = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            endorser = [...(endorser ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relatedArtifact':
        {
          if (child is List<RelatedArtifactBuilder>) {
            // Replace or create new list
            relatedArtifact = child;
            return;
          } else if (child is RelatedArtifactBuilder) {
            // Add single element to existing list or create new list
            relatedArtifact = [...(relatedArtifact ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'assertion':
        {
          if (child is FhirMarkdownBuilder) {
            assertion = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                assertion = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [...(note ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'variableDefinition':
        {
          if (child is List<EvidenceVariableDefinitionBuilder>) {
            // Replace or create new list
            variableDefinition = child;
            return;
          } else if (child is EvidenceVariableDefinitionBuilder) {
            // Add single element to existing list or create new list
            variableDefinition = [...(variableDefinition ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'synthesisType':
        {
          if (child is CodeableConceptBuilder) {
            synthesisType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'studyType':
        {
          if (child is CodeableConceptBuilder) {
            studyType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'statistic':
        {
          if (child is List<EvidenceStatisticBuilder>) {
            // Replace or create new list
            statistic = child;
            return;
          } else if (child is EvidenceStatisticBuilder) {
            // Add single element to existing list or create new list
            statistic = [...(statistic ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'certainty':
        {
          if (child is List<EvidenceCertaintyBuilder>) {
            // Replace or create new list
            certainty = child;
            return;
          } else if (child is EvidenceCertaintyBuilder) {
            // Add single element to existing list or create new list
            certainty = [...(certainty ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'url':
        return ['FhirUriBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'citeAs':
      case 'citeAsX':
        return ['ReferenceBuilder', 'FhirMarkdownBuilder'];
      case 'citeAsReference':
        return ['ReferenceBuilder'];
      case 'citeAsMarkdown':
        return ['FhirMarkdownBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'useContext':
        return ['UsageContextBuilder'];
      case 'approvalDate':
        return ['FhirDateBuilder'];
      case 'lastReviewDate':
        return ['FhirDateBuilder'];
      case 'publisher':
        return ['FhirStringBuilder'];
      case 'contact':
        return ['ContactDetailBuilder'];
      case 'author':
        return ['ContactDetailBuilder'];
      case 'editor':
        return ['ContactDetailBuilder'];
      case 'reviewer':
        return ['ContactDetailBuilder'];
      case 'endorser':
        return ['ContactDetailBuilder'];
      case 'relatedArtifact':
        return ['RelatedArtifactBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'assertion':
        return ['FhirMarkdownBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'variableDefinition':
        return ['EvidenceVariableDefinitionBuilder'];
      case 'synthesisType':
        return ['CodeableConceptBuilder'];
      case 'studyType':
        return ['CodeableConceptBuilder'];
      case 'statistic':
        return ['EvidenceStatisticBuilder'];
      case 'certainty':
        return ['EvidenceCertaintyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'citeAs':
      case 'citeAsX':
      case 'citeAsReference':
        {
          citeAsX = ReferenceBuilder.empty();
          return;
        }
      case 'citeAsMarkdown':
        {
          citeAsX = FhirMarkdownBuilder.empty();
          return;
        }
      case 'status':
        {
          status = PublicationStatusBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'useContext':
        {
          useContext = <UsageContextBuilder>[];
          return;
        }
      case 'approvalDate':
        {
          approvalDate = FhirDateBuilder.empty();
          return;
        }
      case 'lastReviewDate':
        {
          lastReviewDate = FhirDateBuilder.empty();
          return;
        }
      case 'publisher':
        {
          publisher = FhirStringBuilder.empty();
          return;
        }
      case 'contact':
        {
          contact = <ContactDetailBuilder>[];
          return;
        }
      case 'author':
        {
          author = <ContactDetailBuilder>[];
          return;
        }
      case 'editor':
        {
          editor = <ContactDetailBuilder>[];
          return;
        }
      case 'reviewer':
        {
          reviewer = <ContactDetailBuilder>[];
          return;
        }
      case 'endorser':
        {
          endorser = <ContactDetailBuilder>[];
          return;
        }
      case 'relatedArtifact':
        {
          relatedArtifact = <RelatedArtifactBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'assertion':
        {
          assertion = FhirMarkdownBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'variableDefinition':
        {
          variableDefinition = <EvidenceVariableDefinitionBuilder>[];
          return;
        }
      case 'synthesisType':
        {
          synthesisType = CodeableConceptBuilder.empty();
          return;
        }
      case 'studyType':
        {
          studyType = CodeableConceptBuilder.empty();
          return;
        }
      case 'statistic':
        {
          statistic = <EvidenceStatisticBuilder>[];
          return;
        }
      case 'certainty':
        {
          certainty = <EvidenceCertaintyBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool url = false,
    bool identifier = false,
    bool version = false,
    bool title = false,
    bool citeAs = false,
    bool status = false,
    bool date = false,
    bool useContext = false,
    bool approvalDate = false,
    bool lastReviewDate = false,
    bool publisher = false,
    bool contact = false,
    bool author = false,
    bool editor = false,
    bool reviewer = false,
    bool endorser = false,
    bool relatedArtifact = false,
    bool description = false,
    bool assertion = false,
    bool note = false,
    bool variableDefinition = false,
    bool synthesisType = false,
    bool studyType = false,
    bool statistic = false,
    bool certainty = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (url) this.url = null;
    if (identifier) this.identifier = null;
    if (version) this.version = null;
    if (title) this.title = null;
    if (citeAs) citeAsX = null;
    if (status) this.status = null;
    if (date) this.date = null;
    if (useContext) this.useContext = null;
    if (approvalDate) this.approvalDate = null;
    if (lastReviewDate) this.lastReviewDate = null;
    if (publisher) this.publisher = null;
    if (contact) this.contact = null;
    if (author) this.author = null;
    if (editor) this.editor = null;
    if (reviewer) this.reviewer = null;
    if (endorser) this.endorser = null;
    if (relatedArtifact) this.relatedArtifact = null;
    if (description) this.description = null;
    if (assertion) this.assertion = null;
    if (note) this.note = null;
    if (variableDefinition) this.variableDefinition = null;
    if (synthesisType) this.synthesisType = null;
    if (studyType) this.studyType = null;
    if (statistic) this.statistic = null;
    if (certainty) this.certainty = null;
  }

  @override
  EvidenceBuilder clone() => throw UnimplementedError();
  @override
  EvidenceBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? url,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? version,
    FhirStringBuilder? title,
    CiteAsXEvidenceBuilder? citeAsX,
    PublicationStatusBuilder? status,
    FhirDateTimeBuilder? date,
    List<UsageContextBuilder>? useContext,
    FhirDateBuilder? approvalDate,
    FhirDateBuilder? lastReviewDate,
    FhirStringBuilder? publisher,
    List<ContactDetailBuilder>? contact,
    List<ContactDetailBuilder>? author,
    List<ContactDetailBuilder>? editor,
    List<ContactDetailBuilder>? reviewer,
    List<ContactDetailBuilder>? endorser,
    List<RelatedArtifactBuilder>? relatedArtifact,
    FhirMarkdownBuilder? description,
    FhirMarkdownBuilder? assertion,
    List<AnnotationBuilder>? note,
    List<EvidenceVariableDefinitionBuilder>? variableDefinition,
    CodeableConceptBuilder? synthesisType,
    CodeableConceptBuilder? studyType,
    List<EvidenceStatisticBuilder>? statistic,
    List<EvidenceCertaintyBuilder>? certainty,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = EvidenceBuilder(
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
      citeAsX: citeAsX ?? this.citeAsX,
      status: status ?? this.status,
      date: date ?? this.date,
      useContext: useContext ?? this.useContext,
      approvalDate: approvalDate ?? this.approvalDate,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      description: description ?? this.description,
      assertion: assertion ?? this.assertion,
      note: note ?? this.note,
      variableDefinition: variableDefinition ?? this.variableDefinition,
      synthesisType: synthesisType ?? this.synthesisType,
      studyType: studyType ?? this.studyType,
      statistic: statistic ?? this.statistic,
      certainty: certainty ?? this.certainty,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EvidenceBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
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
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      citeAsX,
      o.citeAsX,
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
      date,
      o.date,
    )) {
      return false;
    }
    if (!listEquals<UsageContextBuilder>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      approvalDate,
      o.approvalDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lastReviewDate,
      o.lastReviewDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      editor,
      o.editor,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      reviewer,
      o.reviewer,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      endorser,
      o.endorser,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifactBuilder>(
      relatedArtifact,
      o.relatedArtifact,
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
      assertion,
      o.assertion,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<EvidenceVariableDefinitionBuilder>(
      variableDefinition,
      o.variableDefinition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      synthesisType,
      o.synthesisType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      studyType,
      o.studyType,
    )) {
      return false;
    }
    if (!listEquals<EvidenceStatisticBuilder>(
      statistic,
      o.statistic,
    )) {
      return false;
    }
    if (!listEquals<EvidenceCertaintyBuilder>(
      certainty,
      o.certainty,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceVariableDefinitionBuilder]
/// Evidence variable such as population, exposure, or outcome.
class EvidenceVariableDefinitionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EvidenceVariableDefinitionBuilder]

  EvidenceVariableDefinitionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    this.variableRole,
    this.observed,
    this.intended,
    this.directnessMatch,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Evidence.variableDefinition',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EvidenceVariableDefinitionBuilder.empty() =>
      EvidenceVariableDefinitionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence.variableDefinition';
    return EvidenceVariableDefinitionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      variableRole: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'variableRole',
        CodeableConceptBuilder.fromJson,
        '$objectPath.variableRole',
      ),
      observed: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'observed',
        ReferenceBuilder.fromJson,
        '$objectPath.observed',
      ),
      intended: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'intended',
        ReferenceBuilder.fromJson,
        '$objectPath.intended',
      ),
      directnessMatch: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'directnessMatch',
        CodeableConceptBuilder.fromJson,
        '$objectPath.directnessMatch',
      ),
    );
  }

  /// Deserialize [EvidenceVariableDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableDefinition';

  /// [description]
  /// A text description or summary of the variable.
  FhirMarkdownBuilder? description;

  /// [note]
  /// Footnotes and/or explanatory notes.
  List<AnnotationBuilder>? note;

  /// [variableRole]
  /// population | subpopulation | exposure | referenceExposure |
  /// measuredVariable | confounder.
  CodeableConceptBuilder? variableRole;

  /// [observed]
  /// Definition of the actual variable related to the statistic(s).
  ReferenceBuilder? observed;

  /// [intended]
  /// Definition of the intended variable related to the Evidence.
  ReferenceBuilder? intended;

  /// [directnessMatch]
  /// Indication of quality of match between intended variable to actual
  /// variable.
  CodeableConceptBuilder? directnessMatch;

  /// Converts a [EvidenceVariableDefinitionBuilder]
  /// to [EvidenceVariableDefinition]
  @override
  EvidenceVariableDefinition build() =>
      EvidenceVariableDefinition.fromJson(toJson());

  /// Converts a [EvidenceVariableDefinitionBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('description', description);
    addField('note', note);
    addField('variableRole', variableRole);
    addField('observed', observed);
    addField('intended', intended);
    addField('directnessMatch', directnessMatch);
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
      'note',
      'variableRole',
      'observed',
      'intended',
      'directnessMatch',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'variableRole':
        if (variableRole != null) {
          fields.add(variableRole!);
        }
      case 'observed':
        if (observed != null) {
          fields.add(observed!);
        }
      case 'intended':
        if (intended != null) {
          fields.add(intended!);
        }
      case 'directnessMatch':
        if (directnessMatch != null) {
          fields.add(directnessMatch!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [...(note ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'variableRole':
        {
          if (child is CodeableConceptBuilder) {
            variableRole = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'observed':
        {
          if (child is ReferenceBuilder) {
            observed = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'intended':
        {
          if (child is ReferenceBuilder) {
            intended = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'directnessMatch':
        {
          if (child is CodeableConceptBuilder) {
            directnessMatch = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'variableRole':
        return ['CodeableConceptBuilder'];
      case 'observed':
        return ['ReferenceBuilder'];
      case 'intended':
        return ['ReferenceBuilder'];
      case 'directnessMatch':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceVariableDefinitionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'variableRole':
        {
          variableRole = CodeableConceptBuilder.empty();
          return;
        }
      case 'observed':
        {
          observed = ReferenceBuilder.empty();
          return;
        }
      case 'intended':
        {
          intended = ReferenceBuilder.empty();
          return;
        }
      case 'directnessMatch':
        {
          directnessMatch = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool note = false,
    bool variableRole = false,
    bool observed = false,
    bool intended = false,
    bool directnessMatch = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (description) this.description = null;
    if (note) this.note = null;
    if (variableRole) this.variableRole = null;
    if (observed) this.observed = null;
    if (intended) this.intended = null;
    if (directnessMatch) this.directnessMatch = null;
  }

  @override
  EvidenceVariableDefinitionBuilder clone() => throw UnimplementedError();
  @override
  EvidenceVariableDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirMarkdownBuilder? description,
    List<AnnotationBuilder>? note,
    CodeableConceptBuilder? variableRole,
    ReferenceBuilder? observed,
    ReferenceBuilder? intended,
    CodeableConceptBuilder? directnessMatch,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EvidenceVariableDefinitionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      note: note ?? this.note,
      variableRole: variableRole ?? this.variableRole,
      observed: observed ?? this.observed,
      intended: intended ?? this.intended,
      directnessMatch: directnessMatch ?? this.directnessMatch,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EvidenceVariableDefinitionBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      variableRole,
      o.variableRole,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      observed,
      o.observed,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      intended,
      o.intended,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      directnessMatch,
      o.directnessMatch,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceStatisticBuilder]
/// Values and parameters for a single statistic.
class EvidenceStatisticBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EvidenceStatisticBuilder]

  EvidenceStatisticBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    this.statisticType,
    this.category,
    this.quantity,
    this.numberOfEvents,
    this.numberAffected,
    this.sampleSize,
    this.attributeEstimate,
    this.modelCharacteristic,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Evidence.statistic',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EvidenceStatisticBuilder.empty() => EvidenceStatisticBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceStatisticBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence.statistic';
    return EvidenceStatisticBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      statisticType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'statisticType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.statisticType',
      ),
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      numberOfEvents: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'numberOfEvents',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.numberOfEvents',
      ),
      numberAffected: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'numberAffected',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.numberAffected',
      ),
      sampleSize: JsonParser.parseObject<EvidenceSampleSizeBuilder>(
        json,
        'sampleSize',
        EvidenceSampleSizeBuilder.fromJson,
        '$objectPath.sampleSize',
      ),
      attributeEstimate: (json['attributeEstimate'] as List<dynamic>?)
          ?.map<EvidenceAttributeEstimateBuilder>(
            (v) => EvidenceAttributeEstimateBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.attributeEstimate',
              },
            ),
          )
          .toList(),
      modelCharacteristic: (json['modelCharacteristic'] as List<dynamic>?)
          ?.map<EvidenceModelCharacteristicBuilder>(
            (v) => EvidenceModelCharacteristicBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modelCharacteristic',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceStatisticBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceStatisticBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceStatisticBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceStatisticBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceStatisticBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceStatisticBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceStatisticBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceStatisticBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceStatistic';

  /// [description]
  /// A description of the content value of the statistic.
  FhirStringBuilder? description;

  /// [note]
  /// Footnotes and/or explanatory notes.
  List<AnnotationBuilder>? note;

  /// [statisticType]
  /// Type of statistic, eg relative risk.
  CodeableConceptBuilder? statisticType;

  /// [category]
  /// When the measured variable is handled categorically, the category
  /// element is used to define which category the statistic is reporting.
  CodeableConceptBuilder? category;

  /// [quantity]
  /// Statistic value.
  QuantityBuilder? quantity;

  /// [numberOfEvents]
  /// The number of events associated with the statistic, where the unit of
  /// analysis is different from numberAffected, sampleSize.knownDataCount
  /// and sampleSize.numberOfParticipants.
  FhirUnsignedIntBuilder? numberOfEvents;

  /// [numberAffected]
  /// The number of participants affected where the unit of analysis is the
  /// same as sampleSize.knownDataCount and sampleSize.numberOfParticipants.
  FhirUnsignedIntBuilder? numberAffected;

  /// [sampleSize]
  /// Number of samples in the statistic.
  EvidenceSampleSizeBuilder? sampleSize;

  /// [attributeEstimate]
  /// A statistical attribute of the statistic such as a measure of
  /// heterogeneity.
  List<EvidenceAttributeEstimateBuilder>? attributeEstimate;

  /// [modelCharacteristic]
  /// A component of the method to generate the statistic.
  List<EvidenceModelCharacteristicBuilder>? modelCharacteristic;

  /// Converts a [EvidenceStatisticBuilder]
  /// to [EvidenceStatistic]
  @override
  EvidenceStatistic build() => EvidenceStatistic.fromJson(toJson());

  /// Converts a [EvidenceStatisticBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('description', description);
    addField('note', note);
    addField('statisticType', statisticType);
    addField('category', category);
    addField('quantity', quantity);
    addField('numberOfEvents', numberOfEvents);
    addField('numberAffected', numberAffected);
    addField('sampleSize', sampleSize);
    addField('attributeEstimate', attributeEstimate);
    addField('modelCharacteristic', modelCharacteristic);
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
      'note',
      'statisticType',
      'category',
      'quantity',
      'numberOfEvents',
      'numberAffected',
      'sampleSize',
      'attributeEstimate',
      'modelCharacteristic',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'statisticType':
        if (statisticType != null) {
          fields.add(statisticType!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'numberOfEvents':
        if (numberOfEvents != null) {
          fields.add(numberOfEvents!);
        }
      case 'numberAffected':
        if (numberAffected != null) {
          fields.add(numberAffected!);
        }
      case 'sampleSize':
        if (sampleSize != null) {
          fields.add(sampleSize!);
        }
      case 'attributeEstimate':
        if (attributeEstimate != null) {
          fields.addAll(attributeEstimate!);
        }
      case 'modelCharacteristic':
        if (modelCharacteristic != null) {
          fields.addAll(modelCharacteristic!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [...(note ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'statisticType':
        {
          if (child is CodeableConceptBuilder) {
            statisticType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'numberOfEvents':
        {
          if (child is FhirUnsignedIntBuilder) {
            numberOfEvents = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types, first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  numberOfEvents = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'numberAffected':
        {
          if (child is FhirUnsignedIntBuilder) {
            numberAffected = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types, first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  numberAffected = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sampleSize':
        {
          if (child is EvidenceSampleSizeBuilder) {
            sampleSize = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'attributeEstimate':
        {
          if (child is List<EvidenceAttributeEstimateBuilder>) {
            // Replace or create new list
            attributeEstimate = child;
            return;
          } else if (child is EvidenceAttributeEstimateBuilder) {
            // Add single element to existing list or create new list
            attributeEstimate = [...(attributeEstimate ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modelCharacteristic':
        {
          if (child is List<EvidenceModelCharacteristicBuilder>) {
            // Replace or create new list
            modelCharacteristic = child;
            return;
          } else if (child is EvidenceModelCharacteristicBuilder) {
            // Add single element to existing list or create new list
            modelCharacteristic = [...(modelCharacteristic ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'statisticType':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'numberOfEvents':
        return ['FhirUnsignedIntBuilder'];
      case 'numberAffected':
        return ['FhirUnsignedIntBuilder'];
      case 'sampleSize':
        return ['EvidenceSampleSizeBuilder'];
      case 'attributeEstimate':
        return ['EvidenceAttributeEstimateBuilder'];
      case 'modelCharacteristic':
        return ['EvidenceModelCharacteristicBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceStatisticBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'statisticType':
        {
          statisticType = CodeableConceptBuilder.empty();
          return;
        }
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'numberOfEvents':
        {
          numberOfEvents = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'numberAffected':
        {
          numberAffected = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'sampleSize':
        {
          sampleSize = EvidenceSampleSizeBuilder.empty();
          return;
        }
      case 'attributeEstimate':
        {
          attributeEstimate = <EvidenceAttributeEstimateBuilder>[];
          return;
        }
      case 'modelCharacteristic':
        {
          modelCharacteristic = <EvidenceModelCharacteristicBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool note = false,
    bool statisticType = false,
    bool category = false,
    bool quantity = false,
    bool numberOfEvents = false,
    bool numberAffected = false,
    bool sampleSize = false,
    bool attributeEstimate = false,
    bool modelCharacteristic = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (description) this.description = null;
    if (note) this.note = null;
    if (statisticType) this.statisticType = null;
    if (category) this.category = null;
    if (quantity) this.quantity = null;
    if (numberOfEvents) this.numberOfEvents = null;
    if (numberAffected) this.numberAffected = null;
    if (sampleSize) this.sampleSize = null;
    if (attributeEstimate) this.attributeEstimate = null;
    if (modelCharacteristic) this.modelCharacteristic = null;
  }

  @override
  EvidenceStatisticBuilder clone() => throw UnimplementedError();
  @override
  EvidenceStatisticBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? description,
    List<AnnotationBuilder>? note,
    CodeableConceptBuilder? statisticType,
    CodeableConceptBuilder? category,
    QuantityBuilder? quantity,
    FhirUnsignedIntBuilder? numberOfEvents,
    FhirUnsignedIntBuilder? numberAffected,
    EvidenceSampleSizeBuilder? sampleSize,
    List<EvidenceAttributeEstimateBuilder>? attributeEstimate,
    List<EvidenceModelCharacteristicBuilder>? modelCharacteristic,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EvidenceStatisticBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      note: note ?? this.note,
      statisticType: statisticType ?? this.statisticType,
      category: category ?? this.category,
      quantity: quantity ?? this.quantity,
      numberOfEvents: numberOfEvents ?? this.numberOfEvents,
      numberAffected: numberAffected ?? this.numberAffected,
      sampleSize: sampleSize ?? this.sampleSize,
      attributeEstimate: attributeEstimate ?? this.attributeEstimate,
      modelCharacteristic: modelCharacteristic ?? this.modelCharacteristic,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EvidenceStatisticBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      statisticType,
      o.statisticType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      numberOfEvents,
      o.numberOfEvents,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      numberAffected,
      o.numberAffected,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sampleSize,
      o.sampleSize,
    )) {
      return false;
    }
    if (!listEquals<EvidenceAttributeEstimateBuilder>(
      attributeEstimate,
      o.attributeEstimate,
    )) {
      return false;
    }
    if (!listEquals<EvidenceModelCharacteristicBuilder>(
      modelCharacteristic,
      o.modelCharacteristic,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceSampleSizeBuilder]
/// Number of samples in the statistic.
class EvidenceSampleSizeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EvidenceSampleSizeBuilder]

  EvidenceSampleSizeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    this.numberOfStudies,
    this.numberOfParticipants,
    this.knownDataCount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Evidence.statistic.sampleSize',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EvidenceSampleSizeBuilder.empty() => EvidenceSampleSizeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceSampleSizeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence.statistic.sampleSize';
    return EvidenceSampleSizeBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      numberOfStudies: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'numberOfStudies',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.numberOfStudies',
      ),
      numberOfParticipants: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'numberOfParticipants',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.numberOfParticipants',
      ),
      knownDataCount: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'knownDataCount',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.knownDataCount',
      ),
    );
  }

  /// Deserialize [EvidenceSampleSizeBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceSampleSizeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceSampleSizeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceSampleSizeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceSampleSizeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceSampleSizeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceSampleSizeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceSampleSizeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceSampleSize';

  /// [description]
  /// Human-readable summary of population sample size.
  FhirStringBuilder? description;

  /// [note]
  /// Footnote or explanatory note about the sample size.
  List<AnnotationBuilder>? note;

  /// [numberOfStudies]
  /// Number of participants in the population.
  FhirUnsignedIntBuilder? numberOfStudies;

  /// [numberOfParticipants]
  /// A human-readable string to clarify or explain concepts about the sample
  /// size.
  FhirUnsignedIntBuilder? numberOfParticipants;

  /// [knownDataCount]
  /// Number of participants with known results for measured variables.
  FhirUnsignedIntBuilder? knownDataCount;

  /// Converts a [EvidenceSampleSizeBuilder]
  /// to [EvidenceSampleSize]
  @override
  EvidenceSampleSize build() => EvidenceSampleSize.fromJson(toJson());

  /// Converts a [EvidenceSampleSizeBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('description', description);
    addField('note', note);
    addField('numberOfStudies', numberOfStudies);
    addField('numberOfParticipants', numberOfParticipants);
    addField('knownDataCount', knownDataCount);
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
      'note',
      'numberOfStudies',
      'numberOfParticipants',
      'knownDataCount',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'numberOfStudies':
        if (numberOfStudies != null) {
          fields.add(numberOfStudies!);
        }
      case 'numberOfParticipants':
        if (numberOfParticipants != null) {
          fields.add(numberOfParticipants!);
        }
      case 'knownDataCount':
        if (knownDataCount != null) {
          fields.add(knownDataCount!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [...(note ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'numberOfStudies':
        {
          if (child is FhirUnsignedIntBuilder) {
            numberOfStudies = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types, first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  numberOfStudies = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'numberOfParticipants':
        {
          if (child is FhirUnsignedIntBuilder) {
            numberOfParticipants = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types, first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  numberOfParticipants = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'knownDataCount':
        {
          if (child is FhirUnsignedIntBuilder) {
            knownDataCount = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types, first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  knownDataCount = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'numberOfStudies':
        return ['FhirUnsignedIntBuilder'];
      case 'numberOfParticipants':
        return ['FhirUnsignedIntBuilder'];
      case 'knownDataCount':
        return ['FhirUnsignedIntBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceSampleSizeBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'numberOfStudies':
        {
          numberOfStudies = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'numberOfParticipants':
        {
          numberOfParticipants = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'knownDataCount':
        {
          knownDataCount = FhirUnsignedIntBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool note = false,
    bool numberOfStudies = false,
    bool numberOfParticipants = false,
    bool knownDataCount = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (description) this.description = null;
    if (note) this.note = null;
    if (numberOfStudies) this.numberOfStudies = null;
    if (numberOfParticipants) this.numberOfParticipants = null;
    if (knownDataCount) this.knownDataCount = null;
  }

  @override
  EvidenceSampleSizeBuilder clone() => throw UnimplementedError();
  @override
  EvidenceSampleSizeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? description,
    List<AnnotationBuilder>? note,
    FhirUnsignedIntBuilder? numberOfStudies,
    FhirUnsignedIntBuilder? numberOfParticipants,
    FhirUnsignedIntBuilder? knownDataCount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EvidenceSampleSizeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      note: note ?? this.note,
      numberOfStudies: numberOfStudies ?? this.numberOfStudies,
      numberOfParticipants: numberOfParticipants ?? this.numberOfParticipants,
      knownDataCount: knownDataCount ?? this.knownDataCount,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EvidenceSampleSizeBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      numberOfStudies,
      o.numberOfStudies,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      numberOfParticipants,
      o.numberOfParticipants,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      knownDataCount,
      o.knownDataCount,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceAttributeEstimateBuilder]
/// A statistical attribute of the statistic such as a measure of
/// heterogeneity.
class EvidenceAttributeEstimateBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EvidenceAttributeEstimateBuilder]

  EvidenceAttributeEstimateBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    this.type,
    this.quantity,
    this.level,
    this.range,
    this.attributeEstimate,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Evidence.statistic.attributeEstimate',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EvidenceAttributeEstimateBuilder.empty() =>
      EvidenceAttributeEstimateBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceAttributeEstimateBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence.statistic.attributeEstimate';
    return EvidenceAttributeEstimateBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      level: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'level',
        FhirDecimalBuilder.fromJson,
        '$objectPath.level',
      ),
      range: JsonParser.parseObject<RangeBuilder>(
        json,
        'range',
        RangeBuilder.fromJson,
        '$objectPath.range',
      ),
      attributeEstimate: (json['attributeEstimate'] as List<dynamic>?)
          ?.map<EvidenceAttributeEstimateBuilder>(
            (v) => EvidenceAttributeEstimateBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.attributeEstimate',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceAttributeEstimateBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceAttributeEstimateBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceAttributeEstimateBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceAttributeEstimateBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceAttributeEstimateBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceAttributeEstimateBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceAttributeEstimateBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceAttributeEstimateBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceAttributeEstimate';

  /// [description]
  /// Human-readable summary of the estimate.
  FhirStringBuilder? description;

  /// [note]
  /// Footnote or explanatory note about the estimate.
  List<AnnotationBuilder>? note;

  /// [type]
  /// The type of attribute estimate, eg confidence interval or p value.
  CodeableConceptBuilder? type;

  /// [quantity]
  /// The singular quantity of the attribute estimate, for attribute
  /// estimates represented as single values; also used to report unit of
  /// measure.
  QuantityBuilder? quantity;

  /// [level]
  /// Use 95 for a 95% confidence interval.
  FhirDecimalBuilder? level;

  /// [range]
  /// Lower bound of confidence interval.
  RangeBuilder? range;

  /// [attributeEstimate]
  /// A nested attribute estimate; which is the attribute estimate of an
  /// attribute estimate.
  List<EvidenceAttributeEstimateBuilder>? attributeEstimate;

  /// Converts a [EvidenceAttributeEstimateBuilder]
  /// to [EvidenceAttributeEstimate]
  @override
  EvidenceAttributeEstimate build() =>
      EvidenceAttributeEstimate.fromJson(toJson());

  /// Converts a [EvidenceAttributeEstimateBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('description', description);
    addField('note', note);
    addField('type', type);
    addField('quantity', quantity);
    addField('level', level);
    addField('range', range);
    addField('attributeEstimate', attributeEstimate);
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
      'note',
      'type',
      'quantity',
      'level',
      'range',
      'attributeEstimate',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'level':
        if (level != null) {
          fields.add(level!);
        }
      case 'range':
        if (range != null) {
          fields.add(range!);
        }
      case 'attributeEstimate':
        if (attributeEstimate != null) {
          fields.addAll(attributeEstimate!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [...(note ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'level':
        {
          if (child is FhirDecimalBuilder) {
            level = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types, first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  level = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'range':
        {
          if (child is RangeBuilder) {
            range = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'attributeEstimate':
        {
          if (child is List<EvidenceAttributeEstimateBuilder>) {
            // Replace or create new list
            attributeEstimate = child;
            return;
          } else if (child is EvidenceAttributeEstimateBuilder) {
            // Add single element to existing list or create new list
            attributeEstimate = [...(attributeEstimate ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'level':
        return ['FhirDecimalBuilder'];
      case 'range':
        return ['RangeBuilder'];
      case 'attributeEstimate':
        return ['EvidenceAttributeEstimateBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceAttributeEstimateBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'level':
        {
          level = FhirDecimalBuilder.empty();
          return;
        }
      case 'range':
        {
          range = RangeBuilder.empty();
          return;
        }
      case 'attributeEstimate':
        {
          attributeEstimate = <EvidenceAttributeEstimateBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool note = false,
    bool type = false,
    bool quantity = false,
    bool level = false,
    bool range = false,
    bool attributeEstimate = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (description) this.description = null;
    if (note) this.note = null;
    if (type) this.type = null;
    if (quantity) this.quantity = null;
    if (level) this.level = null;
    if (range) this.range = null;
    if (attributeEstimate) this.attributeEstimate = null;
  }

  @override
  EvidenceAttributeEstimateBuilder clone() => throw UnimplementedError();
  @override
  EvidenceAttributeEstimateBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? description,
    List<AnnotationBuilder>? note,
    CodeableConceptBuilder? type,
    QuantityBuilder? quantity,
    FhirDecimalBuilder? level,
    RangeBuilder? range,
    List<EvidenceAttributeEstimateBuilder>? attributeEstimate,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EvidenceAttributeEstimateBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      note: note ?? this.note,
      type: type ?? this.type,
      quantity: quantity ?? this.quantity,
      level: level ?? this.level,
      range: range ?? this.range,
      attributeEstimate: attributeEstimate ?? this.attributeEstimate,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EvidenceAttributeEstimateBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
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
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      level,
      o.level,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      range,
      o.range,
    )) {
      return false;
    }
    if (!listEquals<EvidenceAttributeEstimateBuilder>(
      attributeEstimate,
      o.attributeEstimate,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceModelCharacteristicBuilder]
/// A component of the method to generate the statistic.
class EvidenceModelCharacteristicBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EvidenceModelCharacteristicBuilder]

  EvidenceModelCharacteristicBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.value,
    this.variable,
    this.attributeEstimate,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Evidence.statistic.modelCharacteristic',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EvidenceModelCharacteristicBuilder.empty() =>
      EvidenceModelCharacteristicBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceModelCharacteristicBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence.statistic.modelCharacteristic';
    return EvidenceModelCharacteristicBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      value: JsonParser.parseObject<QuantityBuilder>(
        json,
        'value',
        QuantityBuilder.fromJson,
        '$objectPath.value',
      ),
      variable: (json['variable'] as List<dynamic>?)
          ?.map<EvidenceModelCharacteristicVariableBuilder>(
            (v) => EvidenceModelCharacteristicVariableBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.variable',
              },
            ),
          )
          .toList(),
      attributeEstimate: (json['attributeEstimate'] as List<dynamic>?)
          ?.map<EvidenceAttributeEstimateBuilder>(
            (v) => EvidenceAttributeEstimateBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.attributeEstimate',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceModelCharacteristicBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceModelCharacteristicBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceModelCharacteristicBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceModelCharacteristicBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceModelCharacteristicBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceModelCharacteristicBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceModelCharacteristicBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceModelCharacteristicBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceModelCharacteristic';

  /// [code]
  /// Description of a component of the method to generate the statistic.
  CodeableConceptBuilder? code;

  /// [value]
  /// Further specification of the quantified value of the component of the
  /// method to generate the statistic.
  QuantityBuilder? value;

  /// [variable]
  /// A variable adjusted for in the adjusted analysis.
  List<EvidenceModelCharacteristicVariableBuilder>? variable;

  /// [attributeEstimate]
  /// An attribute of the statistic used as a model characteristic.
  List<EvidenceAttributeEstimateBuilder>? attributeEstimate;

  /// Converts a [EvidenceModelCharacteristicBuilder]
  /// to [EvidenceModelCharacteristic]
  @override
  EvidenceModelCharacteristic build() =>
      EvidenceModelCharacteristic.fromJson(toJson());

  /// Converts a [EvidenceModelCharacteristicBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    addField('value', value);
    addField('variable', variable);
    addField('attributeEstimate', attributeEstimate);
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
      'variable',
      'attributeEstimate',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'value':
        if (value != null) {
          fields.add(value!);
        }
      case 'variable':
        if (variable != null) {
          fields.addAll(variable!);
        }
      case 'attributeEstimate':
        if (attributeEstimate != null) {
          fields.addAll(attributeEstimate!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
        {
          if (child is QuantityBuilder) {
            value = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'variable':
        {
          if (child is List<EvidenceModelCharacteristicVariableBuilder>) {
            // Replace or create new list
            variable = child;
            return;
          } else if (child is EvidenceModelCharacteristicVariableBuilder) {
            // Add single element to existing list or create new list
            variable = [...(variable ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'attributeEstimate':
        {
          if (child is List<EvidenceAttributeEstimateBuilder>) {
            // Replace or create new list
            attributeEstimate = child;
            return;
          } else if (child is EvidenceAttributeEstimateBuilder) {
            // Add single element to existing list or create new list
            attributeEstimate = [...(attributeEstimate ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'value':
        return ['QuantityBuilder'];
      case 'variable':
        return ['EvidenceModelCharacteristicVariableBuilder'];
      case 'attributeEstimate':
        return ['EvidenceAttributeEstimateBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceModelCharacteristicBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
        {
          value = QuantityBuilder.empty();
          return;
        }
      case 'variable':
        {
          variable = <EvidenceModelCharacteristicVariableBuilder>[];
          return;
        }
      case 'attributeEstimate':
        {
          attributeEstimate = <EvidenceAttributeEstimateBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool code = false,
    bool value = false,
    bool variable = false,
    bool attributeEstimate = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (code) this.code = null;
    if (value) this.value = null;
    if (variable) this.variable = null;
    if (attributeEstimate) this.attributeEstimate = null;
  }

  @override
  EvidenceModelCharacteristicBuilder clone() => throw UnimplementedError();
  @override
  EvidenceModelCharacteristicBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    QuantityBuilder? value,
    List<EvidenceModelCharacteristicVariableBuilder>? variable,
    List<EvidenceAttributeEstimateBuilder>? attributeEstimate,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EvidenceModelCharacteristicBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      value: value ?? this.value,
      variable: variable ?? this.variable,
      attributeEstimate: attributeEstimate ?? this.attributeEstimate,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EvidenceModelCharacteristicBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<EvidenceModelCharacteristicVariableBuilder>(
      variable,
      o.variable,
    )) {
      return false;
    }
    if (!listEquals<EvidenceAttributeEstimateBuilder>(
      attributeEstimate,
      o.attributeEstimate,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceModelCharacteristicVariableBuilder]
/// A variable adjusted for in the adjusted analysis.
class EvidenceModelCharacteristicVariableBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EvidenceModelCharacteristicVariableBuilder]

  EvidenceModelCharacteristicVariableBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.variableDefinition,
    this.handling,
    this.valueCategory,
    this.valueQuantity,
    this.valueRange,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Evidence.statistic.modelCharacteristic.variable',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EvidenceModelCharacteristicVariableBuilder.empty() =>
      EvidenceModelCharacteristicVariableBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceModelCharacteristicVariableBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence.statistic.modelCharacteristic.variable';
    return EvidenceModelCharacteristicVariableBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      variableDefinition: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'variableDefinition',
        ReferenceBuilder.fromJson,
        '$objectPath.variableDefinition',
      ),
      handling: JsonParser.parsePrimitive<EvidenceVariableHandlingBuilder>(
        json,
        'handling',
        EvidenceVariableHandlingBuilder.fromJson,
        '$objectPath.handling',
      ),
      valueCategory: (json['valueCategory'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.valueCategory',
              },
            ),
          )
          .toList(),
      valueQuantity: (json['valueQuantity'] as List<dynamic>?)
          ?.map<QuantityBuilder>(
            (v) => QuantityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.valueQuantity',
              },
            ),
          )
          .toList(),
      valueRange: (json['valueRange'] as List<dynamic>?)
          ?.map<RangeBuilder>(
            (v) => RangeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.valueRange',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceModelCharacteristicVariableBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceModelCharacteristicVariableBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceModelCharacteristicVariableBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceModelCharacteristicVariableBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceModelCharacteristicVariableBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceModelCharacteristicVariableBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceModelCharacteristicVariableBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceModelCharacteristicVariableBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceModelCharacteristicVariable';

  /// [variableDefinition]
  /// Description of the variable.
  ReferenceBuilder? variableDefinition;

  /// [handling]
  /// How the variable is classified for use in adjusted analysis.
  EvidenceVariableHandlingBuilder? handling;

  /// [valueCategory]
  /// Description for grouping of ordinal or polychotomous variables.
  List<CodeableConceptBuilder>? valueCategory;

  /// [valueQuantity]
  /// Discrete value for grouping of ordinal or polychotomous variables.
  List<QuantityBuilder>? valueQuantity;

  /// [valueRange]
  /// Range of values for grouping of ordinal or polychotomous variables.
  List<RangeBuilder>? valueRange;

  /// Converts a [EvidenceModelCharacteristicVariableBuilder]
  /// to [EvidenceModelCharacteristicVariable]
  @override
  EvidenceModelCharacteristicVariable build() =>
      EvidenceModelCharacteristicVariable.fromJson(toJson());

  /// Converts a [EvidenceModelCharacteristicVariableBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('variableDefinition', variableDefinition);
    addField('handling', handling);
    addField('valueCategory', valueCategory);
    addField('valueQuantity', valueQuantity);
    addField('valueRange', valueRange);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'variableDefinition',
      'handling',
      'valueCategory',
      'valueQuantity',
      'valueRange',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'variableDefinition':
        if (variableDefinition != null) {
          fields.add(variableDefinition!);
        }
      case 'handling':
        if (handling != null) {
          fields.add(handling!);
        }
      case 'valueCategory':
        if (valueCategory != null) {
          fields.addAll(valueCategory!);
        }
      case 'valueQuantity':
        if (valueQuantity != null) {
          fields.addAll(valueQuantity!);
        }
      case 'valueRange':
        if (valueRange != null) {
          fields.addAll(valueRange!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'variableDefinition':
        {
          if (child is ReferenceBuilder) {
            variableDefinition = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'handling':
        {
          if (child is EvidenceVariableHandlingBuilder) {
            handling = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCategory':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            valueCategory = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            valueCategory = [...(valueCategory ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueQuantity':
        {
          if (child is List<QuantityBuilder>) {
            // Replace or create new list
            valueQuantity = child;
            return;
          } else if (child is QuantityBuilder) {
            // Add single element to existing list or create new list
            valueQuantity = [...(valueQuantity ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueRange':
        {
          if (child is List<RangeBuilder>) {
            // Replace or create new list
            valueRange = child;
            return;
          } else if (child is RangeBuilder) {
            // Add single element to existing list or create new list
            valueRange = [...(valueRange ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'variableDefinition':
        return ['ReferenceBuilder'];
      case 'handling':
        return ['FhirCodeEnumBuilder'];
      case 'valueCategory':
        return ['CodeableConceptBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceModelCharacteristicVariableBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'variableDefinition':
        {
          variableDefinition = ReferenceBuilder.empty();
          return;
        }
      case 'handling':
        {
          handling = EvidenceVariableHandlingBuilder.empty();
          return;
        }
      case 'valueCategory':
        {
          valueCategory = <CodeableConceptBuilder>[];
          return;
        }
      case 'valueQuantity':
        {
          valueQuantity = <QuantityBuilder>[];
          return;
        }
      case 'valueRange':
        {
          valueRange = <RangeBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool variableDefinition = false,
    bool handling = false,
    bool valueCategory = false,
    bool valueQuantity = false,
    bool valueRange = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (variableDefinition) this.variableDefinition = null;
    if (handling) this.handling = null;
    if (valueCategory) this.valueCategory = null;
    if (valueQuantity) this.valueQuantity = null;
    if (valueRange) this.valueRange = null;
  }

  @override
  EvidenceModelCharacteristicVariableBuilder clone() =>
      throw UnimplementedError();
  @override
  EvidenceModelCharacteristicVariableBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? variableDefinition,
    EvidenceVariableHandlingBuilder? handling,
    List<CodeableConceptBuilder>? valueCategory,
    List<QuantityBuilder>? valueQuantity,
    List<RangeBuilder>? valueRange,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EvidenceModelCharacteristicVariableBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      variableDefinition: variableDefinition ?? this.variableDefinition,
      handling: handling ?? this.handling,
      valueCategory: valueCategory ?? this.valueCategory,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EvidenceModelCharacteristicVariableBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      variableDefinition,
      o.variableDefinition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      handling,
      o.handling,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      valueCategory,
      o.valueCategory,
    )) {
      return false;
    }
    if (!listEquals<QuantityBuilder>(
      valueQuantity,
      o.valueQuantity,
    )) {
      return false;
    }
    if (!listEquals<RangeBuilder>(
      valueRange,
      o.valueRange,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceCertaintyBuilder]
/// Assessment of certainty, confidence in the estimates, or quality of the
/// evidence.
class EvidenceCertaintyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EvidenceCertaintyBuilder]

  EvidenceCertaintyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    this.type,
    this.rating,
    this.rater,
    this.subcomponent,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Evidence.certainty',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EvidenceCertaintyBuilder.empty() => EvidenceCertaintyBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceCertaintyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence.certainty';
    return EvidenceCertaintyBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      rating: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'rating',
        CodeableConceptBuilder.fromJson,
        '$objectPath.rating',
      ),
      rater: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'rater',
        FhirStringBuilder.fromJson,
        '$objectPath.rater',
      ),
      subcomponent: (json['subcomponent'] as List<dynamic>?)
          ?.map<EvidenceCertaintyBuilder>(
            (v) => EvidenceCertaintyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subcomponent',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceCertaintyBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceCertaintyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceCertaintyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceCertaintyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceCertaintyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceCertaintyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceCertaintyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceCertaintyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceCertainty';

  /// [description]
  /// Textual description of certainty.
  FhirStringBuilder? description;

  /// [note]
  /// Footnotes and/or explanatory notes.
  List<AnnotationBuilder>? note;

  /// [type]
  /// Aspect of certainty being rated.
  CodeableConceptBuilder? type;

  /// [rating]
  /// Assessment or judgement of the aspect.
  CodeableConceptBuilder? rating;

  /// [rater]
  /// Individual or group who did the rating.
  FhirStringBuilder? rater;

  /// [subcomponent]
  /// A domain or subdomain of certainty.
  List<EvidenceCertaintyBuilder>? subcomponent;

  /// Converts a [EvidenceCertaintyBuilder]
  /// to [EvidenceCertainty]
  @override
  EvidenceCertainty build() => EvidenceCertainty.fromJson(toJson());

  /// Converts a [EvidenceCertaintyBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('description', description);
    addField('note', note);
    addField('type', type);
    addField('rating', rating);
    addField('rater', rater);
    addField('subcomponent', subcomponent);
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
      'note',
      'type',
      'rating',
      'rater',
      'subcomponent',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'rating':
        if (rating != null) {
          fields.add(rating!);
        }
      case 'rater':
        if (rater != null) {
          fields.add(rater!);
        }
      case 'subcomponent':
        if (subcomponent != null) {
          fields.addAll(subcomponent!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [...(note ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rating':
        {
          if (child is CodeableConceptBuilder) {
            rating = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rater':
        {
          if (child is FhirStringBuilder) {
            rater = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                rater = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subcomponent':
        {
          if (child is List<EvidenceCertaintyBuilder>) {
            // Replace or create new list
            subcomponent = child;
            return;
          } else if (child is EvidenceCertaintyBuilder) {
            // Add single element to existing list or create new list
            subcomponent = [...(subcomponent ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'rating':
        return ['CodeableConceptBuilder'];
      case 'rater':
        return ['FhirStringBuilder'];
      case 'subcomponent':
        return ['EvidenceCertaintyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceCertaintyBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'rating':
        {
          rating = CodeableConceptBuilder.empty();
          return;
        }
      case 'rater':
        {
          rater = FhirStringBuilder.empty();
          return;
        }
      case 'subcomponent':
        {
          subcomponent = <EvidenceCertaintyBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool note = false,
    bool type = false,
    bool rating = false,
    bool rater = false,
    bool subcomponent = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (description) this.description = null;
    if (note) this.note = null;
    if (type) this.type = null;
    if (rating) this.rating = null;
    if (rater) this.rater = null;
    if (subcomponent) this.subcomponent = null;
  }

  @override
  EvidenceCertaintyBuilder clone() => throw UnimplementedError();
  @override
  EvidenceCertaintyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? description,
    List<AnnotationBuilder>? note,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? rating,
    FhirStringBuilder? rater,
    List<EvidenceCertaintyBuilder>? subcomponent,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EvidenceCertaintyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      note: note ?? this.note,
      type: type ?? this.type,
      rating: rating ?? this.rating,
      rater: rater ?? this.rater,
      subcomponent: subcomponent ?? this.subcomponent,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EvidenceCertaintyBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
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
      rating,
      o.rating,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rater,
      o.rater,
    )) {
      return false;
    }
    if (!listEquals<EvidenceCertaintyBuilder>(
      subcomponent,
      o.subcomponent,
    )) {
      return false;
    }
    return true;
  }
}
