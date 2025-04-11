import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'verification_result.g.dart';

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
          resourceType: R4ResourceType.VerificationResult,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResult.fromJson(
    Map<String, dynamic> json,
  ) {
    return VerificationResult(
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
      target: (json['target'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      targetLocation: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'targetLocation',
        FhirString.fromJson,
      ),
      need: JsonParser.parseObject<CodeableConcept>(
        json,
        'need',
        CodeableConcept.fromJson,
      ),
      status: JsonParser.parsePrimitive<Status>(
        json,
        'status',
        Status.fromJson,
      )!,
      statusDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'statusDate',
        FhirDateTime.fromJson,
      ),
      validationType: JsonParser.parseObject<CodeableConcept>(
        json,
        'validationType',
        CodeableConcept.fromJson,
      ),
      validationProcess: (json['validationProcess'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      frequency: JsonParser.parseObject<Timing>(
        json,
        'frequency',
        Timing.fromJson,
      ),
      lastPerformed: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'lastPerformed',
        FhirDateTime.fromJson,
      ),
      nextScheduled: JsonParser.parsePrimitive<FhirDate>(
        json,
        'nextScheduled',
        FhirDate.fromJson,
      ),
      failureAction: JsonParser.parseObject<CodeableConcept>(
        json,
        'failureAction',
        CodeableConcept.fromJson,
      ),
      primarySource: (json['primarySource'] as List<dynamic>?)
          ?.map<VerificationResultPrimarySource>(
            (v) => VerificationResultPrimarySource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      attestation: JsonParser.parseObject<VerificationResultAttestation>(
        json,
        'attestation',
        VerificationResultAttestation.fromJson,
      ),
      validator: (json['validator'] as List<dynamic>?)
          ?.map<VerificationResultValidator>(
            (v) => VerificationResultValidator.fromJson(
              {...v as Map<String, dynamic>},
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
          json[key] = tempList;
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
  VerificationResult clone() => copyWith();

  /// Copy function for [VerificationResult]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $VerificationResultCopyWith<VerificationResult> get copyWith =>
      _$VerificationResultCopyWithImpl<VerificationResult>(
        this,
        (value) => value,
      );

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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResultPrimarySource.fromJson(
    Map<String, dynamic> json,
  ) {
    return VerificationResultPrimarySource(
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
      who: JsonParser.parseObject<Reference>(
        json,
        'who',
        Reference.fromJson,
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      communicationMethod: (json['communicationMethod'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      validationStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'validationStatus',
        CodeableConcept.fromJson,
      ),
      validationDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'validationDate',
        FhirDateTime.fromJson,
      ),
      canPushUpdates: JsonParser.parseObject<CodeableConcept>(
        json,
        'canPushUpdates',
        CodeableConcept.fromJson,
      ),
      pushTypeAvailable: (json['pushTypeAvailable'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
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
          json[key] = tempList;
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
  VerificationResultPrimarySource clone() => copyWith();

  /// Copy function for [VerificationResultPrimarySource]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $VerificationResultPrimarySourceCopyWith<VerificationResultPrimarySource>
      get copyWith => _$VerificationResultPrimarySourceCopyWithImpl<
              VerificationResultPrimarySource>(
            this,
            (value) => value,
          );

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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResultAttestation.fromJson(
    Map<String, dynamic> json,
  ) {
    return VerificationResultAttestation(
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
      who: JsonParser.parseObject<Reference>(
        json,
        'who',
        Reference.fromJson,
      ),
      onBehalfOf: JsonParser.parseObject<Reference>(
        json,
        'onBehalfOf',
        Reference.fromJson,
      ),
      communicationMethod: JsonParser.parseObject<CodeableConcept>(
        json,
        'communicationMethod',
        CodeableConcept.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDate>(
        json,
        'date',
        FhirDate.fromJson,
      ),
      sourceIdentityCertificate: JsonParser.parsePrimitive<FhirString>(
        json,
        'sourceIdentityCertificate',
        FhirString.fromJson,
      ),
      proxyIdentityCertificate: JsonParser.parsePrimitive<FhirString>(
        json,
        'proxyIdentityCertificate',
        FhirString.fromJson,
      ),
      proxySignature: JsonParser.parseObject<Signature>(
        json,
        'proxySignature',
        Signature.fromJson,
      ),
      sourceSignature: JsonParser.parseObject<Signature>(
        json,
        'sourceSignature',
        Signature.fromJson,
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
          json[key] = tempList;
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
  VerificationResultAttestation clone() => copyWith();

  /// Copy function for [VerificationResultAttestation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $VerificationResultAttestationCopyWith<VerificationResultAttestation>
      get copyWith => _$VerificationResultAttestationCopyWithImpl<
              VerificationResultAttestation>(
            this,
            (value) => value,
          );

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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResultValidator.fromJson(
    Map<String, dynamic> json,
  ) {
    return VerificationResultValidator(
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
      organization: JsonParser.parseObject<Reference>(
        json,
        'organization',
        Reference.fromJson,
      )!,
      identityCertificate: JsonParser.parsePrimitive<FhirString>(
        json,
        'identityCertificate',
        FhirString.fromJson,
      ),
      attestationSignature: JsonParser.parseObject<Signature>(
        json,
        'attestationSignature',
        Signature.fromJson,
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
          json[key] = tempList;
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
  VerificationResultValidator clone() => copyWith();

  /// Copy function for [VerificationResultValidator]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $VerificationResultValidatorCopyWith<VerificationResultValidator>
      get copyWith => _$VerificationResultValidatorCopyWithImpl<
              VerificationResultValidator>(
            this,
            (value) => value,
          );

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
