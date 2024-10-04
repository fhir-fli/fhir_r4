// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'immunization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Immunization _$ImmunizationFromJson(Map<String, dynamic> json) {
  return _Immunization.fromJson(json);
}

/// @nodoc
mixin _$Immunization {
  @JsonKey(unknownEnumValue: R4ResourceType.Immunization)
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

  /// [identifier] A unique identifier assigned to this immunization record.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [status] Indicates the current status of the immunization event.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [statusReason] Indicates the reason the immunization event was not
  ///  performed.
  CodeableConcept? get statusReason => throw _privateConstructorUsedError;

  /// [vaccineCode] Vaccine that was administered or was to be administered.
  CodeableConcept get vaccineCode => throw _privateConstructorUsedError;

  /// [patient] The patient who either received or did not receive the
  ///  immunization.
  Reference get patient => throw _privateConstructorUsedError;

  /// [encounter] The visit or admission or other contact between patient and
  ///  health care provider the immunization was performed as part of.
  Reference? get encounter => throw _privateConstructorUsedError;

  /// [occurrenceDateTime] Date vaccine administered or was to be administered.
  FhirDateTime? get occurrenceDateTime => throw _privateConstructorUsedError;

  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  @JsonKey(name: '_occurrenceDateTime')
  PrimitiveElement? get occurrenceDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [occurrenceString] Date vaccine administered or was to be administered.
  String? get occurrenceString => throw _privateConstructorUsedError;

  /// [occurrenceStringElement] Extensions for occurrenceString
  @JsonKey(name: '_occurrenceString')
  PrimitiveElement? get occurrenceStringElement =>
      throw _privateConstructorUsedError;

  /// [recorded] The date the occurrence of the immunization was first captured
  /// in the record - potentially significantly after the occurrence of the
  ///  event.
  FhirDateTime? get recorded => throw _privateConstructorUsedError;

  /// [recordedElement] Extensions for recorded
  @JsonKey(name: '_recorded')
  PrimitiveElement? get recordedElement => throw _privateConstructorUsedError;

  /// [primarySource] An indication that the content of the record is based on
  /// information from the person who administered the vaccine. This reflects
  ///  the context under which the data was originally recorded.
  FhirBoolean? get primarySource => throw _privateConstructorUsedError;

  /// [primarySourceElement] Extensions for primarySource
  @JsonKey(name: '_primarySource')
  PrimitiveElement? get primarySourceElement =>
      throw _privateConstructorUsedError;

  /// [reportOrigin] The source of the data when the report of the immunization
  /// event is not based on information from the person who administered the
  ///  vaccine.
  CodeableConcept? get reportOrigin => throw _privateConstructorUsedError;

  /// [location] The service delivery location where the vaccine administration
  ///  occurred.
  Reference? get location => throw _privateConstructorUsedError;

  /// [manufacturer] Name of vaccine manufacturer.
  Reference? get manufacturer => throw _privateConstructorUsedError;

  /// [lotNumber] Lot number of the  vaccine product.
  String? get lotNumber => throw _privateConstructorUsedError;

  /// [lotNumberElement] Extensions for lotNumber
  @JsonKey(name: '_lotNumber')
  PrimitiveElement? get lotNumberElement => throw _privateConstructorUsedError;

  /// [expirationDate] Date vaccine batch expires.
  FhirDate? get expirationDate => throw _privateConstructorUsedError;

  /// [expirationDateElement] Extensions for expirationDate
  @JsonKey(name: '_expirationDate')
  PrimitiveElement? get expirationDateElement =>
      throw _privateConstructorUsedError;

  /// [site] Body site where vaccine was administered.
  CodeableConcept? get site => throw _privateConstructorUsedError;

  /// [route] The path by which the vaccine product is taken into the body.
  CodeableConcept? get route => throw _privateConstructorUsedError;

  /// [doseQuantity] The quantity of vaccine product that was administered.
  Quantity? get doseQuantity => throw _privateConstructorUsedError;

  /// [performer] Indicates who performed the immunization event.
  List<ImmunizationPerformer>? get performer =>
      throw _privateConstructorUsedError;

  /// [note] Extra information about the immunization that is not conveyed by
  ///  the other attributes.
  List<Annotation>? get note => throw _privateConstructorUsedError;

  /// [reasonCode] Reasons why the vaccine was administered.
  List<CodeableConcept>? get reasonCode => throw _privateConstructorUsedError;

  /// [reasonReference] Condition, Observation or DiagnosticReport that
  ///  supports why the immunization was administered.
  List<Reference>? get reasonReference => throw _privateConstructorUsedError;

  /// [isSubpotent] Indication if a dose is considered to be subpotent. By
  ///  default, a dose should be considered to be potent.
  FhirBoolean? get isSubpotent => throw _privateConstructorUsedError;

  /// [isSubpotentElement] Extensions for isSubpotent
  @JsonKey(name: '_isSubpotent')
  PrimitiveElement? get isSubpotentElement =>
      throw _privateConstructorUsedError;

  /// [subpotentReason] Reason why a dose is considered to be subpotent.
  List<CodeableConcept>? get subpotentReason =>
      throw _privateConstructorUsedError;

  /// [education] Educational material presented to the patient (or guardian)
  ///  at the time of vaccine administration.
  List<ImmunizationEducation>? get education =>
      throw _privateConstructorUsedError;

  /// [programEligibility] Indicates a patient's eligibility for a funding
  ///  program.
  List<CodeableConcept>? get programEligibility =>
      throw _privateConstructorUsedError;

  /// [fundingSource] Indicates the source of the vaccine actually
  /// administered. This may be different than the patient eligibility (e.g. the
  /// patient may be eligible for a publically purchased vaccine but due to
  /// inventory issues, vaccine purchased with private funds was actually
  ///  administered).
  CodeableConcept? get fundingSource => throw _privateConstructorUsedError;

  /// [reaction] Categorical data indicating that an adverse event is
  ///  associated in time to an immunization.
  List<ImmunizationReaction>? get reaction =>
      throw _privateConstructorUsedError;

  /// [protocolApplied] The protocol (set of recommendations) being followed by
  ///  the provider who administered the dose.
  List<ImmunizationProtocolApplied>? get protocolApplied =>
      throw _privateConstructorUsedError;

  /// Serializes this Immunization to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Immunization
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImmunizationCopyWith<Immunization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImmunizationCopyWith<$Res> {
  factory $ImmunizationCopyWith(
          Immunization value, $Res Function(Immunization) then) =
      _$ImmunizationCopyWithImpl<$Res, Immunization>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Immunization)
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
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept? statusReason,
      CodeableConcept vaccineCode,
      Reference patient,
      Reference? encounter,
      FhirDateTime? occurrenceDateTime,
      @JsonKey(name: '_occurrenceDateTime')
      PrimitiveElement? occurrenceDateTimeElement,
      String? occurrenceString,
      @JsonKey(name: '_occurrenceString')
      PrimitiveElement? occurrenceStringElement,
      FhirDateTime? recorded,
      @JsonKey(name: '_recorded') PrimitiveElement? recordedElement,
      FhirBoolean? primarySource,
      @JsonKey(name: '_primarySource') PrimitiveElement? primarySourceElement,
      CodeableConcept? reportOrigin,
      Reference? location,
      Reference? manufacturer,
      String? lotNumber,
      @JsonKey(name: '_lotNumber') PrimitiveElement? lotNumberElement,
      FhirDate? expirationDate,
      @JsonKey(name: '_expirationDate') PrimitiveElement? expirationDateElement,
      CodeableConcept? site,
      CodeableConcept? route,
      Quantity? doseQuantity,
      List<ImmunizationPerformer>? performer,
      List<Annotation>? note,
      List<CodeableConcept>? reasonCode,
      List<Reference>? reasonReference,
      FhirBoolean? isSubpotent,
      @JsonKey(name: '_isSubpotent') PrimitiveElement? isSubpotentElement,
      List<CodeableConcept>? subpotentReason,
      List<ImmunizationEducation>? education,
      List<CodeableConcept>? programEligibility,
      CodeableConcept? fundingSource,
      List<ImmunizationReaction>? reaction,
      List<ImmunizationProtocolApplied>? protocolApplied});
}

