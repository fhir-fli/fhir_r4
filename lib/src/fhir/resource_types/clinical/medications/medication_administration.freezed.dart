// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication_administration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MedicationAdministration _$MedicationAdministrationFromJson(
    Map<String, dynamic> json) {
  return _MedicationAdministration.fromJson(json);
}

/// @nodoc
mixin _$MedicationAdministration {
  @JsonKey(unknownEnumValue: R4ResourceType.MedicationAdministration)
  R4ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] Identifiers associated with this Medication Administration
  /// that are defined by business processes and/or used to refer to it when a
  /// direct URL reference to the resource itself is not appropriate. They are
  /// business identifiers assigned to this resource by the performer or other
  /// systems and remain constant as the resource is updated and propagates from
  ///  server to server.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [instantiates] A protocol, guideline, orderset, or other definition that
  ///  was adhered to in whole or in part by this event.
  List<FhirUri>? get instantiates => throw _privateConstructorUsedError;

  /// [instantiatesElement] Extensions for instantiates
  @JsonKey(name: '_instantiates')
  List<PrimitiveElement>? get instantiatesElement =>
      throw _privateConstructorUsedError;

  /// [partOf] A larger event of which this particular event is a component or
  ///  step.
  List<Reference>? get partOf => throw _privateConstructorUsedError;

  /// [status] Will generally be set to show that the administration has been
  /// completed.  For some long running administrations such as infusions, it is
  /// possible for an administration to be started but not completed or it may
  ///  be paused while some other process is under way.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [statusReason] A code indicating why the administration was not
  ///  performed.
  List<CodeableConcept>? get statusReason => throw _privateConstructorUsedError;

  /// [category] Indicates where the medication is expected to be consumed or
  ///  administered.
  CodeableConcept? get category => throw _privateConstructorUsedError;

  /// [medicationCodeableConcept] Identifies the medication that was
  /// administered. This is either a link to a resource representing the details
  /// of the medication or a simple attribute carrying a code that identifies
  ///  the medication from a known list of medications.
  CodeableConcept? get medicationCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [medicationReference] Identifies the medication that was administered.
  /// This is either a link to a resource representing the details of the
  /// medication or a simple attribute carrying a code that identifies the
  ///  medication from a known list of medications.
  Reference? get medicationReference => throw _privateConstructorUsedError;

  /// [subject] The person or animal or group receiving the medication.
  Reference get subject => throw _privateConstructorUsedError;

  /// [context] The visit, admission, or other contact between patient and
  /// health care provider during which the medication administration was
  ///  performed.
  Reference? get context => throw _privateConstructorUsedError;

  /// [supportingInformation] Additional information (for example, patient
  ///  height and weight) that supports the administration of the medication.
  List<Reference>? get supportingInformation =>
      throw _privateConstructorUsedError;

  /// [effectiveDateTime] A specific date/time or interval of time during which
  /// the administration took place (or did not take place, when the 'notGiven'
  /// attribute is true). For many administrations, such as swallowing a tablet
  ///  the use of dateTime is more appropriate.
  FhirDateTime? get effectiveDateTime => throw _privateConstructorUsedError;

  /// [effectiveDateTimeElement] Extensions for effectiveDateTime
  @JsonKey(name: '_effectiveDateTime')
  PrimitiveElement? get effectiveDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [effectivePeriod] A specific date/time or interval of time during which
  /// the administration took place (or did not take place, when the 'notGiven'
  /// attribute is true). For many administrations, such as swallowing a tablet
  ///  the use of dateTime is more appropriate.
  Period? get effectivePeriod => throw _privateConstructorUsedError;

  /// [performer] Indicates who or what performed the medication administration
  ///  and how they were involved.
  List<MedicationAdministrationPerformer>? get performer =>
      throw _privateConstructorUsedError;

  /// [reasonCode] A code indicating why the medication was given.
  List<CodeableConcept>? get reasonCode => throw _privateConstructorUsedError;

  /// [reasonReference] Condition or observation that supports why the
  ///  medication was administered.
  List<Reference>? get reasonReference => throw _privateConstructorUsedError;

  /// [request] The original request, instruction or authority to perform the
  ///  administration.
  Reference? get request => throw _privateConstructorUsedError;

  /// [device] The device used in administering the medication to the patient.
  ///  For example, a particular infusion pump.
  List<Reference>? get device => throw _privateConstructorUsedError;

  /// [note] Extra information about the medication administration that is not
  ///  conveyed by the other attributes.
  List<Annotation>? get note => throw _privateConstructorUsedError;

  /// [dosage] Describes the medication dosage information details e.g. dose,
  ///  rate, site, route, etc.
  MedicationAdministrationDosage? get dosage =>
      throw _privateConstructorUsedError;

  /// [eventHistory] A summary of the events of interest that have occurred,
  ///  such as when the administration was verified.
  List<Reference>? get eventHistory => throw _privateConstructorUsedError;

  /// Serializes this MedicationAdministration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationAdministration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationAdministrationCopyWith<MedicationAdministration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationAdministrationCopyWith<$Res> {
  factory $MedicationAdministrationCopyWith(MedicationAdministration value,
          $Res Function(MedicationAdministration) then) =
      _$MedicationAdministrationCopyWithImpl<$Res, MedicationAdministration>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.MedicationAdministration)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      List<FhirUri>? instantiates,
      @JsonKey(name: '_instantiates')
      List<PrimitiveElement>? instantiatesElement,
      List<Reference>? partOf,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      List<CodeableConcept>? statusReason,
      CodeableConcept? category,
      CodeableConcept? medicationCodeableConcept,
      Reference? medicationReference,
      Reference subject,
      Reference? context,
      List<Reference>? supportingInformation,
      FhirDateTime? effectiveDateTime,
      @JsonKey(name: '_effectiveDateTime')
      PrimitiveElement? effectiveDateTimeElement,
      Period? effectivePeriod,
      List<MedicationAdministrationPerformer>? performer,
      List<CodeableConcept>? reasonCode,
      List<Reference>? reasonReference,
      Reference? request,
      List<Reference>? device,
      List<Annotation>? note,
      MedicationAdministrationDosage? dosage,
      List<Reference>? eventHistory});

  $MedicationAdministrationDosageCopyWith<$Res>? get dosage;
}

