import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [VerificationResult]
/// Describes validation requirements, source(s), status and dates for one
/// or more elements.
class VerificationResult extends DomainResource {
  /// Primary constructor for
  /// [VerificationResult]

  const VerificationResult({
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
    required this.status,
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory VerificationResult.empty() => VerificationResult(
        status: Status.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResult.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'VerificationResult';
    return VerificationResult(
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
      target: (json['target'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.target',
              },
            ),
          )
          .toList(),
      targetLocation: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'targetLocation',
        FhirString.fromJson,
        '$objectPath.targetLocation',
      ),
      need: JsonParser.parseObject<CodeableConcept>(
        json,
        'need',
        CodeableConcept.fromJson,
        '$objectPath.need',
      ),
      status: JsonParser.parsePrimitive<Status>(
        json,
        'status',
        Status.fromJson,
        '$objectPath.status',
      )!,
      statusDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'statusDate',
        FhirDateTime.fromJson,
        '$objectPath.statusDate',
      ),
      validationType: JsonParser.parseObject<CodeableConcept>(
        json,
        'validationType',
        CodeableConcept.fromJson,
        '$objectPath.validationType',
      ),
      validationProcess: (json['validationProcess'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.validationProcess',
              },
            ),
          )
          .toList(),
      frequency: JsonParser.parseObject<Timing>(
        json,
        'frequency',
        Timing.fromJson,
        '$objectPath.frequency',
      ),
      lastPerformed: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'lastPerformed',
        FhirDateTime.fromJson,
        '$objectPath.lastPerformed',
      ),
      nextScheduled: JsonParser.parsePrimitive<FhirDate>(
        json,
        'nextScheduled',
        FhirDate.fromJson,
        '$objectPath.nextScheduled',
      ),
      failureAction: JsonParser.parseObject<CodeableConcept>(
        json,
        'failureAction',
        CodeableConcept.fromJson,
        '$objectPath.failureAction',
      ),
      primarySource: (json['primarySource'] as List<dynamic>?)
          ?.map<VerificationResultPrimarySource>(
            (v) => VerificationResultPrimarySource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.primarySource',
              },
            ),
          )
          .toList(),
      attestation: JsonParser.parseObject<VerificationResultAttestation>(
        json,
        'attestation',
        VerificationResultAttestation.fromJson,
        '$objectPath.attestation',
      ),
      validator: (json['validator'] as List<dynamic>?)
          ?.map<VerificationResultValidator>(
            (v) => VerificationResultValidator.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.validator',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [VerificationResult]
  /// from a [String] or [YamlMap] object
  factory VerificationResult.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VerificationResult.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VerificationResult.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VerificationResult '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VerificationResult]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VerificationResult.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return VerificationResult.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'VerificationResult';

  /// [target]
  /// A resource that was validated.
  final List<Reference>? target;

  /// [targetLocation]
  /// The fhirpath location(s) within the resource that was validated.
  final List<FhirString>? targetLocation;

  /// [need]
  /// The frequency with which the target must be validated (none; initial;
  /// periodic).
  final CodeableConcept? need;

  /// [status]
  /// The validation status of the target (attested; validated; in process;
  /// requires revalidation; validation failed; revalidation failed).
  final Status status;

  /// [statusDate]
  /// When the validation status was updated.
  final FhirDateTime? statusDate;

  /// [validationType]
  /// What the target is validated against (nothing; primary source; multiple
  /// sources).
  final CodeableConcept? validationType;

  /// [validationProcess]
  /// The primary process by which the target is validated (edit check; value
  /// set; primary source; multiple sources; standalone; in context).
  final List<CodeableConcept>? validationProcess;

  /// [frequency]
  /// Frequency of revalidation.
  final Timing? frequency;

  /// [lastPerformed]
  /// The date/time validation was last completed (including failed
  /// validations).
  final FhirDateTime? lastPerformed;

  /// [nextScheduled]
  /// The date when target is next validated, if appropriate.
  final FhirDate? nextScheduled;

  /// [failureAction]
  /// The result if validation fails (fatal; warning; record only; none).
  final CodeableConcept? failureAction;

  /// [primarySource]
  /// Information about the primary source(s) involved in validation.
  final List<VerificationResultPrimarySource>? primarySource;

  /// [attestation]
  /// Information about the entity attesting to information.
  final VerificationResultAttestation? attestation;

  /// [validator]
  /// Information about the entity validating information.
  final List<VerificationResultValidator>? validator;
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
      'target',
      target,
    );
    addField(
      'targetLocation',
      targetLocation,
    );
    addField(
      'need',
      need,
    );
    addField(
      'status',
      status,
    );
    addField(
      'statusDate',
      statusDate,
    );
    addField(
      'validationType',
      validationType,
    );
    addField(
      'validationProcess',
      validationProcess,
    );
    addField(
      'frequency',
      frequency,
    );
    addField(
      'lastPerformed',
      lastPerformed,
    );
    addField(
      'nextScheduled',
      nextScheduled,
    );
    addField(
      'failureAction',
      failureAction,
    );
    addField(
      'primarySource',
      primarySource,
    );
    addField(
      'attestation',
      attestation,
    );
    addField(
      'validator',
      validator,
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
        fields.add(status);
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
            final newList = [...?contained, child];
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'target':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?target, ...child];
            return copyWith(target: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?target, child];
            return copyWith(target: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetLocation':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?targetLocation, ...child];
            return copyWith(targetLocation: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [...?targetLocation, child];
            return copyWith(targetLocation: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'need':
        {
          if (child is CodeableConcept) {
            return copyWith(need: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is Status) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusDate':
        {
          if (child is FhirDateTime) {
            return copyWith(statusDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'validationType':
        {
          if (child is CodeableConcept) {
            return copyWith(validationType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'validationProcess':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?validationProcess, ...child];
            return copyWith(validationProcess: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?validationProcess, child];
            return copyWith(validationProcess: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'frequency':
        {
          if (child is Timing) {
            return copyWith(frequency: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lastPerformed':
        {
          if (child is FhirDateTime) {
            return copyWith(lastPerformed: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'nextScheduled':
        {
          if (child is FhirDate) {
            return copyWith(nextScheduled: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'failureAction':
        {
          if (child is CodeableConcept) {
            return copyWith(failureAction: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'primarySource':
        {
          if (child is List<VerificationResultPrimarySource>) {
            // Add all elements from passed list
            final newList = [...?primarySource, ...child];
            return copyWith(primarySource: newList);
          } else if (child is VerificationResultPrimarySource) {
            // Add single element to existing list or create new list
            final newList = [...?primarySource, child];
            return copyWith(primarySource: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'attestation':
        {
          if (child is VerificationResultAttestation) {
            return copyWith(attestation: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'validator':
        {
          if (child is List<VerificationResultValidator>) {
            // Add all elements from passed list
            final newList = [...?validator, ...child];
            return copyWith(validator: newList);
          } else if (child is VerificationResultValidator) {
            // Add single element to existing list or create new list
            final newList = [...?validator, child];
            return copyWith(validator: newList);
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
      case 'target':
        return ['Reference'];
      case 'targetLocation':
        return ['FhirString'];
      case 'need':
        return ['CodeableConcept'];
      case 'status':
        return ['FhirCode'];
      case 'statusDate':
        return ['FhirDateTime'];
      case 'validationType':
        return ['CodeableConcept'];
      case 'validationProcess':
        return ['CodeableConcept'];
      case 'frequency':
        return ['Timing'];
      case 'lastPerformed':
        return ['FhirDateTime'];
      case 'nextScheduled':
        return ['FhirDate'];
      case 'failureAction':
        return ['CodeableConcept'];
      case 'primarySource':
        return ['VerificationResultPrimarySource'];
      case 'attestation':
        return ['VerificationResultAttestation'];
      case 'validator':
        return ['VerificationResultValidator'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [VerificationResult]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  VerificationResult createProperty(
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
      case 'target':
        {
          return copyWith(
            target: <Reference>[],
          );
        }
      case 'targetLocation':
        {
          return copyWith(
            targetLocation: <FhirString>[],
          );
        }
      case 'need':
        {
          return copyWith(
            need: CodeableConcept.empty(),
          );
        }
      case 'status':
        {
          return copyWith(
            status: Status.empty(),
          );
        }
      case 'statusDate':
        {
          return copyWith(
            statusDate: FhirDateTime.empty(),
          );
        }
      case 'validationType':
        {
          return copyWith(
            validationType: CodeableConcept.empty(),
          );
        }
      case 'validationProcess':
        {
          return copyWith(
            validationProcess: <CodeableConcept>[],
          );
        }
      case 'frequency':
        {
          return copyWith(
            frequency: Timing.empty(),
          );
        }
      case 'lastPerformed':
        {
          return copyWith(
            lastPerformed: FhirDateTime.empty(),
          );
        }
      case 'nextScheduled':
        {
          return copyWith(
            nextScheduled: FhirDate.empty(),
          );
        }
      case 'failureAction':
        {
          return copyWith(
            failureAction: CodeableConcept.empty(),
          );
        }
      case 'primarySource':
        {
          return copyWith(
            primarySource: <VerificationResultPrimarySource>[],
          );
        }
      case 'attestation':
        {
          return copyWith(
            attestation: VerificationResultAttestation.empty(),
          );
        }
      case 'validator':
        {
          return copyWith(
            validator: <VerificationResultValidator>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  VerificationResult clear({
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
    return VerificationResult(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      target: target ? null : this.target,
      targetLocation: targetLocation ? null : this.targetLocation,
      need: need ? null : this.need,
      status: status,
      statusDate: statusDate ? null : this.statusDate,
      validationType: validationType ? null : this.validationType,
      validationProcess: validationProcess ? null : this.validationProcess,
      frequency: frequency ? null : this.frequency,
      lastPerformed: lastPerformed ? null : this.lastPerformed,
      nextScheduled: nextScheduled ? null : this.nextScheduled,
      failureAction: failureAction ? null : this.failureAction,
      primarySource: primarySource ? null : this.primarySource,
      attestation: attestation ? null : this.attestation,
      validator: validator ? null : this.validator,
    );
  }

  @override
  VerificationResult clone() => throw UnimplementedError();
  @override
  VerificationResult copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? target,
    List<FhirString>? targetLocation,
    CodeableConcept? need,
    Status? status,
    FhirDateTime? statusDate,
    CodeableConcept? validationType,
    List<CodeableConcept>? validationProcess,
    Timing? frequency,
    FhirDateTime? lastPerformed,
    FhirDate? nextScheduled,
    CodeableConcept? failureAction,
    List<VerificationResultPrimarySource>? primarySource,
    VerificationResultAttestation? attestation,
    List<VerificationResultValidator>? validator,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return VerificationResult(
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
      target: target
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.target',
                ),
              )
              .toList() ??
          this.target,
      targetLocation: targetLocation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.targetLocation',
                ),
              )
              .toList() ??
          this.targetLocation,
      need: need?.copyWith(
            objectPath: '$newObjectPath.need',
          ) ??
          this.need,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      statusDate: statusDate?.copyWith(
            objectPath: '$newObjectPath.statusDate',
          ) ??
          this.statusDate,
      validationType: validationType?.copyWith(
            objectPath: '$newObjectPath.validationType',
          ) ??
          this.validationType,
      validationProcess: validationProcess
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.validationProcess',
                ),
              )
              .toList() ??
          this.validationProcess,
      frequency: frequency?.copyWith(
            objectPath: '$newObjectPath.frequency',
          ) ??
          this.frequency,
      lastPerformed: lastPerformed?.copyWith(
            objectPath: '$newObjectPath.lastPerformed',
          ) ??
          this.lastPerformed,
      nextScheduled: nextScheduled?.copyWith(
            objectPath: '$newObjectPath.nextScheduled',
          ) ??
          this.nextScheduled,
      failureAction: failureAction?.copyWith(
            objectPath: '$newObjectPath.failureAction',
          ) ??
          this.failureAction,
      primarySource: primarySource
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.primarySource',
                ),
              )
              .toList() ??
          this.primarySource,
      attestation: attestation?.copyWith(
            objectPath: '$newObjectPath.attestation',
          ) ??
          this.attestation,
      validator: validator
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.validator',
                ),
              )
              .toList() ??
          this.validator,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! VerificationResult) {
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
    if (!listEquals<Reference>(
      target,
      o.target,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<VerificationResultPrimarySource>(
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
    if (!listEquals<VerificationResultValidator>(
      validator,
      o.validator,
    )) {
      return false;
    }
    return true;
  }
}

/// [VerificationResultPrimarySource]
/// Information about the primary source(s) involved in validation.
class VerificationResultPrimarySource extends BackboneElement {
  /// Primary constructor for
  /// [VerificationResultPrimarySource]

  const VerificationResultPrimarySource({
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory VerificationResultPrimarySource.empty() =>
      const VerificationResultPrimarySource();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResultPrimarySource.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'VerificationResult.primarySource';
    return VerificationResultPrimarySource(
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
      who: JsonParser.parseObject<Reference>(
        json,
        'who',
        Reference.fromJson,
        '$objectPath.who',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      communicationMethod: (json['communicationMethod'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.communicationMethod',
              },
            ),
          )
          .toList(),
      validationStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'validationStatus',
        CodeableConcept.fromJson,
        '$objectPath.validationStatus',
      ),
      validationDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'validationDate',
        FhirDateTime.fromJson,
        '$objectPath.validationDate',
      ),
      canPushUpdates: JsonParser.parseObject<CodeableConcept>(
        json,
        'canPushUpdates',
        CodeableConcept.fromJson,
        '$objectPath.canPushUpdates',
      ),
      pushTypeAvailable: (json['pushTypeAvailable'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.pushTypeAvailable',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [VerificationResultPrimarySource]
  /// from a [String] or [YamlMap] object
  factory VerificationResultPrimarySource.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VerificationResultPrimarySource.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VerificationResultPrimarySource.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VerificationResultPrimarySource '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VerificationResultPrimarySource]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VerificationResultPrimarySource.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return VerificationResultPrimarySource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'VerificationResultPrimarySource';

  /// [who]
  /// Reference to the primary source.
  final Reference? who;

  /// [type]
  /// Type of primary source (License Board; Primary Education; Continuing
  /// Education; Postal Service; Relationship owner; Registration Authority;
  /// legal source; issuing source; authoritative source).
  final List<CodeableConcept>? type;

  /// [communicationMethod]
  /// Method for communicating with the primary source (manual; API; Push).
  final List<CodeableConcept>? communicationMethod;

  /// [validationStatus]
  /// Status of the validation of the target against the primary source
  /// (successful; failed; unknown).
  final CodeableConcept? validationStatus;

  /// [validationDate]
  /// When the target was validated against the primary source.
  final FhirDateTime? validationDate;

  /// [canPushUpdates]
  /// Ability of the primary source to push updates/alerts (yes; no;
  /// undetermined).
  final CodeableConcept? canPushUpdates;

  /// [pushTypeAvailable]
  /// Type of alerts/updates the primary source can send (specific requested
  /// changes; any changes; as defined by source).
  final List<CodeableConcept>? pushTypeAvailable;
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
      'who',
      who,
    );
    addField(
      'type',
      type,
    );
    addField(
      'communicationMethod',
      communicationMethod,
    );
    addField(
      'validationStatus',
      validationStatus,
    );
    addField(
      'validationDate',
      validationDate,
    );
    addField(
      'canPushUpdates',
      canPushUpdates,
    );
    addField(
      'pushTypeAvailable',
      pushTypeAvailable,
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'who':
        {
          if (child is Reference) {
            return copyWith(who: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?type, ...child];
            return copyWith(type: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?type, child];
            return copyWith(type: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'communicationMethod':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?communicationMethod, ...child];
            return copyWith(communicationMethod: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?communicationMethod, child];
            return copyWith(communicationMethod: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'validationStatus':
        {
          if (child is CodeableConcept) {
            return copyWith(validationStatus: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'validationDate':
        {
          if (child is FhirDateTime) {
            return copyWith(validationDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'canPushUpdates':
        {
          if (child is CodeableConcept) {
            return copyWith(canPushUpdates: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'pushTypeAvailable':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?pushTypeAvailable, ...child];
            return copyWith(pushTypeAvailable: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?pushTypeAvailable, child];
            return copyWith(pushTypeAvailable: newList);
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
      case 'who':
        return ['Reference'];
      case 'type':
        return ['CodeableConcept'];
      case 'communicationMethod':
        return ['CodeableConcept'];
      case 'validationStatus':
        return ['CodeableConcept'];
      case 'validationDate':
        return ['FhirDateTime'];
      case 'canPushUpdates':
        return ['CodeableConcept'];
      case 'pushTypeAvailable':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [VerificationResultPrimarySource]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  VerificationResultPrimarySource createProperty(
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
      case 'who':
        {
          return copyWith(
            who: Reference.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: <CodeableConcept>[],
          );
        }
      case 'communicationMethod':
        {
          return copyWith(
            communicationMethod: <CodeableConcept>[],
          );
        }
      case 'validationStatus':
        {
          return copyWith(
            validationStatus: CodeableConcept.empty(),
          );
        }
      case 'validationDate':
        {
          return copyWith(
            validationDate: FhirDateTime.empty(),
          );
        }
      case 'canPushUpdates':
        {
          return copyWith(
            canPushUpdates: CodeableConcept.empty(),
          );
        }
      case 'pushTypeAvailable':
        {
          return copyWith(
            pushTypeAvailable: <CodeableConcept>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  VerificationResultPrimarySource clear({
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
    return VerificationResultPrimarySource(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      who: who ? null : this.who,
      type: type ? null : this.type,
      communicationMethod:
          communicationMethod ? null : this.communicationMethod,
      validationStatus: validationStatus ? null : this.validationStatus,
      validationDate: validationDate ? null : this.validationDate,
      canPushUpdates: canPushUpdates ? null : this.canPushUpdates,
      pushTypeAvailable: pushTypeAvailable ? null : this.pushTypeAvailable,
    );
  }

  @override
  VerificationResultPrimarySource clone() => throw UnimplementedError();
  @override
  VerificationResultPrimarySource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? who,
    List<CodeableConcept>? type,
    List<CodeableConcept>? communicationMethod,
    CodeableConcept? validationStatus,
    FhirDateTime? validationDate,
    CodeableConcept? canPushUpdates,
    List<CodeableConcept>? pushTypeAvailable,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return VerificationResultPrimarySource(
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
      who: who?.copyWith(
            objectPath: '$newObjectPath.who',
          ) ??
          this.who,
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
      communicationMethod: communicationMethod
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.communicationMethod',
                ),
              )
              .toList() ??
          this.communicationMethod,
      validationStatus: validationStatus?.copyWith(
            objectPath: '$newObjectPath.validationStatus',
          ) ??
          this.validationStatus,
      validationDate: validationDate?.copyWith(
            objectPath: '$newObjectPath.validationDate',
          ) ??
          this.validationDate,
      canPushUpdates: canPushUpdates?.copyWith(
            objectPath: '$newObjectPath.canPushUpdates',
          ) ??
          this.canPushUpdates,
      pushTypeAvailable: pushTypeAvailable
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.pushTypeAvailable',
                ),
              )
              .toList() ??
          this.pushTypeAvailable,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! VerificationResultPrimarySource) {
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
      who,
      o.who,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<CodeableConcept>(
      pushTypeAvailable,
      o.pushTypeAvailable,
    )) {
      return false;
    }
    return true;
  }
}

/// [VerificationResultAttestation]
/// Information about the entity attesting to information.
class VerificationResultAttestation extends BackboneElement {
  /// Primary constructor for
  /// [VerificationResultAttestation]

  const VerificationResultAttestation({
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory VerificationResultAttestation.empty() =>
      const VerificationResultAttestation();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResultAttestation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'VerificationResult.attestation';
    return VerificationResultAttestation(
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
      who: JsonParser.parseObject<Reference>(
        json,
        'who',
        Reference.fromJson,
        '$objectPath.who',
      ),
      onBehalfOf: JsonParser.parseObject<Reference>(
        json,
        'onBehalfOf',
        Reference.fromJson,
        '$objectPath.onBehalfOf',
      ),
      communicationMethod: JsonParser.parseObject<CodeableConcept>(
        json,
        'communicationMethod',
        CodeableConcept.fromJson,
        '$objectPath.communicationMethod',
      ),
      date: JsonParser.parsePrimitive<FhirDate>(
        json,
        'date',
        FhirDate.fromJson,
        '$objectPath.date',
      ),
      sourceIdentityCertificate: JsonParser.parsePrimitive<FhirString>(
        json,
        'sourceIdentityCertificate',
        FhirString.fromJson,
        '$objectPath.sourceIdentityCertificate',
      ),
      proxyIdentityCertificate: JsonParser.parsePrimitive<FhirString>(
        json,
        'proxyIdentityCertificate',
        FhirString.fromJson,
        '$objectPath.proxyIdentityCertificate',
      ),
      proxySignature: JsonParser.parseObject<Signature>(
        json,
        'proxySignature',
        Signature.fromJson,
        '$objectPath.proxySignature',
      ),
      sourceSignature: JsonParser.parseObject<Signature>(
        json,
        'sourceSignature',
        Signature.fromJson,
        '$objectPath.sourceSignature',
      ),
    );
  }

  /// Deserialize [VerificationResultAttestation]
  /// from a [String] or [YamlMap] object
  factory VerificationResultAttestation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VerificationResultAttestation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VerificationResultAttestation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VerificationResultAttestation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VerificationResultAttestation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VerificationResultAttestation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return VerificationResultAttestation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'VerificationResultAttestation';

  /// [who]
  /// The individual or organization attesting to information.
  final Reference? who;

  /// [onBehalfOf]
  /// When the who is asserting on behalf of another (organization or
  /// individual).
  final Reference? onBehalfOf;

  /// [communicationMethod]
  /// The method by which attested information was submitted/retrieved
  /// (manual; API; Push).
  final CodeableConcept? communicationMethod;

  /// [date]
  /// The date the information was attested to.
  final FhirDate? date;

  /// [sourceIdentityCertificate]
  /// A digital identity certificate associated with the attestation source.
  final FhirString? sourceIdentityCertificate;

  /// [proxyIdentityCertificate]
  /// A digital identity certificate associated with the proxy entity
  /// submitting attested information on behalf of the attestation source.
  final FhirString? proxyIdentityCertificate;

  /// [proxySignature]
  /// Signed assertion by the proxy entity indicating that they have the
  /// right to submit attested information on behalf of the attestation
  /// source.
  final Signature? proxySignature;

  /// [sourceSignature]
  /// Signed assertion by the attestation source that they have attested to
  /// the information.
  final Signature? sourceSignature;
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
      'who',
      who,
    );
    addField(
      'onBehalfOf',
      onBehalfOf,
    );
    addField(
      'communicationMethod',
      communicationMethod,
    );
    addField(
      'date',
      date,
    );
    addField(
      'sourceIdentityCertificate',
      sourceIdentityCertificate,
    );
    addField(
      'proxyIdentityCertificate',
      proxyIdentityCertificate,
    );
    addField(
      'proxySignature',
      proxySignature,
    );
    addField(
      'sourceSignature',
      sourceSignature,
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'who':
        {
          if (child is Reference) {
            return copyWith(who: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onBehalfOf':
        {
          if (child is Reference) {
            return copyWith(onBehalfOf: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'communicationMethod':
        {
          if (child is CodeableConcept) {
            return copyWith(communicationMethod: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDate) {
            return copyWith(date: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sourceIdentityCertificate':
        {
          if (child is FhirString) {
            return copyWith(sourceIdentityCertificate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'proxyIdentityCertificate':
        {
          if (child is FhirString) {
            return copyWith(proxyIdentityCertificate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'proxySignature':
        {
          if (child is Signature) {
            return copyWith(proxySignature: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sourceSignature':
        {
          if (child is Signature) {
            return copyWith(sourceSignature: child);
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
      case 'who':
        return ['Reference'];
      case 'onBehalfOf':
        return ['Reference'];
      case 'communicationMethod':
        return ['CodeableConcept'];
      case 'date':
        return ['FhirDate'];
      case 'sourceIdentityCertificate':
        return ['FhirString'];
      case 'proxyIdentityCertificate':
        return ['FhirString'];
      case 'proxySignature':
        return ['Signature'];
      case 'sourceSignature':
        return ['Signature'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [VerificationResultAttestation]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  VerificationResultAttestation createProperty(
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
      case 'who':
        {
          return copyWith(
            who: Reference.empty(),
          );
        }
      case 'onBehalfOf':
        {
          return copyWith(
            onBehalfOf: Reference.empty(),
          );
        }
      case 'communicationMethod':
        {
          return copyWith(
            communicationMethod: CodeableConcept.empty(),
          );
        }
      case 'date':
        {
          return copyWith(
            date: FhirDate.empty(),
          );
        }
      case 'sourceIdentityCertificate':
        {
          return copyWith(
            sourceIdentityCertificate: FhirString.empty(),
          );
        }
      case 'proxyIdentityCertificate':
        {
          return copyWith(
            proxyIdentityCertificate: FhirString.empty(),
          );
        }
      case 'proxySignature':
        {
          return copyWith(
            proxySignature: Signature.empty(),
          );
        }
      case 'sourceSignature':
        {
          return copyWith(
            sourceSignature: Signature.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  VerificationResultAttestation clear({
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
    return VerificationResultAttestation(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      who: who ? null : this.who,
      onBehalfOf: onBehalfOf ? null : this.onBehalfOf,
      communicationMethod:
          communicationMethod ? null : this.communicationMethod,
      date: date ? null : this.date,
      sourceIdentityCertificate:
          sourceIdentityCertificate ? null : this.sourceIdentityCertificate,
      proxyIdentityCertificate:
          proxyIdentityCertificate ? null : this.proxyIdentityCertificate,
      proxySignature: proxySignature ? null : this.proxySignature,
      sourceSignature: sourceSignature ? null : this.sourceSignature,
    );
  }

  @override
  VerificationResultAttestation clone() => throw UnimplementedError();
  @override
  VerificationResultAttestation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? who,
    Reference? onBehalfOf,
    CodeableConcept? communicationMethod,
    FhirDate? date,
    FhirString? sourceIdentityCertificate,
    FhirString? proxyIdentityCertificate,
    Signature? proxySignature,
    Signature? sourceSignature,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return VerificationResultAttestation(
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
      who: who?.copyWith(
            objectPath: '$newObjectPath.who',
          ) ??
          this.who,
      onBehalfOf: onBehalfOf?.copyWith(
            objectPath: '$newObjectPath.onBehalfOf',
          ) ??
          this.onBehalfOf,
      communicationMethod: communicationMethod?.copyWith(
            objectPath: '$newObjectPath.communicationMethod',
          ) ??
          this.communicationMethod,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      sourceIdentityCertificate: sourceIdentityCertificate?.copyWith(
            objectPath: '$newObjectPath.sourceIdentityCertificate',
          ) ??
          this.sourceIdentityCertificate,
      proxyIdentityCertificate: proxyIdentityCertificate?.copyWith(
            objectPath: '$newObjectPath.proxyIdentityCertificate',
          ) ??
          this.proxyIdentityCertificate,
      proxySignature: proxySignature?.copyWith(
            objectPath: '$newObjectPath.proxySignature',
          ) ??
          this.proxySignature,
      sourceSignature: sourceSignature?.copyWith(
            objectPath: '$newObjectPath.sourceSignature',
          ) ??
          this.sourceSignature,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! VerificationResultAttestation) {
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

/// [VerificationResultValidator]
/// Information about the entity validating information.
class VerificationResultValidator extends BackboneElement {
  /// Primary constructor for
  /// [VerificationResultValidator]

  const VerificationResultValidator({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.organization,
    this.identityCertificate,
    this.attestationSignature,
    super.disallowExtensions,
  }) : super(
          objectPath: 'VerificationResult.validator',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory VerificationResultValidator.empty() => VerificationResultValidator(
        organization: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResultValidator.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'VerificationResult.validator';
    return VerificationResultValidator(
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
      organization: JsonParser.parseObject<Reference>(
        json,
        'organization',
        Reference.fromJson,
        '$objectPath.organization',
      )!,
      identityCertificate: JsonParser.parsePrimitive<FhirString>(
        json,
        'identityCertificate',
        FhirString.fromJson,
        '$objectPath.identityCertificate',
      ),
      attestationSignature: JsonParser.parseObject<Signature>(
        json,
        'attestationSignature',
        Signature.fromJson,
        '$objectPath.attestationSignature',
      ),
    );
  }

  /// Deserialize [VerificationResultValidator]
  /// from a [String] or [YamlMap] object
  factory VerificationResultValidator.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VerificationResultValidator.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VerificationResultValidator.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VerificationResultValidator '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VerificationResultValidator]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VerificationResultValidator.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return VerificationResultValidator.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'VerificationResultValidator';

  /// [organization]
  /// Reference to the organization validating information.
  final Reference organization;

  /// [identityCertificate]
  /// A digital identity certificate associated with the validator.
  final FhirString? identityCertificate;

  /// [attestationSignature]
  /// Signed assertion by the validator that they have validated the
  /// information.
  final Signature? attestationSignature;
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
      'organization',
      organization,
    );
    addField(
      'identityCertificate',
      identityCertificate,
    );
    addField(
      'attestationSignature',
      attestationSignature,
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
      'organization',
      'identityCertificate',
      'attestationSignature',
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
      case 'organization':
        fields.add(organization);
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'organization':
        {
          if (child is Reference) {
            return copyWith(organization: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identityCertificate':
        {
          if (child is FhirString) {
            return copyWith(identityCertificate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'attestationSignature':
        {
          if (child is Signature) {
            return copyWith(attestationSignature: child);
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
      case 'organization':
        return ['Reference'];
      case 'identityCertificate':
        return ['FhirString'];
      case 'attestationSignature':
        return ['Signature'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [VerificationResultValidator]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  VerificationResultValidator createProperty(
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
      case 'organization':
        {
          return copyWith(
            organization: Reference.empty(),
          );
        }
      case 'identityCertificate':
        {
          return copyWith(
            identityCertificate: FhirString.empty(),
          );
        }
      case 'attestationSignature':
        {
          return copyWith(
            attestationSignature: Signature.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  VerificationResultValidator clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identityCertificate = false,
    bool attestationSignature = false,
  }) {
    return VerificationResultValidator(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      organization: organization,
      identityCertificate:
          identityCertificate ? null : this.identityCertificate,
      attestationSignature:
          attestationSignature ? null : this.attestationSignature,
    );
  }

  @override
  VerificationResultValidator clone() => throw UnimplementedError();
  @override
  VerificationResultValidator copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? organization,
    FhirString? identityCertificate,
    Signature? attestationSignature,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return VerificationResultValidator(
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
      organization: organization?.copyWith(
            objectPath: '$newObjectPath.organization',
          ) ??
          this.organization,
      identityCertificate: identityCertificate?.copyWith(
            objectPath: '$newObjectPath.identityCertificate',
          ) ??
          this.identityCertificate,
      attestationSignature: attestationSignature?.copyWith(
            objectPath: '$newObjectPath.attestationSignature',
          ) ??
          this.attestationSignature,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! VerificationResultValidator) {
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