/// @nodoc
class _$ImmunizationCopyWithImpl<$Res, $Val extends Immunization>
    implements $ImmunizationCopyWith<$Res> {
  _$ImmunizationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Immunization
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
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? statusReason = freezed,
    Object? vaccineCode = freezed,
    Object? patient = freezed,
    Object? encounter = freezed,
    Object? occurrenceDateTime = freezed,
    Object? occurrenceDateTimeElement = freezed,
    Object? occurrenceString = freezed,
    Object? occurrenceStringElement = freezed,
    Object? recorded = freezed,
    Object? recordedElement = freezed,
    Object? primarySource = freezed,
    Object? primarySourceElement = freezed,
    Object? reportOrigin = freezed,
    Object? location = freezed,
    Object? manufacturer = freezed,
    Object? lotNumber = freezed,
    Object? lotNumberElement = freezed,
    Object? expirationDate = freezed,
    Object? expirationDateElement = freezed,
    Object? site = freezed,
    Object? route = freezed,
    Object? doseQuantity = freezed,
    Object? performer = freezed,
    Object? note = freezed,
    Object? reasonCode = freezed,
    Object? reasonReference = freezed,
    Object? isSubpotent = freezed,
    Object? isSubpotentElement = freezed,
    Object? subpotentReason = freezed,
    Object? education = freezed,
    Object? programEligibility = freezed,
    Object? fundingSource = freezed,
    Object? reaction = freezed,
    Object? protocolApplied = freezed,
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
              as CodeableConcept?,
      vaccineCode: freezed == vaccineCode
          ? _value.vaccineCode
          : vaccineCode // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      occurrenceDateTime: freezed == occurrenceDateTime
          ? _value.occurrenceDateTime
          : occurrenceDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      occurrenceDateTimeElement: freezed == occurrenceDateTimeElement
          ? _value.occurrenceDateTimeElement
          : occurrenceDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      occurrenceString: freezed == occurrenceString
          ? _value.occurrenceString
          : occurrenceString // ignore: cast_nullable_to_non_nullable
              as String?,
      occurrenceStringElement: freezed == occurrenceStringElement
          ? _value.occurrenceStringElement
          : occurrenceStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      recorded: freezed == recorded
          ? _value.recorded
          : recorded // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      recordedElement: freezed == recordedElement
          ? _value.recordedElement
          : recordedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      primarySource: freezed == primarySource
          ? _value.primarySource
          : primarySource // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      primarySourceElement: freezed == primarySourceElement
          ? _value.primarySourceElement
          : primarySourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      reportOrigin: freezed == reportOrigin
          ? _value.reportOrigin
          : reportOrigin // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Reference?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumberElement: freezed == lotNumberElement
          ? _value.lotNumberElement
          : lotNumberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      expirationDateElement: freezed == expirationDateElement
          ? _value.expirationDateElement
          : expirationDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      doseQuantity: freezed == doseQuantity
          ? _value.doseQuantity
          : doseQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<ImmunizationPerformer>?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      reasonCode: freezed == reasonCode
          ? _value.reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      reasonReference: freezed == reasonReference
          ? _value.reasonReference
          : reasonReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      isSubpotent: freezed == isSubpotent
          ? _value.isSubpotent
          : isSubpotent // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      isSubpotentElement: freezed == isSubpotentElement
          ? _value.isSubpotentElement
          : isSubpotentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subpotentReason: freezed == subpotentReason
          ? _value.subpotentReason
          : subpotentReason // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as List<ImmunizationEducation>?,
      programEligibility: freezed == programEligibility
          ? _value.programEligibility
          : programEligibility // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      fundingSource: freezed == fundingSource
          ? _value.fundingSource
          : fundingSource // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      reaction: freezed == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as List<ImmunizationReaction>?,
      protocolApplied: freezed == protocolApplied
          ? _value.protocolApplied
          : protocolApplied // ignore: cast_nullable_to_non_nullable
              as List<ImmunizationProtocolApplied>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImmunizationImplCopyWith<$Res>
    implements $ImmunizationCopyWith<$Res> {
  factory _$$ImmunizationImplCopyWith(
          _$ImmunizationImpl value, $Res Function(_$ImmunizationImpl) then) =
      __$$ImmunizationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Immunization)
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
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept? statusReason,
      CodeableConcept vaccineCode,
      Reference patient,
      Reference? encounter,
      FhirDateTime? occurrenceDateTime,
      @JsonKey(name: '_occurrenceDateTime')
      PrimitiveElement? occurrenceDateTimeElement,
      String? occurrenceString,
      @JsonKey(name: '_occurrenceString')
      PrimitiveElement? occurrenceStringElement,
      FhirDateTime? recorded,
      @JsonKey(name: '_recorded') PrimitiveElement? recordedElement,
      FhirBoolean? primarySource,
      @JsonKey(name: '_primarySource') PrimitiveElement? primarySourceElement,
      CodeableConcept? reportOrigin,
      Reference? location,
      Reference? manufacturer,
      String? lotNumber,
      @JsonKey(name: '_lotNumber') PrimitiveElement? lotNumberElement,
      FhirDate? expirationDate,
      @JsonKey(name: '_expirationDate') PrimitiveElement? expirationDateElement,
      CodeableConcept? site,
      CodeableConcept? route,
      Quantity? doseQuantity,
      List<ImmunizationPerformer>? performer,
      List<Annotation>? note,
      List<CodeableConcept>? reasonCode,
      List<Reference>? reasonReference,
      FhirBoolean? isSubpotent,
      @JsonKey(name: '_isSubpotent') PrimitiveElement? isSubpotentElement,
      List<CodeableConcept>? subpotentReason,
      List<ImmunizationEducation>? education,
      List<CodeableConcept>? programEligibility,
      CodeableConcept? fundingSource,
      List<ImmunizationReaction>? reaction,
      List<ImmunizationProtocolApplied>? protocolApplied});
}

