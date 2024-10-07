import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'verification_result.g.dart';

/// [VerificationResult] /// Describes validation requirements, source(s), status and dates for one or
/// more elements.
@JsonSerializable()
class VerificationResult extends DomainResource {
  VerificationResult({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.target,
    this.targetLocation,
    this.targetLocationElement,
    this.need,
    required this.status,
    this.statusElement,
    this.statusDate,
    this.statusDateElement,
    this.validationType,
    this.validationProcess,
    this.frequency,
    this.lastPerformed,
    this.lastPerformedElement,
    this.nextScheduled,
    this.nextScheduledElement,
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
            fhirType: 'VerificationResult');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [target] /// A resource that was validated.
  @JsonKey(name: 'target')
  final List<Reference>? target;

  /// [targetLocation] /// The fhirpath location(s) within the resource that was validated.
  @JsonKey(name: 'targetLocation')
  final List<FhirString>? targetLocation;
  @JsonKey(name: '_targetLocation')
  final List<Element>? targetLocationElement;

  /// [need] /// The frequency with which the target must be validated (none; initial;
  /// periodic).
  @JsonKey(name: 'need')
  final CodeableConcept? need;

  /// [status] /// The validation status of the target (attested; validated; in process;
  /// requires revalidation; validation failed; revalidation failed).
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [statusDate] /// When the validation status was updated.
  @JsonKey(name: 'statusDate')
  final FhirDateTime? statusDate;
  @JsonKey(name: '_statusDate')
  final Element? statusDateElement;

  /// [validationType] /// What the target is validated against (nothing; primary source; multiple
  /// sources).
  @JsonKey(name: 'validationType')
  final CodeableConcept? validationType;

  /// [validationProcess] /// The primary process by which the target is validated (edit check; value
  /// set; primary source; multiple sources; standalone; in context).
  @JsonKey(name: 'validationProcess')
  final List<CodeableConcept>? validationProcess;

  /// [frequency] /// Frequency of revalidation.
  @JsonKey(name: 'frequency')
  final Timing? frequency;

  /// [lastPerformed] /// The date/time validation was last completed (including failed validations).
  @JsonKey(name: 'lastPerformed')
  final FhirDateTime? lastPerformed;
  @JsonKey(name: '_lastPerformed')
  final Element? lastPerformedElement;

  /// [nextScheduled] /// The date when target is next validated, if appropriate.
  @JsonKey(name: 'nextScheduled')
  final FhirDate? nextScheduled;
  @JsonKey(name: '_nextScheduled')
  final Element? nextScheduledElement;

  /// [failureAction] /// The result if validation fails (fatal; warning; record only; none).
  @JsonKey(name: 'failureAction')
  final CodeableConcept? failureAction;

  /// [primarySource] /// Information about the primary source(s) involved in validation.
  @JsonKey(name: 'primarySource')
  final List<VerificationResultPrimarySource>? primarySource;

  /// [attestation] /// Information about the entity attesting to information.
  @JsonKey(name: 'attestation')
  final VerificationResultAttestation? attestation;

  /// [validator] /// Information about the entity validating information.
  @JsonKey(name: 'validator')
  final List<VerificationResultValidator>? validator;
  factory VerificationResult.fromJson(Map<String, dynamic> json) =>
      _$VerificationResultFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VerificationResultToJson(this);

  @override
  VerificationResult clone() => throw UnimplementedError();
  @override
  VerificationResult copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? target,
    List<FhirString>? targetLocation,
    List<Element>? targetLocationElement,
    CodeableConcept? need,
    FhirCode? status,
    Element? statusElement,
    FhirDateTime? statusDate,
    Element? statusDateElement,
    CodeableConcept? validationType,
    List<CodeableConcept>? validationProcess,
    Timing? frequency,
    FhirDateTime? lastPerformed,
    Element? lastPerformedElement,
    FhirDate? nextScheduled,
    Element? nextScheduledElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      target: target ?? this.target,
      targetLocation: targetLocation ?? this.targetLocation,
      targetLocationElement:
          targetLocationElement ?? this.targetLocationElement,
      need: need ?? this.need,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusDate: statusDate ?? this.statusDate,
      statusDateElement: statusDateElement ?? this.statusDateElement,
      validationType: validationType ?? this.validationType,
      validationProcess: validationProcess ?? this.validationProcess,
      frequency: frequency ?? this.frequency,
      lastPerformed: lastPerformed ?? this.lastPerformed,
      lastPerformedElement: lastPerformedElement ?? this.lastPerformedElement,
      nextScheduled: nextScheduled ?? this.nextScheduled,
      nextScheduledElement: nextScheduledElement ?? this.nextScheduledElement,
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

  factory VerificationResult.fromYaml(dynamic yaml) => yaml is String
      ? VerificationResult.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? VerificationResult.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'VerificationResult cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory VerificationResult.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return VerificationResult.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [VerificationResultPrimarySource] /// Information about the primary source(s) involved in validation.
@JsonSerializable()
class VerificationResultPrimarySource extends BackboneElement {
  VerificationResultPrimarySource({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.who,
    this.type,
    this.communicationMethod,
    this.validationStatus,
    this.validationDate,
    this.validationDateElement,
    this.canPushUpdates,
    this.pushTypeAvailable,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'VerificationResultPrimarySource');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [who] /// Reference to the primary source.
  @JsonKey(name: 'who')
  final Reference? who;

  /// [type] /// Type of primary source (License Board; Primary Education; Continuing
  /// Education; Postal Service; Relationship owner; Registration Authority;
  /// legal source; issuing source; authoritative source).
  @JsonKey(name: 'type')
  final List<CodeableConcept>? type;

  /// [communicationMethod] /// Method for communicating with the primary source (manual; API; Push).
  @JsonKey(name: 'communicationMethod')
  final List<CodeableConcept>? communicationMethod;

  /// [validationStatus] /// Status of the validation of the target against the primary source
  /// (successful; failed; unknown).
  @JsonKey(name: 'validationStatus')
  final CodeableConcept? validationStatus;

  /// [validationDate] /// When the target was validated against the primary source.
  @JsonKey(name: 'validationDate')
  final FhirDateTime? validationDate;
  @JsonKey(name: '_validationDate')
  final Element? validationDateElement;

  /// [canPushUpdates] /// Ability of the primary source to push updates/alerts (yes; no;
  /// undetermined).
  @JsonKey(name: 'canPushUpdates')
  final CodeableConcept? canPushUpdates;

  /// [pushTypeAvailable] /// Type of alerts/updates the primary source can send (specific requested
  /// changes; any changes; as defined by source).
  @JsonKey(name: 'pushTypeAvailable')
  final List<CodeableConcept>? pushTypeAvailable;
  factory VerificationResultPrimarySource.fromJson(Map<String, dynamic> json) =>
      _$VerificationResultPrimarySourceFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$VerificationResultPrimarySourceToJson(this);

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
    Element? validationDateElement,
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
      validationDateElement:
          validationDateElement ?? this.validationDateElement,
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

  factory VerificationResultPrimarySource.fromYaml(dynamic yaml) => yaml
          is String
      ? VerificationResultPrimarySource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? VerificationResultPrimarySource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'VerificationResultPrimarySource cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory VerificationResultPrimarySource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return VerificationResultPrimarySource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [VerificationResultAttestation] /// Information about the entity attesting to information.
@JsonSerializable()
class VerificationResultAttestation extends BackboneElement {
  VerificationResultAttestation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.who,
    this.onBehalfOf,
    this.communicationMethod,
    this.date,
    this.dateElement,
    this.sourceIdentityCertificate,
    this.sourceIdentityCertificateElement,
    this.proxyIdentityCertificate,
    this.proxyIdentityCertificateElement,
    this.proxySignature,
    this.sourceSignature,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'VerificationResultAttestation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [who] /// The individual or organization attesting to information.
  @JsonKey(name: 'who')
  final Reference? who;

  /// [onBehalfOf] /// When the who is asserting on behalf of another (organization or
  /// individual).
  @JsonKey(name: 'onBehalfOf')
  final Reference? onBehalfOf;

  /// [communicationMethod] /// The method by which attested information was submitted/retrieved (manual;
  /// API; Push).
  @JsonKey(name: 'communicationMethod')
  final CodeableConcept? communicationMethod;

  /// [date] /// The date the information was attested to.
  @JsonKey(name: 'date')
  final FhirDate? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [sourceIdentityCertificate] /// A digital identity certificate associated with the attestation source.
  @JsonKey(name: 'sourceIdentityCertificate')
  final FhirString? sourceIdentityCertificate;
  @JsonKey(name: '_sourceIdentityCertificate')
  final Element? sourceIdentityCertificateElement;

  /// [proxyIdentityCertificate] /// A digital identity certificate associated with the proxy entity submitting
  /// attested information on behalf of the attestation source.
  @JsonKey(name: 'proxyIdentityCertificate')
  final FhirString? proxyIdentityCertificate;
  @JsonKey(name: '_proxyIdentityCertificate')
  final Element? proxyIdentityCertificateElement;

  /// [proxySignature] /// Signed assertion by the proxy entity indicating that they have the right to
  /// submit attested information on behalf of the attestation source.
  @JsonKey(name: 'proxySignature')
  final Signature? proxySignature;

  /// [sourceSignature] /// Signed assertion by the attestation source that they have attested to the
  /// information.
  @JsonKey(name: 'sourceSignature')
  final Signature? sourceSignature;
  factory VerificationResultAttestation.fromJson(Map<String, dynamic> json) =>
      _$VerificationResultAttestationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VerificationResultAttestationToJson(this);

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
    Element? dateElement,
    FhirString? sourceIdentityCertificate,
    Element? sourceIdentityCertificateElement,
    FhirString? proxyIdentityCertificate,
    Element? proxyIdentityCertificateElement,
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
      dateElement: dateElement ?? this.dateElement,
      sourceIdentityCertificate:
          sourceIdentityCertificate ?? this.sourceIdentityCertificate,
      sourceIdentityCertificateElement: sourceIdentityCertificateElement ??
          this.sourceIdentityCertificateElement,
      proxyIdentityCertificate:
          proxyIdentityCertificate ?? this.proxyIdentityCertificate,
      proxyIdentityCertificateElement: proxyIdentityCertificateElement ??
          this.proxyIdentityCertificateElement,
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

  factory VerificationResultAttestation.fromYaml(dynamic yaml) => yaml is String
      ? VerificationResultAttestation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? VerificationResultAttestation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'VerificationResultAttestation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory VerificationResultAttestation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return VerificationResultAttestation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [VerificationResultValidator] /// Information about the entity validating information.
@JsonSerializable()
class VerificationResultValidator extends BackboneElement {
  VerificationResultValidator({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.organization,
    this.identityCertificate,
    this.identityCertificateElement,
    this.attestationSignature,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'VerificationResultValidator');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [organization] /// Reference to the organization validating information.
  @JsonKey(name: 'organization')
  final Reference organization;

  /// [identityCertificate] /// A digital identity certificate associated with the validator.
  @JsonKey(name: 'identityCertificate')
  final FhirString? identityCertificate;
  @JsonKey(name: '_identityCertificate')
  final Element? identityCertificateElement;

  /// [attestationSignature] /// Signed assertion by the validator that they have validated the information.
  @JsonKey(name: 'attestationSignature')
  final Signature? attestationSignature;
  factory VerificationResultValidator.fromJson(Map<String, dynamic> json) =>
      _$VerificationResultValidatorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VerificationResultValidatorToJson(this);

  @override
  VerificationResultValidator clone() => throw UnimplementedError();
  @override
  VerificationResultValidator copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? organization,
    FhirString? identityCertificate,
    Element? identityCertificateElement,
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
      identityCertificateElement:
          identityCertificateElement ?? this.identityCertificateElement,
      attestationSignature: attestationSignature ?? this.attestationSignature,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory VerificationResultValidator.fromYaml(dynamic yaml) => yaml is String
      ? VerificationResultValidator.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? VerificationResultValidator.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'VerificationResultValidator cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory VerificationResultValidator.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return VerificationResultValidator.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
