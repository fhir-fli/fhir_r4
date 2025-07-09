import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'diagnostic_report.g.dart';

/// [DiagnosticReport]
/// The findings and interpretation of diagnostic tests performed on
/// patients, groups of patients, devices, and locations, and/or specimens
/// derived from these. The report includes clinical context such as
/// requesting and provider information, and some mix of atomic results,
/// images, textual and coded interpretations, and formatted representation
/// of diagnostic reports.
class DiagnosticReport extends DomainResource {
  /// Primary constructor for
  /// [DiagnosticReport]

  const DiagnosticReport({
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
    required this.status,
    this.category,
    required this.code,
    this.subject,
    this.encounter,
    EffectiveXDiagnosticReport? effectiveX,
    FhirDateTime? effectiveDateTime,
    Period? effectivePeriod,
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
  })  : effectiveX = effectiveX ?? effectiveDateTime ?? effectivePeriod,
        super(
          resourceType: R4ResourceType.DiagnosticReport,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DiagnosticReport.fromJson(
    Map<String, dynamic> json,
  ) {
    return DiagnosticReport(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<DiagnosticReportStatus>(
        json,
        'status',
        DiagnosticReportStatus.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      effectiveX: JsonParser.parsePolymorphic<EffectiveXDiagnosticReport>(
        json,
        {
          'effectiveDateTime': FhirDateTime.fromJson,
          'effectivePeriod': Period.fromJson,
        },
      ),
      issued: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'issued',
        FhirInstant.fromJson,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      resultsInterpreter: (json['resultsInterpreter'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      specimen: (json['specimen'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      result: (json['result'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      imagingStudy: (json['imagingStudy'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      media: (json['media'] as List<dynamic>?)
          ?.map<DiagnosticReportMedia>(
            (v) => DiagnosticReportMedia.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      conclusion: JsonParser.parsePrimitive<FhirString>(
        json,
        'conclusion',
        FhirString.fromJson,
      ),
      conclusionCode: (json['conclusionCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      presentedForm: (json['presentedForm'] as List<dynamic>?)
          ?.map<Attachment>(
            (v) => Attachment.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DiagnosticReport]
  /// from a [String] or [YamlMap] object
  factory DiagnosticReport.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DiagnosticReport.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DiagnosticReport.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DiagnosticReport '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DiagnosticReport]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DiagnosticReport.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DiagnosticReport.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DiagnosticReport';

  /// [identifier]
  /// Identifiers assigned to this report by the performer or other systems.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// Details concerning a service requested.
  final List<Reference>? basedOn;

  /// [status]
  /// The status of the diagnostic report.
  final DiagnosticReportStatus status;

  /// [category]
  /// A code that classifies the clinical discipline, department or
  /// diagnostic service that created the report (e.g. cardiology,
  /// biochemistry, hematology, MRI). This is used for searching, sorting and
  /// display purposes.
  final List<CodeableConcept>? category;

  /// [code]
  /// A code or name that describes this diagnostic report.
  final CodeableConcept code;

  /// [subject]
  /// The subject of the report. Usually, but not always, this is a patient.
  /// However, diagnostic services also perform analyses on specimens
  /// collected from a variety of other sources.
  final Reference? subject;

  /// [encounter]
  /// The healthcare event (e.g. a patient and healthcare provider
  /// interaction) which this DiagnosticReport is about.
  final Reference? encounter;

  /// [effectiveX]
  /// The time or time-period the observed values are related to. When the
  /// subject of the report is a patient, this is usually either the time of
  /// the procedure or of specimen collection(s), but very often the source
  /// of the date/time is not known, only the date/time itself.
  final EffectiveXDiagnosticReport? effectiveX;

  /// Getter for [effectiveDateTime] as a FhirDateTime
  FhirDateTime? get effectiveDateTime => effectiveX?.isAs<FhirDateTime>();

  /// Getter for [effectivePeriod] as a Period
  Period? get effectivePeriod => effectiveX?.isAs<Period>();

  /// [issued]
  /// The date and time that this version of the report was made available to
  /// providers, typically after the report was reviewed and verified.
  final FhirInstant? issued;

  /// [performer]
  /// The diagnostic service that is responsible for issuing the report.
  final List<Reference>? performer;

  /// [resultsInterpreter]
  /// The practitioner or organization that is responsible for the report's
  /// conclusions and interpretations.
  final List<Reference>? resultsInterpreter;

  /// [specimen]
  /// Details about the specimens on which this diagnostic report is based.
  final List<Reference>? specimen;

  /// [result]
  /// [Observations](observation.html) that are part of this diagnostic
  /// report.
  final List<Reference>? result;

  /// [imagingStudy]
  /// One or more links to full details of any imaging performed during the
  /// diagnostic investigation. Typically, this is imaging performed by DICOM
  /// enabled modalities, but this is not required. A fully enabled PACS
  /// viewer can use this information to provide views of the source images.
  final List<Reference>? imagingStudy;

  /// [media]
  /// A list of key images associated with this report. The images are
  /// generally created during the diagnostic process, and may be directly of
  /// the patient, or of treated specimens (i.e. slides of interest).
  final List<DiagnosticReportMedia>? media;

  /// [conclusion]
  /// Concise and clinically contextualized summary conclusion
  /// (interpretation/impression) of the diagnostic report.
  final FhirString? conclusion;

  /// [conclusionCode]
  /// One or more codes that represent the summary conclusion
  /// (interpretation/impression) of the diagnostic report.
  final List<CodeableConcept>? conclusionCode;

  /// [presentedForm]
  /// Rich text representation of the entire result as issued by the
  /// diagnostic service. Multiple formats are allowed but they SHALL be
  /// semantically equivalent.
  final List<Attachment>? presentedForm;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
      'identifier',
      identifier,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'status',
      status,
    );
    addField(
      'category',
      category,
    );
    addField(
      'code',
      code,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'encounter',
      encounter,
    );
    if (effectiveX != null) {
      final fhirType = effectiveX!.fhirType;
      addField(
        'effective${fhirType.capitalize()}',
        effectiveX,
      );
    }

    addField(
      'issued',
      issued,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'resultsInterpreter',
      resultsInterpreter,
    );
    addField(
      'specimen',
      specimen,
    );
    addField(
      'result',
      result,
    );
    addField(
      'imagingStudy',
      imagingStudy,
    );
    addField(
      'media',
      media,
    );
    addField(
      'conclusion',
      conclusion,
    );
    addField(
      'conclusionCode',
      conclusionCode,
    );
    addField(
      'presentedForm',
      presentedForm,
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'status':
        fields.add(status);
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'code':
        fields.add(code);
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'effective':
        fields.add(effectiveX!);
      case 'effectiveX':
        fields.add(effectiveX!);
      case 'effectiveDateTime':
        if (effectiveX is FhirDateTime) {
          fields.add(effectiveX!);
        }
      case 'effectivePeriod':
        if (effectiveX is Period) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DiagnosticReport clone() => copyWith();

  /// Copy function for [DiagnosticReport]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DiagnosticReportCopyWith<DiagnosticReport> get copyWith =>
      _$DiagnosticReportCopyWithImpl<DiagnosticReport>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DiagnosticReport) {
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
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<Reference>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      resultsInterpreter,
      o.resultsInterpreter,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      result,
      o.result,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      imagingStudy,
      o.imagingStudy,
    )) {
      return false;
    }
    if (!listEquals<DiagnosticReportMedia>(
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
    if (!listEquals<CodeableConcept>(
      conclusionCode,
      o.conclusionCode,
    )) {
      return false;
    }
    if (!listEquals<Attachment>(
      presentedForm,
      o.presentedForm,
    )) {
      return false;
    }
    return true;
  }
}

/// [DiagnosticReportMedia]
/// A list of key images associated with this report. The images are
/// generally created during the diagnostic process, and may be directly of
/// the patient, or of treated specimens (i.e. slides of interest).
class DiagnosticReportMedia extends BackboneElement {
  /// Primary constructor for
  /// [DiagnosticReportMedia]

  const DiagnosticReportMedia({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.comment,
    required this.link,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DiagnosticReportMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    return DiagnosticReportMedia(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
      ),
      link: JsonParser.parseObject<Reference>(
        json,
        'link',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [DiagnosticReportMedia]
  /// from a [String] or [YamlMap] object
  factory DiagnosticReportMedia.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DiagnosticReportMedia.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DiagnosticReportMedia.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DiagnosticReportMedia '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DiagnosticReportMedia]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DiagnosticReportMedia.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DiagnosticReportMedia.fromJson(json);
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
  final FhirString? comment;

  /// [link]
  /// Reference to the image source.
  final Reference link;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
      'comment',
      comment,
    );
    addField(
      'link',
      link,
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
      'comment',
      'link',
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
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      case 'link':
        fields.add(link);
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
  DiagnosticReportMedia clone() => copyWith();

  /// Copy function for [DiagnosticReportMedia]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DiagnosticReportMediaCopyWith<DiagnosticReportMedia> get copyWith =>
      _$DiagnosticReportMediaCopyWithImpl<DiagnosticReportMedia>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DiagnosticReportMedia) {
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
