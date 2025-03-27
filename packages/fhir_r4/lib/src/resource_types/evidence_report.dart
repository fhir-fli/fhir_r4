import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [EvidenceReport]
/// The EvidenceReport Resource is a specialized container for a collection
/// of resources and codable concepts, adapted to support compositions of
/// Evidence, EvidenceVariable, and Citation resources and related
/// concepts.
class EvidenceReport extends DomainResource {
  /// Primary constructor for
  /// [EvidenceReport]

  const EvidenceReport({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    required this.status,
    this.useContext,
    this.identifier,
    this.relatedIdentifier,
    this.citeAsX,
    this.type,
    this.note,
    this.relatedArtifact,
    required this.subject,
    this.publisher,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatesTo,
    this.section,
  }) : super(
          objectPath: 'EvidenceReport',
          resourceType: R4ResourceType.EvidenceReport,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceReport.empty() => EvidenceReport(
        status: PublicationStatus.values.first,
        subject: EvidenceReportSubject.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceReport.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceReport';
    return EvidenceReport(
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
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
        '$objectPath.status',
      )!,
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      relatedIdentifier: (json['relatedIdentifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedIdentifier',
              },
            ),
          )
          .toList(),
      citeAsX: JsonParser.parsePolymorphic<CiteAsXEvidenceReport>(
        json,
        {
          'citeAsReference': Reference.fromJson,
          'citeAsMarkdown': FhirMarkdown.fromJson,
        },
        objectPath,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedArtifact',
              },
            ),
          )
          .toList(),
      subject: JsonParser.parseObject<EvidenceReportSubject>(
        json,
        'subject',
        EvidenceReportSubject.fromJson,
        '$objectPath.subject',
      )!,
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
      author: (json['author'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.author',
              },
            ),
          )
          .toList(),
      editor: (json['editor'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.editor',
              },
            ),
          )
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reviewer',
              },
            ),
          )
          .toList(),
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endorser',
              },
            ),
          )
          .toList(),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<EvidenceReportRelatesTo>(
            (v) => EvidenceReportRelatesTo.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatesTo',
              },
            ),
          )
          .toList(),
      section: (json['section'] as List<dynamic>?)
          ?.map<EvidenceReportSection>(
            (v) => EvidenceReportSection.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.section',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceReport]
  /// from a [String] or [YamlMap] object
  factory EvidenceReport.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceReport.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceReport.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceReport '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceReport]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceReport.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceReport.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceReport';

  /// [url]
  /// An absolute URI that is used to identify this EvidenceReport when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this summary is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the summary is
  /// stored on different servers.
  final FhirUri? url;

  /// [status]
  /// The status of this summary. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate evidence report instances.
  final List<UsageContext>? useContext;

  /// [identifier]
  /// A formal identifier that is used to identify this EvidenceReport when
  /// it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [relatedIdentifier]
  /// A formal identifier that is used to identify things closely related to
  /// this EvidenceReport.
  final List<Identifier>? relatedIdentifier;

  /// [citeAsX]
  /// Citation Resource or display of suggested citation for this report.
  final CiteAsXEvidenceReport? citeAsX;

  /// Getter for [citeAsReference] as a Reference
  Reference? get citeAsReference => citeAsX?.isAs<Reference>();

  /// Getter for [citeAsMarkdown] as a FhirMarkdown
  FhirMarkdown? get citeAsMarkdown => citeAsX?.isAs<FhirMarkdown>();

  /// [type]
  /// Specifies the kind of report, such as grouping of classifiers, search
  /// results, or human-compiled expression.
  final CodeableConcept? type;

  /// [note]
  /// Used for footnotes and annotations.
  final List<Annotation>? note;

  /// [relatedArtifact]
  /// Link, description or reference to artifact associated with the report.
  final List<RelatedArtifact>? relatedArtifact;

  /// [subject]
  /// Specifies the subject or focus of the report. Answers "What is this
  /// report about?".
  final EvidenceReportSubject subject;

  /// [publisher]
  /// The name of the organization or individual that published the evidence
  /// report.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [author]
  /// An individiual, organization, or device primarily involved in the
  /// creation and maintenance of the content.
  final List<ContactDetail>? author;

  /// [editor]
  /// An individiual, organization, or device primarily responsible for
  /// internal coherence of the content.
  final List<ContactDetail>? editor;

  /// [reviewer]
  /// An individiual, organization, or device primarily responsible for
  /// review of some aspect of the content.
  final List<ContactDetail>? reviewer;

  /// [endorser]
  /// An individiual, organization, or device responsible for officially
  /// endorsing the content for use in some setting.
  final List<ContactDetail>? endorser;

  /// [relatesTo]
  /// Relationships that this composition has with other compositions or
  /// documents that already exist.
  final List<EvidenceReportRelatesTo>? relatesTo;

  /// [section]
  /// The root of the sections that make up the composition.
  final List<EvidenceReportSection>? section;
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
    addField('status', status);
    addField('useContext', useContext);
    addField('identifier', identifier);
    addField('relatedIdentifier', relatedIdentifier);
    if (citeAsX != null) {
      final fhirType = citeAsX!.fhirType;
      addField('citeAs${fhirType.capitalize()}', citeAsX);
    }

    addField('type', type);
    addField('note', note);
    addField('relatedArtifact', relatedArtifact);
    addField('subject', subject);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('author', author);
    addField('editor', editor);
    addField('reviewer', reviewer);
    addField('endorser', endorser);
    addField('relatesTo', relatesTo);
    addField('section', section);
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
      'status',
      'useContext',
      'identifier',
      'relatedIdentifier',
      'citeAsX',
      'type',
      'note',
      'relatedArtifact',
      'subject',
      'publisher',
      'contact',
      'author',
      'editor',
      'reviewer',
      'endorser',
      'relatesTo',
      'section',
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
      case 'status':
        fields.add(status);
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'relatedIdentifier':
        if (relatedIdentifier != null) {
          fields.addAll(relatedIdentifier!);
        }
      case 'citeAs':
        fields.add(citeAsX!);
      case 'citeAsX':
        fields.add(citeAsX!);
      case 'citeAsReference':
        if (citeAsX is Reference) {
          fields.add(citeAsX!);
        }
      case 'citeAsMarkdown':
        if (citeAsX is FhirMarkdown) {
          fields.add(citeAsX!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'relatedArtifact':
        if (relatedArtifact != null) {
          fields.addAll(relatedArtifact!);
        }
      case 'subject':
        fields.add(subject);
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
      case 'relatesTo':
        if (relatesTo != null) {
          fields.addAll(relatesTo!);
        }
      case 'section':
        if (section != null) {
          fields.addAll(section!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'contained':
        if (contained != null) {
          return contained!;
        } else {
          return <FhirBase>[];
        }
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
      case 'useContext':
        if (useContext != null) {
          return useContext!;
        } else {
          return <FhirBase>[];
        }
      case 'identifier':
        if (identifier != null) {
          return identifier!;
        } else {
          return <FhirBase>[];
        }
      case 'relatedIdentifier':
        if (relatedIdentifier != null) {
          return relatedIdentifier!;
        } else {
          return <FhirBase>[];
        }
      case 'note':
        if (note != null) {
          return note!;
        } else {
          return <FhirBase>[];
        }
      case 'relatedArtifact':
        if (relatedArtifact != null) {
          return relatedArtifact!;
        } else {
          return <FhirBase>[];
        }
      case 'contact':
        if (contact != null) {
          return contact!;
        } else {
          return <FhirBase>[];
        }
      case 'author':
        if (author != null) {
          return author!;
        } else {
          return <FhirBase>[];
        }
      case 'editor':
        if (editor != null) {
          return editor!;
        } else {
          return <FhirBase>[];
        }
      case 'reviewer':
        if (reviewer != null) {
          return reviewer!;
        } else {
          return <FhirBase>[];
        }
      case 'endorser':
        if (endorser != null) {
          return endorser!;
        } else {
          return <FhirBase>[];
        }
      case 'relatesTo':
        if (relatesTo != null) {
          return relatesTo!;
        } else {
          return <FhirBase>[];
        }
      case 'section':
        if (section != null) {
          return section!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
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
      case 'status':
        {
          if (child is PublicationStatus) {
            return copyWith(status: child);
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
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'relatedIdentifier':
        {
          if (child is List<Identifier>) {
            return copyWith(relatedIdentifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'citeAsX':
        {
          if (child is CiteAsXEvidenceReport) {
            // child is e.g. SubjectX union
            return copyWith(citeAsX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'citeAsReference':
        {
          if (child is Reference) {
            return copyWith(citeAsX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'citeAsFhirMarkdown':
        {
          if (child is FhirMarkdown) {
            return copyWith(citeAsX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            return copyWith(note: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'relatedArtifact':
        {
          if (child is List<RelatedArtifact>) {
            return copyWith(relatedArtifact: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subject':
        {
          if (child is EvidenceReportSubject) {
            return copyWith(subject: child);
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
      case 'author':
        {
          if (child is List<ContactDetail>) {
            return copyWith(author: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'editor':
        {
          if (child is List<ContactDetail>) {
            return copyWith(editor: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reviewer':
        {
          if (child is List<ContactDetail>) {
            return copyWith(reviewer: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'endorser':
        {
          if (child is List<ContactDetail>) {
            return copyWith(endorser: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'relatesTo':
        {
          if (child is List<EvidenceReportRelatesTo>) {
            return copyWith(relatesTo: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'section':
        {
          if (child is List<EvidenceReportSection>) {
            return copyWith(section: child);
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
      case 'status':
        return ['FhirCode'];
      case 'useContext':
        return ['UsageContext'];
      case 'identifier':
        return ['Identifier'];
      case 'relatedIdentifier':
        return ['Identifier'];
      case 'citeAs':
      case 'citeAsX':
        return ['Reference', 'FhirMarkdown'];
      case 'citeAsReference':
        return ['Reference'];
      case 'citeAsMarkdown':
        return ['FhirMarkdown'];
      case 'type':
        return ['CodeableConcept'];
      case 'note':
        return ['Annotation'];
      case 'relatedArtifact':
        return ['RelatedArtifact'];
      case 'subject':
        return ['EvidenceReportSubject'];
      case 'publisher':
        return ['FhirString'];
      case 'contact':
        return ['ContactDetail'];
      case 'author':
        return ['ContactDetail'];
      case 'editor':
        return ['ContactDetail'];
      case 'reviewer':
        return ['ContactDetail'];
      case 'endorser':
        return ['ContactDetail'];
      case 'relatesTo':
        return ['EvidenceReportRelatesTo'];
      case 'section':
        return ['EvidenceReportSection'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceReport]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EvidenceReport createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'meta':
        {
          return copyWith(meta: FhirMeta.empty());
        }
      case 'implicitRules':
        {
          return copyWith(implicitRules: FhirUri.empty());
        }
      case 'language':
        {
          return copyWith(language: CommonLanguages.empty());
        }
      case 'text':
        {
          return copyWith(text: Narrative.empty());
        }
      case 'contained':
        {
          return copyWith(contained: <Resource>[]);
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'url':
        {
          return copyWith(url: FhirUri.empty());
        }
      case 'status':
        {
          return copyWith(status: PublicationStatus.empty());
        }
      case 'useContext':
        {
          return copyWith(useContext: <UsageContext>[]);
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'relatedIdentifier':
        {
          return copyWith(relatedIdentifier: <Identifier>[]);
        }
      case 'citeAs':
      case 'citeAsX':
      case 'citeAsReference':
        {
          return copyWith(citeAsX: Reference.empty());
        }
      case 'citeAsMarkdown':
        {
          return copyWith(citeAsX: FhirMarkdown.empty());
        }
      case 'type':
        {
          return copyWith(type: CodeableConcept.empty());
        }
      case 'note':
        {
          return copyWith(note: <Annotation>[]);
        }
      case 'relatedArtifact':
        {
          return copyWith(relatedArtifact: <RelatedArtifact>[]);
        }
      case 'subject':
        {
          return copyWith(subject: EvidenceReportSubject.empty());
        }
      case 'publisher':
        {
          return copyWith(publisher: FhirString.empty());
        }
      case 'contact':
        {
          return copyWith(contact: <ContactDetail>[]);
        }
      case 'author':
        {
          return copyWith(author: <ContactDetail>[]);
        }
      case 'editor':
        {
          return copyWith(editor: <ContactDetail>[]);
        }
      case 'reviewer':
        {
          return copyWith(reviewer: <ContactDetail>[]);
        }
      case 'endorser':
        {
          return copyWith(endorser: <ContactDetail>[]);
        }
      case 'relatesTo':
        {
          return copyWith(relatesTo: <EvidenceReportRelatesTo>[]);
        }
      case 'section':
        {
          return copyWith(section: <EvidenceReportSection>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EvidenceReport clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool url = false,
    bool useContext = false,
    bool identifier = false,
    bool relatedIdentifier = false,
    bool citeAs = false,
    bool type = false,
    bool note = false,
    bool relatedArtifact = false,
    bool publisher = false,
    bool contact = false,
    bool author = false,
    bool editor = false,
    bool reviewer = false,
    bool endorser = false,
    bool relatesTo = false,
    bool section = false,
  }) {
    return EvidenceReport(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      url: url ? null : this.url,
      status: status,
      useContext: useContext ? null : this.useContext,
      identifier: identifier ? null : this.identifier,
      relatedIdentifier: relatedIdentifier ? null : this.relatedIdentifier,
      citeAsX: citeAs ? null : citeAsX,
      type: type ? null : this.type,
      note: note ? null : this.note,
      relatedArtifact: relatedArtifact ? null : this.relatedArtifact,
      subject: subject,
      publisher: publisher ? null : this.publisher,
      contact: contact ? null : this.contact,
      author: author ? null : this.author,
      editor: editor ? null : this.editor,
      reviewer: reviewer ? null : this.reviewer,
      endorser: endorser ? null : this.endorser,
      relatesTo: relatesTo ? null : this.relatesTo,
      section: section ? null : this.section,
    );
  }

  @override
  EvidenceReport clone() => throw UnimplementedError();
  @override
  EvidenceReport copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    PublicationStatus? status,
    List<UsageContext>? useContext,
    List<Identifier>? identifier,
    List<Identifier>? relatedIdentifier,
    CiteAsXEvidenceReport? citeAsX,
    CodeableConcept? type,
    List<Annotation>? note,
    List<RelatedArtifact>? relatedArtifact,
    EvidenceReportSubject? subject,
    FhirString? publisher,
    List<ContactDetail>? contact,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<EvidenceReportRelatesTo>? relatesTo,
    List<EvidenceReportSection>? section,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return EvidenceReport(
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
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      useContext: useContext
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.useContext',
                ),
              )
              .toList() ??
          this.useContext,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      relatedIdentifier: relatedIdentifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relatedIdentifier',
                ),
              )
              .toList() ??
          this.relatedIdentifier,
      citeAsX: citeAsX?.copyWith(
            objectPath: '$newObjectPath.citeAsX',
          ) as CiteAsXEvidenceReport? ??
          this.citeAsX,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      relatedArtifact: relatedArtifact
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relatedArtifact',
                ),
              )
              .toList() ??
          this.relatedArtifact,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
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
      author: author
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.author',
                ),
              )
              .toList() ??
          this.author,
      editor: editor
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.editor',
                ),
              )
              .toList() ??
          this.editor,
      reviewer: reviewer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reviewer',
                ),
              )
              .toList() ??
          this.reviewer,
      endorser: endorser
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.endorser',
                ),
              )
              .toList() ??
          this.endorser,
      relatesTo: relatesTo
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relatesTo',
                ),
              )
              .toList() ??
          this.relatesTo,
      section: section
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.section',
                ),
              )
              .toList() ??
          this.section,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceReport) {
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
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      relatedIdentifier,
      o.relatedIdentifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(citeAsX, o.citeAsX)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifact>(
      relatedArtifact,
      o.relatedArtifact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(subject, o.subject)) {
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
    if (!listEquals<ContactDetail>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      editor,
      o.editor,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      reviewer,
      o.reviewer,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      endorser,
      o.endorser,
    )) {
      return false;
    }
    if (!listEquals<EvidenceReportRelatesTo>(
      relatesTo,
      o.relatesTo,
    )) {
      return false;
    }
    if (!listEquals<EvidenceReportSection>(
      section,
      o.section,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceReportSubject]
/// Specifies the subject or focus of the report. Answers "What is this
/// report about?".
class EvidenceReportSubject extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceReportSubject]

  const EvidenceReportSubject({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.characteristic,
    this.note,
    super.disallowExtensions,
  }) : super(
          objectPath: 'EvidenceReport.subject',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceReportSubject.empty() => const EvidenceReportSubject();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportSubject.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceReport.subject';
    return EvidenceReportSubject(
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
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<EvidenceReportCharacteristic>(
            (v) => EvidenceReportCharacteristic.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.characteristic',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceReportSubject]
  /// from a [String] or [YamlMap] object
  factory EvidenceReportSubject.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceReportSubject.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceReportSubject.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceReportSubject '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceReportSubject]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceReportSubject.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceReportSubject.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceReportSubject';

  /// [characteristic]
  /// Characteristic.
  final List<EvidenceReportCharacteristic>? characteristic;

  /// [note]
  /// Used for general notes and annotations not coded elsewhere.
  final List<Annotation>? note;
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
    addField('characteristic', characteristic);
    addField('note', note);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'characteristic',
      'note',
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
      case 'characteristic':
        if (characteristic != null) {
          fields.addAll(characteristic!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
      case 'characteristic':
        if (characteristic != null) {
          return characteristic!;
        } else {
          return <FhirBase>[];
        }
      case 'note':
        if (note != null) {
          return note!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
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
      case 'characteristic':
        {
          if (child is List<EvidenceReportCharacteristic>) {
            return copyWith(characteristic: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            return copyWith(note: child);
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
      case 'characteristic':
        return ['EvidenceReportCharacteristic'];
      case 'note':
        return ['Annotation'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceReportSubject]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EvidenceReportSubject createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'characteristic':
        {
          return copyWith(characteristic: <EvidenceReportCharacteristic>[]);
        }
      case 'note':
        {
          return copyWith(note: <Annotation>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EvidenceReportSubject clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool characteristic = false,
    bool note = false,
  }) {
    return EvidenceReportSubject(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      characteristic: characteristic ? null : this.characteristic,
      note: note ? null : this.note,
    );
  }

  @override
  EvidenceReportSubject clone() => throw UnimplementedError();
  @override
  EvidenceReportSubject copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<EvidenceReportCharacteristic>? characteristic,
    List<Annotation>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EvidenceReportSubject(
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
      characteristic: characteristic
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.characteristic',
                ),
              )
              .toList() ??
          this.characteristic,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceReportSubject) {
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
    if (!listEquals<EvidenceReportCharacteristic>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceReportCharacteristic]
/// Characteristic.
class EvidenceReportCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceReportCharacteristic]

  const EvidenceReportCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.valueX,
    this.exclude,
    this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'EvidenceReport.subject.characteristic',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceReportCharacteristic.empty() => EvidenceReportCharacteristic(
        code: CodeableConcept.empty(),
        valueX: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceReport.subject.characteristic';
    return EvidenceReportCharacteristic(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXEvidenceReportCharacteristic>(
        json,
        {
          'valueReference': Reference.fromJson,
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
        },
        objectPath,
      )!,
      exclude: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'exclude',
        FhirBoolean.fromJson,
        '$objectPath.exclude',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [EvidenceReportCharacteristic]
  /// from a [String] or [YamlMap] object
  factory EvidenceReportCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceReportCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceReportCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceReportCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceReportCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceReportCharacteristic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceReportCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceReportCharacteristic';

  /// [code]
  /// Characteristic code.
  final CodeableConcept code;

  /// [valueX]
  /// Characteristic value.
  final ValueXEvidenceReportCharacteristic valueX;

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX.isAs<Reference>();

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX.isAs<CodeableConcept>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX.isAs<Range>();

  /// [exclude]
  /// Is used to express not the characteristic.
  final FhirBoolean? exclude;

  /// [period]
  /// Timeframe for the characteristic.
  final Period? period;
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
    addField('code', code);
    final valueXFhirType = valueX.fhirType;
    addField('value${valueXFhirType.capitalize()}', valueX);

    addField('exclude', exclude);
    addField('period', period);
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
      'valueX',
      'exclude',
      'period',
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
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX);
        }
      case 'exclude':
        if (exclude != null) {
          fields.add(exclude!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
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
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueX':
        {
          if (child is ValueXEvidenceReportCharacteristic) {
            // child is e.g. SubjectX union
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueReference':
        {
          if (child is Reference) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueQuantity':
        {
          if (child is Quantity) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueRange':
        {
          if (child is Range) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'exclude':
        {
          if (child is FhirBoolean) {
            return copyWith(exclude: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'period':
        {
          if (child is Period) {
            return copyWith(period: child);
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
      case 'code':
        return ['CodeableConcept'];
      case 'value':
      case 'valueX':
        return [
          'Reference',
          'CodeableConcept',
          'FhirBoolean',
          'Quantity',
          'Range',
        ];
      case 'valueReference':
        return ['Reference'];
      case 'valueCodeableConcept':
        return ['CodeableConcept'];
      case 'valueBoolean':
        return ['FhirBoolean'];
      case 'valueQuantity':
        return ['Quantity'];
      case 'valueRange':
        return ['Range'];
      case 'exclude':
        return ['FhirBoolean'];
      case 'period':
        return ['Period'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceReportCharacteristic]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EvidenceReportCharacteristic createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'code':
        {
          return copyWith(code: CodeableConcept.empty());
        }
      case 'value':
      case 'valueX':
      case 'valueReference':
        {
          return copyWith(valueX: Reference.empty());
        }
      case 'valueCodeableConcept':
        {
          return copyWith(valueX: CodeableConcept.empty());
        }
      case 'valueBoolean':
        {
          return copyWith(valueX: FhirBoolean.empty());
        }
      case 'valueQuantity':
        {
          return copyWith(valueX: Quantity.empty());
        }
      case 'valueRange':
        {
          return copyWith(valueX: Range.empty());
        }
      case 'exclude':
        {
          return copyWith(exclude: FhirBoolean.empty());
        }
      case 'period':
        {
          return copyWith(period: Period.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EvidenceReportCharacteristic clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool exclude = false,
    bool period = false,
  }) {
    return EvidenceReportCharacteristic(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      valueX: valueX,
      exclude: exclude ? null : this.exclude,
      period: period ? null : this.period,
    );
  }

  @override
  EvidenceReportCharacteristic clone() => throw UnimplementedError();
  @override
  EvidenceReportCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    ValueXEvidenceReportCharacteristic? valueX,
    FhirBoolean? exclude,
    Period? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EvidenceReportCharacteristic(
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
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXEvidenceReportCharacteristic? ??
          this.valueX,
      exclude: exclude?.copyWith(
            objectPath: '$newObjectPath.exclude',
          ) ??
          this.exclude,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceReportCharacteristic) {
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
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(valueX, o.valueX)) {
      return false;
    }
    if (!equalsDeepWithNull(exclude, o.exclude)) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    return true;
  }
}

/// [EvidenceReportRelatesTo]
/// Relationships that this composition has with other compositions or
/// documents that already exist.
class EvidenceReportRelatesTo extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceReportRelatesTo]

  const EvidenceReportRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.targetX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'EvidenceReport.relatesTo',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceReportRelatesTo.empty() => EvidenceReportRelatesTo(
        code: ReportRelationshipType.values.first,
        targetX: Identifier.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceReport.relatesTo';
    return EvidenceReportRelatesTo(
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
      code: JsonParser.parsePrimitive<ReportRelationshipType>(
        json,
        'code',
        ReportRelationshipType.fromJson,
        '$objectPath.code',
      )!,
      targetX: JsonParser.parsePolymorphic<TargetXEvidenceReportRelatesTo>(
        json,
        {
          'targetIdentifier': Identifier.fromJson,
          'targetReference': Reference.fromJson,
        },
        objectPath,
      )!,
    );
  }

  /// Deserialize [EvidenceReportRelatesTo]
  /// from a [String] or [YamlMap] object
  factory EvidenceReportRelatesTo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceReportRelatesTo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceReportRelatesTo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceReportRelatesTo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceReportRelatesTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceReportRelatesTo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceReportRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceReportRelatesTo';

  /// [code]
  /// The type of relationship that this composition has with anther
  /// composition or document.
  final ReportRelationshipType code;

  /// [targetX]
  /// The target composition/document of this relationship.
  final TargetXEvidenceReportRelatesTo targetX;

  /// Getter for [targetIdentifier] as a Identifier
  Identifier? get targetIdentifier => targetX.isAs<Identifier>();

  /// Getter for [targetReference] as a Reference
  Reference? get targetReference => targetX.isAs<Reference>();
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
    addField('code', code);
    final targetXFhirType = targetX.fhirType;
    addField('target${targetXFhirType.capitalize()}', targetX);

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
      'targetX',
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
      case 'target':
        fields.add(targetX);
      case 'targetX':
        fields.add(targetX);
      case 'targetIdentifier':
        if (targetX is Identifier) {
          fields.add(targetX);
        }
      case 'targetReference':
        if (targetX is Reference) {
          fields.add(targetX);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
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
      case 'code':
        {
          if (child is ReportRelationshipType) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetX':
        {
          if (child is TargetXEvidenceReportRelatesTo) {
            // child is e.g. SubjectX union
            return copyWith(targetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetIdentifier':
        {
          if (child is Identifier) {
            return copyWith(targetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetReference':
        {
          if (child is Reference) {
            return copyWith(targetX: child);
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
      case 'code':
        return ['FhirCode'];
      case 'target':
      case 'targetX':
        return ['Identifier', 'Reference'];
      case 'targetIdentifier':
        return ['Identifier'];
      case 'targetReference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceReportRelatesTo]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EvidenceReportRelatesTo createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'code':
        {
          return copyWith(code: ReportRelationshipType.empty());
        }
      case 'target':
      case 'targetX':
      case 'targetIdentifier':
        {
          return copyWith(targetX: Identifier.empty());
        }
      case 'targetReference':
        {
          return copyWith(targetX: Reference.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EvidenceReportRelatesTo clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return EvidenceReportRelatesTo(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      targetX: targetX,
    );
  }

  @override
  EvidenceReportRelatesTo clone() => throw UnimplementedError();
  @override
  EvidenceReportRelatesTo copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ReportRelationshipType? code,
    TargetXEvidenceReportRelatesTo? targetX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EvidenceReportRelatesTo(
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
      targetX: targetX?.copyWith(
            objectPath: '$newObjectPath.targetX',
          ) as TargetXEvidenceReportRelatesTo? ??
          this.targetX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceReportRelatesTo) {
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
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(targetX, o.targetX)) {
      return false;
    }
    return true;
  }
}

/// [EvidenceReportSection]
/// The root of the sections that make up the composition.
class EvidenceReportSection extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceReportSection]

  const EvidenceReportSection({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.title,
    this.focus,
    this.focusReference,
    this.author,
    this.text,
    this.mode,
    this.orderedBy,
    this.entryClassifier,
    this.entryReference,
    this.entryQuantity,
    this.emptyReason,
    this.section,
    super.disallowExtensions,
  }) : super(
          objectPath: 'EvidenceReport.section',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceReportSection.empty() => const EvidenceReportSection();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportSection.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceReport.section';
    return EvidenceReportSection(
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
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      focus: JsonParser.parseObject<CodeableConcept>(
        json,
        'focus',
        CodeableConcept.fromJson,
        '$objectPath.focus',
      ),
      focusReference: JsonParser.parseObject<Reference>(
        json,
        'focusReference',
        Reference.fromJson,
        '$objectPath.focusReference',
      ),
      author: (json['author'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.author',
              },
            ),
          )
          .toList(),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      mode: JsonParser.parsePrimitive<ListMode>(
        json,
        'mode',
        ListMode.fromJson,
        '$objectPath.mode',
      ),
      orderedBy: JsonParser.parseObject<CodeableConcept>(
        json,
        'orderedBy',
        CodeableConcept.fromJson,
        '$objectPath.orderedBy',
      ),
      entryClassifier: (json['entryClassifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.entryClassifier',
              },
            ),
          )
          .toList(),
      entryReference: (json['entryReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.entryReference',
              },
            ),
          )
          .toList(),
      entryQuantity: (json['entryQuantity'] as List<dynamic>?)
          ?.map<Quantity>(
            (v) => Quantity.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.entryQuantity',
              },
            ),
          )
          .toList(),
      emptyReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'emptyReason',
        CodeableConcept.fromJson,
        '$objectPath.emptyReason',
      ),
      section: (json['section'] as List<dynamic>?)
          ?.map<EvidenceReportSection>(
            (v) => EvidenceReportSection.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.section',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceReportSection]
  /// from a [String] or [YamlMap] object
  factory EvidenceReportSection.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceReportSection.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceReportSection.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceReportSection '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceReportSection]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceReportSection.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceReportSection.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceReportSection';

  /// [title]
  /// The label for this particular section. This will be part of the
  /// rendered content for the document, and is often used to build a table
  /// of contents.
  final FhirString? title;

  /// [focus]
  /// A code identifying the kind of content contained within the section.
  /// This should be consistent with the section title.
  final CodeableConcept? focus;

  /// [focusReference]
  /// A definitional Resource identifying the kind of content contained
  /// within the section. This should be consistent with the section title.
  final Reference? focusReference;

  /// [author]
  /// Identifies who is responsible for the information in this section, not
  /// necessarily who typed it in.
  final List<Reference>? author;

  /// [text]
  /// A human-readable narrative that contains the attested content of the
  /// section, used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is peferred to
  /// contain sufficient detail to make it acceptable for a human to just
  /// read the narrative.
  final Narrative? text;

  /// [mode]
  /// How the entry list was prepared - whether it is a working list that is
  /// suitable for being maintained on an ongoing basis, or if it represents
  /// a snapshot of a list of items from another source, or whether it is a
  /// prepared list where items may be marked as added, modified or deleted.
  final ListMode? mode;

  /// [orderedBy]
  /// Specifies the order applied to the items in the section entries.
  final CodeableConcept? orderedBy;

  /// [entryClassifier]
  /// Specifies any type of classification of the evidence report.
  final List<CodeableConcept>? entryClassifier;

  /// [entryReference]
  /// A reference to the actual resource from which the narrative in the
  /// section is derived.
  final List<Reference>? entryReference;

  /// [entryQuantity]
  /// Quantity as content.
  final List<Quantity>? entryQuantity;

  /// [emptyReason]
  /// If the section is empty, why the list is empty. An empty section
  /// typically has some text explaining the empty reason.
  final CodeableConcept? emptyReason;

  /// [section]
  /// A nested sub-section within this section.
  final List<EvidenceReportSection>? section;
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
    addField('title', title);
    addField('focus', focus);
    addField('focusReference', focusReference);
    addField('author', author);
    addField('text', text);
    addField('mode', mode);
    addField('orderedBy', orderedBy);
    addField('entryClassifier', entryClassifier);
    addField('entryReference', entryReference);
    addField('entryQuantity', entryQuantity);
    addField('emptyReason', emptyReason);
    addField('section', section);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'title',
      'focus',
      'focusReference',
      'author',
      'text',
      'mode',
      'orderedBy',
      'entryClassifier',
      'entryReference',
      'entryQuantity',
      'emptyReason',
      'section',
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
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'focus':
        if (focus != null) {
          fields.add(focus!);
        }
      case 'focusReference':
        if (focusReference != null) {
          fields.add(focusReference!);
        }
      case 'author':
        if (author != null) {
          fields.addAll(author!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'mode':
        if (mode != null) {
          fields.add(mode!);
        }
      case 'orderedBy':
        if (orderedBy != null) {
          fields.add(orderedBy!);
        }
      case 'entryClassifier':
        if (entryClassifier != null) {
          fields.addAll(entryClassifier!);
        }
      case 'entryReference':
        if (entryReference != null) {
          fields.addAll(entryReference!);
        }
      case 'entryQuantity':
        if (entryQuantity != null) {
          fields.addAll(entryQuantity!);
        }
      case 'emptyReason':
        if (emptyReason != null) {
          fields.add(emptyReason!);
        }
      case 'section':
        if (section != null) {
          fields.addAll(section!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
      case 'author':
        if (author != null) {
          return author!;
        } else {
          return <FhirBase>[];
        }
      case 'entryClassifier':
        if (entryClassifier != null) {
          return entryClassifier!;
        } else {
          return <FhirBase>[];
        }
      case 'entryReference':
        if (entryReference != null) {
          return entryReference!;
        } else {
          return <FhirBase>[];
        }
      case 'entryQuantity':
        if (entryQuantity != null) {
          return entryQuantity!;
        } else {
          return <FhirBase>[];
        }
      case 'section':
        if (section != null) {
          return section!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
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
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'focus':
        {
          if (child is CodeableConcept) {
            return copyWith(focus: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'focusReference':
        {
          if (child is Reference) {
            return copyWith(focusReference: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'author':
        {
          if (child is List<Reference>) {
            return copyWith(author: child);
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
      case 'mode':
        {
          if (child is ListMode) {
            return copyWith(mode: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'orderedBy':
        {
          if (child is CodeableConcept) {
            return copyWith(orderedBy: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'entryClassifier':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(entryClassifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'entryReference':
        {
          if (child is List<Reference>) {
            return copyWith(entryReference: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'entryQuantity':
        {
          if (child is List<Quantity>) {
            return copyWith(entryQuantity: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'emptyReason':
        {
          if (child is CodeableConcept) {
            return copyWith(emptyReason: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'section':
        {
          if (child is List<EvidenceReportSection>) {
            return copyWith(section: child);
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
      case 'title':
        return ['FhirString'];
      case 'focus':
        return ['CodeableConcept'];
      case 'focusReference':
        return ['Reference'];
      case 'author':
        return ['Reference'];
      case 'text':
        return ['Narrative'];
      case 'mode':
        return ['FhirCode'];
      case 'orderedBy':
        return ['CodeableConcept'];
      case 'entryClassifier':
        return ['CodeableConcept'];
      case 'entryReference':
        return ['Reference'];
      case 'entryQuantity':
        return ['Quantity'];
      case 'emptyReason':
        return ['CodeableConcept'];
      case 'section':
        return ['EvidenceReportSection'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceReportSection]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EvidenceReportSection createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'title':
        {
          return copyWith(title: FhirString.empty());
        }
      case 'focus':
        {
          return copyWith(focus: CodeableConcept.empty());
        }
      case 'focusReference':
        {
          return copyWith(focusReference: Reference.empty());
        }
      case 'author':
        {
          return copyWith(author: <Reference>[]);
        }
      case 'text':
        {
          return copyWith(text: Narrative.empty());
        }
      case 'mode':
        {
          return copyWith(mode: ListMode.empty());
        }
      case 'orderedBy':
        {
          return copyWith(orderedBy: CodeableConcept.empty());
        }
      case 'entryClassifier':
        {
          return copyWith(entryClassifier: <CodeableConcept>[]);
        }
      case 'entryReference':
        {
          return copyWith(entryReference: <Reference>[]);
        }
      case 'entryQuantity':
        {
          return copyWith(entryQuantity: <Quantity>[]);
        }
      case 'emptyReason':
        {
          return copyWith(emptyReason: CodeableConcept.empty());
        }
      case 'section':
        {
          return copyWith(section: <EvidenceReportSection>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EvidenceReportSection clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool title = false,
    bool focus = false,
    bool focusReference = false,
    bool author = false,
    bool text = false,
    bool mode = false,
    bool orderedBy = false,
    bool entryClassifier = false,
    bool entryReference = false,
    bool entryQuantity = false,
    bool emptyReason = false,
    bool section = false,
  }) {
    return EvidenceReportSection(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      title: title ? null : this.title,
      focus: focus ? null : this.focus,
      focusReference: focusReference ? null : this.focusReference,
      author: author ? null : this.author,
      text: text ? null : this.text,
      mode: mode ? null : this.mode,
      orderedBy: orderedBy ? null : this.orderedBy,
      entryClassifier: entryClassifier ? null : this.entryClassifier,
      entryReference: entryReference ? null : this.entryReference,
      entryQuantity: entryQuantity ? null : this.entryQuantity,
      emptyReason: emptyReason ? null : this.emptyReason,
      section: section ? null : this.section,
    );
  }

  @override
  EvidenceReportSection clone() => throw UnimplementedError();
  @override
  EvidenceReportSection copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    CodeableConcept? focus,
    Reference? focusReference,
    List<Reference>? author,
    Narrative? text,
    ListMode? mode,
    CodeableConcept? orderedBy,
    List<CodeableConcept>? entryClassifier,
    List<Reference>? entryReference,
    List<Quantity>? entryQuantity,
    CodeableConcept? emptyReason,
    List<EvidenceReportSection>? section,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EvidenceReportSection(
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
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      focus: focus?.copyWith(
            objectPath: '$newObjectPath.focus',
          ) ??
          this.focus,
      focusReference: focusReference?.copyWith(
            objectPath: '$newObjectPath.focusReference',
          ) ??
          this.focusReference,
      author: author
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.author',
                ),
              )
              .toList() ??
          this.author,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      mode: mode?.copyWith(
            objectPath: '$newObjectPath.mode',
          ) ??
          this.mode,
      orderedBy: orderedBy?.copyWith(
            objectPath: '$newObjectPath.orderedBy',
          ) ??
          this.orderedBy,
      entryClassifier: entryClassifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.entryClassifier',
                ),
              )
              .toList() ??
          this.entryClassifier,
      entryReference: entryReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.entryReference',
                ),
              )
              .toList() ??
          this.entryReference,
      entryQuantity: entryQuantity
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.entryQuantity',
                ),
              )
              .toList() ??
          this.entryQuantity,
      emptyReason: emptyReason?.copyWith(
            objectPath: '$newObjectPath.emptyReason',
          ) ??
          this.emptyReason,
      section: section
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.section',
                ),
              )
              .toList() ??
          this.section,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceReportSection) {
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
    if (!equalsDeepWithNull(title, o.title)) {
      return false;
    }
    if (!equalsDeepWithNull(focus, o.focus)) {
      return false;
    }
    if (!equalsDeepWithNull(focusReference, o.focusReference)) {
      return false;
    }
    if (!listEquals<Reference>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!equalsDeepWithNull(mode, o.mode)) {
      return false;
    }
    if (!equalsDeepWithNull(orderedBy, o.orderedBy)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      entryClassifier,
      o.entryClassifier,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      entryReference,
      o.entryReference,
    )) {
      return false;
    }
    if (!listEquals<Quantity>(
      entryQuantity,
      o.entryQuantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(emptyReason, o.emptyReason)) {
      return false;
    }
    if (!listEquals<EvidenceReportSection>(
      section,
      o.section,
    )) {
      return false;
    }
    return true;
  }
}
