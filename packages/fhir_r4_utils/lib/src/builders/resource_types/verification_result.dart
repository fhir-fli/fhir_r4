import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        R4ResourceType,
        StringExtensionForFHIR,
        VerificationResult,
        VerificationResultAttestation,
        VerificationResultPrimarySource,
        VerificationResultValidator,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [VerificationResultBuilder]
/// Describes validation requirements, source(s), status and dates for one
/// or more elements.
class VerificationResultBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [VerificationResultBuilder]

  VerificationResultBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.target,
    this.targetLocation,
    this.need,
    this.status,
    this.statusDate,
    this.validationType,
    this.validationProcess,
    this.frequency,
    this.lastPerformed,
    this.nextScheduled,
    this.failureAction,
    this.primarySource,
    this.attestation,
    this.validator,
  }) : super(
          objectPath: 'VerificationResult',
          resourceType: R4ResourceType.VerificationResult,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory VerificationResultBuilder.empty() => VerificationResultBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResultBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'VerificationResult';
    return VerificationResultBuilder(
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
      target: (json['target'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.target',
              },
            ),
          )
          .toList(),
      targetLocation: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'targetLocation',
        FhirStringBuilder.fromJson,
        '$objectPath.targetLocation',
      ),
      need: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'need',
        CodeableConceptBuilder.fromJson,
        '$objectPath.need',
      ),
      status: JsonParser.parsePrimitive<StatusBuilder>(
        json,
        'status',
        StatusBuilder.fromJson,
        '$objectPath.status',
      ),
      statusDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'statusDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.statusDate',
      ),
      validationType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'validationType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.validationType',
      ),
      validationProcess: (json['validationProcess'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.validationProcess',
              },
            ),
          )
          .toList(),
      frequency: JsonParser.parseObject<TimingBuilder>(
        json,
        'frequency',
        TimingBuilder.fromJson,
        '$objectPath.frequency',
      ),
      lastPerformed: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'lastPerformed',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.lastPerformed',
      ),
      nextScheduled: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'nextScheduled',
        FhirDateBuilder.fromJson,
        '$objectPath.nextScheduled',
      ),
      failureAction: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'failureAction',
        CodeableConceptBuilder.fromJson,
        '$objectPath.failureAction',
      ),
      primarySource: (json['primarySource'] as List<dynamic>?)
          ?.map<VerificationResultPrimarySourceBuilder>(
            (v) => VerificationResultPrimarySourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.primarySource',
              },
            ),
          )
          .toList(),
      attestation: JsonParser.parseObject<VerificationResultAttestationBuilder>(
        json,
        'attestation',
        VerificationResultAttestationBuilder.fromJson,
        '$objectPath.attestation',
      ),
      validator: (json['validator'] as List<dynamic>?)
          ?.map<VerificationResultValidatorBuilder>(
            (v) => VerificationResultValidatorBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.validator',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [VerificationResultBuilder]
  /// from a [String] or [YamlMap] object
  factory VerificationResultBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VerificationResultBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VerificationResultBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VerificationResultBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VerificationResultBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VerificationResultBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return VerificationResultBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'VerificationResult';

  /// [target]
  /// A resource that was validated.
  List<ReferenceBuilder>? target;

  /// [targetLocation]
  /// The fhirpath location(s) within the resource that was validated.
  List<FhirStringBuilder>? targetLocation;

  /// [need]
  /// The frequency with which the target must be validated (none; initial;
  /// periodic).
  CodeableConceptBuilder? need;

  /// [status]
  /// The validation status of the target (attested; validated; in process;
  /// requires revalidation; validation failed; revalidation failed).
  StatusBuilder? status;

  /// [statusDate]
  /// When the validation status was updated.
  FhirDateTimeBuilder? statusDate;

  /// [validationType]
  /// What the target is validated against (nothing; primary source; multiple
  /// sources).
  CodeableConceptBuilder? validationType;

  /// [validationProcess]
  /// The primary process by which the target is validated (edit check; value
  /// set; primary source; multiple sources; standalone; in context).
  List<CodeableConceptBuilder>? validationProcess;

  /// [frequency]
  /// Frequency of revalidation.
  TimingBuilder? frequency;

  /// [lastPerformed]
  /// The date/time validation was last completed (including failed
  /// validations).
  FhirDateTimeBuilder? lastPerformed;

  /// [nextScheduled]
  /// The date when target is next validated, if appropriate.
  FhirDateBuilder? nextScheduled;

  /// [failureAction]
  /// The result if validation fails (fatal; warning; record only; none).
  CodeableConceptBuilder? failureAction;

  /// [primarySource]
  /// Information about the primary source(s) involved in validation.
  List<VerificationResultPrimarySourceBuilder>? primarySource;

  /// [attestation]
  /// Information about the entity attesting to information.
  VerificationResultAttestationBuilder? attestation;

  /// [validator]
  /// Information about the entity validating information.
  List<VerificationResultValidatorBuilder>? validator;

  /// Converts a [VerificationResultBuilder]
  /// to [VerificationResult]
  @override
  VerificationResult build() => VerificationResult.fromJson(toJson());

  /// Converts a [VerificationResultBuilder]
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
    addField('target', target);
    addField('targetLocation', targetLocation);
    addField('need', need);
    addField('status', status);
    addField('statusDate', statusDate);
    addField('validationType', validationType);
    addField('validationProcess', validationProcess);
    addField('frequency', frequency);
    addField('lastPerformed', lastPerformed);
    addField('nextScheduled', nextScheduled);
    addField('failureAction', failureAction);
    addField('primarySource', primarySource);
    addField('attestation', attestation);
    addField('validator', validator);
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
      'target',
      'targetLocation',
      'need',
      'status',
      'statusDate',
      'validationType',
      'validationProcess',
      'frequency',
      'lastPerformed',
      'nextScheduled',
      'failureAction',
      'primarySource',
      'attestation',
      'validator',
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
      case 'target':
        if (target != null) {
          fields.addAll(target!);
        }
      case 'targetLocation':
        if (targetLocation != null) {
          fields.addAll(targetLocation!);
        }
      case 'need':
        if (need != null) {
          fields.add(need!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'statusDate':
        if (statusDate != null) {
          fields.add(statusDate!);
        }
      case 'validationType':
        if (validationType != null) {
          fields.add(validationType!);
        }
      case 'validationProcess':
        if (validationProcess != null) {
          fields.addAll(validationProcess!);
        }
      case 'frequency':
        if (frequency != null) {
          fields.add(frequency!);
        }
      case 'lastPerformed':
        if (lastPerformed != null) {
          fields.add(lastPerformed!);
        }
      case 'nextScheduled':
        if (nextScheduled != null) {
          fields.add(nextScheduled!);
        }
      case 'failureAction':
        if (failureAction != null) {
          fields.add(failureAction!);
        }
      case 'primarySource':
        if (primarySource != null) {
          fields.addAll(primarySource!);
        }
      case 'attestation':
        if (attestation != null) {
          fields.add(attestation!);
        }
      case 'validator':
        if (validator != null) {
          fields.addAll(validator!);
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
      case 'target':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            target = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            target = [
              ...(target ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'targetLocation':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            targetLocation = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            targetLocation = [
              ...(targetLocation ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              targetLocation = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                targetLocation = [...(targetLocation ?? []), converted];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'need':
        {
          if (child is CodeableConceptBuilder) {
            need = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is StatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = StatusBuilder(stringValue);
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
      case 'statusDate':
        {
          if (child is FhirDateTimeBuilder) {
            statusDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                statusDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'validationType':
        {
          if (child is CodeableConceptBuilder) {
            validationType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'validationProcess':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            validationProcess = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            validationProcess = [
              ...(validationProcess ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'frequency':
        {
          if (child is TimingBuilder) {
            frequency = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lastPerformed':
        {
          if (child is FhirDateTimeBuilder) {
            lastPerformed = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                lastPerformed = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'nextScheduled':
        {
          if (child is FhirDateBuilder) {
            nextScheduled = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                nextScheduled = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'failureAction':
        {
          if (child is CodeableConceptBuilder) {
            failureAction = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'primarySource':
        {
          if (child is List<VerificationResultPrimarySourceBuilder>) {
            // Replace or create new list
            primarySource = child;
            return;
          } else if (child is VerificationResultPrimarySourceBuilder) {
            // Add single element to existing list or create new list
            primarySource = [
              ...(primarySource ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'attestation':
        {
          if (child is VerificationResultAttestationBuilder) {
            attestation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'validator':
        {
          if (child is List<VerificationResultValidatorBuilder>) {
            // Replace or create new list
            validator = child;
            return;
          } else if (child is VerificationResultValidatorBuilder) {
            // Add single element to existing list or create new list
            validator = [
              ...(validator ?? []),
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
      case 'target':
        return ['ReferenceBuilder'];
      case 'targetLocation':
        return ['FhirStringBuilder'];
      case 'need':
        return ['CodeableConceptBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'statusDate':
        return ['FhirDateTimeBuilder'];
      case 'validationType':
        return ['CodeableConceptBuilder'];
      case 'validationProcess':
        return ['CodeableConceptBuilder'];
      case 'frequency':
        return ['TimingBuilder'];
      case 'lastPerformed':
        return ['FhirDateTimeBuilder'];
      case 'nextScheduled':
        return ['FhirDateBuilder'];
      case 'failureAction':
        return ['CodeableConceptBuilder'];
      case 'primarySource':
        return ['VerificationResultPrimarySourceBuilder'];
      case 'attestation':
        return ['VerificationResultAttestationBuilder'];
      case 'validator':
        return ['VerificationResultValidatorBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [VerificationResultBuilder]
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
      case 'target':
        {
          target = <ReferenceBuilder>[];
          return;
        }
      case 'targetLocation':
        {
          targetLocation = <FhirStringBuilder>[];
          return;
        }
      case 'need':
        {
          need = CodeableConceptBuilder.empty();
          return;
        }
      case 'status':
        {
          status = StatusBuilder.empty();
          return;
        }
      case 'statusDate':
        {
          statusDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'validationType':
        {
          validationType = CodeableConceptBuilder.empty();
          return;
        }
      case 'validationProcess':
        {
          validationProcess = <CodeableConceptBuilder>[];
          return;
        }
      case 'frequency':
        {
          frequency = TimingBuilder.empty();
          return;
        }
      case 'lastPerformed':
        {
          lastPerformed = FhirDateTimeBuilder.empty();
          return;
        }
      case 'nextScheduled':
        {
          nextScheduled = FhirDateBuilder.empty();
          return;
        }
      case 'failureAction':
        {
          failureAction = CodeableConceptBuilder.empty();
          return;
        }
      case 'primarySource':
        {
          primarySource = <VerificationResultPrimarySourceBuilder>[];
          return;
        }
      case 'attestation':
        {
          attestation = VerificationResultAttestationBuilder.empty();
          return;
        }
      case 'validator':
        {
          validator = <VerificationResultValidatorBuilder>[];
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
    bool target = false,
    bool targetLocation = false,
    bool need = false,
    bool status = false,
    bool statusDate = false,
    bool validationType = false,
    bool validationProcess = false,
    bool frequency = false,
    bool lastPerformed = false,
    bool nextScheduled = false,
    bool failureAction = false,
    bool primarySource = false,
    bool attestation = false,
    bool validator = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (target) this.target = null;
    if (targetLocation) this.targetLocation = null;
    if (need) this.need = null;
    if (status) this.status = null;
    if (statusDate) this.statusDate = null;
    if (validationType) this.validationType = null;
    if (validationProcess) this.validationProcess = null;
    if (frequency) this.frequency = null;
    if (lastPerformed) this.lastPerformed = null;
    if (nextScheduled) this.nextScheduled = null;
    if (failureAction) this.failureAction = null;
    if (primarySource) this.primarySource = null;
    if (attestation) this.attestation = null;
    if (validator) this.validator = null;
  }

  @override
  VerificationResultBuilder clone() => throw UnimplementedError();
  @override
  VerificationResultBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<ReferenceBuilder>? target,
    List<FhirStringBuilder>? targetLocation,
    CodeableConceptBuilder? need,
    StatusBuilder? status,
    FhirDateTimeBuilder? statusDate,
    CodeableConceptBuilder? validationType,
    List<CodeableConceptBuilder>? validationProcess,
    TimingBuilder? frequency,
    FhirDateTimeBuilder? lastPerformed,
    FhirDateBuilder? nextScheduled,
    CodeableConceptBuilder? failureAction,
    List<VerificationResultPrimarySourceBuilder>? primarySource,
    VerificationResultAttestationBuilder? attestation,
    List<VerificationResultValidatorBuilder>? validator,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = VerificationResultBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      target: target ?? this.target,
      targetLocation: targetLocation ?? this.targetLocation,
      need: need ?? this.need,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
      validationType: validationType ?? this.validationType,
      validationProcess: validationProcess ?? this.validationProcess,
      frequency: frequency ?? this.frequency,
      lastPerformed: lastPerformed ?? this.lastPerformed,
      nextScheduled: nextScheduled ?? this.nextScheduled,
      failureAction: failureAction ?? this.failureAction,
      primarySource: primarySource ?? this.primarySource,
      attestation: attestation ?? this.attestation,
      validator: validator ?? this.validator,
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
    if (o is! VerificationResultBuilder) {
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
    if (!listEquals<ReferenceBuilder>(
      target,
      o.target,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      targetLocation,
      o.targetLocation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      need,
      o.need,
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
      statusDate,
      o.statusDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      validationType,
      o.validationType,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      validationProcess,
      o.validationProcess,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      frequency,
      o.frequency,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lastPerformed,
      o.lastPerformed,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      nextScheduled,
      o.nextScheduled,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      failureAction,
      o.failureAction,
    )) {
      return false;
    }
    if (!listEquals<VerificationResultPrimarySourceBuilder>(
      primarySource,
      o.primarySource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      attestation,
      o.attestation,
    )) {
      return false;
    }
    if (!listEquals<VerificationResultValidatorBuilder>(
      validator,
      o.validator,
    )) {
      return false;
    }
    return true;
  }
}

/// [VerificationResultPrimarySourceBuilder]
/// Information about the primary source(s) involved in validation.
class VerificationResultPrimarySourceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [VerificationResultPrimarySourceBuilder]

  VerificationResultPrimarySourceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.who,
    this.type,
    this.communicationMethod,
    this.validationStatus,
    this.validationDate,
    this.canPushUpdates,
    this.pushTypeAvailable,
    super.disallowExtensions,
  }) : super(
          objectPath: 'VerificationResult.primarySource',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory VerificationResultPrimarySourceBuilder.empty() =>
      VerificationResultPrimarySourceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResultPrimarySourceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'VerificationResult.primarySource';
    return VerificationResultPrimarySourceBuilder(
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
      who: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'who',
        ReferenceBuilder.fromJson,
        '$objectPath.who',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      communicationMethod: (json['communicationMethod'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.communicationMethod',
              },
            ),
          )
          .toList(),
      validationStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'validationStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.validationStatus',
      ),
      validationDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'validationDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.validationDate',
      ),
      canPushUpdates: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'canPushUpdates',
        CodeableConceptBuilder.fromJson,
        '$objectPath.canPushUpdates',
      ),
      pushTypeAvailable: (json['pushTypeAvailable'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.pushTypeAvailable',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [VerificationResultPrimarySourceBuilder]
  /// from a [String] or [YamlMap] object
  factory VerificationResultPrimarySourceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VerificationResultPrimarySourceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VerificationResultPrimarySourceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VerificationResultPrimarySourceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VerificationResultPrimarySourceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VerificationResultPrimarySourceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return VerificationResultPrimarySourceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'VerificationResultPrimarySource';

  /// [who]
  /// Reference to the primary source.
  ReferenceBuilder? who;

  /// [type]
  /// Type of primary source (License Board; Primary Education; Continuing
  /// Education; Postal Service; Relationship owner; Registration Authority;
  /// legal source; issuing source; authoritative source).
  List<CodeableConceptBuilder>? type;

  /// [communicationMethod]
  /// Method for communicating with the primary source (manual; API; Push).
  List<CodeableConceptBuilder>? communicationMethod;

  /// [validationStatus]
  /// Status of the validation of the target against the primary source
  /// (successful; failed; unknown).
  CodeableConceptBuilder? validationStatus;

  /// [validationDate]
  /// When the target was validated against the primary source.
  FhirDateTimeBuilder? validationDate;

  /// [canPushUpdates]
  /// Ability of the primary source to push updates/alerts (yes; no;
  /// undetermined).
  CodeableConceptBuilder? canPushUpdates;

  /// [pushTypeAvailable]
  /// Type of alerts/updates the primary source can send (specific requested
  /// changes; any changes; as defined by source).
  List<CodeableConceptBuilder>? pushTypeAvailable;

  /// Converts a [VerificationResultPrimarySourceBuilder]
  /// to [VerificationResultPrimarySource]
  @override
  VerificationResultPrimarySource build() =>
      VerificationResultPrimarySource.fromJson(toJson());

  /// Converts a [VerificationResultPrimarySourceBuilder]
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
    addField('who', who);
    addField('type', type);
    addField('communicationMethod', communicationMethod);
    addField('validationStatus', validationStatus);
    addField('validationDate', validationDate);
    addField('canPushUpdates', canPushUpdates);
    addField('pushTypeAvailable', pushTypeAvailable);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'who',
      'type',
      'communicationMethod',
      'validationStatus',
      'validationDate',
      'canPushUpdates',
      'pushTypeAvailable',
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
      case 'who':
        if (who != null) {
          fields.add(who!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'communicationMethod':
        if (communicationMethod != null) {
          fields.addAll(communicationMethod!);
        }
      case 'validationStatus':
        if (validationStatus != null) {
          fields.add(validationStatus!);
        }
      case 'validationDate':
        if (validationDate != null) {
          fields.add(validationDate!);
        }
      case 'canPushUpdates':
        if (canPushUpdates != null) {
          fields.add(canPushUpdates!);
        }
      case 'pushTypeAvailable':
        if (pushTypeAvailable != null) {
          fields.addAll(pushTypeAvailable!);
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
      case 'who':
        {
          if (child is ReferenceBuilder) {
            who = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [
              ...(type ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'communicationMethod':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            communicationMethod = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            communicationMethod = [
              ...(communicationMethod ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'validationStatus':
        {
          if (child is CodeableConceptBuilder) {
            validationStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'validationDate':
        {
          if (child is FhirDateTimeBuilder) {
            validationDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                validationDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'canPushUpdates':
        {
          if (child is CodeableConceptBuilder) {
            canPushUpdates = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'pushTypeAvailable':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            pushTypeAvailable = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            pushTypeAvailable = [
              ...(pushTypeAvailable ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'who':
        return ['ReferenceBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'communicationMethod':
        return ['CodeableConceptBuilder'];
      case 'validationStatus':
        return ['CodeableConceptBuilder'];
      case 'validationDate':
        return ['FhirDateTimeBuilder'];
      case 'canPushUpdates':
        return ['CodeableConceptBuilder'];
      case 'pushTypeAvailable':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [VerificationResultPrimarySourceBuilder]
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
      case 'who':
        {
          who = ReferenceBuilder.empty();
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'communicationMethod':
        {
          communicationMethod = <CodeableConceptBuilder>[];
          return;
        }
      case 'validationStatus':
        {
          validationStatus = CodeableConceptBuilder.empty();
          return;
        }
      case 'validationDate':
        {
          validationDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'canPushUpdates':
        {
          canPushUpdates = CodeableConceptBuilder.empty();
          return;
        }
      case 'pushTypeAvailable':
        {
          pushTypeAvailable = <CodeableConceptBuilder>[];
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
    bool who = false,
    bool type = false,
    bool communicationMethod = false,
    bool validationStatus = false,
    bool validationDate = false,
    bool canPushUpdates = false,
    bool pushTypeAvailable = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (who) this.who = null;
    if (type) this.type = null;
    if (communicationMethod) this.communicationMethod = null;
    if (validationStatus) this.validationStatus = null;
    if (validationDate) this.validationDate = null;
    if (canPushUpdates) this.canPushUpdates = null;
    if (pushTypeAvailable) this.pushTypeAvailable = null;
  }

  @override
  VerificationResultPrimarySourceBuilder clone() => throw UnimplementedError();
  @override
  VerificationResultPrimarySourceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? who,
    List<CodeableConceptBuilder>? type,
    List<CodeableConceptBuilder>? communicationMethod,
    CodeableConceptBuilder? validationStatus,
    FhirDateTimeBuilder? validationDate,
    CodeableConceptBuilder? canPushUpdates,
    List<CodeableConceptBuilder>? pushTypeAvailable,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = VerificationResultPrimarySourceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      who: who ?? this.who,
      type: type ?? this.type,
      communicationMethod: communicationMethod ?? this.communicationMethod,
      validationStatus: validationStatus ?? this.validationStatus,
      validationDate: validationDate ?? this.validationDate,
      canPushUpdates: canPushUpdates ?? this.canPushUpdates,
      pushTypeAvailable: pushTypeAvailable ?? this.pushTypeAvailable,
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
    if (o is! VerificationResultPrimarySourceBuilder) {
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
      who,
      o.who,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      communicationMethod,
      o.communicationMethod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      validationStatus,
      o.validationStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      validationDate,
      o.validationDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      canPushUpdates,
      o.canPushUpdates,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      pushTypeAvailable,
      o.pushTypeAvailable,
    )) {
      return false;
    }
    return true;
  }
}

/// [VerificationResultAttestationBuilder]
/// Information about the entity attesting to information.
class VerificationResultAttestationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [VerificationResultAttestationBuilder]

  VerificationResultAttestationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.who,
    this.onBehalfOf,
    this.communicationMethod,
    this.date,
    this.sourceIdentityCertificate,
    this.proxyIdentityCertificate,
    this.proxySignature,
    this.sourceSignature,
    super.disallowExtensions,
  }) : super(
          objectPath: 'VerificationResult.attestation',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory VerificationResultAttestationBuilder.empty() =>
      VerificationResultAttestationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResultAttestationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'VerificationResult.attestation';
    return VerificationResultAttestationBuilder(
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
      who: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'who',
        ReferenceBuilder.fromJson,
        '$objectPath.who',
      ),
      onBehalfOf: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'onBehalfOf',
        ReferenceBuilder.fromJson,
        '$objectPath.onBehalfOf',
      ),
      communicationMethod: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'communicationMethod',
        CodeableConceptBuilder.fromJson,
        '$objectPath.communicationMethod',
      ),
      date: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'date',
        FhirDateBuilder.fromJson,
        '$objectPath.date',
      ),
      sourceIdentityCertificate: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'sourceIdentityCertificate',
        FhirStringBuilder.fromJson,
        '$objectPath.sourceIdentityCertificate',
      ),
      proxyIdentityCertificate: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'proxyIdentityCertificate',
        FhirStringBuilder.fromJson,
        '$objectPath.proxyIdentityCertificate',
      ),
      proxySignature: JsonParser.parseObject<SignatureBuilder>(
        json,
        'proxySignature',
        SignatureBuilder.fromJson,
        '$objectPath.proxySignature',
      ),
      sourceSignature: JsonParser.parseObject<SignatureBuilder>(
        json,
        'sourceSignature',
        SignatureBuilder.fromJson,
        '$objectPath.sourceSignature',
      ),
    );
  }

  /// Deserialize [VerificationResultAttestationBuilder]
  /// from a [String] or [YamlMap] object
  factory VerificationResultAttestationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VerificationResultAttestationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VerificationResultAttestationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VerificationResultAttestationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VerificationResultAttestationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VerificationResultAttestationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return VerificationResultAttestationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'VerificationResultAttestation';

  /// [who]
  /// The individual or organization attesting to information.
  ReferenceBuilder? who;

  /// [onBehalfOf]
  /// When the who is asserting on behalf of another (organization or
  /// individual).
  ReferenceBuilder? onBehalfOf;

  /// [communicationMethod]
  /// The method by which attested information was submitted/retrieved
  /// (manual; API; Push).
  CodeableConceptBuilder? communicationMethod;

  /// [date]
  /// The date the information was attested to.
  FhirDateBuilder? date;

  /// [sourceIdentityCertificate]
  /// A digital identity certificate associated with the attestation source.
  FhirStringBuilder? sourceIdentityCertificate;

  /// [proxyIdentityCertificate]
  /// A digital identity certificate associated with the proxy entity
  /// submitting attested information on behalf of the attestation source.
  FhirStringBuilder? proxyIdentityCertificate;

  /// [proxySignature]
  /// Signed assertion by the proxy entity indicating that they have the
  /// right to submit attested information on behalf of the attestation
  /// source.
  SignatureBuilder? proxySignature;

  /// [sourceSignature]
  /// Signed assertion by the attestation source that they have attested to
  /// the information.
  SignatureBuilder? sourceSignature;

  /// Converts a [VerificationResultAttestationBuilder]
  /// to [VerificationResultAttestation]
  @override
  VerificationResultAttestation build() =>
      VerificationResultAttestation.fromJson(toJson());

  /// Converts a [VerificationResultAttestationBuilder]
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
    addField('who', who);
    addField('onBehalfOf', onBehalfOf);
    addField('communicationMethod', communicationMethod);
    addField('date', date);
    addField('sourceIdentityCertificate', sourceIdentityCertificate);
    addField('proxyIdentityCertificate', proxyIdentityCertificate);
    addField('proxySignature', proxySignature);
    addField('sourceSignature', sourceSignature);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'who',
      'onBehalfOf',
      'communicationMethod',
      'date',
      'sourceIdentityCertificate',
      'proxyIdentityCertificate',
      'proxySignature',
      'sourceSignature',
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
      case 'who':
        if (who != null) {
          fields.add(who!);
        }
      case 'onBehalfOf':
        if (onBehalfOf != null) {
          fields.add(onBehalfOf!);
        }
      case 'communicationMethod':
        if (communicationMethod != null) {
          fields.add(communicationMethod!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'sourceIdentityCertificate':
        if (sourceIdentityCertificate != null) {
          fields.add(sourceIdentityCertificate!);
        }
      case 'proxyIdentityCertificate':
        if (proxyIdentityCertificate != null) {
          fields.add(proxyIdentityCertificate!);
        }
      case 'proxySignature':
        if (proxySignature != null) {
          fields.add(proxySignature!);
        }
      case 'sourceSignature':
        if (sourceSignature != null) {
          fields.add(sourceSignature!);
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
      case 'who':
        {
          if (child is ReferenceBuilder) {
            who = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'onBehalfOf':
        {
          if (child is ReferenceBuilder) {
            onBehalfOf = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'communicationMethod':
        {
          if (child is CodeableConceptBuilder) {
            communicationMethod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
        {
          if (child is FhirDateBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
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
      case 'sourceIdentityCertificate':
        {
          if (child is FhirStringBuilder) {
            sourceIdentityCertificate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                sourceIdentityCertificate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'proxyIdentityCertificate':
        {
          if (child is FhirStringBuilder) {
            proxyIdentityCertificate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                proxyIdentityCertificate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'proxySignature':
        {
          if (child is SignatureBuilder) {
            proxySignature = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sourceSignature':
        {
          if (child is SignatureBuilder) {
            sourceSignature = child;
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
      case 'who':
        return ['ReferenceBuilder'];
      case 'onBehalfOf':
        return ['ReferenceBuilder'];
      case 'communicationMethod':
        return ['CodeableConceptBuilder'];
      case 'date':
        return ['FhirDateBuilder'];
      case 'sourceIdentityCertificate':
        return ['FhirStringBuilder'];
      case 'proxyIdentityCertificate':
        return ['FhirStringBuilder'];
      case 'proxySignature':
        return ['SignatureBuilder'];
      case 'sourceSignature':
        return ['SignatureBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [VerificationResultAttestationBuilder]
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
      case 'who':
        {
          who = ReferenceBuilder.empty();
          return;
        }
      case 'onBehalfOf':
        {
          onBehalfOf = ReferenceBuilder.empty();
          return;
        }
      case 'communicationMethod':
        {
          communicationMethod = CodeableConceptBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateBuilder.empty();
          return;
        }
      case 'sourceIdentityCertificate':
        {
          sourceIdentityCertificate = FhirStringBuilder.empty();
          return;
        }
      case 'proxyIdentityCertificate':
        {
          proxyIdentityCertificate = FhirStringBuilder.empty();
          return;
        }
      case 'proxySignature':
        {
          proxySignature = SignatureBuilder.empty();
          return;
        }
      case 'sourceSignature':
        {
          sourceSignature = SignatureBuilder.empty();
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
    bool who = false,
    bool onBehalfOf = false,
    bool communicationMethod = false,
    bool date = false,
    bool sourceIdentityCertificate = false,
    bool proxyIdentityCertificate = false,
    bool proxySignature = false,
    bool sourceSignature = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (who) this.who = null;
    if (onBehalfOf) this.onBehalfOf = null;
    if (communicationMethod) this.communicationMethod = null;
    if (date) this.date = null;
    if (sourceIdentityCertificate) this.sourceIdentityCertificate = null;
    if (proxyIdentityCertificate) this.proxyIdentityCertificate = null;
    if (proxySignature) this.proxySignature = null;
    if (sourceSignature) this.sourceSignature = null;
  }

  @override
  VerificationResultAttestationBuilder clone() => throw UnimplementedError();
  @override
  VerificationResultAttestationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? who,
    ReferenceBuilder? onBehalfOf,
    CodeableConceptBuilder? communicationMethod,
    FhirDateBuilder? date,
    FhirStringBuilder? sourceIdentityCertificate,
    FhirStringBuilder? proxyIdentityCertificate,
    SignatureBuilder? proxySignature,
    SignatureBuilder? sourceSignature,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = VerificationResultAttestationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      who: who ?? this.who,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      communicationMethod: communicationMethod ?? this.communicationMethod,
      date: date ?? this.date,
      sourceIdentityCertificate:
          sourceIdentityCertificate ?? this.sourceIdentityCertificate,
      proxyIdentityCertificate:
          proxyIdentityCertificate ?? this.proxyIdentityCertificate,
      proxySignature: proxySignature ?? this.proxySignature,
      sourceSignature: sourceSignature ?? this.sourceSignature,
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
    if (o is! VerificationResultAttestationBuilder) {
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
      who,
      o.who,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      onBehalfOf,
      o.onBehalfOf,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      communicationMethod,
      o.communicationMethod,
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
      sourceIdentityCertificate,
      o.sourceIdentityCertificate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      proxyIdentityCertificate,
      o.proxyIdentityCertificate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      proxySignature,
      o.proxySignature,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sourceSignature,
      o.sourceSignature,
    )) {
      return false;
    }
    return true;
  }
}

/// [VerificationResultValidatorBuilder]
/// Information about the entity validating information.
class VerificationResultValidatorBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [VerificationResultValidatorBuilder]

  VerificationResultValidatorBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.organization,
    this.identityCertificate,
    this.attestationSignature,
    super.disallowExtensions,
  }) : super(
          objectPath: 'VerificationResult.validator',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory VerificationResultValidatorBuilder.empty() =>
      VerificationResultValidatorBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResultValidatorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'VerificationResult.validator';
    return VerificationResultValidatorBuilder(
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
      organization: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'organization',
        ReferenceBuilder.fromJson,
        '$objectPath.organization',
      ),
      identityCertificate: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'identityCertificate',
        FhirStringBuilder.fromJson,
        '$objectPath.identityCertificate',
      ),
      attestationSignature: JsonParser.parseObject<SignatureBuilder>(
        json,
        'attestationSignature',
        SignatureBuilder.fromJson,
        '$objectPath.attestationSignature',
      ),
    );
  }

  /// Deserialize [VerificationResultValidatorBuilder]
  /// from a [String] or [YamlMap] object
  factory VerificationResultValidatorBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VerificationResultValidatorBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VerificationResultValidatorBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VerificationResultValidatorBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VerificationResultValidatorBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VerificationResultValidatorBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return VerificationResultValidatorBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'VerificationResultValidator';

  /// [organization]
  /// Reference to the organization validating information.
  ReferenceBuilder? organization;

  /// [identityCertificate]
  /// A digital identity certificate associated with the validator.
  FhirStringBuilder? identityCertificate;

  /// [attestationSignature]
  /// Signed assertion by the validator that they have validated the
  /// information.
  SignatureBuilder? attestationSignature;

  /// Converts a [VerificationResultValidatorBuilder]
  /// to [VerificationResultValidator]
  @override
  VerificationResultValidator build() =>
      VerificationResultValidator.fromJson(toJson());

  /// Converts a [VerificationResultValidatorBuilder]
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
    addField('organization', organization);
    addField('identityCertificate', identityCertificate);
    addField('attestationSignature', attestationSignature);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'organization',
      'identityCertificate',
      'attestationSignature',
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
      case 'organization':
        if (organization != null) {
          fields.add(organization!);
        }
      case 'identityCertificate':
        if (identityCertificate != null) {
          fields.add(identityCertificate!);
        }
      case 'attestationSignature':
        if (attestationSignature != null) {
          fields.add(attestationSignature!);
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
      case 'organization':
        {
          if (child is ReferenceBuilder) {
            organization = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identityCertificate':
        {
          if (child is FhirStringBuilder) {
            identityCertificate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                identityCertificate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'attestationSignature':
        {
          if (child is SignatureBuilder) {
            attestationSignature = child;
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
      case 'organization':
        return ['ReferenceBuilder'];
      case 'identityCertificate':
        return ['FhirStringBuilder'];
      case 'attestationSignature':
        return ['SignatureBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [VerificationResultValidatorBuilder]
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
      case 'organization':
        {
          organization = ReferenceBuilder.empty();
          return;
        }
      case 'identityCertificate':
        {
          identityCertificate = FhirStringBuilder.empty();
          return;
        }
      case 'attestationSignature':
        {
          attestationSignature = SignatureBuilder.empty();
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
    bool organization = false,
    bool identityCertificate = false,
    bool attestationSignature = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (organization) this.organization = null;
    if (identityCertificate) this.identityCertificate = null;
    if (attestationSignature) this.attestationSignature = null;
  }

  @override
  VerificationResultValidatorBuilder clone() => throw UnimplementedError();
  @override
  VerificationResultValidatorBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? organization,
    FhirStringBuilder? identityCertificate,
    SignatureBuilder? attestationSignature,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = VerificationResultValidatorBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      organization: organization ?? this.organization,
      identityCertificate: identityCertificate ?? this.identityCertificate,
      attestationSignature: attestationSignature ?? this.attestationSignature,
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
    if (o is! VerificationResultValidatorBuilder) {
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
      organization,
      o.organization,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identityCertificate,
      o.identityCertificate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      attestationSignature,
      o.attestationSignature,
    )) {
      return false;
    }
    return true;
  }
}