/// @nodoc
class _$MedicationAdministrationCopyWithImpl<$Res,
        $Val extends MedicationAdministration>
    implements $MedicationAdministrationCopyWith<$Res> {
  _$MedicationAdministrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationAdministration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? instantiates = freezed,
    Object? instantiatesElement = freezed,
    Object? partOf = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? statusReason = freezed,
    Object? category = freezed,
    Object? medicationCodeableConcept = freezed,
    Object? medicationReference = freezed,
    Object? subject = freezed,
    Object? context = freezed,
    Object? supportingInformation = freezed,
    Object? effectiveDateTime = freezed,
    Object? effectiveDateTimeElement = freezed,
    Object? effectivePeriod = freezed,
    Object? performer = freezed,
    Object? reasonCode = freezed,
    Object? reasonReference = freezed,
    Object? request = freezed,
    Object? device = freezed,
    Object? note = freezed,
    Object? dosage = freezed,
    Object? eventHistory = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      instantiates: freezed == instantiates
          ? _value.instantiates
          : instantiates // ignore: cast_nullable_to_non_nullable
              as List<FhirUri>?,
      instantiatesElement: freezed == instantiatesElement
          ? _value.instantiatesElement
          : instantiatesElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      partOf: freezed == partOf
          ? _value.partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      medicationCodeableConcept: freezed == medicationCodeableConcept
          ? _value.medicationCodeableConcept
          : medicationCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      medicationReference: freezed == medicationReference
          ? _value.medicationReference
          : medicationReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Reference?,
      supportingInformation: freezed == supportingInformation
          ? _value.supportingInformation
          : supportingInformation // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      effectiveDateTime: freezed == effectiveDateTime
          ? _value.effectiveDateTime
          : effectiveDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      effectiveDateTimeElement: freezed == effectiveDateTimeElement
          ? _value.effectiveDateTimeElement
          : effectiveDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      effectivePeriod: freezed == effectivePeriod
          ? _value.effectivePeriod
          : effectivePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<MedicationAdministrationPerformer>?,
      reasonCode: freezed == reasonCode
          ? _value.reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      reasonReference: freezed == reasonReference
          ? _value.reasonReference
          : reasonReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Reference?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      dosage: freezed == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as MedicationAdministrationDosage?,
      eventHistory: freezed == eventHistory
          ? _value.eventHistory
          : eventHistory // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ) as $Val);
  }

  /// Create a copy of MedicationAdministration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicationAdministrationDosageCopyWith<$Res>? get dosage {
    if (_value.dosage == null) {
      return null;
    }

    return $MedicationAdministrationDosageCopyWith<$Res>(_value.dosage!,
        (value) {
      return _then(_value.copyWith(dosage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MedicationAdministrationImplCopyWith<$Res>
    implements $MedicationAdministrationCopyWith<$Res> {
  factory _$$MedicationAdministrationImplCopyWith(
          _$MedicationAdministrationImpl value,
          $Res Function(_$MedicationAdministrationImpl) then) =
      __$$MedicationAdministrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.MedicationAdministration)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      List<FhirUri>? instantiates,
      @JsonKey(name: '_instantiates')
      List<PrimitiveElement>? instantiatesElement,
      List<Reference>? partOf,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      List<CodeableConcept>? statusReason,
      CodeableConcept? category,
      CodeableConcept? medicationCodeableConcept,
      Reference? medicationReference,
      Reference subject,
      Reference? context,
      List<Reference>? supportingInformation,
      FhirDateTime? effectiveDateTime,
      @JsonKey(name: '_effectiveDateTime')
      PrimitiveElement? effectiveDateTimeElement,
      Period? effectivePeriod,
      List<MedicationAdministrationPerformer>? performer,
      List<CodeableConcept>? reasonCode,
      List<Reference>? reasonReference,
      Reference? request,
      List<Reference>? device,
      List<Annotation>? note,
      MedicationAdministrationDosage? dosage,
      List<Reference>? eventHistory});

  @override
  $MedicationAdministrationDosageCopyWith<$Res>? get dosage;
}

/// @nodoc
class __$$MedicationAdministrationImplCopyWithImpl<$Res>
    extends _$MedicationAdministrationCopyWithImpl<$Res,
        _$MedicationAdministrationImpl>
    implements _$$MedicationAdministrationImplCopyWith<$Res> {
  __$$MedicationAdministrationImplCopyWithImpl(
      _$MedicationAdministrationImpl _value,
      $Res Function(_$MedicationAdministrationImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationAdministration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? instantiates = freezed,
    Object? instantiatesElement = freezed,
    Object? partOf = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? statusReason = freezed,
    Object? category = freezed,
    Object? medicationCodeableConcept = freezed,
    Object? medicationReference = freezed,
    Object? subject = freezed,
    Object? context = freezed,
    Object? supportingInformation = freezed,
    Object? effectiveDateTime = freezed,
    Object? effectiveDateTimeElement = freezed,
    Object? effectivePeriod = freezed,
    Object? performer = freezed,
    Object? reasonCode = freezed,
    Object? reasonReference = freezed,
    Object? request = freezed,
    Object? device = freezed,
    Object? note = freezed,
    Object? dosage = freezed,
    Object? eventHistory = freezed,
  }) {
    return _then(_$MedicationAdministrationImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      instantiates: freezed == instantiates
          ? _value._instantiates
          : instantiates // ignore: cast_nullable_to_non_nullable
              as List<FhirUri>?,
      instantiatesElement: freezed == instantiatesElement
          ? _value._instantiatesElement
          : instantiatesElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      partOf: freezed == partOf
          ? _value._partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      statusReason: freezed == statusReason
          ? _value._statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      medicationCodeableConcept: freezed == medicationCodeableConcept
          ? _value.medicationCodeableConcept
          : medicationCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      medicationReference: freezed == medicationReference
          ? _value.medicationReference
          : medicationReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Reference?,
      supportingInformation: freezed == supportingInformation
          ? _value._supportingInformation
          : supportingInformation // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      effectiveDateTime: freezed == effectiveDateTime
          ? _value.effectiveDateTime
          : effectiveDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      effectiveDateTimeElement: freezed == effectiveDateTimeElement
          ? _value.effectiveDateTimeElement
          : effectiveDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      effectivePeriod: freezed == effectivePeriod
          ? _value.effectivePeriod
          : effectivePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      performer: freezed == performer
          ? _value._performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<MedicationAdministrationPerformer>?,
      reasonCode: freezed == reasonCode
          ? _value._reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      reasonReference: freezed == reasonReference
          ? _value._reasonReference
          : reasonReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Reference?,
      device: freezed == device
          ? _value._device
          : device // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      dosage: freezed == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as MedicationAdministrationDosage?,
      eventHistory: freezed == eventHistory
          ? _value._eventHistory
          : eventHistory // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationAdministrationImpl extends _MedicationAdministration {
  _$MedicationAdministrationImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.MedicationAdministration)
      this.resourceType = R4ResourceType.MedicationAdministration,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final List<FhirUri>? instantiates,
      @JsonKey(name: '_instantiates')
      final List<PrimitiveElement>? instantiatesElement,
      final List<Reference>? partOf,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      final List<CodeableConcept>? statusReason,
      this.category,
      this.medicationCodeableConcept,
      this.medicationReference,
      required this.subject,
      this.context,
      final List<Reference>? supportingInformation,
      this.effectiveDateTime,
      @JsonKey(name: '_effectiveDateTime') this.effectiveDateTimeElement,
      this.effectivePeriod,
      final List<MedicationAdministrationPerformer>? performer,
      final List<CodeableConcept>? reasonCode,
      final List<Reference>? reasonReference,
      this.request,
      final List<Reference>? device,
      final List<Annotation>? note,
      this.dosage,
      final List<Reference>? eventHistory})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _instantiates = instantiates,
        _instantiatesElement = instantiatesElement,
        _partOf = partOf,
        _statusReason = statusReason,
        _supportingInformation = supportingInformation,
        _performer = performer,
        _reasonCode = reasonCode,
        _reasonReference = reasonReference,
        _device = device,
        _note = note,
        _eventHistory = eventHistory,
        super._();

  factory _$MedicationAdministrationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationAdministrationImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.MedicationAdministration)
  final R4ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  final String? id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] Identifiers associated with this Medication Administration
  /// that are defined by business processes and/or used to refer to it when a
  /// direct URL reference to the resource itself is not appropriate. They are
  /// business identifiers assigned to this resource by the performer or other
  /// systems and remain constant as the resource is updated and propagates from
  ///  server to server.
  final List<Identifier>? _identifier;

  /// [identifier] Identifiers associated with this Medication Administration
  /// that are defined by business processes and/or used to refer to it when a
  /// direct URL reference to the resource itself is not appropriate. They are
  /// business identifiers assigned to this resource by the performer or other
  /// systems and remain constant as the resource is updated and propagates from
  ///  server to server.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [instantiates] A protocol, guideline, orderset, or other definition that
  ///  was adhered to in whole or in part by this event.
  final List<FhirUri>? _instantiates;

  /// [instantiates] A protocol, guideline, orderset, or other definition that
  ///  was adhered to in whole or in part by this event.
  @override
  List<FhirUri>? get instantiates {
    final value = _instantiates;
    if (value == null) return null;
    if (_instantiates is EqualUnmodifiableListView) return _instantiates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [instantiatesElement] Extensions for instantiates
  final List<PrimitiveElement>? _instantiatesElement;

  /// [instantiatesElement] Extensions for instantiates
  @override
  @JsonKey(name: '_instantiates')
  List<PrimitiveElement>? get instantiatesElement {
    final value = _instantiatesElement;
    if (value == null) return null;
    if (_instantiatesElement is EqualUnmodifiableListView)
      return _instantiatesElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [partOf] A larger event of which this particular event is a component or
  ///  step.
  final List<Reference>? _partOf;

  /// [partOf] A larger event of which this particular event is a component or
  ///  step.
  @override
  List<Reference>? get partOf {
    final value = _partOf;
    if (value == null) return null;
    if (_partOf is EqualUnmodifiableListView) return _partOf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] Will generally be set to show that the administration has been
  /// completed.  For some long running administrations such as infusions, it is
  /// possible for an administration to be started but not completed or it may
  ///  be paused while some other process is under way.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [statusReason] A code indicating why the administration was not
  ///  performed.
  final List<CodeableConcept>? _statusReason;

  /// [statusReason] A code indicating why the administration was not
  ///  performed.
  @override
  List<CodeableConcept>? get statusReason {
    final value = _statusReason;
    if (value == null) return null;
    if (_statusReason is EqualUnmodifiableListView) return _statusReason;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [category] Indicates where the medication is expected to be consumed or
  ///  administered.
  @override
  final CodeableConcept? category;

  /// [medicationCodeableConcept] Identifies the medication that was
  /// administered. This is either a link to a resource representing the details
  /// of the medication or a simple attribute carrying a code that identifies
  ///  the medication from a known list of medications.
  @override
  final CodeableConcept? medicationCodeableConcept;

  /// [medicationReference] Identifies the medication that was administered.
  /// This is either a link to a resource representing the details of the
  /// medication or a simple attribute carrying a code that identifies the
  ///  medication from a known list of medications.
  @override
  final Reference? medicationReference;

  /// [subject] The person or animal or group receiving the medication.
  @override
  final Reference subject;

  /// [context] The visit, admission, or other contact between patient and
  /// health care provider during which the medication administration was
  ///  performed.
  @override
  final Reference? context;

  /// [supportingInformation] Additional information (for example, patient
  ///  height and weight) that supports the administration of the medication.
  final List<Reference>? _supportingInformation;

  /// [supportingInformation] Additional information (for example, patient
  ///  height and weight) that supports the administration of the medication.
  @override
  List<Reference>? get supportingInformation {
    final value = _supportingInformation;
    if (value == null) return null;
    if (_supportingInformation is EqualUnmodifiableListView)
      return _supportingInformation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [effectiveDateTime] A specific date/time or interval of time during which
  /// the administration took place (or did not take place, when the 'notGiven'
  /// attribute is true). For many administrations, such as swallowing a tablet
  ///  the use of dateTime is more appropriate.
  @override
  final FhirDateTime? effectiveDateTime;

  /// [effectiveDateTimeElement] Extensions for effectiveDateTime
  @override
  @JsonKey(name: '_effectiveDateTime')
  final PrimitiveElement? effectiveDateTimeElement;

  /// [effectivePeriod] A specific date/time or interval of time during which
  /// the administration took place (or did not take place, when the 'notGiven'
  /// attribute is true). For many administrations, such as swallowing a tablet
  ///  the use of dateTime is more appropriate.
  @override
  final Period? effectivePeriod;

  /// [performer] Indicates who or what performed the medication administration
  ///  and how they were involved.
  final List<MedicationAdministrationPerformer>? _performer;

  /// [performer] Indicates who or what performed the medication administration
  ///  and how they were involved.
  @override
  List<MedicationAdministrationPerformer>? get performer {
    final value = _performer;
    if (value == null) return null;
    if (_performer is EqualUnmodifiableListView) return _performer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reasonCode] A code indicating why the medication was given.
  final List<CodeableConcept>? _reasonCode;

  /// [reasonCode] A code indicating why the medication was given.
  @override
  List<CodeableConcept>? get reasonCode {
    final value = _reasonCode;
    if (value == null) return null;
    if (_reasonCode is EqualUnmodifiableListView) return _reasonCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reasonReference] Condition or observation that supports why the
  ///  medication was administered.
  final List<Reference>? _reasonReference;

  /// [reasonReference] Condition or observation that supports why the
  ///  medication was administered.
  @override
  List<Reference>? get reasonReference {
    final value = _reasonReference;
    if (value == null) return null;
    if (_reasonReference is EqualUnmodifiableListView) return _reasonReference;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [request] The original request, instruction or authority to perform the
  ///  administration.
  @override
  final Reference? request;

  /// [device] The device used in administering the medication to the patient.
  ///  For example, a particular infusion pump.
  final List<Reference>? _device;

  /// [device] The device used in administering the medication to the patient.
  ///  For example, a particular infusion pump.
  @override
  List<Reference>? get device {
    final value = _device;
    if (value == null) return null;
    if (_device is EqualUnmodifiableListView) return _device;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [note] Extra information about the medication administration that is not
  ///  conveyed by the other attributes.
  final List<Annotation>? _note;

  /// [note] Extra information about the medication administration that is not
  ///  conveyed by the other attributes.
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [dosage] Describes the medication dosage information details e.g. dose,
  ///  rate, site, route, etc.
  @override
  final MedicationAdministrationDosage? dosage;

  /// [eventHistory] A summary of the events of interest that have occurred,
  ///  such as when the administration was verified.
  final List<Reference>? _eventHistory;

  /// [eventHistory] A summary of the events of interest that have occurred,
  ///  such as when the administration was verified.
  @override
  List<Reference>? get eventHistory {
    final value = _eventHistory;
    if (value == null) return null;
    if (_eventHistory is EqualUnmodifiableListView) return _eventHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MedicationAdministration(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, instantiates: $instantiates, instantiatesElement: $instantiatesElement, partOf: $partOf, status: $status, statusElement: $statusElement, statusReason: $statusReason, category: $category, medicationCodeableConcept: $medicationCodeableConcept, medicationReference: $medicationReference, subject: $subject, context: $context, supportingInformation: $supportingInformation, effectiveDateTime: $effectiveDateTime, effectiveDateTimeElement: $effectiveDateTimeElement, effectivePeriod: $effectivePeriod, performer: $performer, reasonCode: $reasonCode, reasonReference: $reasonReference, request: $request, device: $device, note: $note, dosage: $dosage, eventHistory: $eventHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationAdministrationImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            const DeepCollectionEquality()
                .equals(other._instantiates, _instantiates) &&
            const DeepCollectionEquality()
                .equals(other._instantiatesElement, _instantiatesElement) &&
            const DeepCollectionEquality().equals(other._partOf, _partOf) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            const DeepCollectionEquality()
                .equals(other._statusReason, _statusReason) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(
                other.medicationCodeableConcept, medicationCodeableConcept) &&
            const DeepCollectionEquality()
                .equals(other.medicationReference, medicationReference) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality()
                .equals(other._supportingInformation, _supportingInformation) &&
            (identical(other.effectiveDateTime, effectiveDateTime) ||
                other.effectiveDateTime == effectiveDateTime) &&
            (identical(
                    other.effectiveDateTimeElement, effectiveDateTimeElement) ||
                other.effectiveDateTimeElement == effectiveDateTimeElement) &&
            const DeepCollectionEquality()
                .equals(other.effectivePeriod, effectivePeriod) &&
            const DeepCollectionEquality()
                .equals(other._performer, _performer) &&
            const DeepCollectionEquality()
                .equals(other._reasonCode, _reasonCode) &&
            const DeepCollectionEquality()
                .equals(other._reasonReference, _reasonReference) &&
            const DeepCollectionEquality().equals(other.request, request) &&
            const DeepCollectionEquality().equals(other._device, _device) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            (identical(other.dosage, dosage) || other.dosage == dosage) &&
            const DeepCollectionEquality()
                .equals(other._eventHistory, _eventHistory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        const DeepCollectionEquality().hash(meta),
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        const DeepCollectionEquality().hash(_instantiates),
        const DeepCollectionEquality().hash(_instantiatesElement),
        const DeepCollectionEquality().hash(_partOf),
        status,
        statusElement,
        const DeepCollectionEquality().hash(_statusReason),
        const DeepCollectionEquality().hash(category),
        const DeepCollectionEquality().hash(medicationCodeableConcept),
        const DeepCollectionEquality().hash(medicationReference),
        const DeepCollectionEquality().hash(subject),
        const DeepCollectionEquality().hash(context),
        const DeepCollectionEquality().hash(_supportingInformation),
        effectiveDateTime,
        effectiveDateTimeElement,
        const DeepCollectionEquality().hash(effectivePeriod),
        const DeepCollectionEquality().hash(_performer),
        const DeepCollectionEquality().hash(_reasonCode),
        const DeepCollectionEquality().hash(_reasonReference),
        const DeepCollectionEquality().hash(request),
        const DeepCollectionEquality().hash(_device),
        const DeepCollectionEquality().hash(_note),
        dosage,
        const DeepCollectionEquality().hash(_eventHistory)
      ]);

  /// Create a copy of MedicationAdministration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationAdministrationImplCopyWith<_$MedicationAdministrationImpl>
      get copyWith => __$$MedicationAdministrationImplCopyWithImpl<
          _$MedicationAdministrationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationAdministrationImplToJson(
      this,
    );
  }
}

abstract class _MedicationAdministration extends MedicationAdministration {
  factory _MedicationAdministration(
      {@JsonKey(unknownEnumValue: R4ResourceType.MedicationAdministration)
      final R4ResourceType resourceType,
      final String? id,
      final FhirMeta? meta,
      final FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules')
      final PrimitiveElement? implicitRulesElement,
      final FhirCode? language,
      @JsonKey(name: '_language') final PrimitiveElement? languageElement,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final List<FhirUri>? instantiates,
      @JsonKey(name: '_instantiates')
      final List<PrimitiveElement>? instantiatesElement,
      final List<Reference>? partOf,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final List<CodeableConcept>? statusReason,
      final CodeableConcept? category,
      final CodeableConcept? medicationCodeableConcept,
      final Reference? medicationReference,
      required final Reference subject,
      final Reference? context,
      final List<Reference>? supportingInformation,
      final FhirDateTime? effectiveDateTime,
      @JsonKey(name: '_effectiveDateTime')
      final PrimitiveElement? effectiveDateTimeElement,
      final Period? effectivePeriod,
      final List<MedicationAdministrationPerformer>? performer,
      final List<CodeableConcept>? reasonCode,
      final List<Reference>? reasonReference,
      final Reference? request,
      final List<Reference>? device,
      final List<Annotation>? note,
      final MedicationAdministrationDosage? dosage,
      final List<Reference>? eventHistory}) = _$MedicationAdministrationImpl;
  _MedicationAdministration._() : super._();

  factory _MedicationAdministration.fromJson(Map<String, dynamic> json) =
      _$MedicationAdministrationImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.MedicationAdministration)
  R4ResourceType get resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  String? get id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  FhirMeta? get meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  FhirUri? get implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  FhirCode? get language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  Narrative? get text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [identifier] Identifiers associated with this Medication Administration
  /// that are defined by business processes and/or used to refer to it when a
  /// direct URL reference to the resource itself is not appropriate. They are
  /// business identifiers assigned to this resource by the performer or other
  /// systems and remain constant as the resource is updated and propagates from
  ///  server to server.
  @override
  List<Identifier>? get identifier;

  /// [instantiates] A protocol, guideline, orderset, or other definition that
  ///  was adhered to in whole or in part by this event.
  @override
  List<FhirUri>? get instantiates;

  /// [instantiatesElement] Extensions for instantiates
  @override
  @JsonKey(name: '_instantiates')
  List<PrimitiveElement>? get instantiatesElement;

  /// [partOf] A larger event of which this particular event is a component or
  ///  step.
  @override
  List<Reference>? get partOf;

  /// [status] Will generally be set to show that the administration has been
  /// completed.  For some long running administrations such as infusions, it is
  /// possible for an administration to be started but not completed or it may
  ///  be paused while some other process is under way.
  @override
  FhirCode? get status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;

  /// [statusReason] A code indicating why the administration was not
  ///  performed.
  @override
  List<CodeableConcept>? get statusReason;

  /// [category] Indicates where the medication is expected to be consumed or
  ///  administered.
  @override
  CodeableConcept? get category;

  /// [medicationCodeableConcept] Identifies the medication that was
  /// administered. This is either a link to a resource representing the details
  /// of the medication or a simple attribute carrying a code that identifies
  ///  the medication from a known list of medications.
  @override
  CodeableConcept? get medicationCodeableConcept;

  /// [medicationReference] Identifies the medication that was administered.
  /// This is either a link to a resource representing the details of the
  /// medication or a simple attribute carrying a code that identifies the
  ///  medication from a known list of medications.
  @override
  Reference? get medicationReference;

  /// [subject] The person or animal or group receiving the medication.
  @override
  Reference get subject;

  /// [context] The visit, admission, or other contact between patient and
  /// health care provider during which the medication administration was
  ///  performed.
  @override
  Reference? get context;

  /// [supportingInformation] Additional information (for example, patient
  ///  height and weight) that supports the administration of the medication.
  @override
  List<Reference>? get supportingInformation;

  /// [effectiveDateTime] A specific date/time or interval of time during which
  /// the administration took place (or did not take place, when the 'notGiven'
  /// attribute is true). For many administrations, such as swallowing a tablet
  ///  the use of dateTime is more appropriate.
  @override
  FhirDateTime? get effectiveDateTime;

  /// [effectiveDateTimeElement] Extensions for effectiveDateTime
  @override
  @JsonKey(name: '_effectiveDateTime')
  PrimitiveElement? get effectiveDateTimeElement;

  /// [effectivePeriod] A specific date/time or interval of time during which
  /// the administration took place (or did not take place, when the 'notGiven'
  /// attribute is true). For many administrations, such as swallowing a tablet
  ///  the use of dateTime is more appropriate.
  @override
  Period? get effectivePeriod;

  /// [performer] Indicates who or what performed the medication administration
  ///  and how they were involved.
  @override
  List<MedicationAdministrationPerformer>? get performer;

  /// [reasonCode] A code indicating why the medication was given.
  @override
  List<CodeableConcept>? get reasonCode;

  /// [reasonReference] Condition or observation that supports why the
  ///  medication was administered.
  @override
  List<Reference>? get reasonReference;

  /// [request] The original request, instruction or authority to perform the
  ///  administration.
  @override
  Reference? get request;

  /// [device] The device used in administering the medication to the patient.
  ///  For example, a particular infusion pump.
  @override
  List<Reference>? get device;

  /// [note] Extra information about the medication administration that is not
  ///  conveyed by the other attributes.
  @override
  List<Annotation>? get note;

  /// [dosage] Describes the medication dosage information details e.g. dose,
  ///  rate, site, route, etc.
  @override
  MedicationAdministrationDosage? get dosage;

  /// [eventHistory] A summary of the events of interest that have occurred,
  ///  such as when the administration was verified.
  @override
  List<Reference>? get eventHistory;

  /// Create a copy of MedicationAdministration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationAdministrationImplCopyWith<_$MedicationAdministrationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationAdministrationPerformer _$MedicationAdministrationPerformerFromJson(
    Map<String, dynamic> json) {
  return _MedicationAdministrationPerformer.fromJson(json);
}

/// @nodoc
mixin _$MedicationAdministrationPerformer {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [function] Distinguishes the type of involvement of the performer in the
  ///  medication administration.
  CodeableConcept? get function => throw _privateConstructorUsedError;

  /// [actor] Indicates who or what performed the medication administration.
  Reference get actor => throw _privateConstructorUsedError;

  /// Serializes this MedicationAdministrationPerformer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationAdministrationPerformer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationAdministrationPerformerCopyWith<MedicationAdministrationPerformer>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationAdministrationPerformerCopyWith<$Res> {
  factory $MedicationAdministrationPerformerCopyWith(
          MedicationAdministrationPerformer value,
          $Res Function(MedicationAdministrationPerformer) then) =
      _$MedicationAdministrationPerformerCopyWithImpl<$Res,
          MedicationAdministrationPerformer>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? function,
      Reference actor});
}

/// @nodoc
class _$MedicationAdministrationPerformerCopyWithImpl<$Res,
        $Val extends MedicationAdministrationPerformer>
    implements $MedicationAdministrationPerformerCopyWith<$Res> {
  _$MedicationAdministrationPerformerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationAdministrationPerformer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? function = freezed,
    Object? actor = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      function: freezed == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as Reference,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationAdministrationPerformerImplCopyWith<$Res>
    implements $MedicationAdministrationPerformerCopyWith<$Res> {
  factory _$$MedicationAdministrationPerformerImplCopyWith(
          _$MedicationAdministrationPerformerImpl value,
          $Res Function(_$MedicationAdministrationPerformerImpl) then) =
      __$$MedicationAdministrationPerformerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? function,
      Reference actor});
}

/// @nodoc
class __$$MedicationAdministrationPerformerImplCopyWithImpl<$Res>
    extends _$MedicationAdministrationPerformerCopyWithImpl<$Res,
        _$MedicationAdministrationPerformerImpl>
    implements _$$MedicationAdministrationPerformerImplCopyWith<$Res> {
  __$$MedicationAdministrationPerformerImplCopyWithImpl(
      _$MedicationAdministrationPerformerImpl _value,
      $Res Function(_$MedicationAdministrationPerformerImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationAdministrationPerformer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? function = freezed,
    Object? actor = freezed,
  }) {
    return _then(_$MedicationAdministrationPerformerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      function: freezed == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as Reference,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationAdministrationPerformerImpl
    extends _MedicationAdministrationPerformer {
  _$MedicationAdministrationPerformerImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.function,
      required this.actor})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicationAdministrationPerformerImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationAdministrationPerformerImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [function] Distinguishes the type of involvement of the performer in the
  ///  medication administration.
  @override
  final CodeableConcept? function;

  /// [actor] Indicates who or what performed the medication administration.
  @override
  final Reference actor;

  @override
  String toString() {
    return 'MedicationAdministrationPerformer(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, function: $function, actor: $actor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationAdministrationPerformerImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other.function, function) &&
            const DeepCollectionEquality().equals(other.actor, actor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(function),
      const DeepCollectionEquality().hash(actor));

  /// Create a copy of MedicationAdministrationPerformer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationAdministrationPerformerImplCopyWith<
          _$MedicationAdministrationPerformerImpl>
      get copyWith => __$$MedicationAdministrationPerformerImplCopyWithImpl<
          _$MedicationAdministrationPerformerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationAdministrationPerformerImplToJson(
      this,
    );
  }
}

abstract class _MedicationAdministrationPerformer
    extends MedicationAdministrationPerformer {
  factory _MedicationAdministrationPerformer(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? function,
          required final Reference actor}) =
      _$MedicationAdministrationPerformerImpl;
  _MedicationAdministrationPerformer._() : super._();

  factory _MedicationAdministrationPerformer.fromJson(
          Map<String, dynamic> json) =
      _$MedicationAdministrationPerformerImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [function] Distinguishes the type of involvement of the performer in the
  ///  medication administration.
  @override
  CodeableConcept? get function;

  /// [actor] Indicates who or what performed the medication administration.
  @override
  Reference get actor;

  /// Create a copy of MedicationAdministrationPerformer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationAdministrationPerformerImplCopyWith<
          _$MedicationAdministrationPerformerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationAdministrationDosage _$MedicationAdministrationDosageFromJson(
    Map<String, dynamic> json) {
  return _MedicationAdministrationDosage.fromJson(json);
}

/// @nodoc
mixin _$MedicationAdministrationDosage {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [text] Free text dosage can be used for cases where the dosage
  /// administered is too complex to code. When coded dosage is present, the
  ///  free text dosage may still be present for display to humans.
  /// The dosage instructions should reflect the dosage of the medication that
  ///  was administered.
  String? get text => throw _privateConstructorUsedError;

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement => throw _privateConstructorUsedError;

  /// [site] A coded specification of the anatomic site where the medication
  ///  first entered the body.  For example, "left arm".
  CodeableConcept? get site => throw _privateConstructorUsedError;

  /// [route] A code specifying the route or physiological path of
  /// administration of a therapeutic agent into or onto the patient.  For
  ///  example, topical, intravenous, etc.
  CodeableConcept? get route => throw _privateConstructorUsedError;

  /// [method] A coded value indicating the method by which the medication is
  /// intended to be or was introduced into or on the body.  This attribute will
  /// most often NOT be populated.  It is most commonly used for injections.
  ///  For example, Slow Push, Deep IV.
  CodeableConcept? get method => throw _privateConstructorUsedError;

  /// [dose] The amount of the medication given at one administration event.
  /// Use this value when the administration is essentially an instantaneous
  ///  event such as a swallowing a tablet or giving an injection.
  Quantity? get dose => throw _privateConstructorUsedError;

  /// [rateRatio] Identifies the speed with which the medication was or will be
  /// introduced into the patient.  Typically, the rate for an infusion e.g. 100
  /// ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per unit of
  /// time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or 200 mcg/1
  ///  minute; 1 liter/8 hours.
  Ratio? get rateRatio => throw _privateConstructorUsedError;

  /// [rateQuantity] Identifies the speed with which the medication was or will
  /// be introduced into the patient.  Typically, the rate for an infusion e.g.
  /// 100 ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per unit
  /// of time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or 200
  ///  mcg/1 minute; 1 liter/8 hours.
  Quantity? get rateQuantity => throw _privateConstructorUsedError;

  /// Serializes this MedicationAdministrationDosage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationAdministrationDosage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationAdministrationDosageCopyWith<MedicationAdministrationDosage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationAdministrationDosageCopyWith<$Res> {
  factory $MedicationAdministrationDosageCopyWith(
          MedicationAdministrationDosage value,
          $Res Function(MedicationAdministrationDosage) then) =
      _$MedicationAdministrationDosageCopyWithImpl<$Res,
          MedicationAdministrationDosage>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      CodeableConcept? site,
      CodeableConcept? route,
      CodeableConcept? method,
      Quantity? dose,
      Ratio? rateRatio,
      Quantity? rateQuantity});
}

