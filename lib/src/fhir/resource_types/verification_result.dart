import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [VerificationResult] /// Describes validation requirements, source(s), status and dates for one or
/// more elements.
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
  }) : super(resourceType: R4ResourceType.VerificationResult);

  @override
  String get fhirType => 'VerificationResult';

  @Id()
  int dbId = 0;

  /// [target] /// A resource that was validated.
  final List<Reference>? target;

  /// [targetLocation] /// The fhirpath location(s) within the resource that was validated.
  final List<FhirString>? targetLocation;
  final List<Element>? targetLocationElement;

  /// [need] /// The frequency with which the target must be validated (none; initial;
  /// periodic).
  final CodeableConcept? need;

  /// [status] /// The validation status of the target (attested; validated; in process;
  /// requires revalidation; validation failed; revalidation failed).
  final Status status;
  final Element? statusElement;

  /// [statusDate] /// When the validation status was updated.
  final FhirDateTime? statusDate;
  final Element? statusDateElement;

  /// [validationType] /// What the target is validated against (nothing; primary source; multiple
  /// sources).
  final CodeableConcept? validationType;

  /// [validationProcess] /// The primary process by which the target is validated (edit check; value
  /// set; primary source; multiple sources; standalone; in context).
  final List<CodeableConcept>? validationProcess;

  /// [frequency] /// Frequency of revalidation.
  final Timing? frequency;

  /// [lastPerformed] /// The date/time validation was last completed (including failed validations).
  final FhirDateTime? lastPerformed;
  final Element? lastPerformedElement;

  /// [nextScheduled] /// The date when target is next validated, if appropriate.
  final FhirDate? nextScheduled;
  final Element? nextScheduledElement;

  /// [failureAction] /// The result if validation fails (fatal; warning; record only; none).
  final CodeableConcept? failureAction;

  /// [primarySource] /// Information about the primary source(s) involved in validation.
  final List<VerificationResultPrimarySource>? primarySource;

  /// [attestation] /// Information about the entity attesting to information.
  final VerificationResultAttestation? attestation;

  /// [validator] /// Information about the entity validating information.
  final List<VerificationResultValidator>? validator;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (target != null && target!.isNotEmpty) {
      json['target'] =
          target!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (targetLocation != null && targetLocation!.isNotEmpty) {
      json['targetLocation'] =
          targetLocation!.map((FhirString v) => v.value).toList();
    }
    if (targetLocationElement != null && targetLocationElement!.isNotEmpty) {
      json['_targetLocation'] =
          targetLocationElement!.map((Element v) => v.toJson()).toList();
    }
    if (need != null) {
      json['need'] = need!.toJson();
    }
    json['status'] = status.toJson();
    if (statusDate?.value != null) {
      json['statusDate'] = statusDate!.value;
    }
    if (statusDateElement != null) {
      json['_statusDate'] = statusDateElement!.toJson();
    }
    if (validationType != null) {
      json['validationType'] = validationType!.toJson();
    }
    if (validationProcess != null && validationProcess!.isNotEmpty) {
      json['validationProcess'] = validationProcess!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (frequency != null) {
      json['frequency'] = frequency!.toJson();
    }
    if (lastPerformed?.value != null) {
      json['lastPerformed'] = lastPerformed!.value;
    }
    if (lastPerformedElement != null) {
      json['_lastPerformed'] = lastPerformedElement!.toJson();
    }
    if (nextScheduled?.value != null) {
      json['nextScheduled'] = nextScheduled!.value;
    }
    if (nextScheduledElement != null) {
      json['_nextScheduled'] = nextScheduledElement!.toJson();
    }
    if (failureAction != null) {
      json['failureAction'] = failureAction!.toJson();
    }
    if (primarySource != null && primarySource!.isNotEmpty) {
      json['primarySource'] = primarySource!
          .map<dynamic>((VerificationResultPrimarySource v) => v.toJson())
          .toList();
    }
    if (attestation != null) {
      json['attestation'] = attestation!.toJson();
    }
    if (validator != null && validator!.isNotEmpty) {
      json['validator'] = validator!
          .map<dynamic>((VerificationResultValidator v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory VerificationResult.fromJson(Map<String, dynamic> json) {
    return VerificationResult(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      target: json['target'] != null
          ? (json['target'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      targetLocation: json['targetLocation'] != null
          ? (json['targetLocation'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      targetLocationElement: json['_targetLocation'] != null
          ? (json['_targetLocation'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      need: json['need'] != null
          ? CodeableConcept.fromJson(json['need'] as Map<String, dynamic>)
          : null,
      status: Status.fromJson(json['status'] as Map<String, dynamic>),
      statusDate:
          json['statusDate'] != null ? FhirDateTime(json['statusDate']) : null,
      statusDateElement: json['_statusDate'] != null
          ? Element.fromJson(json['_statusDate'] as Map<String, dynamic>)
          : null,
      validationType: json['validationType'] != null
          ? CodeableConcept.fromJson(
              json['validationType'] as Map<String, dynamic>)
          : null,
      validationProcess: json['validationProcess'] != null
          ? (json['validationProcess'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      frequency: json['frequency'] != null
          ? Timing.fromJson(json['frequency'] as Map<String, dynamic>)
          : null,
      lastPerformed: json['lastPerformed'] != null
          ? FhirDateTime(json['lastPerformed'])
          : null,
      lastPerformedElement: json['_lastPerformed'] != null
          ? Element.fromJson(json['_lastPerformed'] as Map<String, dynamic>)
          : null,
      nextScheduled: json['nextScheduled'] != null
          ? FhirDate(json['nextScheduled'])
          : null,
      nextScheduledElement: json['_nextScheduled'] != null
          ? Element.fromJson(json['_nextScheduled'] as Map<String, dynamic>)
          : null,
      failureAction: json['failureAction'] != null
          ? CodeableConcept.fromJson(
              json['failureAction'] as Map<String, dynamic>)
          : null,
      primarySource: json['primarySource'] != null
          ? (json['primarySource'] as List<dynamic>)
              .map<VerificationResultPrimarySource>((dynamic v) =>
                  VerificationResultPrimarySource.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      attestation: json['attestation'] != null
          ? VerificationResultAttestation.fromJson(
              json['attestation'] as Map<String, dynamic>)
          : null,
      validator: json['validator'] != null
          ? (json['validator'] as List<dynamic>)
              .map<VerificationResultValidator>((dynamic v) =>
                  VerificationResultValidator.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  VerificationResult clone() => throw UnimplementedError();
  @override
  VerificationResult copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? target,
    List<FhirString>? targetLocation,
    List<Element>? targetLocationElement,
    CodeableConcept? need,
    Status? status,
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
  });

  @override
  String get fhirType => 'VerificationResultPrimarySource';

  @Id()
  int dbId = 0;

  /// [who] /// Reference to the primary source.
  final Reference? who;

  /// [type] /// Type of primary source (License Board; Primary Education; Continuing
  /// Education; Postal Service; Relationship owner; Registration Authority;
  /// legal source; issuing source; authoritative source).
  final List<CodeableConcept>? type;

  /// [communicationMethod] /// Method for communicating with the primary source (manual; API; Push).
  final List<CodeableConcept>? communicationMethod;

  /// [validationStatus] /// Status of the validation of the target against the primary source
  /// (successful; failed; unknown).
  final CodeableConcept? validationStatus;

  /// [validationDate] /// When the target was validated against the primary source.
  final FhirDateTime? validationDate;
  final Element? validationDateElement;

  /// [canPushUpdates] /// Ability of the primary source to push updates/alerts (yes; no;
  /// undetermined).
  final CodeableConcept? canPushUpdates;

  /// [pushTypeAvailable] /// Type of alerts/updates the primary source can send (specific requested
  /// changes; any changes; as defined by source).
  final List<CodeableConcept>? pushTypeAvailable;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (who != null) {
      json['who'] = who!.toJson();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] =
          type!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (communicationMethod != null && communicationMethod!.isNotEmpty) {
      json['communicationMethod'] = communicationMethod!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (validationStatus != null) {
      json['validationStatus'] = validationStatus!.toJson();
    }
    if (validationDate?.value != null) {
      json['validationDate'] = validationDate!.value;
    }
    if (validationDateElement != null) {
      json['_validationDate'] = validationDateElement!.toJson();
    }
    if (canPushUpdates != null) {
      json['canPushUpdates'] = canPushUpdates!.toJson();
    }
    if (pushTypeAvailable != null && pushTypeAvailable!.isNotEmpty) {
      json['pushTypeAvailable'] = pushTypeAvailable!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory VerificationResultPrimarySource.fromJson(Map<String, dynamic> json) {
    return VerificationResultPrimarySource(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      who: json['who'] != null
          ? Reference.fromJson(json['who'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      communicationMethod: json['communicationMethod'] != null
          ? (json['communicationMethod'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      validationStatus: json['validationStatus'] != null
          ? CodeableConcept.fromJson(
              json['validationStatus'] as Map<String, dynamic>)
          : null,
      validationDate: json['validationDate'] != null
          ? FhirDateTime(json['validationDate'])
          : null,
      validationDateElement: json['_validationDate'] != null
          ? Element.fromJson(json['_validationDate'] as Map<String, dynamic>)
          : null,
      canPushUpdates: json['canPushUpdates'] != null
          ? CodeableConcept.fromJson(
              json['canPushUpdates'] as Map<String, dynamic>)
          : null,
      pushTypeAvailable: json['pushTypeAvailable'] != null
          ? (json['pushTypeAvailable'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
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
  });

  @override
  String get fhirType => 'VerificationResultAttestation';

  @Id()
  int dbId = 0;

  /// [who] /// The individual or organization attesting to information.
  final Reference? who;

  /// [onBehalfOf] /// When the who is asserting on behalf of another (organization or
  /// individual).
  final Reference? onBehalfOf;

  /// [communicationMethod] /// The method by which attested information was submitted/retrieved (manual;
  /// API; Push).
  final CodeableConcept? communicationMethod;

  /// [date] /// The date the information was attested to.
  final FhirDate? date;
  final Element? dateElement;

  /// [sourceIdentityCertificate] /// A digital identity certificate associated with the attestation source.
  final FhirString? sourceIdentityCertificate;
  final Element? sourceIdentityCertificateElement;

  /// [proxyIdentityCertificate] /// A digital identity certificate associated with the proxy entity submitting
  /// attested information on behalf of the attestation source.
  final FhirString? proxyIdentityCertificate;
  final Element? proxyIdentityCertificateElement;

  /// [proxySignature] /// Signed assertion by the proxy entity indicating that they have the right to
  /// submit attested information on behalf of the attestation source.
  final Signature? proxySignature;

  /// [sourceSignature] /// Signed assertion by the attestation source that they have attested to the
  /// information.
  final Signature? sourceSignature;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
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
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (sourceIdentityCertificate?.value != null) {
      json['sourceIdentityCertificate'] = sourceIdentityCertificate!.value;
    }
    if (sourceIdentityCertificateElement != null) {
      json['_sourceIdentityCertificate'] =
          sourceIdentityCertificateElement!.toJson();
    }
    if (proxyIdentityCertificate?.value != null) {
      json['proxyIdentityCertificate'] = proxyIdentityCertificate!.value;
    }
    if (proxyIdentityCertificateElement != null) {
      json['_proxyIdentityCertificate'] =
          proxyIdentityCertificateElement!.toJson();
    }
    if (proxySignature != null) {
      json['proxySignature'] = proxySignature!.toJson();
    }
    if (sourceSignature != null) {
      json['sourceSignature'] = sourceSignature!.toJson();
    }
    return json;
  }

  factory VerificationResultAttestation.fromJson(Map<String, dynamic> json) {
    return VerificationResultAttestation(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      who: json['who'] != null
          ? Reference.fromJson(json['who'] as Map<String, dynamic>)
          : null,
      onBehalfOf: json['onBehalfOf'] != null
          ? Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>)
          : null,
      communicationMethod: json['communicationMethod'] != null
          ? CodeableConcept.fromJson(
              json['communicationMethod'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirDate(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      sourceIdentityCertificate: json['sourceIdentityCertificate'] != null
          ? FhirString(json['sourceIdentityCertificate'])
          : null,
      sourceIdentityCertificateElement:
          json['_sourceIdentityCertificate'] != null
              ? Element.fromJson(
                  json['_sourceIdentityCertificate'] as Map<String, dynamic>)
              : null,
      proxyIdentityCertificate: json['proxyIdentityCertificate'] != null
          ? FhirString(json['proxyIdentityCertificate'])
          : null,
      proxyIdentityCertificateElement: json['_proxyIdentityCertificate'] != null
          ? Element.fromJson(
              json['_proxyIdentityCertificate'] as Map<String, dynamic>)
          : null,
      proxySignature: json['proxySignature'] != null
          ? Signature.fromJson(json['proxySignature'] as Map<String, dynamic>)
          : null,
      sourceSignature: json['sourceSignature'] != null
          ? Signature.fromJson(json['sourceSignature'] as Map<String, dynamic>)
          : null,
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
  });

  @override
  String get fhirType => 'VerificationResultValidator';

  @Id()
  int dbId = 0;

  /// [organization] /// Reference to the organization validating information.
  final Reference organization;

  /// [identityCertificate] /// A digital identity certificate associated with the validator.
  final FhirString? identityCertificate;
  final Element? identityCertificateElement;

  /// [attestationSignature] /// Signed assertion by the validator that they have validated the information.
  final Signature? attestationSignature;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['organization'] = organization.toJson();
    if (identityCertificate?.value != null) {
      json['identityCertificate'] = identityCertificate!.value;
    }
    if (identityCertificateElement != null) {
      json['_identityCertificate'] = identityCertificateElement!.toJson();
    }
    if (attestationSignature != null) {
      json['attestationSignature'] = attestationSignature!.toJson();
    }
    return json;
  }

  factory VerificationResultValidator.fromJson(Map<String, dynamic> json) {
    return VerificationResultValidator(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      organization:
          Reference.fromJson(json['organization'] as Map<String, dynamic>),
      identityCertificate: json['identityCertificate'] != null
          ? FhirString(json['identityCertificate'])
          : null,
      identityCertificateElement: json['_identityCertificate'] != null
          ? Element.fromJson(
              json['_identityCertificate'] as Map<String, dynamic>)
          : null,
      attestationSignature: json['attestationSignature'] != null
          ? Signature.fromJson(
              json['attestationSignature'] as Map<String, dynamic>)
          : null,
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