/// @nodoc
class __$$ImmunizationImplCopyWithImpl<$Res>
    extends _$ImmunizationCopyWithImpl<$Res, _$ImmunizationImpl>
    implements _$$ImmunizationImplCopyWith<$Res> {
  __$$ImmunizationImplCopyWithImpl(
      _$ImmunizationImpl _value, $Res Function(_$ImmunizationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Immunization
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
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? statusReason = freezed,
    Object? vaccineCode = freezed,
    Object? patient = freezed,
    Object? encounter = freezed,
    Object? occurrenceDateTime = freezed,
    Object? occurrenceDateTimeElement = freezed,
    Object? occurrenceString = freezed,
    Object? occurrenceStringElement = freezed,
    Object? recorded = freezed,
    Object? recordedElement = freezed,
    Object? primarySource = freezed,
    Object? primarySourceElement = freezed,
    Object? reportOrigin = freezed,
    Object? location = freezed,
    Object? manufacturer = freezed,
    Object? lotNumber = freezed,
    Object? lotNumberElement = freezed,
    Object? expirationDate = freezed,
    Object? expirationDateElement = freezed,
    Object? site = freezed,
    Object? route = freezed,
    Object? doseQuantity = freezed,
    Object? performer = freezed,
    Object? note = freezed,
    Object? reasonCode = freezed,
    Object? reasonReference = freezed,
    Object? isSubpotent = freezed,
    Object? isSubpotentElement = freezed,
    Object? subpotentReason = freezed,
    Object? education = freezed,
    Object? programEligibility = freezed,
    Object? fundingSource = freezed,
    Object? reaction = freezed,
    Object? protocolApplied = freezed,
  }) {
    return _then(_$ImmunizationImpl(
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
              as CodeableConcept?,
      vaccineCode: freezed == vaccineCode
          ? _value.vaccineCode
          : vaccineCode // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      occurrenceDateTime: freezed == occurrenceDateTime
          ? _value.occurrenceDateTime
          : occurrenceDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      occurrenceDateTimeElement: freezed == occurrenceDateTimeElement
          ? _value.occurrenceDateTimeElement
          : occurrenceDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      occurrenceString: freezed == occurrenceString
          ? _value.occurrenceString
          : occurrenceString // ignore: cast_nullable_to_non_nullable
              as String?,
      occurrenceStringElement: freezed == occurrenceStringElement
          ? _value.occurrenceStringElement
          : occurrenceStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      recorded: freezed == recorded
          ? _value.recorded
          : recorded // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      recordedElement: freezed == recordedElement
          ? _value.recordedElement
          : recordedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      primarySource: freezed == primarySource
          ? _value.primarySource
          : primarySource // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      primarySourceElement: freezed == primarySourceElement
          ? _value.primarySourceElement
          : primarySourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      reportOrigin: freezed == reportOrigin
          ? _value.reportOrigin
          : reportOrigin // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Reference?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumberElement: freezed == lotNumberElement
          ? _value.lotNumberElement
          : lotNumberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      expirationDateElement: freezed == expirationDateElement
          ? _value.expirationDateElement
          : expirationDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      doseQuantity: freezed == doseQuantity
          ? _value.doseQuantity
          : doseQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      performer: freezed == performer
          ? _value._performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<ImmunizationPerformer>?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      reasonCode: freezed == reasonCode
          ? _value._reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      reasonReference: freezed == reasonReference
          ? _value._reasonReference
          : reasonReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      isSubpotent: freezed == isSubpotent
          ? _value.isSubpotent
          : isSubpotent // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      isSubpotentElement: freezed == isSubpotentElement
          ? _value.isSubpotentElement
          : isSubpotentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subpotentReason: freezed == subpotentReason
          ? _value._subpotentReason
          : subpotentReason // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      education: freezed == education
          ? _value._education
          : education // ignore: cast_nullable_to_non_nullable
              as List<ImmunizationEducation>?,
      programEligibility: freezed == programEligibility
          ? _value._programEligibility
          : programEligibility // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      fundingSource: freezed == fundingSource
          ? _value.fundingSource
          : fundingSource // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      reaction: freezed == reaction
          ? _value._reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as List<ImmunizationReaction>?,
      protocolApplied: freezed == protocolApplied
          ? _value._protocolApplied
          : protocolApplied // ignore: cast_nullable_to_non_nullable
              as List<ImmunizationProtocolApplied>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImmunizationImpl extends _Immunization {
  _$ImmunizationImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.Immunization)
      this.resourceType = R4ResourceType.Immunization,
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
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.statusReason,
      required this.vaccineCode,
      required this.patient,
      this.encounter,
      this.occurrenceDateTime,
      @JsonKey(name: '_occurrenceDateTime') this.occurrenceDateTimeElement,
      this.occurrenceString,
      @JsonKey(name: '_occurrenceString') this.occurrenceStringElement,
      this.recorded,
      @JsonKey(name: '_recorded') this.recordedElement,
      this.primarySource,
      @JsonKey(name: '_primarySource') this.primarySourceElement,
      this.reportOrigin,
      this.location,
      this.manufacturer,
      this.lotNumber,
      @JsonKey(name: '_lotNumber') this.lotNumberElement,
      this.expirationDate,
      @JsonKey(name: '_expirationDate') this.expirationDateElement,
      this.site,
      this.route,
      this.doseQuantity,
      final List<ImmunizationPerformer>? performer,
      final List<Annotation>? note,
      final List<CodeableConcept>? reasonCode,
      final List<Reference>? reasonReference,
      this.isSubpotent,
      @JsonKey(name: '_isSubpotent') this.isSubpotentElement,
      final List<CodeableConcept>? subpotentReason,
      final List<ImmunizationEducation>? education,
      final List<CodeableConcept>? programEligibility,
      this.fundingSource,
      final List<ImmunizationReaction>? reaction,
      final List<ImmunizationProtocolApplied>? protocolApplied})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _performer = performer,
        _note = note,
        _reasonCode = reasonCode,
        _reasonReference = reasonReference,
        _subpotentReason = subpotentReason,
        _education = education,
        _programEligibility = programEligibility,
        _reaction = reaction,
        _protocolApplied = protocolApplied,
        super._();

  factory _$ImmunizationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImmunizationImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Immunization)
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

  /// [identifier] A unique identifier assigned to this immunization record.
  final List<Identifier>? _identifier;

  /// [identifier] A unique identifier assigned to this immunization record.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] Indicates the current status of the immunization event.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [statusReason] Indicates the reason the immunization event was not
  ///  performed.
  @override
  final CodeableConcept? statusReason;

  /// [vaccineCode] Vaccine that was administered or was to be administered.
  @override
  final CodeableConcept vaccineCode;

  /// [patient] The patient who either received or did not receive the
  ///  immunization.
  @override
  final Reference patient;

  /// [encounter] The visit or admission or other contact between patient and
  ///  health care provider the immunization was performed as part of.
  @override
  final Reference? encounter;

  /// [occurrenceDateTime] Date vaccine administered or was to be administered.
  @override
  final FhirDateTime? occurrenceDateTime;

  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  @override
  @JsonKey(name: '_occurrenceDateTime')
  final PrimitiveElement? occurrenceDateTimeElement;

  /// [occurrenceString] Date vaccine administered or was to be administered.
  @override
  final String? occurrenceString;

  /// [occurrenceStringElement] Extensions for occurrenceString
  @override
  @JsonKey(name: '_occurrenceString')
  final PrimitiveElement? occurrenceStringElement;

  /// [recorded] The date the occurrence of the immunization was first captured
  /// in the record - potentially significantly after the occurrence of the
  ///  event.
  @override
  final FhirDateTime? recorded;

  /// [recordedElement] Extensions for recorded
  @override
  @JsonKey(name: '_recorded')
  final PrimitiveElement? recordedElement;

  /// [primarySource] An indication that the content of the record is based on
  /// information from the person who administered the vaccine. This reflects
  ///  the context under which the data was originally recorded.
  @override
  final FhirBoolean? primarySource;

  /// [primarySourceElement] Extensions for primarySource
  @override
  @JsonKey(name: '_primarySource')
  final PrimitiveElement? primarySourceElement;

  /// [reportOrigin] The source of the data when the report of the immunization
  /// event is not based on information from the person who administered the
  ///  vaccine.
  @override
  final CodeableConcept? reportOrigin;

  /// [location] The service delivery location where the vaccine administration
  ///  occurred.
  @override
  final Reference? location;

  /// [manufacturer] Name of vaccine manufacturer.
  @override
  final Reference? manufacturer;

  /// [lotNumber] Lot number of the  vaccine product.
  @override
  final String? lotNumber;

  /// [lotNumberElement] Extensions for lotNumber
  @override
  @JsonKey(name: '_lotNumber')
  final PrimitiveElement? lotNumberElement;

  /// [expirationDate] Date vaccine batch expires.
  @override
  final FhirDate? expirationDate;

  /// [expirationDateElement] Extensions for expirationDate
  @override
  @JsonKey(name: '_expirationDate')
  final PrimitiveElement? expirationDateElement;

  /// [site] Body site where vaccine was administered.
  @override
  final CodeableConcept? site;

  /// [route] The path by which the vaccine product is taken into the body.
  @override
  final CodeableConcept? route;

  /// [doseQuantity] The quantity of vaccine product that was administered.
  @override
  final Quantity? doseQuantity;

  /// [performer] Indicates who performed the immunization event.
  final List<ImmunizationPerformer>? _performer;

  /// [performer] Indicates who performed the immunization event.
  @override
  List<ImmunizationPerformer>? get performer {
    final value = _performer;
    if (value == null) return null;
    if (_performer is EqualUnmodifiableListView) return _performer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [note] Extra information about the immunization that is not conveyed by
  ///  the other attributes.
  final List<Annotation>? _note;

  /// [note] Extra information about the immunization that is not conveyed by
  ///  the other attributes.
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reasonCode] Reasons why the vaccine was administered.
  final List<CodeableConcept>? _reasonCode;

  /// [reasonCode] Reasons why the vaccine was administered.
  @override
  List<CodeableConcept>? get reasonCode {
    final value = _reasonCode;
    if (value == null) return null;
    if (_reasonCode is EqualUnmodifiableListView) return _reasonCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reasonReference] Condition, Observation or DiagnosticReport that
  ///  supports why the immunization was administered.
  final List<Reference>? _reasonReference;

  /// [reasonReference] Condition, Observation or DiagnosticReport that
  ///  supports why the immunization was administered.
  @override
  List<Reference>? get reasonReference {
    final value = _reasonReference;
    if (value == null) return null;
    if (_reasonReference is EqualUnmodifiableListView) return _reasonReference;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [isSubpotent] Indication if a dose is considered to be subpotent. By
  ///  default, a dose should be considered to be potent.
  @override
  final FhirBoolean? isSubpotent;

  /// [isSubpotentElement] Extensions for isSubpotent
  @override
  @JsonKey(name: '_isSubpotent')
  final PrimitiveElement? isSubpotentElement;

  /// [subpotentReason] Reason why a dose is considered to be subpotent.
  final List<CodeableConcept>? _subpotentReason;

  /// [subpotentReason] Reason why a dose is considered to be subpotent.
  @override
  List<CodeableConcept>? get subpotentReason {
    final value = _subpotentReason;
    if (value == null) return null;
    if (_subpotentReason is EqualUnmodifiableListView) return _subpotentReason;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [education] Educational material presented to the patient (or guardian)
  ///  at the time of vaccine administration.
  final List<ImmunizationEducation>? _education;

  /// [education] Educational material presented to the patient (or guardian)
  ///  at the time of vaccine administration.
  @override
  List<ImmunizationEducation>? get education {
    final value = _education;
    if (value == null) return null;
    if (_education is EqualUnmodifiableListView) return _education;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [programEligibility] Indicates a patient's eligibility for a funding
  ///  program.
  final List<CodeableConcept>? _programEligibility;

  /// [programEligibility] Indicates a patient's eligibility for a funding
  ///  program.
  @override
  List<CodeableConcept>? get programEligibility {
    final value = _programEligibility;
    if (value == null) return null;
    if (_programEligibility is EqualUnmodifiableListView)
      return _programEligibility;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [fundingSource] Indicates the source of the vaccine actually
  /// administered. This may be different than the patient eligibility (e.g. the
  /// patient may be eligible for a publically purchased vaccine but due to
  /// inventory issues, vaccine purchased with private funds was actually
  ///  administered).
  @override
  final CodeableConcept? fundingSource;

  /// [reaction] Categorical data indicating that an adverse event is
  ///  associated in time to an immunization.
  final List<ImmunizationReaction>? _reaction;

  /// [reaction] Categorical data indicating that an adverse event is
  ///  associated in time to an immunization.
  @override
  List<ImmunizationReaction>? get reaction {
    final value = _reaction;
    if (value == null) return null;
    if (_reaction is EqualUnmodifiableListView) return _reaction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [protocolApplied] The protocol (set of recommendations) being followed by
  ///  the provider who administered the dose.
  final List<ImmunizationProtocolApplied>? _protocolApplied;

  /// [protocolApplied] The protocol (set of recommendations) being followed by
  ///  the provider who administered the dose.
  @override
  List<ImmunizationProtocolApplied>? get protocolApplied {
    final value = _protocolApplied;
    if (value == null) return null;
    if (_protocolApplied is EqualUnmodifiableListView) return _protocolApplied;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Immunization(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, status: $status, statusElement: $statusElement, statusReason: $statusReason, vaccineCode: $vaccineCode, patient: $patient, encounter: $encounter, occurrenceDateTime: $occurrenceDateTime, occurrenceDateTimeElement: $occurrenceDateTimeElement, occurrenceString: $occurrenceString, occurrenceStringElement: $occurrenceStringElement, recorded: $recorded, recordedElement: $recordedElement, primarySource: $primarySource, primarySourceElement: $primarySourceElement, reportOrigin: $reportOrigin, location: $location, manufacturer: $manufacturer, lotNumber: $lotNumber, lotNumberElement: $lotNumberElement, expirationDate: $expirationDate, expirationDateElement: $expirationDateElement, site: $site, route: $route, doseQuantity: $doseQuantity, performer: $performer, note: $note, reasonCode: $reasonCode, reasonReference: $reasonReference, isSubpotent: $isSubpotent, isSubpotentElement: $isSubpotentElement, subpotentReason: $subpotentReason, education: $education, programEligibility: $programEligibility, fundingSource: $fundingSource, reaction: $reaction, protocolApplied: $protocolApplied)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImmunizationImpl &&
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
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            const DeepCollectionEquality()
                .equals(other.statusReason, statusReason) &&
            const DeepCollectionEquality()
                .equals(other.vaccineCode, vaccineCode) &&
            const DeepCollectionEquality().equals(other.patient, patient) &&
            const DeepCollectionEquality().equals(other.encounter, encounter) &&
            (identical(other.occurrenceDateTime, occurrenceDateTime) ||
                other.occurrenceDateTime == occurrenceDateTime) &&
            (identical(other.occurrenceDateTimeElement, occurrenceDateTimeElement) ||
                other.occurrenceDateTimeElement == occurrenceDateTimeElement) &&
            (identical(other.occurrenceString, occurrenceString) ||
                other.occurrenceString == occurrenceString) &&
            (identical(other.occurrenceStringElement, occurrenceStringElement) ||
                other.occurrenceStringElement == occurrenceStringElement) &&
            (identical(other.recorded, recorded) ||
                other.recorded == recorded) &&
            (identical(other.recordedElement, recordedElement) ||
                other.recordedElement == recordedElement) &&
            (identical(other.primarySource, primarySource) ||
                other.primarySource == primarySource) &&
            (identical(other.primarySourceElement, primarySourceElement) ||
                other.primarySourceElement == primarySourceElement) &&
            const DeepCollectionEquality()
                .equals(other.reportOrigin, reportOrigin) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.manufacturer, manufacturer) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.lotNumberElement, lotNumberElement) ||
                other.lotNumberElement == lotNumberElement) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.expirationDateElement, expirationDateElement) ||
                other.expirationDateElement == expirationDateElement) &&
            const DeepCollectionEquality().equals(other.site, site) &&
            const DeepCollectionEquality().equals(other.route, route) &&
            const DeepCollectionEquality()
                .equals(other.doseQuantity, doseQuantity) &&
            const DeepCollectionEquality()
                .equals(other._performer, _performer) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            const DeepCollectionEquality()
                .equals(other._reasonCode, _reasonCode) &&
            const DeepCollectionEquality()
                .equals(other._reasonReference, _reasonReference) &&
            (identical(other.isSubpotent, isSubpotent) ||
                other.isSubpotent == isSubpotent) &&
            (identical(other.isSubpotentElement, isSubpotentElement) ||
                other.isSubpotentElement == isSubpotentElement) &&
            const DeepCollectionEquality().equals(other._subpotentReason, _subpotentReason) &&
            const DeepCollectionEquality().equals(other._education, _education) &&
            const DeepCollectionEquality().equals(other._programEligibility, _programEligibility) &&
            const DeepCollectionEquality().equals(other.fundingSource, fundingSource) &&
            const DeepCollectionEquality().equals(other._reaction, _reaction) &&
            const DeepCollectionEquality().equals(other._protocolApplied, _protocolApplied));
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
        status,
        statusElement,
        const DeepCollectionEquality().hash(statusReason),
        const DeepCollectionEquality().hash(vaccineCode),
        const DeepCollectionEquality().hash(patient),
        const DeepCollectionEquality().hash(encounter),
        occurrenceDateTime,
        occurrenceDateTimeElement,
        occurrenceString,
        occurrenceStringElement,
        recorded,
        recordedElement,
        primarySource,
        primarySourceElement,
        const DeepCollectionEquality().hash(reportOrigin),
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(manufacturer),
        lotNumber,
        lotNumberElement,
        expirationDate,
        expirationDateElement,
        const DeepCollectionEquality().hash(site),
        const DeepCollectionEquality().hash(route),
        const DeepCollectionEquality().hash(doseQuantity),
        const DeepCollectionEquality().hash(_performer),
        const DeepCollectionEquality().hash(_note),
        const DeepCollectionEquality().hash(_reasonCode),
        const DeepCollectionEquality().hash(_reasonReference),
        isSubpotent,
        isSubpotentElement,
        const DeepCollectionEquality().hash(_subpotentReason),
        const DeepCollectionEquality().hash(_education),
        const DeepCollectionEquality().hash(_programEligibility),
        const DeepCollectionEquality().hash(fundingSource),
        const DeepCollectionEquality().hash(_reaction),
        const DeepCollectionEquality().hash(_protocolApplied)
      ]);

  /// Create a copy of Immunization
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImmunizationImplCopyWith<_$ImmunizationImpl> get copyWith =>
      __$$ImmunizationImplCopyWithImpl<_$ImmunizationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImmunizationImplToJson(
      this,
    );
  }
}