/// @nodoc
class _$MedicationAdministrationDosageCopyWithImpl<$Res,
        $Val extends MedicationAdministrationDosage>
    implements $MedicationAdministrationDosageCopyWith<$Res> {
  _$MedicationAdministrationDosageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationAdministrationDosage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? site = freezed,
    Object? route = freezed,
    Object? method = freezed,
    Object? dose = freezed,
    Object? rateRatio = freezed,
    Object? rateQuantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      dose: freezed == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      rateRatio: freezed == rateRatio
          ? _value.rateRatio
          : rateRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      rateQuantity: freezed == rateQuantity
          ? _value.rateQuantity
          : rateQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationAdministrationDosageImplCopyWith<$Res>
    implements $MedicationAdministrationDosageCopyWith<$Res> {
  factory _$$MedicationAdministrationDosageImplCopyWith(
          _$MedicationAdministrationDosageImpl value,
          $Res Function(_$MedicationAdministrationDosageImpl) then) =
      __$$MedicationAdministrationDosageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      CodeableConcept? site,
      CodeableConcept? route,
      CodeableConcept? method,
      Quantity? dose,
      Ratio? rateRatio,
      Quantity? rateQuantity});
}

/// @nodoc
class __$$MedicationAdministrationDosageImplCopyWithImpl<$Res>
    extends _$MedicationAdministrationDosageCopyWithImpl<$Res,
        _$MedicationAdministrationDosageImpl>
    implements _$$MedicationAdministrationDosageImplCopyWith<$Res> {
  __$$MedicationAdministrationDosageImplCopyWithImpl(
      _$MedicationAdministrationDosageImpl _value,
      $Res Function(_$MedicationAdministrationDosageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationAdministrationDosage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? site = freezed,
    Object? route = freezed,
    Object? method = freezed,
    Object? dose = freezed,
    Object? rateRatio = freezed,
    Object? rateQuantity = freezed,
  }) {
    return _then(_$MedicationAdministrationDosageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      dose: freezed == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      rateRatio: freezed == rateRatio
          ? _value.rateRatio
          : rateRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      rateQuantity: freezed == rateQuantity
          ? _value.rateQuantity
          : rateQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationAdministrationDosageImpl
    extends _MedicationAdministrationDosage {
  _$MedicationAdministrationDosageImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.text,
      @JsonKey(name: '_text') this.textElement,
      this.site,
      this.route,
      this.method,
      this.dose,
      this.rateRatio,
      this.rateQuantity})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicationAdministrationDosageImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationAdministrationDosageImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [text] Free text dosage can be used for cases where the dosage
  /// administered is too complex to code. When coded dosage is present, the
  ///  free text dosage may still be present for display to humans.
  /// The dosage instructions should reflect the dosage of the medication that
  ///  was administered.
  @override
  final String? text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  final PrimitiveElement? textElement;

  /// [site] A coded specification of the anatomic site where the medication
  ///  first entered the body.  For example, "left arm".
  @override
  final CodeableConcept? site;

  /// [route] A code specifying the route or physiological path of
  /// administration of a therapeutic agent into or onto the patient.  For
  ///  example, topical, intravenous, etc.
  @override
  final CodeableConcept? route;

  /// [method] A coded value indicating the method by which the medication is
  /// intended to be or was introduced into or on the body.  This attribute will
  /// most often NOT be populated.  It is most commonly used for injections.
  ///  For example, Slow Push, Deep IV.
  @override
  final CodeableConcept? method;

  /// [dose] The amount of the medication given at one administration event.
  /// Use this value when the administration is essentially an instantaneous
  ///  event such as a swallowing a tablet or giving an injection.
  @override
  final Quantity? dose;

  /// [rateRatio] Identifies the speed with which the medication was or will be
  /// introduced into the patient.  Typically, the rate for an infusion e.g. 100
  /// ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per unit of
  /// time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or 200 mcg/1
  ///  minute; 1 liter/8 hours.
  @override
  final Ratio? rateRatio;

  /// [rateQuantity] Identifies the speed with which the medication was or will
  /// be introduced into the patient.  Typically, the rate for an infusion e.g.
  /// 100 ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per unit
  /// of time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or 200
  ///  mcg/1 minute; 1 liter/8 hours.
  @override
  final Quantity? rateQuantity;

  @override
  String toString() {
    return 'MedicationAdministrationDosage(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, text: $text, textElement: $textElement, site: $site, route: $route, method: $method, dose: $dose, rateRatio: $rateRatio, rateQuantity: $rateQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationAdministrationDosageImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement) &&
            const DeepCollectionEquality().equals(other.site, site) &&
            const DeepCollectionEquality().equals(other.route, route) &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.dose, dose) &&
            const DeepCollectionEquality().equals(other.rateRatio, rateRatio) &&
            const DeepCollectionEquality()
                .equals(other.rateQuantity, rateQuantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      text,
      textElement,
      const DeepCollectionEquality().hash(site),
      const DeepCollectionEquality().hash(route),
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(dose),
      const DeepCollectionEquality().hash(rateRatio),
      const DeepCollectionEquality().hash(rateQuantity));

  /// Create a copy of MedicationAdministrationDosage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationAdministrationDosageImplCopyWith<
          _$MedicationAdministrationDosageImpl>
      get copyWith => __$$MedicationAdministrationDosageImplCopyWithImpl<
          _$MedicationAdministrationDosageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationAdministrationDosageImplToJson(
      this,
    );
  }
}

