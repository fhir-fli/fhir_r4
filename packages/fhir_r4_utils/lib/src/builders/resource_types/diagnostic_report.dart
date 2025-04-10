import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        DiagnosticReport,
        DiagnosticReportMedia,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [DiagnosticReportBuilder]
/// The findings and interpretation of diagnostic tests performed on
/// patients, groups of patients, devices, and locations, and/or specimens
/// derived from these. The report includes clinical context such as
/// requesting and provider information, and some mix of atomic results,
/// images, textual and coded interpretations, and formatted representation
/// of diagnostic reports.
class DiagnosticReportBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [DiagnosticReportBuilder]

  DiagnosticReportBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.status,
    this.category,
    this.code,
    this.subject,
    this.encounter,
    this.effectiveX,
    this.issued,
    this.performer,
    this.resultsInterpreter,
    this.specimen,
    this.result,
    this.imagingStudy,
    this.media,
    this.conclusion,
    this.conclusionCode,
    this.presentedForm,
  }) : super(
          objectPath: 'DiagnosticReport',
          resourceType: R4ResourceType.DiagnosticReport,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DiagnosticReportBuilder.empty() => DiagnosticReportBuilder(
        status: DiagnosticReportStatusBuilder.values.first,
        code: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DiagnosticReportBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DiagnosticReport';
    return DiagnosticReportBuilder(
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
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<DiagnosticReportStatusBuilder>(
        json,
        'status',
        DiagnosticReportStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
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
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      effectiveX:
          JsonParser.parsePolymorphic<EffectiveXDiagnosticReportBuilder>(
        json,
        {
          'effectiveDateTime': FhirDateTimeBuilder.fromJson,
          'effectivePeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      issued: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'issued',
        FhirInstantBuilder.fromJson,
        '$objectPath.issued',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      resultsInterpreter: (json['resultsInterpreter'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.resultsInterpreter',
              },
            ),
          )
          .toList(),
      specimen: (json['specimen'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specimen',
              },
            ),
          )
          .toList(),
      result: (json['result'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.result',
              },
            ),
          )
          .toList(),
      imagingStudy: (json['imagingStudy'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.imagingStudy',
              },
            ),
          )
          .toList(),
      media: (json['media'] as List<dynamic>?)
          ?.map<DiagnosticReportMediaBuilder>(
            (v) => DiagnosticReportMediaBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.media',
              },
            ),
          )
          .toList(),
      conclusion: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'conclusion',
        FhirStringBuilder.fromJson,
        '$objectPath.conclusion',
      ),
      conclusionCode: (json['conclusionCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.conclusionCode',
              },
            ),
          )
          .toList(),
      presentedForm: (json['presentedForm'] as List<dynamic>?)
          ?.map<AttachmentBuilder>(
            (v) => AttachmentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.presentedForm',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DiagnosticReportBuilder]
  /// from a [String] or [YamlMap] object
  factory DiagnosticReportBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DiagnosticReportBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DiagnosticReportBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DiagnosticReportBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DiagnosticReportBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DiagnosticReportBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DiagnosticReportBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DiagnosticReport';

  /// [identifier]
  /// Identifiers assigned to this report by the performer or other systems.
  List<IdentifierBuilder>? identifier;

  /// [basedOn]
  /// Details concerning a service requested.
  List<ReferenceBuilder>? basedOn;

  /// [status]
  /// The status of the diagnostic report.
  DiagnosticReportStatusBuilder? status;

  /// [category]
  /// A code that classifies the clinical discipline, department or
  /// diagnostic service that created the report (e.g. cardiology,
  /// biochemistry, hematology, MRI). This is used for searching, sorting and
  /// display purposes.
  List<CodeableConceptBuilder>? category;

  /// [code]
  /// A code or name that describes this diagnostic report.
  CodeableConceptBuilder? code;

  /// [subject]
  /// The subject of the report. Usually, but not always, this is a patient.
  /// However, diagnostic services also perform analyses on specimens
  /// collected from a variety of other sources.
  ReferenceBuilder? subject;

  /// [encounter]
  /// The healthcare event (e.g. a patient and healthcare provider
  /// interaction) which this DiagnosticReport is about.
  ReferenceBuilder? encounter;

  /// [effectiveX]
  /// The time or time-period the observed values are related to. When the
  /// subject of the report is a patient, this is usually either the time of
  /// the procedure or of specimen collection(s), but very often the source
  /// of the date/time is not known, only the date/time itself.
  EffectiveXDiagnosticReportBuilder? effectiveX;

  /// Getter for [effectiveDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get effectiveDateTime =>
      effectiveX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [effectivePeriod] as a PeriodBuilder
  PeriodBuilder? get effectivePeriod => effectiveX?.isAs<PeriodBuilder>();

  /// [issued]
  /// The date and time that this version of the report was made available to
  /// providers, typically after the report was reviewed and verified.
  FhirInstantBuilder? issued;

  /// [performer]
  /// The diagnostic service that is responsible for issuing the report.
  List<ReferenceBuilder>? performer;

  /// [resultsInterpreter]
  /// The practitioner or organization that is responsible for the report's
  /// conclusions and interpretations.
  List<ReferenceBuilder>? resultsInterpreter;

  /// [specimen]
  /// Details about the specimens on which this diagnostic report is based.
  List<ReferenceBuilder>? specimen;

  /// [result]
  /// [Observations](observation.html) that are part of this diagnostic
  /// report.
  List<ReferenceBuilder>? result;

  /// [imagingStudy]
  /// One or more links to full details of any imaging performed during the
  /// diagnostic investigation. Typically, this is imaging performed by DICOM
  /// enabled modalities, but this is not required. A fully enabled PACS
  /// viewer can use this information to provide views of the source images.
  List<ReferenceBuilder>? imagingStudy;

  /// [media]
  /// A list of key images associated with this report. The images are
  /// generally created during the diagnostic process, and may be directly of
  /// the patient, or of treated specimens (i.e. slides of interest).
  List<DiagnosticReportMediaBuilder>? media;

  /// [conclusion]
  /// Concise and clinically contextualized summary conclusion
  /// (interpretation/impression) of the diagnostic report.
  FhirStringBuilder? conclusion;

  /// [conclusionCode]
  /// One or more codes that represent the summary conclusion
  /// (interpretation/impression) of the diagnostic report.
  List<CodeableConceptBuilder>? conclusionCode;

  /// [presentedForm]
  /// Rich text representation of the entire result as issued by the
  /// diagnostic service. Multiple formats are allowed but they SHALL be
  /// semantically equivalent.
  List<AttachmentBuilder>? presentedForm;

  /// Converts a [DiagnosticReportBuilder]
  /// to [DiagnosticReport]
  @override
  DiagnosticReport build() => DiagnosticReport.fromJson(toJson());

  /// Converts a [DiagnosticReportBuilder]
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
    addField('identifier', identifier);
    addField('basedOn', basedOn);
    addField('status', status);
    addField('category', category);
    addField('code', code);
    addField('subject', subject);
    addField('encounter', encounter);
    if (effectiveX != null) {
      final fhirType = effectiveX!.fhirType;
      addField('effective${fhirType.capitalize()}', effectiveX);
    }

    addField('issued', issued);
    addField('performer', performer);
    addField('resultsInterpreter', resultsInterpreter);
    addField('specimen', specimen);
    addField('result', result);
    addField('imagingStudy', imagingStudy);
    addField('media', media);
    addField('conclusion', conclusion);
    addField('conclusionCode', conclusionCode);
    addField('presentedForm', presentedForm);
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
      'identifier',
      'basedOn',
      'status',
      'category',
      'code',
      'subject',
      'encounter',
      'effectiveX',
      'issued',
      'performer',
      'resultsInterpreter',
      'specimen',
      'result',
      'imagingStudy',
      'media',
      'conclusion',
      'conclusionCode',
      'presentedForm',
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'effective':
        if (effectiveX != null) {
          fields.add(effectiveX!);
        }
      case 'effectiveX':
        if (effectiveX != null) {
          fields.add(effectiveX!);
        }
      case 'effectiveDateTime':
        if (effectiveX is FhirDateTimeBuilder) {
          fields.add(effectiveX!);
        }
      case 'effectivePeriod':
        if (effectiveX is PeriodBuilder) {
          fields.add(effectiveX!);
        }
      case 'issued':
        if (issued != null) {
          fields.add(issued!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'resultsInterpreter':
        if (resultsInterpreter != null) {
          fields.addAll(resultsInterpreter!);
        }
      case 'specimen':
        if (specimen != null) {
          fields.addAll(specimen!);
        }
      case 'result':
        if (result != null) {
          fields.addAll(result!);
        }
      case 'imagingStudy':
        if (imagingStudy != null) {
          fields.addAll(imagingStudy!);
        }
      case 'media':
        if (media != null) {
          fields.addAll(media!);
        }
      case 'conclusion':
        if (conclusion != null) {
          fields.add(conclusion!);
        }
      case 'conclusionCode':
        if (conclusionCode != null) {
          fields.addAll(conclusionCode!);
        }
      case 'presentedForm':
        if (presentedForm != null) {
          fields.addAll(presentedForm!);
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
            contained = [
              ...(contained ?? []),
              child,
            ];
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
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
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
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
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
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'basedOn':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            basedOn = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            basedOn = [
              ...(basedOn ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is DiagnosticReportStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = DiagnosticReportStatusBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [
              ...(category ?? []),
              child,
            ];
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
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'encounter':
        {
          if (child is ReferenceBuilder) {
            encounter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effective':
      case 'effectiveX':
        {
          if (child is EffectiveXDiagnosticReportBuilder) {
            effectiveX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              effectiveX = child;
              return;
            }
            if (child is PeriodBuilder) {
              effectiveX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effectiveDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            effectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectivePeriod':
        {
          if (child is PeriodBuilder) {
            effectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'issued':
        {
          if (child is FhirInstantBuilder) {
            issued = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
              if (converted != null) {
                issued = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            performer = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            performer = [
              ...(performer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'resultsInterpreter':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            resultsInterpreter = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            resultsInterpreter = [
              ...(resultsInterpreter ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'specimen':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            specimen = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            specimen = [
              ...(specimen ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'result':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            result = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            result = [
              ...(result ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'imagingStudy':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            imagingStudy = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            imagingStudy = [
              ...(imagingStudy ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'media':
        {
          if (child is List<DiagnosticReportMediaBuilder>) {
            // Replace or create new list
            media = child;
            return;
          } else if (child is DiagnosticReportMediaBuilder) {
            // Add single element to existing list or create new list
            media = [
              ...(media ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'conclusion':
        {
          if (child is FhirStringBuilder) {
            conclusion = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                conclusion = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'conclusionCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            conclusionCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            conclusionCode = [
              ...(conclusionCode ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'presentedForm':
        {
          if (child is List<AttachmentBuilder>) {
            // Replace or create new list
            presentedForm = child;
            return;
          } else if (child is AttachmentBuilder) {
            // Add single element to existing list or create new list
            presentedForm = [
              ...(presentedForm ?? []),
              child,
            ];
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
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'effective':
      case 'effectiveX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
        ];
      case 'effectiveDateTime':
        return ['FhirDateTimeBuilder'];
      case 'effectivePeriod':
        return ['PeriodBuilder'];
      case 'issued':
        return ['FhirInstantBuilder'];
      case 'performer':
        return ['ReferenceBuilder'];
      case 'resultsInterpreter':
        return ['ReferenceBuilder'];
      case 'specimen':
        return ['ReferenceBuilder'];
      case 'result':
        return ['ReferenceBuilder'];
      case 'imagingStudy':
        return ['ReferenceBuilder'];
      case 'media':
        return ['DiagnosticReportMediaBuilder'];
      case 'conclusion':
        return ['FhirStringBuilder'];
      case 'conclusionCode':
        return ['CodeableConceptBuilder'];
      case 'presentedForm':
        return ['AttachmentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DiagnosticReportBuilder]
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
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'status':
        {
          status = DiagnosticReportStatusBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'effective':
      case 'effectiveX':
      case 'effectiveDateTime':
        {
          effectiveX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'effectivePeriod':
        {
          effectiveX = PeriodBuilder.empty();
          return;
        }
      case 'issued':
        {
          issued = FhirInstantBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = <ReferenceBuilder>[];
          return;
        }
      case 'resultsInterpreter':
        {
          resultsInterpreter = <ReferenceBuilder>[];
          return;
        }
      case 'specimen':
        {
          specimen = <ReferenceBuilder>[];
          return;
        }
      case 'result':
        {
          result = <ReferenceBuilder>[];
          return;
        }
      case 'imagingStudy':
        {
          imagingStudy = <ReferenceBuilder>[];
          return;
        }
      case 'media':
        {
          media = <DiagnosticReportMediaBuilder>[];
          return;
        }
      case 'conclusion':
        {
          conclusion = FhirStringBuilder.empty();
          return;
        }
      case 'conclusionCode':
        {
          conclusionCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'presentedForm':
        {
          presentedForm = <AttachmentBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DiagnosticReportBuilder clone() => throw UnimplementedError();
  @override
  DiagnosticReportBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    List<ReferenceBuilder>? basedOn,
    DiagnosticReportStatusBuilder? status,
    List<CodeableConceptBuilder>? category,
    CodeableConceptBuilder? code,
    ReferenceBuilder? subject,
    ReferenceBuilder? encounter,
    EffectiveXDiagnosticReportBuilder? effectiveX,
    FhirInstantBuilder? issued,
    List<ReferenceBuilder>? performer,
    List<ReferenceBuilder>? resultsInterpreter,
    List<ReferenceBuilder>? specimen,
    List<ReferenceBuilder>? result,
    List<ReferenceBuilder>? imagingStudy,
    List<DiagnosticReportMediaBuilder>? media,
    FhirStringBuilder? conclusion,
    List<CodeableConceptBuilder>? conclusionCode,
    List<AttachmentBuilder>? presentedForm,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = DiagnosticReportBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      status: status ?? this.status,
      category: category ?? this.category,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      effectiveX: effectiveX ?? this.effectiveX,
      issued: issued ?? this.issued,
      performer: performer ?? this.performer,
      resultsInterpreter: resultsInterpreter ?? this.resultsInterpreter,
      specimen: specimen ?? this.specimen,
      result: result ?? this.result,
      imagingStudy: imagingStudy ?? this.imagingStudy,
      media: media ?? this.media,
      conclusion: conclusion ?? this.conclusion,
      conclusionCode: conclusionCode ?? this.conclusionCode,
      presentedForm: presentedForm ?? this.presentedForm,
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
    if (o is! DiagnosticReportBuilder) {
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
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      category,
      o.category,
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
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      effectiveX,
      o.effectiveX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      issued,
      o.issued,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      resultsInterpreter,
      o.resultsInterpreter,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      result,
      o.result,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      imagingStudy,
      o.imagingStudy,
    )) {
      return false;
    }
    if (!listEquals<DiagnosticReportMediaBuilder>(
      media,
      o.media,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      conclusion,
      o.conclusion,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      conclusionCode,
      o.conclusionCode,
    )) {
      return false;
    }
    if (!listEquals<AttachmentBuilder>(
      presentedForm,
      o.presentedForm,
    )) {
      return false;
    }
    return true;
  }
}

/// [DiagnosticReportMediaBuilder]
/// A list of key images associated with this report. The images are
/// generally created during the diagnostic process, and may be directly of
/// the patient, or of treated specimens (i.e. slides of interest).
class DiagnosticReportMediaBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DiagnosticReportMediaBuilder]

  DiagnosticReportMediaBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.comment,
    this.link,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DiagnosticReport.media',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DiagnosticReportMediaBuilder.empty() => DiagnosticReportMediaBuilder(
        link: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DiagnosticReportMediaBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DiagnosticReport.media';
    return DiagnosticReportMediaBuilder(
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
      comment: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'comment',
        FhirStringBuilder.fromJson,
        '$objectPath.comment',
      ),
      link: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'link',
        ReferenceBuilder.fromJson,
        '$objectPath.link',
      ),
    );
  }

  /// Deserialize [DiagnosticReportMediaBuilder]
  /// from a [String] or [YamlMap] object
  factory DiagnosticReportMediaBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DiagnosticReportMediaBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DiagnosticReportMediaBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DiagnosticReportMediaBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DiagnosticReportMediaBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DiagnosticReportMediaBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DiagnosticReportMediaBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DiagnosticReportMedia';

  /// [comment]
  /// A comment about the image. Typically, this is used to provide an
  /// explanation for why the image is included, or to draw the viewer's
  /// attention to important features.
  FhirStringBuilder? comment;

  /// [link]
  /// Reference to the image source.
  ReferenceBuilder? link;

  /// Converts a [DiagnosticReportMediaBuilder]
  /// to [DiagnosticReportMedia]
  @override
  DiagnosticReportMedia build() => DiagnosticReportMedia.fromJson(toJson());

  /// Converts a [DiagnosticReportMediaBuilder]
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
    addField('comment', comment);
    addField('link', link);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'comment',
      'link',
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
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      case 'link':
        if (link != null) {
          fields.add(link!);
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
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
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
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'comment':
        {
          if (child is FhirStringBuilder) {
            comment = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                comment = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'link':
        {
          if (child is ReferenceBuilder) {
            link = child;
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
      case 'comment':
        return ['FhirStringBuilder'];
      case 'link':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DiagnosticReportMediaBuilder]
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
      case 'comment':
        {
          comment = FhirStringBuilder.empty();
          return;
        }
      case 'link':
        {
          link = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DiagnosticReportMediaBuilder clone() => throw UnimplementedError();
  @override
  DiagnosticReportMediaBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? comment,
    ReferenceBuilder? link,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DiagnosticReportMediaBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      comment: comment ?? this.comment,
      link: link ?? this.link,
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
    if (o is! DiagnosticReportMediaBuilder) {
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
      comment,
      o.comment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      link,
      o.link,
    )) {
      return false;
    }
    return true;
  }
}