abstract class _Immunization extends Immunization {
  factory _Immunization(
      {@JsonKey(unknownEnumValue: R4ResourceType.Immunization)
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
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final CodeableConcept? statusReason,
      required final CodeableConcept vaccineCode,
      required final Reference patient,
      final Reference? encounter,
      final FhirDateTime? occurrenceDateTime,
      @JsonKey(name: '_occurrenceDateTime')
      final PrimitiveElement? occurrenceDateTimeElement,
      final String? occurrenceString,
      @JsonKey(name: '_occurrenceString')
      final PrimitiveElement? occurrenceStringElement,
      final FhirDateTime? recorded,
      @JsonKey(name: '_recorded') final PrimitiveElement? recordedElement,
      final FhirBoolean? primarySource,
      @JsonKey(name: '_primarySource')
      final PrimitiveElement? primarySourceElement,
      final CodeableConcept? reportOrigin,
      final Reference? location,
      final Reference? manufacturer,
      final String? lotNumber,
      @JsonKey(name: '_lotNumber') final PrimitiveElement? lotNumberElement,
      final FhirDate? expirationDate,
      @JsonKey(name: '_expirationDate')
      final PrimitiveElement? expirationDateElement,
      final CodeableConcept? site,
      final CodeableConcept? route,
      final Quantity? doseQuantity,
      final List<ImmunizationPerformer>? performer,
      final List<Annotation>? note,
      final List<CodeableConcept>? reasonCode,
      final List<Reference>? reasonReference,
      final FhirBoolean? isSubpotent,
      @JsonKey(name: '_isSubpotent') final PrimitiveElement? isSubpotentElement,
      final List<CodeableConcept>? subpotentReason,
      final List<ImmunizationEducation>? education,
      final List<CodeableConcept>? programEligibility,
      final CodeableConcept? fundingSource,
      final List<ImmunizationReaction>? reaction,
      final List<ImmunizationProtocolApplied>?
          protocolApplied}) = _$ImmunizationImpl;
  _Immunization._() : super._();

  factory _Immunization.fromJson(Map<String, dynamic> json) =
      _$ImmunizationImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Immunization)
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

  /// [identifier] A unique identifier assigned to this immunization record.
  @override
  List<Identifier>? get identifier;

  /// [status] Indicates the current status of the immunization event.
  @override
  FhirCode? get status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;

  /// [statusReason] Indicates the reason the immunization event was not
  ///  performed.
  @override
  CodeableConcept? get statusReason;

  /// [vaccineCode] Vaccine that was administered or was to be administered.
  @override
  CodeableConcept get vaccineCode;

  /// [patient] The patient who either received or did not receive the
  ///  immunization.
  @override
  Reference get patient;

  /// [encounter] The visit or admission or other contact between patient and
  ///  health care provider the immunization was performed as part of.
  @override
  Reference? get encounter;

  /// [occurrenceDateTime] Date vaccine administered or was to be administered.
  @override
  FhirDateTime? get occurrenceDateTime;

  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  @override
  @JsonKey(name: '_occurrenceDateTime')
  PrimitiveElement? get occurrenceDateTimeElement;

  /// [occurrenceString] Date vaccine administered or was to be administered.
  @override
  String? get occurrenceString;

  /// [occurrenceStringElement] Extensions for occurrenceString
  @override
  @JsonKey(name: '_occurrenceString')
  PrimitiveElement? get occurrenceStringElement;

  /// [recorded] The date the occurrence of the immunization was first captured
  /// in the record - potentially significantly after the occurrence of the
  ///  event.
  @override
  FhirDateTime? get recorded;

  /// [recordedElement] Extensions for recorded
  @override
  @JsonKey(name: '_recorded')
  PrimitiveElement? get recordedElement;

  /// [primarySource] An indication that the content of the record is based on
  /// information from the person who administered the vaccine. This reflects
  ///  the context under which the data was originally recorded.
  @override
  FhirBoolean? get primarySource;

  /// [primarySourceElement] Extensions for primarySource
  @override
  @JsonKey(name: '_primarySource')
  PrimitiveElement? get primarySourceElement;

  /// [reportOrigin] The source of the data when the report of the immunization
  /// event is not based on information from the person who administered the
  ///  vaccine.
  @override
  CodeableConcept? get reportOrigin;

  /// [location] The service delivery location where the vaccine administration
  ///  occurred.
  @override
  Reference? get location;

  /// [manufacturer] Name of vaccine manufacturer.
  @override
  Reference? get manufacturer;

  /// [lotNumber] Lot number of the  vaccine product.
  @override
  String? get lotNumber;

  /// [lotNumberElement] Extensions for lotNumber
  @override
  @JsonKey(name: '_lotNumber')
  PrimitiveElement? get lotNumberElement;

  /// [expirationDate] Date vaccine batch expires.
  @override
  FhirDate? get expirationDate;

  /// [expirationDateElement] Extensions for expirationDate
  @override
  @JsonKey(name: '_expirationDate')
  PrimitiveElement? get expirationDateElement;

  /// [site] Body site where vaccine was administered.
  @override
  CodeableConcept? get site;

  /// [route] The path by which the vaccine product is taken into the body.
  @override
  CodeableConcept? get route;

  /// [doseQuantity] The quantity of vaccine product that was administered.
  @override
  Quantity? get doseQuantity;

  /// [performer] Indicates who performed the immunization event.
  @override
  List<ImmunizationPerformer>? get performer;

  /// [note] Extra information about the immunization that is not conveyed by
  ///  the other attributes.
  @override
  List<Annotation>? get note;

  /// [reasonCode] Reasons why the vaccine was administered.
  @override
  List<CodeableConcept>? get reasonCode;

  /// [reasonReference] Condition, Observation or DiagnosticReport that
  ///  supports why the immunization was administered.
  @override
  List<Reference>? get reasonReference;

  /// [isSubpotent] Indication if a dose is considered to be subpotent. By
  ///  default, a dose should be considered to be potent.
  @override
  FhirBoolean? get isSubpotent;

  /// [isSubpotentElement] Extensions for isSubpotent
  @override
  @JsonKey(name: '_isSubpotent')
  PrimitiveElement? get isSubpotentElement;

  /// [subpotentReason] Reason why a dose is considered to be subpotent.
  @override
  List<CodeableConcept>? get subpotentReason;

  /// [education] Educational material presented to the patient (or guardian)
  ///  at the time of vaccine administration.
  @override
  List<ImmunizationEducation>? get education;

  /// [programEligibility] Indicates a patient's eligibility for a funding
  ///  program.
  @override
  List<CodeableConcept>? get programEligibility;

  /// [fundingSource] Indicates the source of the vaccine actually
  /// administered. This may be different than the patient eligibility (e.g. the
  /// patient may be eligible for a publically purchased vaccine but due to
  /// inventory issues, vaccine purchased with private funds was actually
  ///  administered).
  @override
  CodeableConcept? get fundingSource;

  /// [reaction] Categorical data indicating that an adverse event is
  ///  associated in time to an immunization.
  @override
  List<ImmunizationReaction>? get reaction;

  /// [protocolApplied] The protocol (set of recommendations) being followed by
  ///  the provider who administered the dose.
  @override
  List<ImmunizationProtocolApplied>? get protocolApplied;

  /// Create a copy of Immunization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImmunizationImplCopyWith<_$ImmunizationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImmunizationPerformer _$ImmunizationPerformerFromJson(
    Map<String, dynamic> json) {
  return _ImmunizationPerformer.fromJson(json);
}