abstract class _MedicationAdministrationDosage
    extends MedicationAdministrationDosage {
  factory _MedicationAdministrationDosage(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? text,
      @JsonKey(name: '_text') final PrimitiveElement? textElement,
      final CodeableConcept? site,
      final CodeableConcept? route,
      final CodeableConcept? method,
      final Quantity? dose,
      final Ratio? rateRatio,
      final Quantity? rateQuantity}) = _$MedicationAdministrationDosageImpl;
  _MedicationAdministrationDosage._() : super._();

  factory _MedicationAdministrationDosage.fromJson(Map<String, dynamic> json) =
      _$MedicationAdministrationDosageImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [text] Free text dosage can be used for cases where the dosage
  /// administered is too complex to code. When coded dosage is present, the
  ///  free text dosage may still be present for display to humans.
  /// The dosage instructions should reflect the dosage of the medication that
  ///  was administered.
  @override
  String? get text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement;

  /// [site] A coded specification of the anatomic site where the medication
  ///  first entered the body.  For example, "left arm".
  @override
  CodeableConcept? get site;

  /// [route] A code specifying the route or physiological path of
  /// administration of a therapeutic agent into or onto the patient.  For
  ///  example, topical, intravenous, etc.
  @override
  CodeableConcept? get route;

  /// [method] A coded value indicating the method by which the medication is
  /// intended to be or was introduced into or on the body.  This attribute will
  /// most often NOT be populated.  It is most commonly used for injections.
  ///  For example, Slow Push, Deep IV.
  @override
  CodeableConcept? get method;

  /// [dose] The amount of the medication given at one administration event.
  /// Use this value when the administration is essentially an instantaneous
  ///  event such as a swallowing a tablet or giving an injection.
  @override
  Quantity? get dose;

  /// [rateRatio] Identifies the speed with which the medication was or will be
  /// introduced into the patient.  Typically, the rate for an infusion e.g. 100
  /// ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per unit of
  /// time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or 200 mcg/1
  ///  minute; 1 liter/8 hours.
  @override
  Ratio? get rateRatio;

  /// [rateQuantity] Identifies the speed with which the medication was or will
  /// be introduced into the patient.  Typically, the rate for an infusion e.g.
  /// 100 ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per unit
  /// of time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or 200
  ///  mcg/1 minute; 1 liter/8 hours.
  @override
  Quantity? get rateQuantity;

  /// Create a copy of MedicationAdministrationDosage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationAdministrationDosageImplCopyWith<
          _$MedicationAdministrationDosageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
