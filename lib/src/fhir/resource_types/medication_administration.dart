import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'medication_administration.g.dart';

/// [MedicationAdministration] /// Describes the event of a patient consuming or otherwise being administered
/// a medication. This may be as simple as swallowing a tablet or it may be a
/// long running infusion. Related resources tie this event to the authorizing
/// prescription, and the specific encounter between patient and health care
/// practitioner.
@JsonSerializable()
class MedicationAdministration extends DomainResource {
  MedicationAdministration({
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
    this.identifier,
    this.instantiates,
    this.instantiatesElement,
    this.partOf,
    required this.status,
    this.statusElement,
    this.statusReason,
    this.category,
    required this.medicationCodeableConcept,
    required this.medicationReference,
    required this.subject,
    this.context,
    this.supportingInformation,
    required this.effectiveDateTime,
    this.effectiveDateTimeElement,
    required this.effectivePeriod,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.request,
    this.device,
    this.note,
    this.dosage,
    this.eventHistory,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.MedicationAdministration);
  @override
  String get fhirType => 'MedicationAdministration';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers associated with this Medication Administration that are defined
  /// by business processes and/or used to refer to it when a direct URL
  /// reference to the resource itself is not appropriate. They are business
  /// identifiers assigned to this resource by the performer or other systems and
  /// remain constant as the resource is updated and propagates from server to
  /// server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [instantiates] /// A protocol, guideline, orderset, or other definition that was adhered to in
  /// whole or in part by this event.
  @JsonKey(name: 'instantiates')
  final List<FhirUri>? instantiates;
  @JsonKey(name: '_instantiates')
  final List<Element>? instantiatesElement;

  /// [partOf] /// A larger event of which this particular event is a component or step.
  @JsonKey(name: 'partOf')
  final List<Reference>? partOf;

  /// [status] /// Will generally be set to show that the administration has been completed.
  /// For some long running administrations such as infusions, it is possible for
  /// an administration to be started but not completed or it may be paused while
  /// some other process is under way.
  @JsonKey(name: 'status')
  final MedicationAdministrationStatusCodes status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [statusReason] /// A code indicating why the administration was not performed.
  @JsonKey(name: 'statusReason')
  final List<CodeableConcept>? statusReason;

  /// [category] /// Indicates where the medication is expected to be consumed or administered.
  @JsonKey(name: 'category')
  final MedicationAdministrationCategoryCodes? category;

  /// [medicationCodeableConcept] /// Identifies the medication that was administered. This is either a link to a
  /// resource representing the details of the medication or a simple attribute
  /// carrying a code that identifies the medication from a known list of
  /// medications.
  @JsonKey(name: 'medicationCodeableConcept')
  final CodeableConcept medicationCodeableConcept;

  /// [medicationReference] /// Identifies the medication that was administered. This is either a link to a
  /// resource representing the details of the medication or a simple attribute
  /// carrying a code that identifies the medication from a known list of
  /// medications.
  @JsonKey(name: 'medicationReference')
  final Reference medicationReference;

  /// [subject] /// The person or animal or group receiving the medication.
  @JsonKey(name: 'subject')
  final Reference subject;

  /// [context] /// The visit, admission, or other contact between patient and health care
  /// provider during which the medication administration was performed.
  @JsonKey(name: 'context')
  final Reference? context;

  /// [supportingInformation] /// Additional information (for example, patient height and weight) that
  /// supports the administration of the medication.
  @JsonKey(name: 'supportingInformation')
  final List<Reference>? supportingInformation;

  /// [effectiveDateTime] /// A specific date/time or interval of time during which the administration
  /// took place (or did not take place, when the 'notGiven' attribute is true).
  /// For many administrations, such as swallowing a tablet the use of dateTime
  /// is more appropriate.
  @JsonKey(name: 'effectiveDateTime')
  final FhirDateTime effectiveDateTime;
  @JsonKey(name: '_effectiveDateTime')
  final Element? effectiveDateTimeElement;

  /// [effectivePeriod] /// A specific date/time or interval of time during which the administration
  /// took place (or did not take place, when the 'notGiven' attribute is true).
  /// For many administrations, such as swallowing a tablet the use of dateTime
  /// is more appropriate.
  @JsonKey(name: 'effectivePeriod')
  final Period effectivePeriod;

  /// [performer] /// Indicates who or what performed the medication administration and how they
  /// were involved.
  @JsonKey(name: 'performer')
  final List<MedicationAdministrationPerformer>? performer;

  /// [reasonCode] /// A code indicating why the medication was given.
  @JsonKey(name: 'reasonCode')
  final List<ReasonMedicationGivenCodes>? reasonCode;

  /// [reasonReference] /// Condition or observation that supports why the medication was administered.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [request] /// The original request, instruction or authority to perform the
  /// administration.
  @JsonKey(name: 'request')
  final Reference? request;

  /// [device] /// The device used in administering the medication to the patient. For
  /// example, a particular infusion pump.
  @JsonKey(name: 'device')
  final List<Reference>? device;

  /// [note] /// Extra information about the medication administration that is not conveyed
  /// by the other attributes.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [dosage] /// Describes the medication dosage information details e.g. dose, rate, site,
  /// route, etc.
  @JsonKey(name: 'dosage')
  final MedicationAdministrationDosage? dosage;

  /// [eventHistory] /// A summary of the events of interest that have occurred, such as when the
  /// administration was verified.
  @JsonKey(name: 'eventHistory')
  final List<Reference>? eventHistory;
  factory MedicationAdministration.fromJson(Map<String, dynamic> json) =>
      _$MedicationAdministrationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationAdministrationToJson(this);

  @override
  MedicationAdministration clone() => throw UnimplementedError();
  @override
  MedicationAdministration copyWith({
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
    List<Identifier>? identifier,
    List<FhirUri>? instantiates,
    List<Element>? instantiatesElement,
    List<Reference>? partOf,
    MedicationAdministrationStatusCodes? status,
    Element? statusElement,
    List<CodeableConcept>? statusReason,
    MedicationAdministrationCategoryCodes? category,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
    Reference? subject,
    Reference? context,
    List<Reference>? supportingInformation,
    FhirDateTime? effectiveDateTime,
    Element? effectiveDateTimeElement,
    Period? effectivePeriod,
    List<MedicationAdministrationPerformer>? performer,
    List<ReasonMedicationGivenCodes>? reasonCode,
    List<Reference>? reasonReference,
    Reference? request,
    List<Reference>? device,
    List<Annotation>? note,
    MedicationAdministrationDosage? dosage,
    List<Reference>? eventHistory,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationAdministration(
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
      identifier: identifier ?? this.identifier,
      instantiates: instantiates ?? this.instantiates,
      instantiatesElement: instantiatesElement ?? this.instantiatesElement,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusReason: statusReason ?? this.statusReason,
      category: category ?? this.category,
      medicationCodeableConcept:
          medicationCodeableConcept ?? this.medicationCodeableConcept,
      medicationReference: medicationReference ?? this.medicationReference,
      subject: subject ?? this.subject,
      context: context ?? this.context,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      effectiveDateTime: effectiveDateTime ?? this.effectiveDateTime,
      effectiveDateTimeElement:
          effectiveDateTimeElement ?? this.effectiveDateTimeElement,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      request: request ?? this.request,
      device: device ?? this.device,
      note: note ?? this.note,
      dosage: dosage ?? this.dosage,
      eventHistory: eventHistory ?? this.eventHistory,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicationAdministration.fromYaml(dynamic yaml) => yaml is String
      ? MedicationAdministration.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationAdministration.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationAdministration cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationAdministration.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationAdministration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationAdministrationPerformer] /// Indicates who or what performed the medication administration and how they
/// were involved.
@JsonSerializable()
class MedicationAdministrationPerformer extends BackboneElement {
  MedicationAdministrationPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'MedicationAdministrationPerformer';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [function_] /// Distinguishes the type of involvement of the performer in the medication
  /// administration.
  @JsonKey(name: 'function')
  final MedicationAdministrationPerformerFunctionCodes? function_;

  /// [actor] /// Indicates who or what performed the medication administration.
  @JsonKey(name: 'actor')
  final Reference actor;
  factory MedicationAdministrationPerformer.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationAdministrationPerformerFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MedicationAdministrationPerformerToJson(this);

  @override
  MedicationAdministrationPerformer clone() => throw UnimplementedError();
  @override
  MedicationAdministrationPerformer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    MedicationAdministrationPerformerFunctionCodes? function_,
    Reference? actor,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationAdministrationPerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicationAdministrationPerformer.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationAdministrationPerformer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationAdministrationPerformer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationAdministrationPerformer cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationAdministrationPerformer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationAdministrationPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationAdministrationDosage] /// Describes the medication dosage information details e.g. dose, rate, site,
/// route, etc.
@JsonSerializable()
class MedicationAdministrationDosage extends BackboneElement {
  MedicationAdministrationDosage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.text,
    this.textElement,
    this.site,
    this.route,
    this.method,
    this.dose,
    this.rateRatio,
    this.rateQuantity,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'MedicationAdministrationDosage';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [text] /// Free text dosage can be used for cases where the dosage administered is too
  /// complex to code. When coded dosage is present, the free text dosage may
  /// still be present for display to humans. The dosage instructions should
  /// reflect the dosage of the medication that was administered.
  @JsonKey(name: 'text')
  final FhirString? text;
  @JsonKey(name: '_text')
  final Element? textElement;

  /// [site] /// A coded specification of the anatomic site where the medication first
  /// entered the body. For example, "left arm".
  @JsonKey(name: 'site')
  final CodeableConcept? site;

  /// [route] /// A code specifying the route or physiological path of administration of a
  /// therapeutic agent into or onto the patient. For example, topical,
  /// intravenous, etc.
  @JsonKey(name: 'route')
  final CodeableConcept? route;

  /// [method] /// A coded value indicating the method by which the medication is intended to
  /// be or was introduced into or on the body. This attribute will most often
  /// NOT be populated. It is most commonly used for injections. For example,
  /// Slow Push, Deep IV.
  @JsonKey(name: 'method')
  final CodeableConcept? method;

  /// [dose] /// The amount of the medication given at one administration event. Use this
  /// value when the administration is essentially an instantaneous event such as
  /// a swallowing a tablet or giving an injection.
  @JsonKey(name: 'dose')
  final Quantity? dose;

  /// [rateRatio] /// Identifies the speed with which the medication was or will be introduced
  /// into the patient. Typically, the rate for an infusion e.g. 100 ml per 1
  /// hour or 100 ml/hr. May also be expressed as a rate per unit of time, e.g.
  /// 500 ml per 2 hours. Other examples: 200 mcg/min or 200 mcg/1 minute; 1
  /// liter/8 hours.
  @JsonKey(name: 'rateRatio')
  final Ratio? rateRatio;

  /// [rateQuantity] /// Identifies the speed with which the medication was or will be introduced
  /// into the patient. Typically, the rate for an infusion e.g. 100 ml per 1
  /// hour or 100 ml/hr. May also be expressed as a rate per unit of time, e.g.
  /// 500 ml per 2 hours. Other examples: 200 mcg/min or 200 mcg/1 minute; 1
  /// liter/8 hours.
  @JsonKey(name: 'rateQuantity')
  final Quantity? rateQuantity;
  factory MedicationAdministrationDosage.fromJson(Map<String, dynamic> json) =>
      _$MedicationAdministrationDosageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationAdministrationDosageToJson(this);

  @override
  MedicationAdministrationDosage clone() => throw UnimplementedError();
  @override
  MedicationAdministrationDosage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? text,
    Element? textElement,
    CodeableConcept? site,
    CodeableConcept? route,
    CodeableConcept? method,
    Quantity? dose,
    Ratio? rateRatio,
    Quantity? rateQuantity,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationAdministrationDosage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      site: site ?? this.site,
      route: route ?? this.route,
      method: method ?? this.method,
      dose: dose ?? this.dose,
      rateRatio: rateRatio ?? this.rateRatio,
      rateQuantity: rateQuantity ?? this.rateQuantity,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicationAdministrationDosage.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationAdministrationDosage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationAdministrationDosage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationAdministrationDosage cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationAdministrationDosage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationAdministrationDosage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
