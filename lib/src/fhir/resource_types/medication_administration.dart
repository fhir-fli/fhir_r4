import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [MedicationAdministration] /// Describes the event of a patient consuming or otherwise being administered
/// a medication. This may be as simple as swallowing a tablet or it may be a
/// long running infusion. Related resources tie this event to the authorizing
/// prescription, and the specific encounter between patient and health care
/// practitioner.
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
    this.medicationCodeableConcept,
    this.medicationReference,
    required this.subject,
    this.context,
    this.supportingInformation,
    this.effectiveDateTime,
    this.effectiveDateTimeElement,
    this.effectivePeriod,
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
  }) : super(resourceType: R4ResourceType.MedicationAdministration);

  @override
  String get fhirType => 'MedicationAdministration';

  @Id()
  int dbId = 0;

  /// [identifier] /// Identifiers associated with this Medication Administration that are defined
  /// by business processes and/or used to refer to it when a direct URL
  /// reference to the resource itself is not appropriate. They are business
  /// identifiers assigned to this resource by the performer or other systems and
  /// remain constant as the resource is updated and propagates from server to
  /// server.
  final List<Identifier>? identifier;

  /// [instantiates] /// A protocol, guideline, orderset, or other definition that was adhered to in
  /// whole or in part by this event.
  final List<FhirUri>? instantiates;
  final List<Element>? instantiatesElement;

  /// [partOf] /// A larger event of which this particular event is a component or step.
  final List<Reference>? partOf;

  /// [status] /// Will generally be set to show that the administration has been completed.
  /// For some long running administrations such as infusions, it is possible for
  /// an administration to be started but not completed or it may be paused while
  /// some other process is under way.
  final MedicationAdministrationStatusCodes status;
  final Element? statusElement;

  /// [statusReason] /// A code indicating why the administration was not performed.
  final List<CodeableConcept>? statusReason;

  /// [category] /// Indicates where the medication is expected to be consumed or administered.
  final CodeableConcept? category;

  /// [medicationCodeableConcept] /// Identifies the medication that was administered. This is either a link to a
  /// resource representing the details of the medication or a simple attribute
  /// carrying a code that identifies the medication from a known list of
  /// medications.
  final CodeableConcept? medicationCodeableConcept;

  /// [medicationReference] /// Identifies the medication that was administered. This is either a link to a
  /// resource representing the details of the medication or a simple attribute
  /// carrying a code that identifies the medication from a known list of
  /// medications.
  final Reference? medicationReference;

  /// [subject] /// The person or animal or group receiving the medication.
  final Reference subject;

  /// [context] /// The visit, admission, or other contact between patient and health care
  /// provider during which the medication administration was performed.
  final Reference? context;

  /// [supportingInformation] /// Additional information (for example, patient height and weight) that
  /// supports the administration of the medication.
  final List<Reference>? supportingInformation;

  /// [effectiveDateTime] /// A specific date/time or interval of time during which the administration
  /// took place (or did not take place, when the 'notGiven' attribute is true).
  /// For many administrations, such as swallowing a tablet the use of dateTime
  /// is more appropriate.
  final FhirDateTime? effectiveDateTime;
  final Element? effectiveDateTimeElement;

  /// [effectivePeriod] /// A specific date/time or interval of time during which the administration
  /// took place (or did not take place, when the 'notGiven' attribute is true).
  /// For many administrations, such as swallowing a tablet the use of dateTime
  /// is more appropriate.
  final Period? effectivePeriod;

  /// [performer] /// Indicates who or what performed the medication administration and how they
  /// were involved.
  final List<MedicationAdministrationPerformer>? performer;

  /// [reasonCode] /// A code indicating why the medication was given.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Condition or observation that supports why the medication was administered.
  final List<Reference>? reasonReference;

  /// [request] /// The original request, instruction or authority to perform the
  /// administration.
  final Reference? request;

  /// [device] /// The device used in administering the medication to the patient. For
  /// example, a particular infusion pump.
  final List<Reference>? device;

  /// [note] /// Extra information about the medication administration that is not conveyed
  /// by the other attributes.
  final List<Annotation>? note;

  /// [dosage] /// Describes the medication dosage information details e.g. dose, rate, site,
  /// route, etc.
  final MedicationAdministrationDosage? dosage;

  /// [eventHistory] /// A summary of the events of interest that have occurred, such as when the
  /// administration was verified.
  final List<Reference>? eventHistory;
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
      json['implicitRules'] = implicitRules!.toJson();
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
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (instantiates != null && instantiates!.isNotEmpty) {
      json['instantiates'] =
          instantiates!.map((FhirUri v) => v.toJson()).toList();
    }
    if (instantiatesElement != null && instantiatesElement!.isNotEmpty) {
      json['_instantiates'] =
          instantiatesElement!.map((Element v) => v.toJson()).toList();
    }
    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] =
          partOf!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (statusReason != null && statusReason!.isNotEmpty) {
      json['statusReason'] = statusReason!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (category != null) {
      json['category'] = category!.toJson();
    }
    if (medicationCodeableConcept != null) {
      json['medicationCodeableConcept'] = medicationCodeableConcept!.toJson();
    }
    if (medicationReference != null) {
      json['medicationReference'] = medicationReference!.toJson();
    }
    json['subject'] = subject.toJson();
    if (context != null) {
      json['context'] = context!.toJson();
    }
    if (supportingInformation != null && supportingInformation!.isNotEmpty) {
      json['supportingInformation'] = supportingInformation!
          .map<dynamic>((Reference v) => v.toJson())
          .toList();
    }
    if (effectiveDateTime?.value != null) {
      json['effectiveDateTime'] = effectiveDateTime!.toJson();
    }
    if (effectiveDateTimeElement != null) {
      json['_effectiveDateTime'] = effectiveDateTimeElement!.toJson();
    }
    if (effectivePeriod != null) {
      json['effectivePeriod'] = effectivePeriod!.toJson();
    }
    if (performer != null && performer!.isNotEmpty) {
      json['performer'] = performer!
          .map<dynamic>((MedicationAdministrationPerformer v) => v.toJson())
          .toList();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (request != null) {
      json['request'] = request!.toJson();
    }
    if (device != null && device!.isNotEmpty) {
      json['device'] =
          device!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (dosage != null) {
      json['dosage'] = dosage!.toJson();
    }
    if (eventHistory != null && eventHistory!.isNotEmpty) {
      json['eventHistory'] =
          eventHistory!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory MedicationAdministration.fromJson(Map<String, dynamic> json) {
    return MedicationAdministration(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
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
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      instantiates: json['instantiates'] != null
          ? (json['instantiates'] as List<dynamic>)
              .map<FhirUri>((dynamic v) => FhirUri.fromJson(v as dynamic))
              .toList()
          : null,
      instantiatesElement: json['_instantiates'] != null
          ? (json['_instantiates'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: MedicationAdministrationStatusCodes.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      statusReason: json['statusReason'] != null
          ? (json['statusReason'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(json['category'] as Map<String, dynamic>)
          : null,
      medicationCodeableConcept: json['medicationCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['medicationCodeableConcept'] as Map<String, dynamic>)
          : null,
      medicationReference: json['medicationReference'] != null
          ? Reference.fromJson(
              json['medicationReference'] as Map<String, dynamic>)
          : null,
      subject: Reference.fromJson(json['subject'] as Map<String, dynamic>),
      context: json['context'] != null
          ? Reference.fromJson(json['context'] as Map<String, dynamic>)
          : null,
      supportingInformation: json['supportingInformation'] != null
          ? (json['supportingInformation'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      effectiveDateTime: json['effectiveDateTime'] != null
          ? FhirDateTime.fromJson(json['effectiveDateTime'])
          : null,
      effectiveDateTimeElement: json['_effectiveDateTime'] != null
          ? Element.fromJson(json['_effectiveDateTime'] as Map<String, dynamic>)
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>)
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<MedicationAdministrationPerformer>((dynamic v) =>
                  MedicationAdministrationPerformer.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      request: json['request'] != null
          ? Reference.fromJson(json['request'] as Map<String, dynamic>)
          : null,
      device: json['device'] != null
          ? (json['device'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      dosage: json['dosage'] != null
          ? MedicationAdministrationDosage.fromJson(
              json['dosage'] as Map<String, dynamic>)
          : null,
      eventHistory: json['eventHistory'] != null
          ? (json['eventHistory'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
    CodeableConcept? category,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
    Reference? subject,
    Reference? context,
    List<Reference>? supportingInformation,
    FhirDateTime? effectiveDateTime,
    Element? effectiveDateTimeElement,
    Period? effectivePeriod,
    List<MedicationAdministrationPerformer>? performer,
    List<CodeableConcept>? reasonCode,
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
  int dbId = 0;

  /// [function_] /// Distinguishes the type of involvement of the performer in the medication
  /// administration.
  final CodeableConcept? function_;

  /// [actor] /// Indicates who or what performed the medication administration.
  final Reference actor;
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
    if (function_ != null) {
      json['function'] = function_!.toJson();
    }
    json['actor'] = actor.toJson();
    return json;
  }

  factory MedicationAdministrationPerformer.fromJson(
      Map<String, dynamic> json) {
    return MedicationAdministrationPerformer(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      function_: json['function'] != null
          ? CodeableConcept.fromJson(json['function'] as Map<String, dynamic>)
          : null,
      actor: Reference.fromJson(json['actor'] as Map<String, dynamic>),
    );
  }
  @override
  MedicationAdministrationPerformer clone() => throw UnimplementedError();
  @override
  MedicationAdministrationPerformer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
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
  int dbId = 0;

  /// [text] /// Free text dosage can be used for cases where the dosage administered is too
  /// complex to code. When coded dosage is present, the free text dosage may
  /// still be present for display to humans. The dosage instructions should
  /// reflect the dosage of the medication that was administered.
  final FhirString? text;
  final Element? textElement;

  /// [site] /// A coded specification of the anatomic site where the medication first
  /// entered the body. For example, "left arm".
  final CodeableConcept? site;

  /// [route] /// A code specifying the route or physiological path of administration of a
  /// therapeutic agent into or onto the patient. For example, topical,
  /// intravenous, etc.
  final CodeableConcept? route;

  /// [method] /// A coded value indicating the method by which the medication is intended to
  /// be or was introduced into or on the body. This attribute will most often
  /// NOT be populated. It is most commonly used for injections. For example,
  /// Slow Push, Deep IV.
  final CodeableConcept? method;

  /// [dose] /// The amount of the medication given at one administration event. Use this
  /// value when the administration is essentially an instantaneous event such as
  /// a swallowing a tablet or giving an injection.
  final Quantity? dose;

  /// [rateRatio] /// Identifies the speed with which the medication was or will be introduced
  /// into the patient. Typically, the rate for an infusion e.g. 100 ml per 1
  /// hour or 100 ml/hr. May also be expressed as a rate per unit of time, e.g.
  /// 500 ml per 2 hours. Other examples: 200 mcg/min or 200 mcg/1 minute; 1
  /// liter/8 hours.
  final Ratio? rateRatio;

  /// [rateQuantity] /// Identifies the speed with which the medication was or will be introduced
  /// into the patient. Typically, the rate for an infusion e.g. 100 ml per 1
  /// hour or 100 ml/hr. May also be expressed as a rate per unit of time, e.g.
  /// 500 ml per 2 hours. Other examples: 200 mcg/min or 200 mcg/1 minute; 1
  /// liter/8 hours.
  final Quantity? rateQuantity;
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
    if (text?.value != null) {
      json['text'] = text!.toJson();
    }
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    if (site != null) {
      json['site'] = site!.toJson();
    }
    if (route != null) {
      json['route'] = route!.toJson();
    }
    if (method != null) {
      json['method'] = method!.toJson();
    }
    if (dose != null) {
      json['dose'] = dose!.toJson();
    }
    if (rateRatio != null) {
      json['rateRatio'] = rateRatio!.toJson();
    }
    if (rateQuantity != null) {
      json['rateQuantity'] = rateQuantity!.toJson();
    }
    return json;
  }

  factory MedicationAdministrationDosage.fromJson(Map<String, dynamic> json) {
    return MedicationAdministrationDosage(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      text: json['text'] != null ? FhirString.fromJson(json['text']) : null,
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
      site: json['site'] != null
          ? CodeableConcept.fromJson(json['site'] as Map<String, dynamic>)
          : null,
      route: json['route'] != null
          ? CodeableConcept.fromJson(json['route'] as Map<String, dynamic>)
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>)
          : null,
      dose: json['dose'] != null
          ? Quantity.fromJson(json['dose'] as Map<String, dynamic>)
          : null,
      rateRatio: json['rateRatio'] != null
          ? Ratio.fromJson(json['rateRatio'] as Map<String, dynamic>)
          : null,
      rateQuantity: json['rateQuantity'] != null
          ? Quantity.fromJson(json['rateQuantity'] as Map<String, dynamic>)
          : null,
    );
  }
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
