import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MedicationStatement]
/// A record of a medication that is being consumed by a patient. A
/// MedicationStatement may indicate that the patient may be taking the
/// medication now or has taken the medication in the past or will be
/// taking the medication in the future. The source of this information can
/// be the patient, significant other (such as a family member or spouse),
/// or a clinician. A common scenario where this information is captured is
/// during the history taking process during a patient visit or stay. The
/// medication information may come from sources such as the patient's
/// memory, from a prescription bottle, or from a list of medications the
/// patient, clinician or other party maintains.
///
/// The primary difference between a medication statement and a medication
/// administration is that the medication administration has complete
/// administration information and is based on actual administration
/// information from the person who administered the medication. A
/// medication statement is often, if not always, less specific. There is
/// no required date/time when the medication was administered, in fact we
/// only know that a source has reported the patient is taking this
/// medication, where details such as time, quantity, or rate or even
/// medication product may be incomplete or missing or less precise. As
/// stated earlier, the medication statement information may come from the
/// patient's memory, from a prescription bottle or from a list of
/// medications the patient, clinician or other party maintains. Medication
/// administration is more formal and is not missing detailed information.
class MedicationStatement extends DomainResource {
  /// Primary constructor for [MedicationStatement]

  MedicationStatement({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    required this.status,
    this.statusReason,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    required this.subject,
    this.context,
    this.effectiveDateTime,
    this.effectivePeriod,
    this.dateAsserted,
    this.informationSource,
    this.derivedFrom,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.dosage,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.MedicationStatement,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationStatement.fromJson(Map<String, dynamic> json) {
    return MedicationStatement(
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
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: MedicationStatementStatusCodes.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      statusReason: json['statusReason'] != null
          ? (json['statusReason'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(
              json['category'] as Map<String, dynamic>,
            )
          : null,
      medicationCodeableConcept: json['medicationCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['medicationCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      medicationReference: json['medicationReference'] != null
          ? Reference.fromJson(
              json['medicationReference'] as Map<String, dynamic>,
            )
          : null,
      subject: Reference.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
      context: json['context'] != null
          ? Reference.fromJson(
              json['context'] as Map<String, dynamic>,
            )
          : null,
      effectiveDateTime: json['effectiveDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['effectiveDateTime'],
              '_value': json['_effectiveDateTime'],
            })
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              json['effectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      dateAsserted: json['dateAsserted'] != null
          ? FhirDateTime.fromJson({
              'value': json['dateAsserted'],
              '_value': json['_dateAsserted'],
            })
          : null,
      informationSource: json['informationSource'] != null
          ? Reference.fromJson(
              json['informationSource'] as Map<String, dynamic>,
            )
          : null,
      derivedFrom: json['derivedFrom'] != null
          ? (json['derivedFrom'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      dosage: json['dosage'] != null
          ? (json['dosage'] as List<dynamic>)
              .map<Dosage>(
                (v) => Dosage.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [MedicationStatement] from a [String]
  /// or [YamlMap] object
  factory MedicationStatement.fromYaml(dynamic yaml) => yaml is String
      ? MedicationStatement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicationStatement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicationStatement cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicationStatement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationStatement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationStatement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationStatement';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Identifiers associated with this Medication Statement that are defined
  /// by business processes and/or used to refer to it when a direct URL
  /// reference to the resource itself is not appropriate. They are business
  /// identifiers assigned to this resource by the performer or other systems
  /// and remain constant as the resource is updated and propagates from
  /// server to server.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// event.
  final List<Reference>? basedOn;

  /// [partOf]
  /// A larger event of which this particular event is a component or step.
  final List<Reference>? partOf;

  /// [status]
  /// A code representing the patient or other source's judgment about the
  /// state of the medication used that this statement is about. Generally,
  /// this will be active or completed.
  final MedicationStatementStatusCodes status;

  /// [statusReason]
  /// Captures the reason for the current state of the MedicationStatement.
  final List<CodeableConcept>? statusReason;

  /// [category]
  /// Indicates where the medication is expected to be consumed or
  /// administered.
  final CodeableConcept? category;

  /// [medicationCodeableConcept]
  /// Identifies the medication being administered. This is either a link to
  /// a resource representing the details of the medication or a simple
  /// attribute carrying a code that identifies the medication from a known
  /// list of medications.
  final CodeableConcept? medicationCodeableConcept;

  /// [medicationReference]
  /// Identifies the medication being administered. This is either a link to
  /// a resource representing the details of the medication or a simple
  /// attribute carrying a code that identifies the medication from a known
  /// list of medications.
  final Reference? medicationReference;

  /// [subject]
  /// The person, animal or group who is/was taking the medication.
  final Reference subject;

  /// [context]
  /// The encounter or episode of care that establishes the context for this
  /// MedicationStatement.
  final Reference? context;

  /// [effectiveDateTime]
  /// The interval of time during which it is being asserted that the patient
  /// is/was/will be taking the medication (or was not taking, when the
  /// MedicationStatement.taken element is No).
  final FhirDateTime? effectiveDateTime;

  /// [effectivePeriod]
  /// The interval of time during which it is being asserted that the patient
  /// is/was/will be taking the medication (or was not taking, when the
  /// MedicationStatement.taken element is No).
  final Period? effectivePeriod;

  /// [dateAsserted]
  /// The date when the medication statement was asserted by the information
  /// source.
  final FhirDateTime? dateAsserted;

  /// [informationSource]
  /// The person or organization that provided the information about the
  /// taking of this medication. Note: Use derivedFrom when a
  /// MedicationStatement is derived from other resources, e.g. Claim or
  /// MedicationRequest.
  final Reference? informationSource;

  /// [derivedFrom]
  /// Allows linking the MedicationStatement to the underlying
  /// MedicationRequest, or to other information that supports or is used to
  /// derive the MedicationStatement.
  final List<Reference>? derivedFrom;

  /// [reasonCode]
  /// A reason for why the medication is being/was taken.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Condition or observation that supports why the medication is being/was
  /// taken.
  final List<Reference>? reasonReference;

  /// [note]
  /// Provides extra information about the medication statement that is not
  /// conveyed by the other attributes.
  final List<Annotation>? note;

  /// [dosage]
  /// Indicates how the medication is/was or should be taken by the patient.
  final List<Dosage>? dosage;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      final fieldJson9 = basedOn!.map((e) => e.toJson()).toList();
      json['basedOn'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_basedOn'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (partOf != null && partOf!.isNotEmpty) {
      final fieldJson10 = partOf!.map((e) => e.toJson()).toList();
      json['partOf'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_partOf'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    final fieldJson11 = status.toJson();
    json['status'] = fieldJson11['value'];
    if (fieldJson11['_value'] != null) {
      json['_status'] = fieldJson11['_value'];
    }

    if (statusReason != null && statusReason!.isNotEmpty) {
      final fieldJson12 = statusReason!.map((e) => e.toJson()).toList();
      json['statusReason'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_statusReason'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (category != null) {
      final fieldJson13 = category!.toJson();
      json['category'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_category'] = fieldJson13['_value'];
      }
    }

    if (medicationCodeableConcept != null) {
      final fieldJson14 = medicationCodeableConcept!.toJson();
      json['medicationCodeableConcept'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_medicationCodeableConcept'] = fieldJson14['_value'];
      }
    }

    if (medicationReference != null) {
      final fieldJson15 = medicationReference!.toJson();
      json['medicationReference'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_medicationReference'] = fieldJson15['_value'];
      }
    }

    final fieldJson16 = subject.toJson();
    json['subject'] = fieldJson16['value'];
    if (fieldJson16['_value'] != null) {
      json['_subject'] = fieldJson16['_value'];
    }

    if (context != null) {
      final fieldJson17 = context!.toJson();
      json['context'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_context'] = fieldJson17['_value'];
      }
    }

    if (effectiveDateTime != null) {
      final fieldJson18 = effectiveDateTime!.toJson();
      json['effectiveDateTime'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_effectiveDateTime'] = fieldJson18['_value'];
      }
    }

    if (effectivePeriod != null) {
      final fieldJson19 = effectivePeriod!.toJson();
      json['effectivePeriod'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_effectivePeriod'] = fieldJson19['_value'];
      }
    }

    if (dateAsserted != null) {
      final fieldJson20 = dateAsserted!.toJson();
      json['dateAsserted'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_dateAsserted'] = fieldJson20['_value'];
      }
    }

    if (informationSource != null) {
      final fieldJson21 = informationSource!.toJson();
      json['informationSource'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_informationSource'] = fieldJson21['_value'];
      }
    }

    if (derivedFrom != null && derivedFrom!.isNotEmpty) {
      final fieldJson22 = derivedFrom!.map((e) => e.toJson()).toList();
      json['derivedFrom'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_derivedFrom'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      final fieldJson23 = reasonCode!.map((e) => e.toJson()).toList();
      json['reasonCode'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_reasonCode'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      final fieldJson24 = reasonReference!.map((e) => e.toJson()).toList();
      json['reasonReference'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_reasonReference'] = fieldJson24.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson25 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson25.map((e) => e['value']).toList();
      if (fieldJson25.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson25.map((e) => e['_value']).toList();
      }
    }

    if (dosage != null && dosage!.isNotEmpty) {
      final fieldJson26 = dosage!.map((e) => e.toJson()).toList();
      json['dosage'] = fieldJson26.map((e) => e['value']).toList();
      if (fieldJson26.any((e) => e['_value'] != null)) {
        json['_dosage'] = fieldJson26.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  MedicationStatement clone() => throw UnimplementedError();
  @override
  MedicationStatement copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    MedicationStatementStatusCodes? status,
    List<CodeableConcept>? statusReason,
    CodeableConcept? category,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
    Reference? subject,
    Reference? context,
    FhirDateTime? effectiveDateTime,
    Period? effectivePeriod,
    FhirDateTime? dateAsserted,
    Reference? informationSource,
    List<Reference>? derivedFrom,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    List<Dosage>? dosage,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationStatement(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      category: category ?? this.category,
      medicationCodeableConcept:
          medicationCodeableConcept ?? this.medicationCodeableConcept,
      medicationReference: medicationReference ?? this.medicationReference,
      subject: subject ?? this.subject,
      context: context ?? this.context,
      effectiveDateTime: effectiveDateTime ?? this.effectiveDateTime,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      dateAsserted: dateAsserted ?? this.dateAsserted,
      informationSource: informationSource ?? this.informationSource,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      note: note ?? this.note,
      dosage: dosage ?? this.dosage,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