/// @nodoc
mixin _$ImmunizationPerformer {
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

  /// [function] Describes the type of performance (e.g. ordering provider,
  ///  administering provider, etc.).
  CodeableConcept? get function => throw _privateConstructorUsedError;

  /// [actor] The practitioner or organization who performed the action.
  Reference get actor => throw _privateConstructorUsedError;

  /// Serializes this ImmunizationPerformer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImmunizationPerformer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImmunizationPerformerCopyWith<ImmunizationPerformer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImmunizationPerformerCopyWith<$Res> {
  factory $ImmunizationPerformerCopyWith(ImmunizationPerformer value,
          $Res Function(ImmunizationPerformer) then) =
      _$ImmunizationPerformerCopyWithImpl<$Res, ImmunizationPerformer>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? function,
      Reference actor});
}

/// @nodoc
class _$ImmunizationPerformerCopyWithImpl<$Res,
        $Val extends ImmunizationPerformer>
    implements $ImmunizationPerformerCopyWith<$Res> {
  _$ImmunizationPerformerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImmunizationPerformer
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
abstract class _$$ImmunizationPerformerImplCopyWith<$Res>
    implements $ImmunizationPerformerCopyWith<$Res> {
  factory _$$ImmunizationPerformerImplCopyWith(
          _$ImmunizationPerformerImpl value,
          $Res Function(_$ImmunizationPerformerImpl) then) =
      __$$ImmunizationPerformerImplCopyWithImpl<$Res>;
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
class __$$ImmunizationPerformerImplCopyWithImpl<$Res>
    extends _$ImmunizationPerformerCopyWithImpl<$Res,
        _$ImmunizationPerformerImpl>
    implements _$$ImmunizationPerformerImplCopyWith<$Res> {
  __$$ImmunizationPerformerImplCopyWithImpl(_$ImmunizationPerformerImpl _value,
      $Res Function(_$ImmunizationPerformerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImmunizationPerformer
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
    return _then(_$ImmunizationPerformerImpl(
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
class _$ImmunizationPerformerImpl extends _ImmunizationPerformer {
  _$ImmunizationPerformerImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.function,
      required this.actor})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ImmunizationPerformerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImmunizationPerformerImplFromJson(json);

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

  /// [function] Describes the type of performance (e.g. ordering provider,
  ///  administering provider, etc.).
  @override
  final CodeableConcept? function;

  /// [actor] The practitioner or organization who performed the action.
  @override
  final Reference actor;

  @override
  String toString() {
    return 'ImmunizationPerformer(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, function: $function, actor: $actor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImmunizationPerformerImpl &&
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

  /// Create a copy of ImmunizationPerformer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImmunizationPerformerImplCopyWith<_$ImmunizationPerformerImpl>
      get copyWith => __$$ImmunizationPerformerImplCopyWithImpl<
          _$ImmunizationPerformerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImmunizationPerformerImplToJson(
      this,
    );
  }
}

abstract class _ImmunizationPerformer extends ImmunizationPerformer {
  factory _ImmunizationPerformer(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? function,
      required final Reference actor}) = _$ImmunizationPerformerImpl;
  _ImmunizationPerformer._() : super._();

  factory _ImmunizationPerformer.fromJson(Map<String, dynamic> json) =
      _$ImmunizationPerformerImpl.fromJson;

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

  /// [function] Describes the type of performance (e.g. ordering provider,
  ///  administering provider, etc.).
  @override
  CodeableConcept? get function;

  /// [actor] The practitioner or organization who performed the action.
  @override
  Reference get actor;

  /// Create a copy of ImmunizationPerformer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImmunizationPerformerImplCopyWith<_$ImmunizationPerformerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImmunizationEducation _$ImmunizationEducationFromJson(
    Map<String, dynamic> json) {
  return _ImmunizationEducation.fromJson(json);
}

/// @nodoc
mixin _$ImmunizationEducation {
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

  /// [documentType] Identifier of the material presented to the patient.
  String? get documentType => throw _privateConstructorUsedError;

  /// [documentTypeElement] Extensions for documentType
  @JsonKey(name: '_documentType')
  PrimitiveElement? get documentTypeElement =>
      throw _privateConstructorUsedError;

  /// [reference] Reference pointer to the educational material given to the
  ///  patient if the information was on line.
  FhirUri? get reference => throw _privateConstructorUsedError;

  /// [referenceElement] Extensions for reference
  @JsonKey(name: '_reference')
  PrimitiveElement? get referenceElement => throw _privateConstructorUsedError;

  /// [publicationDate] Date the educational material was published.
  FhirDateTime? get publicationDate => throw _privateConstructorUsedError;

  /// [publicationDateElement] Extensions for publicationDate
  @JsonKey(name: '_publicationDate')
  PrimitiveElement? get publicationDateElement =>
      throw _privateConstructorUsedError;

  /// [presentationDate] Date the educational material was given to the
  ///  patient.
  FhirDateTime? get presentationDate => throw _privateConstructorUsedError;

  /// [presentationDateElement] Extensions for presentationDate
  @JsonKey(name: '_presentationDate')
  PrimitiveElement? get presentationDateElement =>
      throw _privateConstructorUsedError;

  /// Serializes this ImmunizationEducation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImmunizationEducation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImmunizationEducationCopyWith<ImmunizationEducation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImmunizationEducationCopyWith<$Res> {
  factory $ImmunizationEducationCopyWith(ImmunizationEducation value,
          $Res Function(ImmunizationEducation) then) =
      _$ImmunizationEducationCopyWithImpl<$Res, ImmunizationEducation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? documentType,
      @JsonKey(name: '_documentType') PrimitiveElement? documentTypeElement,
      FhirUri? reference,
      @JsonKey(name: '_reference') PrimitiveElement? referenceElement,
      FhirDateTime? publicationDate,
      @JsonKey(name: '_publicationDate')
      PrimitiveElement? publicationDateElement,
      FhirDateTime? presentationDate,
      @JsonKey(name: '_presentationDate')
      PrimitiveElement? presentationDateElement});
}

/// @nodoc
class _$ImmunizationEducationCopyWithImpl<$Res,
        $Val extends ImmunizationEducation>
    implements $ImmunizationEducationCopyWith<$Res> {
  _$ImmunizationEducationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImmunizationEducation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? documentType = freezed,
    Object? documentTypeElement = freezed,
    Object? reference = freezed,
    Object? referenceElement = freezed,
    Object? publicationDate = freezed,
    Object? publicationDateElement = freezed,
    Object? presentationDate = freezed,
    Object? presentationDateElement = freezed,
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
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentTypeElement: freezed == documentTypeElement
          ? _value.documentTypeElement
          : documentTypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      referenceElement: freezed == referenceElement
          ? _value.referenceElement
          : referenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      publicationDate: freezed == publicationDate
          ? _value.publicationDate
          : publicationDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      publicationDateElement: freezed == publicationDateElement
          ? _value.publicationDateElement
          : publicationDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      presentationDate: freezed == presentationDate
          ? _value.presentationDate
          : presentationDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      presentationDateElement: freezed == presentationDateElement
          ? _value.presentationDateElement
          : presentationDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImmunizationEducationImplCopyWith<$Res>
    implements $ImmunizationEducationCopyWith<$Res> {
  factory _$$ImmunizationEducationImplCopyWith(
          _$ImmunizationEducationImpl value,
          $Res Function(_$ImmunizationEducationImpl) then) =
      __$$ImmunizationEducationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? documentType,
      @JsonKey(name: '_documentType') PrimitiveElement? documentTypeElement,
      FhirUri? reference,
      @JsonKey(name: '_reference') PrimitiveElement? referenceElement,
      FhirDateTime? publicationDate,
      @JsonKey(name: '_publicationDate')
      PrimitiveElement? publicationDateElement,
      FhirDateTime? presentationDate,
      @JsonKey(name: '_presentationDate')
      PrimitiveElement? presentationDateElement});
}

/// @nodoc
class __$$ImmunizationEducationImplCopyWithImpl<$Res>
    extends _$ImmunizationEducationCopyWithImpl<$Res,
        _$ImmunizationEducationImpl>
    implements _$$ImmunizationEducationImplCopyWith<$Res> {
  __$$ImmunizationEducationImplCopyWithImpl(_$ImmunizationEducationImpl _value,
      $Res Function(_$ImmunizationEducationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImmunizationEducation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? documentType = freezed,
    Object? documentTypeElement = freezed,
    Object? reference = freezed,
    Object? referenceElement = freezed,
    Object? publicationDate = freezed,
    Object? publicationDateElement = freezed,
    Object? presentationDate = freezed,
    Object? presentationDateElement = freezed,
  }) {
    return _then(_$ImmunizationEducationImpl(
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
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentTypeElement: freezed == documentTypeElement
          ? _value.documentTypeElement
          : documentTypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      referenceElement: freezed == referenceElement
          ? _value.referenceElement
          : referenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      publicationDate: freezed == publicationDate
          ? _value.publicationDate
          : publicationDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      publicationDateElement: freezed == publicationDateElement
          ? _value.publicationDateElement
          : publicationDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      presentationDate: freezed == presentationDate
          ? _value.presentationDate
          : presentationDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      presentationDateElement: freezed == presentationDateElement
          ? _value.presentationDateElement
          : presentationDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImmunizationEducationImpl extends _ImmunizationEducation {
  _$ImmunizationEducationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.documentType,
      @JsonKey(name: '_documentType') this.documentTypeElement,
      this.reference,
      @JsonKey(name: '_reference') this.referenceElement,
      this.publicationDate,
      @JsonKey(name: '_publicationDate') this.publicationDateElement,
      this.presentationDate,
      @JsonKey(name: '_presentationDate') this.presentationDateElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ImmunizationEducationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImmunizationEducationImplFromJson(json);

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

  /// [documentType] Identifier of the material presented to the patient.
  @override
  final String? documentType;

  /// [documentTypeElement] Extensions for documentType
  @override
  @JsonKey(name: '_documentType')
  final PrimitiveElement? documentTypeElement;

  /// [reference] Reference pointer to the educational material given to the
  ///  patient if the information was on line.
  @override
  final FhirUri? reference;

  /// [referenceElement] Extensions for reference
  @override
  @JsonKey(name: '_reference')
  final PrimitiveElement? referenceElement;

  /// [publicationDate] Date the educational material was published.
  @override
  final FhirDateTime? publicationDate;

  /// [publicationDateElement] Extensions for publicationDate
  @override
  @JsonKey(name: '_publicationDate')
  final PrimitiveElement? publicationDateElement;

  /// [presentationDate] Date the educational material was given to the
  ///  patient.
  @override
  final FhirDateTime? presentationDate;

  /// [presentationDateElement] Extensions for presentationDate
  @override
  @JsonKey(name: '_presentationDate')
  final PrimitiveElement? presentationDateElement;

  @override
  String toString() {
    return 'ImmunizationEducation(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, documentType: $documentType, documentTypeElement: $documentTypeElement, reference: $reference, referenceElement: $referenceElement, publicationDate: $publicationDate, publicationDateElement: $publicationDateElement, presentationDate: $presentationDate, presentationDateElement: $presentationDateElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImmunizationEducationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.documentTypeElement, documentTypeElement) ||
                other.documentTypeElement == documentTypeElement) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.referenceElement, referenceElement) ||
                other.referenceElement == referenceElement) &&
            (identical(other.publicationDate, publicationDate) ||
                other.publicationDate == publicationDate) &&
            (identical(other.publicationDateElement, publicationDateElement) ||
                other.publicationDateElement == publicationDateElement) &&
            (identical(other.presentationDate, presentationDate) ||
                other.presentationDate == presentationDate) &&
            (identical(
                    other.presentationDateElement, presentationDateElement) ||
                other.presentationDateElement == presentationDateElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      documentType,
      documentTypeElement,
      reference,
      referenceElement,
      publicationDate,
      publicationDateElement,
      presentationDate,
      presentationDateElement);

  /// Create a copy of ImmunizationEducation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImmunizationEducationImplCopyWith<_$ImmunizationEducationImpl>
      get copyWith => __$$ImmunizationEducationImplCopyWithImpl<
          _$ImmunizationEducationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImmunizationEducationImplToJson(
      this,
    );
  }
}

abstract class _ImmunizationEducation extends ImmunizationEducation {
  factory _ImmunizationEducation(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final String? documentType,
          @JsonKey(name: '_documentType')
          final PrimitiveElement? documentTypeElement,
          final FhirUri? reference,
          @JsonKey(name: '_reference') final PrimitiveElement? referenceElement,
          final FhirDateTime? publicationDate,
          @JsonKey(name: '_publicationDate')
          final PrimitiveElement? publicationDateElement,
          final FhirDateTime? presentationDate,
          @JsonKey(name: '_presentationDate')
          final PrimitiveElement? presentationDateElement}) =
      _$ImmunizationEducationImpl;
  _ImmunizationEducation._() : super._();

  factory _ImmunizationEducation.fromJson(Map<String, dynamic> json) =
      _$ImmunizationEducationImpl.fromJson;

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

  /// [documentType] Identifier of the material presented to the patient.
  @override
  String? get documentType;

  /// [documentTypeElement] Extensions for documentType
  @override
  @JsonKey(name: '_documentType')
  PrimitiveElement? get documentTypeElement;

  /// [reference] Reference pointer to the educational material given to the
  ///  patient if the information was on line.
  @override
  FhirUri? get reference;

  /// [referenceElement] Extensions for reference
  @override
  @JsonKey(name: '_reference')
  PrimitiveElement? get referenceElement;

  /// [publicationDate] Date the educational material was published.
  @override
  FhirDateTime? get publicationDate;

  /// [publicationDateElement] Extensions for publicationDate
  @override
  @JsonKey(name: '_publicationDate')
  PrimitiveElement? get publicationDateElement;

  /// [presentationDate] Date the educational material was given to the
  ///  patient.
  @override
  FhirDateTime? get presentationDate;

  /// [presentationDateElement] Extensions for presentationDate
  @override
  @JsonKey(name: '_presentationDate')
  PrimitiveElement? get presentationDateElement;

  /// Create a copy of ImmunizationEducation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImmunizationEducationImplCopyWith<_$ImmunizationEducationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImmunizationReaction _$ImmunizationReactionFromJson(Map<String, dynamic> json) {
  return _ImmunizationReaction.fromJson(json);
}

/// @nodoc
mixin _$ImmunizationReaction {
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

  /// [date] Date of reaction to the immunization.
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [detail] Details of the reaction.
  Reference? get detail => throw _privateConstructorUsedError;

  /// [reported] Self-reported indicator.
  FhirBoolean? get reported => throw _privateConstructorUsedError;

  /// [reportedElement] Extensions for reported
  @JsonKey(name: '_reported')
  PrimitiveElement? get reportedElement => throw _privateConstructorUsedError;

  /// Serializes this ImmunizationReaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImmunizationReaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImmunizationReactionCopyWith<ImmunizationReaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImmunizationReactionCopyWith<$Res> {
  factory $ImmunizationReactionCopyWith(ImmunizationReaction value,
          $Res Function(ImmunizationReaction) then) =
      _$ImmunizationReactionCopyWithImpl<$Res, ImmunizationReaction>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      Reference? detail,
      FhirBoolean? reported,
      @JsonKey(name: '_reported') PrimitiveElement? reportedElement});
}

