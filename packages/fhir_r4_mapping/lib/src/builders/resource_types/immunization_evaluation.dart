import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show ImmunizationEvaluation, R4ResourceType, yamlMapToJson, yamlToJson;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ImmunizationEvaluationBuilder]
/// Describes a comparison of an immunization event against published
/// recommendations to determine if the administration is "valid" in
/// relation to those recommendations.
class ImmunizationEvaluationBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ImmunizationEvaluationBuilder]

  ImmunizationEvaluationBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.patient,
    this.date,
    this.authority,
    this.targetDisease,
    this.immunizationEvent,
    this.doseStatus,
    this.doseStatusReason,
    this.description,
    this.series,
    this.doseNumberX,
    this.seriesDosesX,
  }) : super(
          objectPath: 'ImmunizationEvaluation',
          resourceType: R4ResourceType.ImmunizationEvaluation,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImmunizationEvaluationBuilder.empty() =>
      ImmunizationEvaluationBuilder(
        status: ImmunizationEvaluationStatusCodesBuilder.values.first,
        patient: ReferenceBuilder.empty(),
        targetDisease: CodeableConceptBuilder.empty(),
        immunizationEvent: ReferenceBuilder.empty(),
        doseStatus: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationEvaluationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImmunizationEvaluation';
    return ImmunizationEvaluationBuilder(
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
      status:
          JsonParser.parsePrimitive<ImmunizationEvaluationStatusCodesBuilder>(
        json,
        'status',
        ImmunizationEvaluationStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      authority: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'authority',
        ReferenceBuilder.fromJson,
        '$objectPath.authority',
      ),
      targetDisease: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'targetDisease',
        CodeableConceptBuilder.fromJson,
        '$objectPath.targetDisease',
      ),
      immunizationEvent: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'immunizationEvent',
        ReferenceBuilder.fromJson,
        '$objectPath.immunizationEvent',
      ),
      doseStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'doseStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.doseStatus',
      ),
      doseStatusReason: (json['doseStatusReason'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.doseStatusReason',
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
      series: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'series',
        FhirStringBuilder.fromJson,
        '$objectPath.series',
      ),
      doseNumberX:
          JsonParser.parsePolymorphic<DoseNumberXImmunizationEvaluationBuilder>(
        json,
        {
          'doseNumberPositiveInt': FhirPositiveIntBuilder.fromJson,
          'doseNumberString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      seriesDosesX: JsonParser.parsePolymorphic<
          SeriesDosesXImmunizationEvaluationBuilder>(
        json,
        {
          'seriesDosesPositiveInt': FhirPositiveIntBuilder.fromJson,
          'seriesDosesString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ImmunizationEvaluationBuilder]
  /// from a [String] or [YamlMap] object
  factory ImmunizationEvaluationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationEvaluationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationEvaluationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationEvaluationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationEvaluationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationEvaluationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationEvaluationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationEvaluation';

  /// [identifier]
  /// A unique identifier assigned to this immunization evaluation record.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// Indicates the current status of the evaluation of the vaccination
  /// administration event.
  ImmunizationEvaluationStatusCodesBuilder? status;

  /// [patient]
  /// The individual for whom the evaluation is being done.
  ReferenceBuilder? patient;

  /// [date]
  /// The date the evaluation of the vaccine administration event was
  /// performed.
  FhirDateTimeBuilder? date;

  /// [authority]
  /// Indicates the authority who published the protocol (e.g. ACIP).
  ReferenceBuilder? authority;

  /// [targetDisease]
  /// The vaccine preventable disease the dose is being evaluated against.
  CodeableConceptBuilder? targetDisease;

  /// [immunizationEvent]
  /// The vaccine administration event being evaluated.
  ReferenceBuilder? immunizationEvent;

  /// [doseStatus]
  /// Indicates if the dose is valid or not valid with respect to the
  /// published recommendations.
  CodeableConceptBuilder? doseStatus;

  /// [doseStatusReason]
  /// Provides an explanation as to why the vaccine administration event is
  /// valid or not relative to the published recommendations.
  List<CodeableConceptBuilder>? doseStatusReason;

  /// [description]
  /// Additional information about the evaluation.
  FhirStringBuilder? description;

  /// [series]
  /// One possible path to achieve presumed immunity against a disease -
  /// within the context of an authority.
  FhirStringBuilder? series;

  /// [doseNumberX]
  /// Nominal position in a series.
  DoseNumberXImmunizationEvaluationBuilder? doseNumberX;

  /// Getter for [doseNumberPositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get doseNumberPositiveInt =>
      doseNumberX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [doseNumberString] as a FhirStringBuilder
  FhirStringBuilder? get doseNumberString =>
      doseNumberX?.isAs<FhirStringBuilder>();

  /// [seriesDosesX]
  /// The recommended number of doses to achieve immunity.
  SeriesDosesXImmunizationEvaluationBuilder? seriesDosesX;

  /// Getter for [seriesDosesPositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get seriesDosesPositiveInt =>
      seriesDosesX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [seriesDosesString] as a FhirStringBuilder
  FhirStringBuilder? get seriesDosesString =>
      seriesDosesX?.isAs<FhirStringBuilder>();

  /// Converts a [ImmunizationEvaluationBuilder]
  /// to [ImmunizationEvaluation]
  @override
  ImmunizationEvaluation build() => ImmunizationEvaluation.fromJson(toJson());

  /// Converts a [ImmunizationEvaluationBuilder]
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
    addField('status', status);
    addField('patient', patient);
    addField('date', date);
    addField('authority', authority);
    addField('targetDisease', targetDisease);
    addField('immunizationEvent', immunizationEvent);
    addField('doseStatus', doseStatus);
    addField('doseStatusReason', doseStatusReason);
    addField('description', description);
    addField('series', series);
    if (doseNumberX != null) {
      final fhirType = doseNumberX!.fhirType;
      addField('doseNumber${fhirType.capitalizeFirstLetter()}', doseNumberX);
    }

    if (seriesDosesX != null) {
      final fhirType = seriesDosesX!.fhirType;
      addField('seriesDoses${fhirType.capitalizeFirstLetter()}', seriesDosesX);
    }

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
      'status',
      'patient',
      'date',
      'authority',
      'targetDisease',
      'immunizationEvent',
      'doseStatus',
      'doseStatusReason',
      'description',
      'series',
      'doseNumberX',
      'seriesDosesX',
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
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'authority':
        if (authority != null) {
          fields.add(authority!);
        }
      case 'targetDisease':
        if (targetDisease != null) {
          fields.add(targetDisease!);
        }
      case 'immunizationEvent':
        if (immunizationEvent != null) {
          fields.add(immunizationEvent!);
        }
      case 'doseStatus':
        if (doseStatus != null) {
          fields.add(doseStatus!);
        }
      case 'doseStatusReason':
        if (doseStatusReason != null) {
          fields.addAll(doseStatusReason!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'series':
        if (series != null) {
          fields.add(series!);
        }
      case 'doseNumber':
        if (doseNumberX != null) {
          fields.add(doseNumberX!);
        }
      case 'doseNumberX':
        if (doseNumberX != null) {
          fields.add(doseNumberX!);
        }
      case 'doseNumberPositiveInt':
        if (doseNumberX is FhirPositiveIntBuilder) {
          fields.add(doseNumberX!);
        }
      case 'doseNumberString':
        if (doseNumberX is FhirStringBuilder) {
          fields.add(doseNumberX!);
        }
      case 'seriesDoses':
        if (seriesDosesX != null) {
          fields.add(seriesDosesX!);
        }
      case 'seriesDosesX':
        if (seriesDosesX != null) {
          fields.add(seriesDosesX!);
        }
      case 'seriesDosesPositiveInt':
        if (seriesDosesX is FhirPositiveIntBuilder) {
          fields.add(seriesDosesX!);
        }
      case 'seriesDosesString':
        if (seriesDosesX is FhirStringBuilder) {
          fields.add(seriesDosesX!);
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
      case 'status':
        {
          if (child is ImmunizationEvaluationStatusCodesBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    ImmunizationEvaluationStatusCodesBuilder(stringValue);
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
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
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
      case 'authority':
        {
          if (child is ReferenceBuilder) {
            authority = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'targetDisease':
        {
          if (child is CodeableConceptBuilder) {
            targetDisease = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'immunizationEvent':
        {
          if (child is ReferenceBuilder) {
            immunizationEvent = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doseStatus':
        {
          if (child is CodeableConceptBuilder) {
            doseStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doseStatusReason':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            doseStatusReason = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            doseStatusReason = [
              ...(doseStatusReason ?? []),
              child,
            ];
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
      case 'series':
        {
          if (child is FhirStringBuilder) {
            series = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                series = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doseNumber':
      case 'doseNumberX':
        {
          if (child is DoseNumberXImmunizationEvaluationBuilder) {
            doseNumberX = child;
            return;
          } else {
            if (child is FhirPositiveIntBuilder) {
              doseNumberX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              doseNumberX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doseNumberPositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
            doseNumberX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doseNumberString':
        {
          if (child is FhirStringBuilder) {
            doseNumberX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'seriesDoses':
      case 'seriesDosesX':
        {
          if (child is SeriesDosesXImmunizationEvaluationBuilder) {
            seriesDosesX = child;
            return;
          } else {
            if (child is FhirPositiveIntBuilder) {
              seriesDosesX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              seriesDosesX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'seriesDosesPositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
            seriesDosesX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'seriesDosesString':
        {
          if (child is FhirStringBuilder) {
            seriesDosesX = child;
            return;
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
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'authority':
        return ['ReferenceBuilder'];
      case 'targetDisease':
        return ['CodeableConceptBuilder'];
      case 'immunizationEvent':
        return ['ReferenceBuilder'];
      case 'doseStatus':
        return ['CodeableConceptBuilder'];
      case 'doseStatusReason':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'series':
        return ['FhirStringBuilder'];
      case 'doseNumber':
      case 'doseNumberX':
        return [
          'FhirPositiveIntBuilder',
          'FhirStringBuilder',
        ];
      case 'doseNumberPositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'doseNumberString':
        return ['FhirStringBuilder'];
      case 'seriesDoses':
      case 'seriesDosesX':
        return [
          'FhirPositiveIntBuilder',
          'FhirStringBuilder',
        ];
      case 'seriesDosesPositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'seriesDosesString':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationEvaluationBuilder]
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
      case 'status':
        {
          status = ImmunizationEvaluationStatusCodesBuilder.empty();
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'authority':
        {
          authority = ReferenceBuilder.empty();
          return;
        }
      case 'targetDisease':
        {
          targetDisease = CodeableConceptBuilder.empty();
          return;
        }
      case 'immunizationEvent':
        {
          immunizationEvent = ReferenceBuilder.empty();
          return;
        }
      case 'doseStatus':
        {
          doseStatus = CodeableConceptBuilder.empty();
          return;
        }
      case 'doseStatusReason':
        {
          doseStatusReason = <CodeableConceptBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'series':
        {
          series = FhirStringBuilder.empty();
          return;
        }
      case 'doseNumber':
      case 'doseNumberX':
      case 'doseNumberPositiveInt':
        {
          doseNumberX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'doseNumberString':
        {
          doseNumberX = FhirStringBuilder.empty();
          return;
        }
      case 'seriesDoses':
      case 'seriesDosesX':
      case 'seriesDosesPositiveInt':
        {
          seriesDosesX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'seriesDosesString':
        {
          seriesDosesX = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ImmunizationEvaluationBuilder clone() => throw UnimplementedError();
  @override
  ImmunizationEvaluationBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    ImmunizationEvaluationStatusCodesBuilder? status,
    ReferenceBuilder? patient,
    FhirDateTimeBuilder? date,
    ReferenceBuilder? authority,
    CodeableConceptBuilder? targetDisease,
    ReferenceBuilder? immunizationEvent,
    CodeableConceptBuilder? doseStatus,
    List<CodeableConceptBuilder>? doseStatusReason,
    FhirStringBuilder? description,
    FhirStringBuilder? series,
    DoseNumberXImmunizationEvaluationBuilder? doseNumberX,
    SeriesDosesXImmunizationEvaluationBuilder? seriesDosesX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ImmunizationEvaluationBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      patient: patient ?? this.patient,
      date: date ?? this.date,
      authority: authority ?? this.authority,
      targetDisease: targetDisease ?? this.targetDisease,
      immunizationEvent: immunizationEvent ?? this.immunizationEvent,
      doseStatus: doseStatus ?? this.doseStatus,
      doseStatusReason: doseStatusReason ?? this.doseStatusReason,
      description: description ?? this.description,
      series: series ?? this.series,
      doseNumberX: doseNumberX ?? this.doseNumberX,
      seriesDosesX: seriesDosesX ?? this.seriesDosesX,
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
    if (o is! ImmunizationEvaluationBuilder) {
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
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
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
      authority,
      o.authority,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      targetDisease,
      o.targetDisease,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      immunizationEvent,
      o.immunizationEvent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doseStatus,
      o.doseStatus,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      doseStatusReason,
      o.doseStatusReason,
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
      series,
      o.series,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doseNumberX,
      o.doseNumberX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      seriesDosesX,
      o.seriesDosesX,
    )) {
      return false;
    }
    return true;
  }
}
