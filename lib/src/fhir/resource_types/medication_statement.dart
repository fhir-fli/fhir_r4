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
  /// Primary constructor for
  /// [MedicationStatement]

  MedicationStatement({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
  factory MedicationStatement.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return MedicationStatement(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: parseField<FhirUri>(
        json['implicitRules'],
        json['_implicitRules'],
        FhirUri.fromJson,
      ),
      language: parseField<CommonLanguages>(
        json['language'],
        json['_language'],
        CommonLanguages.fromJson,
      ),
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: parseList<Resource>(
        json['contained'] as List<dynamic>?,
        json['_contained'] as List<dynamic>?,
        Resource.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      identifier: parseList<Identifier>(
        json['identifier'] as List<dynamic>?,
        json['_identifier'] as List<dynamic>?,
        Identifier.fromJson,
      ),
      basedOn: parseList<Reference>(
        json['basedOn'] as List<dynamic>?,
        json['_basedOn'] as List<dynamic>?,
        Reference.fromJson,
      ),
      partOf: parseList<Reference>(
        json['partOf'] as List<dynamic>?,
        json['_partOf'] as List<dynamic>?,
        Reference.fromJson,
      ),
      status: MedicationStatementStatusCodes.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      statusReason: parseList<CodeableConcept>(
        json['statusReason'] as List<dynamic>?,
        json['_statusReason'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
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
      effectiveDateTime: parseField<FhirDateTime>(
        json['effectiveDateTime'],
        json['_effectiveDateTime'],
        FhirDateTime.fromJson,
      ),
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              json['effectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      dateAsserted: parseField<FhirDateTime>(
        json['dateAsserted'],
        json['_dateAsserted'],
        FhirDateTime.fromJson,
      ),
      informationSource: json['informationSource'] != null
          ? Reference.fromJson(
              json['informationSource'] as Map<String, dynamic>,
            )
          : null,
      derivedFrom: parseList<Reference>(
        json['derivedFrom'] as List<dynamic>?,
        json['_derivedFrom'] as List<dynamic>?,
        Reference.fromJson,
      ),
      reasonCode: parseList<CodeableConcept>(
        json['reasonCode'] as List<dynamic>?,
        json['_reasonCode'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      reasonReference: parseList<Reference>(
        json['reasonReference'] as List<dynamic>?,
        json['_reasonReference'] as List<dynamic>?,
        Reference.fromJson,
      ),
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
      dosage: parseList<Dosage>(
        json['dosage'] as List<dynamic>?,
        json['_dosage'] as List<dynamic>?,
        Dosage.fromJson,
      ),
    );
  }

  /// Deserialize [MedicationStatement]
  /// from a [String] or [YamlMap] object
  factory MedicationStatement.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationStatement.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationStatement.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationStatement '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationStatement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationStatement.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
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

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] = basedOn!.map((e) => e.toJson()).toList();
    }

    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] = partOf!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    if (statusReason != null && statusReason!.isNotEmpty) {
      json['statusReason'] = statusReason!.map((e) => e.toJson()).toList();
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

    addField('effectiveDateTime', effectiveDateTime);
    if (effectivePeriod != null) {
      json['effectivePeriod'] = effectivePeriod!.toJson();
    }

    addField('dateAsserted', dateAsserted);
    if (informationSource != null) {
      json['informationSource'] = informationSource!.toJson();
    }

    if (derivedFrom != null && derivedFrom!.isNotEmpty) {
      json['derivedFrom'] = derivedFrom!.map((e) => e.toJson()).toList();
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (dosage != null && dosage!.isNotEmpty) {
      json['dosage'] = dosage!.map((e) => e.toJson()).toList();
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