/// @nodoc
class _$ImmunizationReactionCopyWithImpl<$Res,
        $Val extends ImmunizationReaction>
    implements $ImmunizationReactionCopyWith<$Res> {
  _$ImmunizationReactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImmunizationReaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? detail = freezed,
    Object? reported = freezed,
    Object? reportedElement = freezed,
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
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Reference?,
      reported: freezed == reported
          ? _value.reported
          : reported // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      reportedElement: freezed == reportedElement
          ? _value.reportedElement
          : reportedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImmunizationReactionImplCopyWith<$Res>
    implements $ImmunizationReactionCopyWith<$Res> {
  factory _$$ImmunizationReactionImplCopyWith(_$ImmunizationReactionImpl value,
          $Res Function(_$ImmunizationReactionImpl) then) =
      __$$ImmunizationReactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      Reference? detail,
      FhirBoolean? reported,
      @JsonKey(name: '_reported') PrimitiveElement? reportedElement});
}

/// @nodoc
class __$$ImmunizationReactionImplCopyWithImpl<$Res>
    extends _$ImmunizationReactionCopyWithImpl<$Res, _$ImmunizationReactionImpl>
    implements _$$ImmunizationReactionImplCopyWith<$Res> {
  __$$ImmunizationReactionImplCopyWithImpl(_$ImmunizationReactionImpl _value,
      $Res Function(_$ImmunizationReactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImmunizationReaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? detail = freezed,
    Object? reported = freezed,
    Object? reportedElement = freezed,
  }) {
    return _then(_$ImmunizationReactionImpl(
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
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Reference?,
      reported: freezed == reported
          ? _value.reported
          : reported // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      reportedElement: freezed == reportedElement
          ? _value.reportedElement
          : reportedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImmunizationReactionImpl extends _ImmunizationReaction {
  _$ImmunizationReactionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.date,
      @JsonKey(name: '_date') this.dateElement,
      this.detail,
      this.reported,
      @JsonKey(name: '_reported') this.reportedElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ImmunizationReactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImmunizationReactionImplFromJson(json);

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

  /// [date] Date of reaction to the immunization.
  @override
  final FhirDateTime? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [detail] Details of the reaction.
  @override
  final Reference? detail;

  /// [reported] Self-reported indicator.
  @override
  final FhirBoolean? reported;

  /// [reportedElement] Extensions for reported
  @override
  @JsonKey(name: '_reported')
  final PrimitiveElement? reportedElement;

  @override
  String toString() {
    return 'ImmunizationReaction(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, date: $date, dateElement: $dateElement, detail: $detail, reported: $reported, reportedElement: $reportedElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImmunizationReactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateElement, dateElement) ||
                other.dateElement == dateElement) &&
            const DeepCollectionEquality().equals(other.detail, detail) &&
            (identical(other.reported, reported) ||
                other.reported == reported) &&
            (identical(other.reportedElement, reportedElement) ||
                other.reportedElement == reportedElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      date,
      dateElement,
      const DeepCollectionEquality().hash(detail),
      reported,
      reportedElement);

  /// Create a copy of ImmunizationReaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImmunizationReactionImplCopyWith<_$ImmunizationReactionImpl>
      get copyWith =>
          __$$ImmunizationReactionImplCopyWithImpl<_$ImmunizationReactionImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImmunizationReactionImplToJson(
      this,
    );
  }
}

abstract class _ImmunizationReaction extends ImmunizationReaction {
  factory _ImmunizationReaction(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirDateTime? date,
      @JsonKey(name: '_date') final PrimitiveElement? dateElement,
      final Reference? detail,
      final FhirBoolean? reported,
      @JsonKey(name: '_reported')
      final PrimitiveElement? reportedElement}) = _$ImmunizationReactionImpl;
  _ImmunizationReaction._() : super._();

  factory _ImmunizationReaction.fromJson(Map<String, dynamic> json) =
      _$ImmunizationReactionImpl.fromJson;

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

  /// [date] Date of reaction to the immunization.
  @override
  FhirDateTime? get date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;

  /// [detail] Details of the reaction.
  @override
  Reference? get detail;

  /// [reported] Self-reported indicator.
  @override
  FhirBoolean? get reported;

  /// [reportedElement] Extensions for reported
  @override
  @JsonKey(name: '_reported')
  PrimitiveElement? get reportedElement;

  /// Create a copy of ImmunizationReaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImmunizationReactionImplCopyWith<_$ImmunizationReactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImmunizationProtocolApplied _$ImmunizationProtocolAppliedFromJson(
    Map<String, dynamic> json) {
  return _ImmunizationProtocolApplied.fromJson(json);
}

/// @nodoc
mixin _$ImmunizationProtocolApplied {
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

  /// [series] One possible path to achieve presumed immunity against a disease
  ///  - within the context of an authority.
  String? get series => throw _privateConstructorUsedError;

  /// [seriesElement] Extensions for series
  @JsonKey(name: '_series')
  PrimitiveElement? get seriesElement => throw _privateConstructorUsedError;

  /// [authority] Indicates the authority who published the protocol (e.g.
  ///  ACIP) that is being followed.
  Reference? get authority => throw _privateConstructorUsedError;

  /// [targetDisease] The vaccine preventable disease the dose is being
  ///  administered against.
  List<CodeableConcept>? get targetDisease =>
      throw _privateConstructorUsedError;

  /// [doseNumberPositiveInt] Nominal position in a series.
  FhirPositiveInt? get doseNumberPositiveInt =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_doseNumberPositiveInt')
  PrimitiveElement? get doseNumberPositiveIntElement =>
      throw _privateConstructorUsedError;

  /// [doseNumberString] Nominal position in a series.
  String? get doseNumberString => throw _privateConstructorUsedError;

  /// [doseNumberStringElement] Extensions for doseNumberString
  @JsonKey(name: '_doseNumberString')
  PrimitiveElement? get doseNumberStringElement =>
      throw _privateConstructorUsedError;

  /// [seriesDosesPositiveInt] The recommended number of doses to achieve
  ///  immunity.
  FhirPositiveInt? get seriesDosesPositiveInt =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_seriesDosesPositiveInt')
  PrimitiveElement? get seriesDosesPositiveIntElement =>
      throw _privateConstructorUsedError;

  /// [seriesDosesString] The recommended number of doses to achieve immunity.
  String? get seriesDosesString => throw _privateConstructorUsedError;

  /// [seriesDosesStringElement] Extensions for seriesDosesString
  @JsonKey(name: '_seriesDosesString')
  PrimitiveElement? get seriesDosesStringElement =>
      throw _privateConstructorUsedError;

  /// Serializes this ImmunizationProtocolApplied to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImmunizationProtocolApplied
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImmunizationProtocolAppliedCopyWith<ImmunizationProtocolApplied>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImmunizationProtocolAppliedCopyWith<$Res> {
  factory $ImmunizationProtocolAppliedCopyWith(
          ImmunizationProtocolApplied value,
          $Res Function(ImmunizationProtocolApplied) then) =
      _$ImmunizationProtocolAppliedCopyWithImpl<$Res,
          ImmunizationProtocolApplied>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? series,
      @JsonKey(name: '_series') PrimitiveElement? seriesElement,
      Reference? authority,
      List<CodeableConcept>? targetDisease,
      FhirPositiveInt? doseNumberPositiveInt,
      @JsonKey(name: '_doseNumberPositiveInt')
      PrimitiveElement? doseNumberPositiveIntElement,
      String? doseNumberString,
      @JsonKey(name: '_doseNumberString')
      PrimitiveElement? doseNumberStringElement,
      FhirPositiveInt? seriesDosesPositiveInt,
      @JsonKey(name: '_seriesDosesPositiveInt')
      PrimitiveElement? seriesDosesPositiveIntElement,
      String? seriesDosesString,
      @JsonKey(name: '_seriesDosesString')
      PrimitiveElement? seriesDosesStringElement});
}

/// @nodoc
class _$ImmunizationProtocolAppliedCopyWithImpl<$Res,
        $Val extends ImmunizationProtocolApplied>
    implements $ImmunizationProtocolAppliedCopyWith<$Res> {
  _$ImmunizationProtocolAppliedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImmunizationProtocolApplied
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? series = freezed,
    Object? seriesElement = freezed,
    Object? authority = freezed,
    Object? targetDisease = freezed,
    Object? doseNumberPositiveInt = freezed,
    Object? doseNumberPositiveIntElement = freezed,
    Object? doseNumberString = freezed,
    Object? doseNumberStringElement = freezed,
    Object? seriesDosesPositiveInt = freezed,
    Object? seriesDosesPositiveIntElement = freezed,
    Object? seriesDosesString = freezed,
    Object? seriesDosesStringElement = freezed,
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
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesElement: freezed == seriesElement
          ? _value.seriesElement
          : seriesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      authority: freezed == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as Reference?,
      targetDisease: freezed == targetDisease
          ? _value.targetDisease
          : targetDisease // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      doseNumberPositiveInt: freezed == doseNumberPositiveInt
          ? _value.doseNumberPositiveInt
          : doseNumberPositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      doseNumberPositiveIntElement: freezed == doseNumberPositiveIntElement
          ? _value.doseNumberPositiveIntElement
          : doseNumberPositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      doseNumberString: freezed == doseNumberString
          ? _value.doseNumberString
          : doseNumberString // ignore: cast_nullable_to_non_nullable
              as String?,
      doseNumberStringElement: freezed == doseNumberStringElement
          ? _value.doseNumberStringElement
          : doseNumberStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      seriesDosesPositiveInt: freezed == seriesDosesPositiveInt
          ? _value.seriesDosesPositiveInt
          : seriesDosesPositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      seriesDosesPositiveIntElement: freezed == seriesDosesPositiveIntElement
          ? _value.seriesDosesPositiveIntElement
          : seriesDosesPositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      seriesDosesString: freezed == seriesDosesString
          ? _value.seriesDosesString
          : seriesDosesString // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesDosesStringElement: freezed == seriesDosesStringElement
          ? _value.seriesDosesStringElement
          : seriesDosesStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImmunizationProtocolAppliedImplCopyWith<$Res>
    implements $ImmunizationProtocolAppliedCopyWith<$Res> {
  factory _$$ImmunizationProtocolAppliedImplCopyWith(
          _$ImmunizationProtocolAppliedImpl value,
          $Res Function(_$ImmunizationProtocolAppliedImpl) then) =
      __$$ImmunizationProtocolAppliedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? series,
      @JsonKey(name: '_series') PrimitiveElement? seriesElement,
      Reference? authority,
      List<CodeableConcept>? targetDisease,
      FhirPositiveInt? doseNumberPositiveInt,
      @JsonKey(name: '_doseNumberPositiveInt')
      PrimitiveElement? doseNumberPositiveIntElement,
      String? doseNumberString,
      @JsonKey(name: '_doseNumberString')
      PrimitiveElement? doseNumberStringElement,
      FhirPositiveInt? seriesDosesPositiveInt,
      @JsonKey(name: '_seriesDosesPositiveInt')
      PrimitiveElement? seriesDosesPositiveIntElement,
      String? seriesDosesString,
      @JsonKey(name: '_seriesDosesString')
      PrimitiveElement? seriesDosesStringElement});
}

