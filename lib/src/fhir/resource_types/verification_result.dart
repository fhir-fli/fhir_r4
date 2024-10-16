import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [VerificationResult]
/// Describes validation requirements, source(s), status and dates for one
/// or more elements.
class VerificationResult extends DomainResource {
  /// Primary constructor for [VerificationResult]

  VerificationResult({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.VerificationResult,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResult.fromJson(Map<String, dynamic> json) {
    return VerificationResult(
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
      target: json['target'] != null
          ? (json['target'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      targetLocation: parsePrimitiveList<FhirString>(
          json['targetLocation'] as List<dynamic>?,
          json['_targetLocation'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      need: json['need'] != null
          ? CodeableConcept.fromJson(
              json['need'] as Map<String, dynamic>,
            )
          : null,
      status: Status.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      statusDate: json['statusDate'] != null
          ? FhirDateTime.fromJson({
              'value': json['statusDate'],
              '_value': json['_statusDate'],
            })
          : null,
      validationType: json['validationType'] != null
          ? CodeableConcept.fromJson(
              json['validationType'] as Map<String, dynamic>,
            )
          : null,
      validationProcess: json['validationProcess'] != null
          ? (json['validationProcess'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      frequency: json['frequency'] != null
          ? Timing.fromJson(
              json['frequency'] as Map<String, dynamic>,
            )
          : null,
      lastPerformed: json['lastPerformed'] != null
          ? FhirDateTime.fromJson({
              'value': json['lastPerformed'],
              '_value': json['_lastPerformed'],
            })
          : null,
      nextScheduled: json['nextScheduled'] != null
          ? FhirDate.fromJson({
              'value': json['nextScheduled'],
              '_value': json['_nextScheduled'],
            })
          : null,
      failureAction: json['failureAction'] != null
          ? CodeableConcept.fromJson(
              json['failureAction'] as Map<String, dynamic>,
            )
          : null,
      primarySource: json['primarySource'] != null
          ? (json['primarySource'] as List<dynamic>)
              .map<VerificationResultPrimarySource>(
                (v) => VerificationResultPrimarySource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      attestation: json['attestation'] != null
          ? VerificationResultAttestation.fromJson(
              json['attestation'] as Map<String, dynamic>,
            )
          : null,
      validator: json['validator'] != null
          ? (json['validator'] as List<dynamic>)
              .map<VerificationResultValidator>(
                (v) => VerificationResultValidator.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [VerificationResult] from a [String]
  /// or [YamlMap] object
  factory VerificationResult.fromYaml(dynamic yaml) => yaml is String
      ? VerificationResult.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? VerificationResult.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('VerificationResult cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [VerificationResult]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VerificationResult.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (meta != null) {
      final primitiveJson = meta!.toJson();
      json['meta'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_meta'] = primitiveJson['_value'];
      }
    }

    if (implicitRules != null) {
      final primitiveJson = implicitRules!.toJson();
      json['implicitRules'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_implicitRules'] = primitiveJson['_value'];
      }
    }

    if (language != null) {
      final primitiveJson = language!.toJson();
      json['language'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_language'] = primitiveJson['_value'];
      }
    }

    if (text != null) {
      final primitiveJson = text!.toJson();
      json['text'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_text'] = primitiveJson['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final primitiveList = contained!.map((e) => e.toJson()).toList();
      json['contained'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_contained'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (target != null && target!.isNotEmpty) {
      final primitiveList = target!.map((e) => e.toJson()).toList();
      json['target'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_target'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (targetLocation != null && targetLocation!.isNotEmpty) {
      final primitiveList = targetLocation!.map((e) => e.toJson()).toList();
      json['targetLocation'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_targetLocation'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (need != null) {
      final primitiveJson = need!.toJson();
      json['need'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_need'] = primitiveJson['_value'];
      }
    }

    if (status != null) {
      final primitiveJson = status!.toJson();
      json['status'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_status'] = primitiveJson['_value'];
      }
    }

    if (statusDate != null) {
      final primitiveJson = statusDate!.toJson();
      json['statusDate'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_statusDate'] = primitiveJson['_value'];
      }
    }

    if (validationType != null) {
      final primitiveJson = validationType!.toJson();
      json['validationType'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_validationType'] = primitiveJson['_value'];
      }
    }

    if (validationProcess != null && validationProcess!.isNotEmpty) {
      final primitiveList = validationProcess!.map((e) => e.toJson()).toList();
      json['validationProcess'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_validationProcess'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (frequency != null) {
      final primitiveJson = frequency!.toJson();
      json['frequency'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_frequency'] = primitiveJson['_value'];
      }
    }

    if (lastPerformed != null) {
      final primitiveJson = lastPerformed!.toJson();
      json['lastPerformed'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_lastPerformed'] = primitiveJson['_value'];
      }
    }

    if (nextScheduled != null) {
      final primitiveJson = nextScheduled!.toJson();
      json['nextScheduled'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_nextScheduled'] = primitiveJson['_value'];
      }
    }

    if (failureAction != null) {
      final primitiveJson = failureAction!.toJson();
      json['failureAction'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_failureAction'] = primitiveJson['_value'];
      }
    }

    if (primarySource != null && primarySource!.isNotEmpty) {
      final primitiveList = primarySource!.map((e) => e.toJson()).toList();
      json['primarySource'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_primarySource'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (attestation != null) {
      final primitiveJson = attestation!.toJson();
      json['attestation'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_attestation'] = primitiveJson['_value'];
      }
    }

    if (validator != null && validator!.isNotEmpty) {
      final primitiveList = validator!.map((e) => e.toJson()).toList();
      json['validator'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_validator'] = primitiveList.map((e) => e['_value']).toList();
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [VerificationResultPrimarySource]
/// Information about the primary source(s) involved in validation.
class VerificationResultPrimarySource extends BackboneElement {
  /// Primary constructor for [VerificationResultPrimarySource]

  VerificationResultPrimarySource({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.who,
    this.type,
    this.communicationMethod,
    this.validationStatus,
    this.validationDate,
    this.canPushUpdates,
    this.pushTypeAvailable,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResultPrimarySource.fromJson(Map<String, dynamic> json) {
    return VerificationResultPrimarySource(
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
      who: json['who'] != null
          ? Reference.fromJson(
              json['who'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      communicationMethod: json['communicationMethod'] != null
          ? (json['communicationMethod'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      validationStatus: json['validationStatus'] != null
          ? CodeableConcept.fromJson(
              json['validationStatus'] as Map<String, dynamic>,
            )
          : null,
      validationDate: json['validationDate'] != null
          ? FhirDateTime.fromJson({
              'value': json['validationDate'],
              '_value': json['_validationDate'],
            })
          : null,
      canPushUpdates: json['canPushUpdates'] != null
          ? CodeableConcept.fromJson(
              json['canPushUpdates'] as Map<String, dynamic>,
            )
          : null,
      pushTypeAvailable: json['pushTypeAvailable'] != null
          ? (json['pushTypeAvailable'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [VerificationResultPrimarySource] from a [String]
  /// or [YamlMap] object
  factory VerificationResultPrimarySource.fromYaml(dynamic yaml) => yaml
          is String
      ? VerificationResultPrimarySource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? VerificationResultPrimarySource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'VerificationResultPrimarySource cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [VerificationResultPrimarySource]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VerificationResultPrimarySource.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (who != null) {
      final primitiveJson = who!.toJson();
      json['who'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_who'] = primitiveJson['_value'];
      }
    }

    if (type != null && type!.isNotEmpty) {
      final primitiveList = type!.map((e) => e.toJson()).toList();
      json['type'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_type'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (communicationMethod != null && communicationMethod!.isNotEmpty) {
      final primitiveList =
          communicationMethod!.map((e) => e.toJson()).toList();
      json['communicationMethod'] =
          primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_communicationMethod'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (validationStatus != null) {
      final primitiveJson = validationStatus!.toJson();
      json['validationStatus'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_validationStatus'] = primitiveJson['_value'];
      }
    }

    if (validationDate != null) {
      final primitiveJson = validationDate!.toJson();
      json['validationDate'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_validationDate'] = primitiveJson['_value'];
      }
    }

    if (canPushUpdates != null) {
      final primitiveJson = canPushUpdates!.toJson();
      json['canPushUpdates'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_canPushUpdates'] = primitiveJson['_value'];
      }
    }

    if (pushTypeAvailable != null && pushTypeAvailable!.isNotEmpty) {
      final primitiveList = pushTypeAvailable!.map((e) => e.toJson()).toList();
      json['pushTypeAvailable'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_pushTypeAvailable'] =
            primitiveList.map((e) => e['_value']).toList();
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [VerificationResultAttestation]
/// Information about the entity attesting to information.
class VerificationResultAttestation extends BackboneElement {
  /// Primary constructor for [VerificationResultAttestation]

  VerificationResultAttestation({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.who,
    this.onBehalfOf,
    this.communicationMethod,
    this.date,
    this.sourceIdentityCertificate,
    this.proxyIdentityCertificate,
    this.proxySignature,
    this.sourceSignature,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResultAttestation.fromJson(Map<String, dynamic> json) {
    return VerificationResultAttestation(
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
      who: json['who'] != null
          ? Reference.fromJson(
              json['who'] as Map<String, dynamic>,
            )
          : null,
      onBehalfOf: json['onBehalfOf'] != null
          ? Reference.fromJson(
              json['onBehalfOf'] as Map<String, dynamic>,
            )
          : null,
      communicationMethod: json['communicationMethod'] != null
          ? CodeableConcept.fromJson(
              json['communicationMethod'] as Map<String, dynamic>,
            )
          : null,
      date: json['date'] != null
          ? FhirDate.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      sourceIdentityCertificate: json['sourceIdentityCertificate'] != null
          ? FhirString.fromJson({
              'value': json['sourceIdentityCertificate'],
              '_value': json['_sourceIdentityCertificate'],
            })
          : null,
      proxyIdentityCertificate: json['proxyIdentityCertificate'] != null
          ? FhirString.fromJson({
              'value': json['proxyIdentityCertificate'],
              '_value': json['_proxyIdentityCertificate'],
            })
          : null,
      proxySignature: json['proxySignature'] != null
          ? Signature.fromJson(
              json['proxySignature'] as Map<String, dynamic>,
            )
          : null,
      sourceSignature: json['sourceSignature'] != null
          ? Signature.fromJson(
              json['sourceSignature'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [VerificationResultAttestation] from a [String]
  /// or [YamlMap] object
  factory VerificationResultAttestation.fromYaml(dynamic yaml) => yaml is String
      ? VerificationResultAttestation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? VerificationResultAttestation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'VerificationResultAttestation cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [VerificationResultAttestation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VerificationResultAttestation.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (who != null) {
      final primitiveJson = who!.toJson();
      json['who'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_who'] = primitiveJson['_value'];
      }
    }

    if (onBehalfOf != null) {
      final primitiveJson = onBehalfOf!.toJson();
      json['onBehalfOf'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_onBehalfOf'] = primitiveJson['_value'];
      }
    }

    if (communicationMethod != null) {
      final primitiveJson = communicationMethod!.toJson();
      json['communicationMethod'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_communicationMethod'] = primitiveJson['_value'];
      }
    }

    if (date != null) {
      final primitiveJson = date!.toJson();
      json['date'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_date'] = primitiveJson['_value'];
      }
    }

    if (sourceIdentityCertificate != null) {
      final primitiveJson = sourceIdentityCertificate!.toJson();
      json['sourceIdentityCertificate'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_sourceIdentityCertificate'] = primitiveJson['_value'];
      }
    }

    if (proxyIdentityCertificate != null) {
      final primitiveJson = proxyIdentityCertificate!.toJson();
      json['proxyIdentityCertificate'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_proxyIdentityCertificate'] = primitiveJson['_value'];
      }
    }

    if (proxySignature != null) {
      final primitiveJson = proxySignature!.toJson();
      json['proxySignature'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_proxySignature'] = primitiveJson['_value'];
      }
    }

    if (sourceSignature != null) {
      final primitiveJson = sourceSignature!.toJson();
      json['sourceSignature'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_sourceSignature'] = primitiveJson['_value'];
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [VerificationResultValidator]
/// Information about the entity validating information.
class VerificationResultValidator extends BackboneElement {
  /// Primary constructor for [VerificationResultValidator]

  VerificationResultValidator({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.organization,
    this.identityCertificate,
    this.attestationSignature,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VerificationResultValidator.fromJson(Map<String, dynamic> json) {
    return VerificationResultValidator(
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
      organization: Reference.fromJson(
        json['organization'] as Map<String, dynamic>,
      ),
      identityCertificate: json['identityCertificate'] != null
          ? FhirString.fromJson({
              'value': json['identityCertificate'],
              '_value': json['_identityCertificate'],
            })
          : null,
      attestationSignature: json['attestationSignature'] != null
          ? Signature.fromJson(
              json['attestationSignature'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [VerificationResultValidator] from a [String]
  /// or [YamlMap] object
  factory VerificationResultValidator.fromYaml(dynamic yaml) => yaml is String
      ? VerificationResultValidator.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? VerificationResultValidator.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'VerificationResultValidator cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [VerificationResultValidator]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VerificationResultValidator.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (organization != null) {
      final primitiveJson = organization!.toJson();
      json['organization'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_organization'] = primitiveJson['_value'];
      }
    }

    if (identityCertificate != null) {
      final primitiveJson = identityCertificate!.toJson();
      json['identityCertificate'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_identityCertificate'] = primitiveJson['_value'];
      }
    }

    if (attestationSignature != null) {
      final primitiveJson = attestationSignature!.toJson();
      json['attestationSignature'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_attestationSignature'] = primitiveJson['_value'];
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return VerificationResultValidator(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      organization: organization ?? this.organization,
      identityCertificate: identityCertificate ?? this.identityCertificate,
      attestationSignature: attestationSignature ?? this.attestationSignature,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
