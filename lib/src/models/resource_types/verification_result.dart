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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      target: (json['target'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
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
              v as Map<String, dynamic>,
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
              v as Map<String, dynamic>,
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
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return VerificationResult.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (target != null && target!.isNotEmpty) {
      json['target'] = target!.map((e) => e.toJson()).toList();
    }

    if (targetLocation != null && targetLocation!.isNotEmpty) {
      final fieldJson0 = targetLocation!.map((e) => e.toJson()).toList();
      json['targetLocation'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_targetLocation'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (need != null) {
      json['need'] = need!.toJson();
    }

    addField('status', status);
    if (statusDate != null) {
      addField('statusDate', statusDate);
    }

    if (validationType != null) {
      json['validationType'] = validationType!.toJson();
    }

    if (validationProcess != null && validationProcess!.isNotEmpty) {
      json['validationProcess'] =
          validationProcess!.map((e) => e.toJson()).toList();
    }

    if (frequency != null) {
      json['frequency'] = frequency!.toJson();
    }

    if (lastPerformed != null) {
      addField('lastPerformed', lastPerformed);
    }

    if (nextScheduled != null) {
      addField('nextScheduled', nextScheduled);
    }

    if (failureAction != null) {
      json['failureAction'] = failureAction!.toJson();
    }

    if (primarySource != null && primarySource!.isNotEmpty) {
      json['primarySource'] = primarySource!.map((e) => e.toJson()).toList();
    }

    if (attestation != null) {
      json['attestation'] = attestation!.toJson();
    }

    if (validator != null && validator!.isNotEmpty) {
      json['validator'] = validator!.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return VerificationResult(
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
    );
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
  });

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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      communicationMethod: (json['communicationMethod'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
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
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return VerificationResultPrimarySource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (who != null) {
      json['who'] = who!.toJson();
    }

    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((e) => e.toJson()).toList();
    }

    if (communicationMethod != null && communicationMethod!.isNotEmpty) {
      json['communicationMethod'] =
          communicationMethod!.map((e) => e.toJson()).toList();
    }

    if (validationStatus != null) {
      json['validationStatus'] = validationStatus!.toJson();
    }

    if (validationDate != null) {
      addField('validationDate', validationDate);
    }

    if (canPushUpdates != null) {
      json['canPushUpdates'] = canPushUpdates!.toJson();
    }

    if (pushTypeAvailable != null && pushTypeAvailable!.isNotEmpty) {
      json['pushTypeAvailable'] =
          pushTypeAvailable!.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return VerificationResultPrimarySource(
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
    );
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
  });

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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return VerificationResultAttestation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (who != null) {
      json['who'] = who!.toJson();
    }

    if (onBehalfOf != null) {
      json['onBehalfOf'] = onBehalfOf!.toJson();
    }

    if (communicationMethod != null) {
      json['communicationMethod'] = communicationMethod!.toJson();
    }

    if (date != null) {
      addField('date', date);
    }

    if (sourceIdentityCertificate != null) {
      addField('sourceIdentityCertificate', sourceIdentityCertificate);
    }

    if (proxyIdentityCertificate != null) {
      addField('proxyIdentityCertificate', proxyIdentityCertificate);
    }

    if (proxySignature != null) {
      json['proxySignature'] = proxySignature!.toJson();
    }

    if (sourceSignature != null) {
      json['sourceSignature'] = sourceSignature!.toJson();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return VerificationResultAttestation(
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
    );
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
  });

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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return VerificationResultValidator.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['organization'] = organization.toJson();

    if (identityCertificate != null) {
      addField('identityCertificate', identityCertificate);
    }

    if (attestationSignature != null) {
      json['attestationSignature'] = attestationSignature!.toJson();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return VerificationResultValidator(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      organization: organization ?? this.organization,
      identityCertificate: identityCertificate ?? this.identityCertificate,
      attestationSignature: attestationSignature ?? this.attestationSignature,
    );
  }
}