/// @nodoc
class __$$ImmunizationProtocolAppliedImplCopyWithImpl<$Res>
    extends _$ImmunizationProtocolAppliedCopyWithImpl<$Res,
        _$ImmunizationProtocolAppliedImpl>
    implements _$$ImmunizationProtocolAppliedImplCopyWith<$Res> {
  __$$ImmunizationProtocolAppliedImplCopyWithImpl(
      _$ImmunizationProtocolAppliedImpl _value,
      $Res Function(_$ImmunizationProtocolAppliedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImmunizationProtocolApplied
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? series = freezed,
    Object? seriesElement = freezed,
    Object? authority = freezed,
    Object? targetDisease = freezed,
    Object? doseNumberPositiveInt = freezed,
    Object? doseNumberPositiveIntElement = freezed,
    Object? doseNumberString = freezed,
    Object? doseNumberStringElement = freezed,
    Object? seriesDosesPositiveInt = freezed,
    Object? seriesDosesPositiveIntElement = freezed,
    Object? seriesDosesString = freezed,
    Object? seriesDosesStringElement = freezed,
  }) {
    return _then(_$ImmunizationProtocolAppliedImpl(
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
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesElement: freezed == seriesElement
          ? _value.seriesElement
          : seriesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      authority: freezed == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as Reference?,
      targetDisease: freezed == targetDisease
          ? _value._targetDisease
          : targetDisease // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      doseNumberPositiveInt: freezed == doseNumberPositiveInt
          ? _value.doseNumberPositiveInt
          : doseNumberPositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      doseNumberPositiveIntElement: freezed == doseNumberPositiveIntElement
          ? _value.doseNumberPositiveIntElement
          : doseNumberPositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      doseNumberString: freezed == doseNumberString
          ? _value.doseNumberString
          : doseNumberString // ignore: cast_nullable_to_non_nullable
              as String?,
      doseNumberStringElement: freezed == doseNumberStringElement
          ? _value.doseNumberStringElement
          : doseNumberStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      seriesDosesPositiveInt: freezed == seriesDosesPositiveInt
          ? _value.seriesDosesPositiveInt
          : seriesDosesPositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      seriesDosesPositiveIntElement: freezed == seriesDosesPositiveIntElement
          ? _value.seriesDosesPositiveIntElement
          : seriesDosesPositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      seriesDosesString: freezed == seriesDosesString
          ? _value.seriesDosesString
          : seriesDosesString // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesDosesStringElement: freezed == seriesDosesStringElement
          ? _value.seriesDosesStringElement
          : seriesDosesStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImmunizationProtocolAppliedImpl extends _ImmunizationProtocolApplied {
  _$ImmunizationProtocolAppliedImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.series,
      @JsonKey(name: '_series') this.seriesElement,
      this.authority,
      final List<CodeableConcept>? targetDisease,
      this.doseNumberPositiveInt,
      @JsonKey(name: '_doseNumberPositiveInt')
      this.doseNumberPositiveIntElement,
      this.doseNumberString,
      @JsonKey(name: '_doseNumberString') this.doseNumberStringElement,
      this.seriesDosesPositiveInt,
      @JsonKey(name: '_seriesDosesPositiveInt')
      this.seriesDosesPositiveIntElement,
      this.seriesDosesString,
      @JsonKey(name: '_seriesDosesString') this.seriesDosesStringElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _targetDisease = targetDisease,
        super._();

  factory _$ImmunizationProtocolAppliedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ImmunizationProtocolAppliedImplFromJson(json);

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

  /// [series] One possible path to achieve presumed immunity against a disease
  ///  - within the context of an authority.
  @override
  final String? series;

  /// [seriesElement] Extensions for series
  @override
  @JsonKey(name: '_series')
  final PrimitiveElement? seriesElement;

  /// [authority] Indicates the authority who published the protocol (e.g.
  ///  ACIP) that is being followed.
  @override
  final Reference? authority;

  /// [targetDisease] The vaccine preventable disease the dose is being
  ///  administered against.
  final List<CodeableConcept>? _targetDisease;

  /// [targetDisease] The vaccine preventable disease the dose is being
  ///  administered against.
  @override
  List<CodeableConcept>? get targetDisease {
    final value = _targetDisease;
    if (value == null) return null;
    if (_targetDisease is EqualUnmodifiableListView) return _targetDisease;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [doseNumberPositiveInt] Nominal position in a series.
  @override
  final FhirPositiveInt? doseNumberPositiveInt;
  @override
  @JsonKey(name: '_doseNumberPositiveInt')
  final PrimitiveElement? doseNumberPositiveIntElement;

  /// [doseNumberString] Nominal position in a series.
  @override
  final String? doseNumberString;

  /// [doseNumberStringElement] Extensions for doseNumberString
  @override
  @JsonKey(name: '_doseNumberString')
  final PrimitiveElement? doseNumberStringElement;

  /// [seriesDosesPositiveInt] The recommended number of doses to achieve
  ///  immunity.
  @override
  final FhirPositiveInt? seriesDosesPositiveInt;
  @override
  @JsonKey(name: '_seriesDosesPositiveInt')
  final PrimitiveElement? seriesDosesPositiveIntElement;

  /// [seriesDosesString] The recommended number of doses to achieve immunity.
  @override
  final String? seriesDosesString;

  /// [seriesDosesStringElement] Extensions for seriesDosesString
  @override
  @JsonKey(name: '_seriesDosesString')
  final PrimitiveElement? seriesDosesStringElement;

  @override
  String toString() {
    return 'ImmunizationProtocolApplied(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, series: $series, seriesElement: $seriesElement, authority: $authority, targetDisease: $targetDisease, doseNumberPositiveInt: $doseNumberPositiveInt, doseNumberPositiveIntElement: $doseNumberPositiveIntElement, doseNumberString: $doseNumberString, doseNumberStringElement: $doseNumberStringElement, seriesDosesPositiveInt: $seriesDosesPositiveInt, seriesDosesPositiveIntElement: $seriesDosesPositiveIntElement, seriesDosesString: $seriesDosesString, seriesDosesStringElement: $seriesDosesStringElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImmunizationProtocolAppliedImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.seriesElement, seriesElement) ||
                other.seriesElement == seriesElement) &&
            const DeepCollectionEquality().equals(other.authority, authority) &&
            const DeepCollectionEquality()
                .equals(other._targetDisease, _targetDisease) &&
            (identical(other.doseNumberPositiveInt, doseNumberPositiveInt) ||
                other.doseNumberPositiveInt == doseNumberPositiveInt) &&
            (identical(other.doseNumberPositiveIntElement,
                    doseNumberPositiveIntElement) ||
                other.doseNumberPositiveIntElement ==
                    doseNumberPositiveIntElement) &&
            (identical(other.doseNumberString, doseNumberString) ||
                other.doseNumberString == doseNumberString) &&
            (identical(
                    other.doseNumberStringElement, doseNumberStringElement) ||
                other.doseNumberStringElement == doseNumberStringElement) &&
            (identical(other.seriesDosesPositiveInt, seriesDosesPositiveInt) ||
                other.seriesDosesPositiveInt == seriesDosesPositiveInt) &&
            (identical(other.seriesDosesPositiveIntElement,
                    seriesDosesPositiveIntElement) ||
                other.seriesDosesPositiveIntElement ==
                    seriesDosesPositiveIntElement) &&
            (identical(other.seriesDosesString, seriesDosesString) ||
                other.seriesDosesString == seriesDosesString) &&
            (identical(
                    other.seriesDosesStringElement, seriesDosesStringElement) ||
                other.seriesDosesStringElement == seriesDosesStringElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      series,
      seriesElement,
      const DeepCollectionEquality().hash(authority),
      const DeepCollectionEquality().hash(_targetDisease),
      doseNumberPositiveInt,
      doseNumberPositiveIntElement,
      doseNumberString,
      doseNumberStringElement,
      seriesDosesPositiveInt,
      seriesDosesPositiveIntElement,
      seriesDosesString,
      seriesDosesStringElement);

  /// Create a copy of ImmunizationProtocolApplied
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImmunizationProtocolAppliedImplCopyWith<_$ImmunizationProtocolAppliedImpl>
      get copyWith => __$$ImmunizationProtocolAppliedImplCopyWithImpl<
          _$ImmunizationProtocolAppliedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImmunizationProtocolAppliedImplToJson(
      this,
    );
  }
}

abstract class _ImmunizationProtocolApplied
    extends ImmunizationProtocolApplied {
  factory _ImmunizationProtocolApplied(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final String? series,
          @JsonKey(name: '_series') final PrimitiveElement? seriesElement,
          final Reference? authority,
          final List<CodeableConcept>? targetDisease,
          final FhirPositiveInt? doseNumberPositiveInt,
          @JsonKey(name: '_doseNumberPositiveInt')
          final PrimitiveElement? doseNumberPositiveIntElement,
          final String? doseNumberString,
          @JsonKey(name: '_doseNumberString')
          final PrimitiveElement? doseNumberStringElement,
          final FhirPositiveInt? seriesDosesPositiveInt,
          @JsonKey(name: '_seriesDosesPositiveInt')
          final PrimitiveElement? seriesDosesPositiveIntElement,
          final String? seriesDosesString,
          @JsonKey(name: '_seriesDosesString')
          final PrimitiveElement? seriesDosesStringElement}) =
      _$ImmunizationProtocolAppliedImpl;
  _ImmunizationProtocolApplied._() : super._();

  factory _ImmunizationProtocolApplied.fromJson(Map<String, dynamic> json) =
      _$ImmunizationProtocolAppliedImpl.fromJson;

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

  /// [series] One possible path to achieve presumed immunity against a disease
  ///  - within the context of an authority.
  @override
  String? get series;

  /// [seriesElement] Extensions for series
  @override
  @JsonKey(name: '_series')
  PrimitiveElement? get seriesElement;

  /// [authority] Indicates the authority who published the protocol (e.g.
  ///  ACIP) that is being followed.
  @override
  Reference? get authority;

  /// [targetDisease] The vaccine preventable disease the dose is being
  ///  administered against.
  @override
  List<CodeableConcept>? get targetDisease;

  /// [doseNumberPositiveInt] Nominal position in a series.
  @override
  FhirPositiveInt? get doseNumberPositiveInt;
  @override
  @JsonKey(name: '_doseNumberPositiveInt')
  PrimitiveElement? get doseNumberPositiveIntElement;

  /// [doseNumberString] Nominal position in a series.
  @override
  String? get doseNumberString;

  /// [doseNumberStringElement] Extensions for doseNumberString
  @override
  @JsonKey(name: '_doseNumberString')
  PrimitiveElement? get doseNumberStringElement;

  /// [seriesDosesPositiveInt] The recommended number of doses to achieve
  ///  immunity.
  @override
  FhirPositiveInt? get seriesDosesPositiveInt;
  @override
  @JsonKey(name: '_seriesDosesPositiveInt')
  PrimitiveElement? get seriesDosesPositiveIntElement;

  /// [seriesDosesString] The recommended number of doses to achieve immunity.
  @override
  String? get seriesDosesString;

  /// [seriesDosesStringElement] Extensions for seriesDosesString
  @override
  @JsonKey(name: '_seriesDosesString')
  PrimitiveElement? get seriesDosesStringElement;

  /// Create a copy of ImmunizationProtocolApplied
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImmunizationProtocolAppliedImplCopyWith<_$ImmunizationProtocolAppliedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
