// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vision_prescription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VisionPrescription _$VisionPrescriptionFromJson(Map<String, dynamic> json) {
  return _VisionPrescription.fromJson(json);
}

/// @nodoc
mixin _$VisionPrescription {
  @JsonKey(unknownEnumValue: R4ResourceType.VisionPrescription)
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

  /// [identifier] A unique identifier assigned to this vision prescription.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [status] The status of the resource instance.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [created] The date this resource was created.
  FhirDateTime? get created => throw _privateConstructorUsedError;

  /// [createdElement] Extensions for created
  @JsonKey(name: '_created')
  PrimitiveElement? get createdElement => throw _privateConstructorUsedError;

  /// [patient] A resource reference to the person to whom the vision
  ///  prescription applies.
  Reference get patient => throw _privateConstructorUsedError;

  /// [encounter] A reference to a resource that identifies the particular
  /// occurrence of contact between patient and health care provider during
  ///  which the prescription was issued.
  Reference? get encounter => throw _privateConstructorUsedError;

  /// [dateWritten] The date (and perhaps time) when the prescription was
  ///  written.
  FhirDateTime? get dateWritten => throw _privateConstructorUsedError;

  /// [dateWrittenElement] Extensions for dateWritten
  @JsonKey(name: '_dateWritten')
  PrimitiveElement? get dateWrittenElement =>
      throw _privateConstructorUsedError;

  /// [prescriber] The healthcare professional responsible for authorizing the
  ///  prescription.
  Reference get prescriber => throw _privateConstructorUsedError;

  /// [lensSpecification] Contain the details of  the individual lens
  /// specifications and serves as the authorization for the fullfillment by
  ///  certified professionals.
  List<VisionPrescriptionLensSpecification> get lensSpecification =>
      throw _privateConstructorUsedError;

  /// Serializes this VisionPrescription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VisionPrescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisionPrescriptionCopyWith<VisionPrescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisionPrescriptionCopyWith<$Res> {
  factory $VisionPrescriptionCopyWith(
          VisionPrescription value, $Res Function(VisionPrescription) then) =
      _$VisionPrescriptionCopyWithImpl<$Res, VisionPrescription>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.VisionPrescription)
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
      FhirDateTime? created,
      @JsonKey(name: '_created') PrimitiveElement? createdElement,
      Reference patient,
      Reference? encounter,
      FhirDateTime? dateWritten,
      @JsonKey(name: '_dateWritten') PrimitiveElement? dateWrittenElement,
      Reference prescriber,
      List<VisionPrescriptionLensSpecification> lensSpecification});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res> get patient;
  $ReferenceCopyWith<$Res>? get encounter;
  $ReferenceCopyWith<$Res> get prescriber;
}

/// @nodoc
class _$VisionPrescriptionCopyWithImpl<$Res, $Val extends VisionPrescription>
    implements $VisionPrescriptionCopyWith<$Res> {
  _$VisionPrescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisionPrescription
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
    Object? created = freezed,
    Object? createdElement = freezed,
    Object? patient = null,
    Object? encounter = freezed,
    Object? dateWritten = freezed,
    Object? dateWrittenElement = freezed,
    Object? prescriber = null,
    Object? lensSpecification = null,
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
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdElement: freezed == createdElement
          ? _value.createdElement
          : createdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      dateWritten: freezed == dateWritten
          ? _value.dateWritten
          : dateWritten // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateWrittenElement: freezed == dateWrittenElement
          ? _value.dateWrittenElement
          : dateWrittenElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      prescriber: null == prescriber
          ? _value.prescriber
          : prescriber // ignore: cast_nullable_to_non_nullable
              as Reference,
      lensSpecification: null == lensSpecification
          ? _value.lensSpecification
          : lensSpecification // ignore: cast_nullable_to_non_nullable
              as List<VisionPrescriptionLensSpecification>,
    ) as $Val);
  }

  /// Create a copy of VisionPrescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  /// Create a copy of VisionPrescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  /// Create a copy of VisionPrescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get patient {
    return $ReferenceCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }

  /// Create a copy of VisionPrescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get encounter {
    if (_value.encounter == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.encounter!, (value) {
      return _then(_value.copyWith(encounter: value) as $Val);
    });
  }

  /// Create a copy of VisionPrescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get prescriber {
    return $ReferenceCopyWith<$Res>(_value.prescriber, (value) {
      return _then(_value.copyWith(prescriber: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VisionPrescriptionImplCopyWith<$Res>
    implements $VisionPrescriptionCopyWith<$Res> {
  factory _$$VisionPrescriptionImplCopyWith(_$VisionPrescriptionImpl value,
          $Res Function(_$VisionPrescriptionImpl) then) =
      __$$VisionPrescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.VisionPrescription)
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
      FhirDateTime? created,
      @JsonKey(name: '_created') PrimitiveElement? createdElement,
      Reference patient,
      Reference? encounter,
      FhirDateTime? dateWritten,
      @JsonKey(name: '_dateWritten') PrimitiveElement? dateWrittenElement,
      Reference prescriber,
      List<VisionPrescriptionLensSpecification> lensSpecification});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res> get patient;
  @override
  $ReferenceCopyWith<$Res>? get encounter;
  @override
  $ReferenceCopyWith<$Res> get prescriber;
}

/// @nodoc
class __$$VisionPrescriptionImplCopyWithImpl<$Res>
    extends _$VisionPrescriptionCopyWithImpl<$Res, _$VisionPrescriptionImpl>
    implements _$$VisionPrescriptionImplCopyWith<$Res> {
  __$$VisionPrescriptionImplCopyWithImpl(_$VisionPrescriptionImpl _value,
      $Res Function(_$VisionPrescriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisionPrescription
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
    Object? created = freezed,
    Object? createdElement = freezed,
    Object? patient = null,
    Object? encounter = freezed,
    Object? dateWritten = freezed,
    Object? dateWrittenElement = freezed,
    Object? prescriber = null,
    Object? lensSpecification = null,
  }) {
    return _then(_$VisionPrescriptionImpl(
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
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdElement: freezed == createdElement
          ? _value.createdElement
          : createdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      dateWritten: freezed == dateWritten
          ? _value.dateWritten
          : dateWritten // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateWrittenElement: freezed == dateWrittenElement
          ? _value.dateWrittenElement
          : dateWrittenElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      prescriber: null == prescriber
          ? _value.prescriber
          : prescriber // ignore: cast_nullable_to_non_nullable
              as Reference,
      lensSpecification: null == lensSpecification
          ? _value._lensSpecification
          : lensSpecification // ignore: cast_nullable_to_non_nullable
              as List<VisionPrescriptionLensSpecification>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisionPrescriptionImpl extends _VisionPrescription {
  const _$VisionPrescriptionImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.VisionPrescription)
      this.resourceType = R4ResourceType.VisionPrescription,
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
      this.created,
      @JsonKey(name: '_created') this.createdElement,
      required this.patient,
      this.encounter,
      this.dateWritten,
      @JsonKey(name: '_dateWritten') this.dateWrittenElement,
      required this.prescriber,
      required final List<VisionPrescriptionLensSpecification>
          lensSpecification})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _lensSpecification = lensSpecification,
        super._();

  factory _$VisionPrescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisionPrescriptionImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.VisionPrescription)
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

  /// [identifier] A unique identifier assigned to this vision prescription.
  final List<Identifier>? _identifier;

  /// [identifier] A unique identifier assigned to this vision prescription.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The status of the resource instance.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [created] The date this resource was created.
  @override
  final FhirDateTime? created;

  /// [createdElement] Extensions for created
  @override
  @JsonKey(name: '_created')
  final PrimitiveElement? createdElement;

  /// [patient] A resource reference to the person to whom the vision
  ///  prescription applies.
  @override
  final Reference patient;

  /// [encounter] A reference to a resource that identifies the particular
  /// occurrence of contact between patient and health care provider during
  ///  which the prescription was issued.
  @override
  final Reference? encounter;

  /// [dateWritten] The date (and perhaps time) when the prescription was
  ///  written.
  @override
  final FhirDateTime? dateWritten;

  /// [dateWrittenElement] Extensions for dateWritten
  @override
  @JsonKey(name: '_dateWritten')
  final PrimitiveElement? dateWrittenElement;

  /// [prescriber] The healthcare professional responsible for authorizing the
  ///  prescription.
  @override
  final Reference prescriber;

  /// [lensSpecification] Contain the details of  the individual lens
  /// specifications and serves as the authorization for the fullfillment by
  ///  certified professionals.
  final List<VisionPrescriptionLensSpecification> _lensSpecification;

  /// [lensSpecification] Contain the details of  the individual lens
  /// specifications and serves as the authorization for the fullfillment by
  ///  certified professionals.
  @override
  List<VisionPrescriptionLensSpecification> get lensSpecification {
    if (_lensSpecification is EqualUnmodifiableListView)
      return _lensSpecification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lensSpecification);
  }

  @override
  String toString() {
    return 'VisionPrescription(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, status: $status, statusElement: $statusElement, created: $created, createdElement: $createdElement, patient: $patient, encounter: $encounter, dateWritten: $dateWritten, dateWrittenElement: $dateWrittenElement, prescriber: $prescriber, lensSpecification: $lensSpecification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisionPrescriptionImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
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
            (identical(other.created, created) || other.created == created) &&
            (identical(other.createdElement, createdElement) ||
                other.createdElement == createdElement) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.encounter, encounter) ||
                other.encounter == encounter) &&
            (identical(other.dateWritten, dateWritten) ||
                other.dateWritten == dateWritten) &&
            (identical(other.dateWrittenElement, dateWrittenElement) ||
                other.dateWrittenElement == dateWrittenElement) &&
            (identical(other.prescriber, prescriber) ||
                other.prescriber == prescriber) &&
            const DeepCollectionEquality()
                .equals(other._lensSpecification, _lensSpecification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        status,
        statusElement,
        created,
        createdElement,
        patient,
        encounter,
        dateWritten,
        dateWrittenElement,
        prescriber,
        const DeepCollectionEquality().hash(_lensSpecification)
      ]);

  /// Create a copy of VisionPrescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisionPrescriptionImplCopyWith<_$VisionPrescriptionImpl> get copyWith =>
      __$$VisionPrescriptionImplCopyWithImpl<_$VisionPrescriptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisionPrescriptionImplToJson(
      this,
    );
  }
}

abstract class _VisionPrescription extends VisionPrescription {
  const factory _VisionPrescription(
      {@JsonKey(unknownEnumValue: R4ResourceType.VisionPrescription)
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
      final FhirDateTime? created,
      @JsonKey(name: '_created') final PrimitiveElement? createdElement,
      required final Reference patient,
      final Reference? encounter,
      final FhirDateTime? dateWritten,
      @JsonKey(name: '_dateWritten') final PrimitiveElement? dateWrittenElement,
      required final Reference prescriber,
      required final List<VisionPrescriptionLensSpecification>
          lensSpecification}) = _$VisionPrescriptionImpl;
  const _VisionPrescription._() : super._();

  factory _VisionPrescription.fromJson(Map<String, dynamic> json) =
      _$VisionPrescriptionImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.VisionPrescription)
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

  /// [identifier] A unique identifier assigned to this vision prescription.
  @override
  List<Identifier>? get identifier;

  /// [status] The status of the resource instance.
  @override
  FhirCode? get status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;

  /// [created] The date this resource was created.
  @override
  FhirDateTime? get created;

  /// [createdElement] Extensions for created
  @override
  @JsonKey(name: '_created')
  PrimitiveElement? get createdElement;

  /// [patient] A resource reference to the person to whom the vision
  ///  prescription applies.
  @override
  Reference get patient;

  /// [encounter] A reference to a resource that identifies the particular
  /// occurrence of contact between patient and health care provider during
  ///  which the prescription was issued.
  @override
  Reference? get encounter;

  /// [dateWritten] The date (and perhaps time) when the prescription was
  ///  written.
  @override
  FhirDateTime? get dateWritten;

  /// [dateWrittenElement] Extensions for dateWritten
  @override
  @JsonKey(name: '_dateWritten')
  PrimitiveElement? get dateWrittenElement;

  /// [prescriber] The healthcare professional responsible for authorizing the
  ///  prescription.
  @override
  Reference get prescriber;

  /// [lensSpecification] Contain the details of  the individual lens
  /// specifications and serves as the authorization for the fullfillment by
  ///  certified professionals.
  @override
  List<VisionPrescriptionLensSpecification> get lensSpecification;

  /// Create a copy of VisionPrescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisionPrescriptionImplCopyWith<_$VisionPrescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VisionPrescriptionLensSpecification
    _$VisionPrescriptionLensSpecificationFromJson(Map<String, dynamic> json) {
  return _VisionPrescriptionLensSpecification.fromJson(json);
}

/// @nodoc
mixin _$VisionPrescriptionLensSpecification {
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

  /// [product] Identifies the type of vision correction product which is
  ///  required for the patient.
  CodeableConcept get product => throw _privateConstructorUsedError;

  /// [eye] The eye for which the lens specification applies.
  FhirCode? get eye => throw _privateConstructorUsedError;

  /// [eyeElement] Extensions for eye
  @JsonKey(name: '_eye')
  PrimitiveElement? get eyeElement => throw _privateConstructorUsedError;

  /// [sphere] Lens power measured in dioptres (0.25 units).
  FhirDecimal? get sphere => throw _privateConstructorUsedError;

  /// [sphereElement] Extensions for sphere
  @JsonKey(name: '_sphere')
  PrimitiveElement? get sphereElement => throw _privateConstructorUsedError;

  /// [cylinder] Power adjustment for astigmatism measured in dioptres (0.25
  ///  units).
  FhirDecimal? get cylinder => throw _privateConstructorUsedError;

  /// [cylinderElement] Extensions for cylinder
  @JsonKey(name: '_cylinder')
  PrimitiveElement? get cylinderElement => throw _privateConstructorUsedError;

  /// [axis] Adjustment for astigmatism measured in integer degrees.
  FhirInteger? get axis => throw _privateConstructorUsedError;

  /// [axisElement] Extensions for axis
  @JsonKey(name: '_axis')
  PrimitiveElement? get axisElement => throw _privateConstructorUsedError;

  /// [prism] Allows for adjustment on two axis.
  List<VisionPrescriptionPrism>? get prism =>
      throw _privateConstructorUsedError;

  /// [add] Power adjustment for multifocal lenses measured in dioptres (0.25
  ///  units).
  FhirDecimal? get add => throw _privateConstructorUsedError;

  /// [addElement] Extensions for add
  @JsonKey(name: '_add')
  PrimitiveElement? get addElement => throw _privateConstructorUsedError;

  /// [power] Contact lens power measured in dioptres (0.25 units).
  FhirDecimal? get power => throw _privateConstructorUsedError;

  /// [powerElement] Extensions for power
  @JsonKey(name: '_power')
  PrimitiveElement? get powerElement => throw _privateConstructorUsedError;

  /// [backCurve] Back curvature measured in millimetres.
  FhirDecimal? get backCurve => throw _privateConstructorUsedError;

  /// [backCurveElement] Extensions for backCurve
  @JsonKey(name: '_backCurve')
  PrimitiveElement? get backCurveElement => throw _privateConstructorUsedError;

  /// [diameter] Contact lens diameter measured in millimetres.
  FhirDecimal? get diameter => throw _privateConstructorUsedError;

  /// [diameterElement] Extensions for diameter
  @JsonKey(name: '_diameter')
  PrimitiveElement? get diameterElement => throw _privateConstructorUsedError;

  /// [duration] The recommended maximum wear period for the lens.
  Quantity? get duration => throw _privateConstructorUsedError;

  /// [color] Special color or pattern.
  String? get color => throw _privateConstructorUsedError;

  /// [colorElement] Extensions for color
  @JsonKey(name: '_color')
  PrimitiveElement? get colorElement => throw _privateConstructorUsedError;

  /// [brand] Brand recommendations or restrictions.
  String? get brand => throw _privateConstructorUsedError;

  /// [brandElement] Extensions for brand
  @JsonKey(name: '_brand')
  PrimitiveElement? get brandElement => throw _privateConstructorUsedError;

  /// [note] Notes for special requirements such as coatings and lens
  ///  materials.
  List<Annotation>? get note => throw _privateConstructorUsedError;

  /// Serializes this VisionPrescriptionLensSpecification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VisionPrescriptionLensSpecification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisionPrescriptionLensSpecificationCopyWith<
          VisionPrescriptionLensSpecification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisionPrescriptionLensSpecificationCopyWith<$Res> {
  factory $VisionPrescriptionLensSpecificationCopyWith(
          VisionPrescriptionLensSpecification value,
          $Res Function(VisionPrescriptionLensSpecification) then) =
      _$VisionPrescriptionLensSpecificationCopyWithImpl<$Res,
          VisionPrescriptionLensSpecification>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept product,
      FhirCode? eye,
      @JsonKey(name: '_eye') PrimitiveElement? eyeElement,
      FhirDecimal? sphere,
      @JsonKey(name: '_sphere') PrimitiveElement? sphereElement,
      FhirDecimal? cylinder,
      @JsonKey(name: '_cylinder') PrimitiveElement? cylinderElement,
      FhirInteger? axis,
      @JsonKey(name: '_axis') PrimitiveElement? axisElement,
      List<VisionPrescriptionPrism>? prism,
      FhirDecimal? add,
      @JsonKey(name: '_add') PrimitiveElement? addElement,
      FhirDecimal? power,
      @JsonKey(name: '_power') PrimitiveElement? powerElement,
      FhirDecimal? backCurve,
      @JsonKey(name: '_backCurve') PrimitiveElement? backCurveElement,
      FhirDecimal? diameter,
      @JsonKey(name: '_diameter') PrimitiveElement? diameterElement,
      Quantity? duration,
      String? color,
      @JsonKey(name: '_color') PrimitiveElement? colorElement,
      String? brand,
      @JsonKey(name: '_brand') PrimitiveElement? brandElement,
      List<Annotation>? note});

  $CodeableConceptCopyWith<$Res> get product;
  $QuantityCopyWith<$Res>? get duration;
}

/// @nodoc
class _$VisionPrescriptionLensSpecificationCopyWithImpl<$Res,
        $Val extends VisionPrescriptionLensSpecification>
    implements $VisionPrescriptionLensSpecificationCopyWith<$Res> {
  _$VisionPrescriptionLensSpecificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisionPrescriptionLensSpecification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? product = null,
    Object? eye = freezed,
    Object? eyeElement = freezed,
    Object? sphere = freezed,
    Object? sphereElement = freezed,
    Object? cylinder = freezed,
    Object? cylinderElement = freezed,
    Object? axis = freezed,
    Object? axisElement = freezed,
    Object? prism = freezed,
    Object? add = freezed,
    Object? addElement = freezed,
    Object? power = freezed,
    Object? powerElement = freezed,
    Object? backCurve = freezed,
    Object? backCurveElement = freezed,
    Object? diameter = freezed,
    Object? diameterElement = freezed,
    Object? duration = freezed,
    Object? color = freezed,
    Object? colorElement = freezed,
    Object? brand = freezed,
    Object? brandElement = freezed,
    Object? note = freezed,
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
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      eye: freezed == eye
          ? _value.eye
          : eye // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      eyeElement: freezed == eyeElement
          ? _value.eyeElement
          : eyeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sphere: freezed == sphere
          ? _value.sphere
          : sphere // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      sphereElement: freezed == sphereElement
          ? _value.sphereElement
          : sphereElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      cylinder: freezed == cylinder
          ? _value.cylinder
          : cylinder // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      cylinderElement: freezed == cylinderElement
          ? _value.cylinderElement
          : cylinderElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      axis: freezed == axis
          ? _value.axis
          : axis // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      axisElement: freezed == axisElement
          ? _value.axisElement
          : axisElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      prism: freezed == prism
          ? _value.prism
          : prism // ignore: cast_nullable_to_non_nullable
              as List<VisionPrescriptionPrism>?,
      add: freezed == add
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      addElement: freezed == addElement
          ? _value.addElement
          : addElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      powerElement: freezed == powerElement
          ? _value.powerElement
          : powerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      backCurve: freezed == backCurve
          ? _value.backCurve
          : backCurve // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      backCurveElement: freezed == backCurveElement
          ? _value.backCurveElement
          : backCurveElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      diameter: freezed == diameter
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      diameterElement: freezed == diameterElement
          ? _value.diameterElement
          : diameterElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      colorElement: freezed == colorElement
          ? _value.colorElement
          : colorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      brandElement: freezed == brandElement
          ? _value.brandElement
          : brandElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
    ) as $Val);
  }

  /// Create a copy of VisionPrescriptionLensSpecification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get product {
    return $CodeableConceptCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of VisionPrescriptionLensSpecification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get duration {
    if (_value.duration == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.duration!, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VisionPrescriptionLensSpecificationImplCopyWith<$Res>
    implements $VisionPrescriptionLensSpecificationCopyWith<$Res> {
  factory _$$VisionPrescriptionLensSpecificationImplCopyWith(
          _$VisionPrescriptionLensSpecificationImpl value,
          $Res Function(_$VisionPrescriptionLensSpecificationImpl) then) =
      __$$VisionPrescriptionLensSpecificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept product,
      FhirCode? eye,
      @JsonKey(name: '_eye') PrimitiveElement? eyeElement,
      FhirDecimal? sphere,
      @JsonKey(name: '_sphere') PrimitiveElement? sphereElement,
      FhirDecimal? cylinder,
      @JsonKey(name: '_cylinder') PrimitiveElement? cylinderElement,
      FhirInteger? axis,
      @JsonKey(name: '_axis') PrimitiveElement? axisElement,
      List<VisionPrescriptionPrism>? prism,
      FhirDecimal? add,
      @JsonKey(name: '_add') PrimitiveElement? addElement,
      FhirDecimal? power,
      @JsonKey(name: '_power') PrimitiveElement? powerElement,
      FhirDecimal? backCurve,
      @JsonKey(name: '_backCurve') PrimitiveElement? backCurveElement,
      FhirDecimal? diameter,
      @JsonKey(name: '_diameter') PrimitiveElement? diameterElement,
      Quantity? duration,
      String? color,
      @JsonKey(name: '_color') PrimitiveElement? colorElement,
      String? brand,
      @JsonKey(name: '_brand') PrimitiveElement? brandElement,
      List<Annotation>? note});

  @override
  $CodeableConceptCopyWith<$Res> get product;
  @override
  $QuantityCopyWith<$Res>? get duration;
}

/// @nodoc
class __$$VisionPrescriptionLensSpecificationImplCopyWithImpl<$Res>
    extends _$VisionPrescriptionLensSpecificationCopyWithImpl<$Res,
        _$VisionPrescriptionLensSpecificationImpl>
    implements _$$VisionPrescriptionLensSpecificationImplCopyWith<$Res> {
  __$$VisionPrescriptionLensSpecificationImplCopyWithImpl(
      _$VisionPrescriptionLensSpecificationImpl _value,
      $Res Function(_$VisionPrescriptionLensSpecificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisionPrescriptionLensSpecification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? product = null,
    Object? eye = freezed,
    Object? eyeElement = freezed,
    Object? sphere = freezed,
    Object? sphereElement = freezed,
    Object? cylinder = freezed,
    Object? cylinderElement = freezed,
    Object? axis = freezed,
    Object? axisElement = freezed,
    Object? prism = freezed,
    Object? add = freezed,
    Object? addElement = freezed,
    Object? power = freezed,
    Object? powerElement = freezed,
    Object? backCurve = freezed,
    Object? backCurveElement = freezed,
    Object? diameter = freezed,
    Object? diameterElement = freezed,
    Object? duration = freezed,
    Object? color = freezed,
    Object? colorElement = freezed,
    Object? brand = freezed,
    Object? brandElement = freezed,
    Object? note = freezed,
  }) {
    return _then(_$VisionPrescriptionLensSpecificationImpl(
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
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      eye: freezed == eye
          ? _value.eye
          : eye // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      eyeElement: freezed == eyeElement
          ? _value.eyeElement
          : eyeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sphere: freezed == sphere
          ? _value.sphere
          : sphere // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      sphereElement: freezed == sphereElement
          ? _value.sphereElement
          : sphereElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      cylinder: freezed == cylinder
          ? _value.cylinder
          : cylinder // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      cylinderElement: freezed == cylinderElement
          ? _value.cylinderElement
          : cylinderElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      axis: freezed == axis
          ? _value.axis
          : axis // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      axisElement: freezed == axisElement
          ? _value.axisElement
          : axisElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      prism: freezed == prism
          ? _value._prism
          : prism // ignore: cast_nullable_to_non_nullable
              as List<VisionPrescriptionPrism>?,
      add: freezed == add
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      addElement: freezed == addElement
          ? _value.addElement
          : addElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      powerElement: freezed == powerElement
          ? _value.powerElement
          : powerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      backCurve: freezed == backCurve
          ? _value.backCurve
          : backCurve // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      backCurveElement: freezed == backCurveElement
          ? _value.backCurveElement
          : backCurveElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      diameter: freezed == diameter
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      diameterElement: freezed == diameterElement
          ? _value.diameterElement
          : diameterElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      colorElement: freezed == colorElement
          ? _value.colorElement
          : colorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      brandElement: freezed == brandElement
          ? _value.brandElement
          : brandElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisionPrescriptionLensSpecificationImpl
    extends _VisionPrescriptionLensSpecification {
  const _$VisionPrescriptionLensSpecificationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.product,
      this.eye,
      @JsonKey(name: '_eye') this.eyeElement,
      this.sphere,
      @JsonKey(name: '_sphere') this.sphereElement,
      this.cylinder,
      @JsonKey(name: '_cylinder') this.cylinderElement,
      this.axis,
      @JsonKey(name: '_axis') this.axisElement,
      final List<VisionPrescriptionPrism>? prism,
      this.add,
      @JsonKey(name: '_add') this.addElement,
      this.power,
      @JsonKey(name: '_power') this.powerElement,
      this.backCurve,
      @JsonKey(name: '_backCurve') this.backCurveElement,
      this.diameter,
      @JsonKey(name: '_diameter') this.diameterElement,
      this.duration,
      this.color,
      @JsonKey(name: '_color') this.colorElement,
      this.brand,
      @JsonKey(name: '_brand') this.brandElement,
      final List<Annotation>? note})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _prism = prism,
        _note = note,
        super._();

  factory _$VisionPrescriptionLensSpecificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VisionPrescriptionLensSpecificationImplFromJson(json);

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

  /// [product] Identifies the type of vision correction product which is
  ///  required for the patient.
  @override
  final CodeableConcept product;

  /// [eye] The eye for which the lens specification applies.
  @override
  final FhirCode? eye;

  /// [eyeElement] Extensions for eye
  @override
  @JsonKey(name: '_eye')
  final PrimitiveElement? eyeElement;

  /// [sphere] Lens power measured in dioptres (0.25 units).
  @override
  final FhirDecimal? sphere;

  /// [sphereElement] Extensions for sphere
  @override
  @JsonKey(name: '_sphere')
  final PrimitiveElement? sphereElement;

  /// [cylinder] Power adjustment for astigmatism measured in dioptres (0.25
  ///  units).
  @override
  final FhirDecimal? cylinder;

  /// [cylinderElement] Extensions for cylinder
  @override
  @JsonKey(name: '_cylinder')
  final PrimitiveElement? cylinderElement;

  /// [axis] Adjustment for astigmatism measured in integer degrees.
  @override
  final FhirInteger? axis;

  /// [axisElement] Extensions for axis
  @override
  @JsonKey(name: '_axis')
  final PrimitiveElement? axisElement;

  /// [prism] Allows for adjustment on two axis.
  final List<VisionPrescriptionPrism>? _prism;

  /// [prism] Allows for adjustment on two axis.
  @override
  List<VisionPrescriptionPrism>? get prism {
    final value = _prism;
    if (value == null) return null;
    if (_prism is EqualUnmodifiableListView) return _prism;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [add] Power adjustment for multifocal lenses measured in dioptres (0.25
  ///  units).
  @override
  final FhirDecimal? add;

  /// [addElement] Extensions for add
  @override
  @JsonKey(name: '_add')
  final PrimitiveElement? addElement;

  /// [power] Contact lens power measured in dioptres (0.25 units).
  @override
  final FhirDecimal? power;

  /// [powerElement] Extensions for power
  @override
  @JsonKey(name: '_power')
  final PrimitiveElement? powerElement;

  /// [backCurve] Back curvature measured in millimetres.
  @override
  final FhirDecimal? backCurve;

  /// [backCurveElement] Extensions for backCurve
  @override
  @JsonKey(name: '_backCurve')
  final PrimitiveElement? backCurveElement;

  /// [diameter] Contact lens diameter measured in millimetres.
  @override
  final FhirDecimal? diameter;

  /// [diameterElement] Extensions for diameter
  @override
  @JsonKey(name: '_diameter')
  final PrimitiveElement? diameterElement;

  /// [duration] The recommended maximum wear period for the lens.
  @override
  final Quantity? duration;

  /// [color] Special color or pattern.
  @override
  final String? color;

  /// [colorElement] Extensions for color
  @override
  @JsonKey(name: '_color')
  final PrimitiveElement? colorElement;

  /// [brand] Brand recommendations or restrictions.
  @override
  final String? brand;

  /// [brandElement] Extensions for brand
  @override
  @JsonKey(name: '_brand')
  final PrimitiveElement? brandElement;

  /// [note] Notes for special requirements such as coatings and lens
  ///  materials.
  final List<Annotation>? _note;

  /// [note] Notes for special requirements such as coatings and lens
  ///  materials.
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VisionPrescriptionLensSpecification(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, product: $product, eye: $eye, eyeElement: $eyeElement, sphere: $sphere, sphereElement: $sphereElement, cylinder: $cylinder, cylinderElement: $cylinderElement, axis: $axis, axisElement: $axisElement, prism: $prism, add: $add, addElement: $addElement, power: $power, powerElement: $powerElement, backCurve: $backCurve, backCurveElement: $backCurveElement, diameter: $diameter, diameterElement: $diameterElement, duration: $duration, color: $color, colorElement: $colorElement, brand: $brand, brandElement: $brandElement, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisionPrescriptionLensSpecificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.eye, eye) || other.eye == eye) &&
            (identical(other.eyeElement, eyeElement) ||
                other.eyeElement == eyeElement) &&
            (identical(other.sphere, sphere) || other.sphere == sphere) &&
            (identical(other.sphereElement, sphereElement) ||
                other.sphereElement == sphereElement) &&
            (identical(other.cylinder, cylinder) ||
                other.cylinder == cylinder) &&
            (identical(other.cylinderElement, cylinderElement) ||
                other.cylinderElement == cylinderElement) &&
            (identical(other.axis, axis) || other.axis == axis) &&
            (identical(other.axisElement, axisElement) ||
                other.axisElement == axisElement) &&
            const DeepCollectionEquality().equals(other._prism, _prism) &&
            (identical(other.add, add) || other.add == add) &&
            (identical(other.addElement, addElement) ||
                other.addElement == addElement) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.powerElement, powerElement) ||
                other.powerElement == powerElement) &&
            (identical(other.backCurve, backCurve) ||
                other.backCurve == backCurve) &&
            (identical(other.backCurveElement, backCurveElement) ||
                other.backCurveElement == backCurveElement) &&
            (identical(other.diameter, diameter) ||
                other.diameter == diameter) &&
            (identical(other.diameterElement, diameterElement) ||
                other.diameterElement == diameterElement) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.colorElement, colorElement) ||
                other.colorElement == colorElement) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.brandElement, brandElement) ||
                other.brandElement == brandElement) &&
            const DeepCollectionEquality().equals(other._note, _note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        product,
        eye,
        eyeElement,
        sphere,
        sphereElement,
        cylinder,
        cylinderElement,
        axis,
        axisElement,
        const DeepCollectionEquality().hash(_prism),
        add,
        addElement,
        power,
        powerElement,
        backCurve,
        backCurveElement,
        diameter,
        diameterElement,
        duration,
        color,
        colorElement,
        brand,
        brandElement,
        const DeepCollectionEquality().hash(_note)
      ]);

  /// Create a copy of VisionPrescriptionLensSpecification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisionPrescriptionLensSpecificationImplCopyWith<
          _$VisionPrescriptionLensSpecificationImpl>
      get copyWith => __$$VisionPrescriptionLensSpecificationImplCopyWithImpl<
          _$VisionPrescriptionLensSpecificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisionPrescriptionLensSpecificationImplToJson(
      this,
    );
  }
}

abstract class _VisionPrescriptionLensSpecification
    extends VisionPrescriptionLensSpecification {
  const factory _VisionPrescriptionLensSpecification(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept product,
          final FhirCode? eye,
          @JsonKey(name: '_eye') final PrimitiveElement? eyeElement,
          final FhirDecimal? sphere,
          @JsonKey(name: '_sphere') final PrimitiveElement? sphereElement,
          final FhirDecimal? cylinder,
          @JsonKey(name: '_cylinder') final PrimitiveElement? cylinderElement,
          final FhirInteger? axis,
          @JsonKey(name: '_axis') final PrimitiveElement? axisElement,
          final List<VisionPrescriptionPrism>? prism,
          final FhirDecimal? add,
          @JsonKey(name: '_add') final PrimitiveElement? addElement,
          final FhirDecimal? power,
          @JsonKey(name: '_power') final PrimitiveElement? powerElement,
          final FhirDecimal? backCurve,
          @JsonKey(name: '_backCurve') final PrimitiveElement? backCurveElement,
          final FhirDecimal? diameter,
          @JsonKey(name: '_diameter') final PrimitiveElement? diameterElement,
          final Quantity? duration,
          final String? color,
          @JsonKey(name: '_color') final PrimitiveElement? colorElement,
          final String? brand,
          @JsonKey(name: '_brand') final PrimitiveElement? brandElement,
          final List<Annotation>? note}) =
      _$VisionPrescriptionLensSpecificationImpl;
  const _VisionPrescriptionLensSpecification._() : super._();

  factory _VisionPrescriptionLensSpecification.fromJson(
          Map<String, dynamic> json) =
      _$VisionPrescriptionLensSpecificationImpl.fromJson;

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

  /// [product] Identifies the type of vision correction product which is
  ///  required for the patient.
  @override
  CodeableConcept get product;

  /// [eye] The eye for which the lens specification applies.
  @override
  FhirCode? get eye;

  /// [eyeElement] Extensions for eye
  @override
  @JsonKey(name: '_eye')
  PrimitiveElement? get eyeElement;

  /// [sphere] Lens power measured in dioptres (0.25 units).
  @override
  FhirDecimal? get sphere;

  /// [sphereElement] Extensions for sphere
  @override
  @JsonKey(name: '_sphere')
  PrimitiveElement? get sphereElement;

  /// [cylinder] Power adjustment for astigmatism measured in dioptres (0.25
  ///  units).
  @override
  FhirDecimal? get cylinder;

  /// [cylinderElement] Extensions for cylinder
  @override
  @JsonKey(name: '_cylinder')
  PrimitiveElement? get cylinderElement;

  /// [axis] Adjustment for astigmatism measured in integer degrees.
  @override
  FhirInteger? get axis;

  /// [axisElement] Extensions for axis
  @override
  @JsonKey(name: '_axis')
  PrimitiveElement? get axisElement;

  /// [prism] Allows for adjustment on two axis.
  @override
  List<VisionPrescriptionPrism>? get prism;

  /// [add] Power adjustment for multifocal lenses measured in dioptres (0.25
  ///  units).
  @override
  FhirDecimal? get add;

  /// [addElement] Extensions for add
  @override
  @JsonKey(name: '_add')
  PrimitiveElement? get addElement;

  /// [power] Contact lens power measured in dioptres (0.25 units).
  @override
  FhirDecimal? get power;

  /// [powerElement] Extensions for power
  @override
  @JsonKey(name: '_power')
  PrimitiveElement? get powerElement;

  /// [backCurve] Back curvature measured in millimetres.
  @override
  FhirDecimal? get backCurve;

  /// [backCurveElement] Extensions for backCurve
  @override
  @JsonKey(name: '_backCurve')
  PrimitiveElement? get backCurveElement;

  /// [diameter] Contact lens diameter measured in millimetres.
  @override
  FhirDecimal? get diameter;

  /// [diameterElement] Extensions for diameter
  @override
  @JsonKey(name: '_diameter')
  PrimitiveElement? get diameterElement;

  /// [duration] The recommended maximum wear period for the lens.
  @override
  Quantity? get duration;

  /// [color] Special color or pattern.
  @override
  String? get color;

  /// [colorElement] Extensions for color
  @override
  @JsonKey(name: '_color')
  PrimitiveElement? get colorElement;

  /// [brand] Brand recommendations or restrictions.
  @override
  String? get brand;

  /// [brandElement] Extensions for brand
  @override
  @JsonKey(name: '_brand')
  PrimitiveElement? get brandElement;

  /// [note] Notes for special requirements such as coatings and lens
  ///  materials.
  @override
  List<Annotation>? get note;

  /// Create a copy of VisionPrescriptionLensSpecification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisionPrescriptionLensSpecificationImplCopyWith<
          _$VisionPrescriptionLensSpecificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VisionPrescriptionPrism _$VisionPrescriptionPrismFromJson(
    Map<String, dynamic> json) {
  return _VisionPrescriptionPrism.fromJson(json);
}

/// @nodoc
mixin _$VisionPrescriptionPrism {
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

  /// [amount] Amount of prism to compensate for eye alignment in fractional
  ///  units.
  FhirDecimal? get amount => throw _privateConstructorUsedError;

  /// [amountElement] Extensions for amount
  @JsonKey(name: '_amount')
  PrimitiveElement? get amountElement => throw _privateConstructorUsedError;

  /// [base] The relative base, or reference lens edge, for the prism.
  FhirCode? get base => throw _privateConstructorUsedError;

  /// [baseElement] Extensions for base
  @JsonKey(name: '_base')
  PrimitiveElement? get baseElement => throw _privateConstructorUsedError;

  /// Serializes this VisionPrescriptionPrism to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VisionPrescriptionPrism
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisionPrescriptionPrismCopyWith<VisionPrescriptionPrism> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisionPrescriptionPrismCopyWith<$Res> {
  factory $VisionPrescriptionPrismCopyWith(VisionPrescriptionPrism value,
          $Res Function(VisionPrescriptionPrism) then) =
      _$VisionPrescriptionPrismCopyWithImpl<$Res, VisionPrescriptionPrism>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirDecimal? amount,
      @JsonKey(name: '_amount') PrimitiveElement? amountElement,
      FhirCode? base,
      @JsonKey(name: '_base') PrimitiveElement? baseElement});
}

/// @nodoc
class _$VisionPrescriptionPrismCopyWithImpl<$Res,
        $Val extends VisionPrescriptionPrism>
    implements $VisionPrescriptionPrismCopyWith<$Res> {
  _$VisionPrescriptionPrismCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisionPrescriptionPrism
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? amount = freezed,
    Object? amountElement = freezed,
    Object? base = freezed,
    Object? baseElement = freezed,
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
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      amountElement: freezed == amountElement
          ? _value.amountElement
          : amountElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      baseElement: freezed == baseElement
          ? _value.baseElement
          : baseElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VisionPrescriptionPrismImplCopyWith<$Res>
    implements $VisionPrescriptionPrismCopyWith<$Res> {
  factory _$$VisionPrescriptionPrismImplCopyWith(
          _$VisionPrescriptionPrismImpl value,
          $Res Function(_$VisionPrescriptionPrismImpl) then) =
      __$$VisionPrescriptionPrismImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirDecimal? amount,
      @JsonKey(name: '_amount') PrimitiveElement? amountElement,
      FhirCode? base,
      @JsonKey(name: '_base') PrimitiveElement? baseElement});
}

/// @nodoc
class __$$VisionPrescriptionPrismImplCopyWithImpl<$Res>
    extends _$VisionPrescriptionPrismCopyWithImpl<$Res,
        _$VisionPrescriptionPrismImpl>
    implements _$$VisionPrescriptionPrismImplCopyWith<$Res> {
  __$$VisionPrescriptionPrismImplCopyWithImpl(
      _$VisionPrescriptionPrismImpl _value,
      $Res Function(_$VisionPrescriptionPrismImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisionPrescriptionPrism
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? amount = freezed,
    Object? amountElement = freezed,
    Object? base = freezed,
    Object? baseElement = freezed,
  }) {
    return _then(_$VisionPrescriptionPrismImpl(
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
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      amountElement: freezed == amountElement
          ? _value.amountElement
          : amountElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      baseElement: freezed == baseElement
          ? _value.baseElement
          : baseElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisionPrescriptionPrismImpl extends _VisionPrescriptionPrism {
  const _$VisionPrescriptionPrismImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.amount,
      @JsonKey(name: '_amount') this.amountElement,
      this.base,
      @JsonKey(name: '_base') this.baseElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$VisionPrescriptionPrismImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisionPrescriptionPrismImplFromJson(json);

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

  /// [amount] Amount of prism to compensate for eye alignment in fractional
  ///  units.
  @override
  final FhirDecimal? amount;

  /// [amountElement] Extensions for amount
  @override
  @JsonKey(name: '_amount')
  final PrimitiveElement? amountElement;

  /// [base] The relative base, or reference lens edge, for the prism.
  @override
  final FhirCode? base;

  /// [baseElement] Extensions for base
  @override
  @JsonKey(name: '_base')
  final PrimitiveElement? baseElement;

  @override
  String toString() {
    return 'VisionPrescriptionPrism(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, amount: $amount, amountElement: $amountElement, base: $base, baseElement: $baseElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisionPrescriptionPrismImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.amountElement, amountElement) ||
                other.amountElement == amountElement) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.baseElement, baseElement) ||
                other.baseElement == baseElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      amount,
      amountElement,
      base,
      baseElement);

  /// Create a copy of VisionPrescriptionPrism
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisionPrescriptionPrismImplCopyWith<_$VisionPrescriptionPrismImpl>
      get copyWith => __$$VisionPrescriptionPrismImplCopyWithImpl<
          _$VisionPrescriptionPrismImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisionPrescriptionPrismImplToJson(
      this,
    );
  }
}

abstract class _VisionPrescriptionPrism extends VisionPrescriptionPrism {
  const factory _VisionPrescriptionPrism(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirDecimal? amount,
          @JsonKey(name: '_amount') final PrimitiveElement? amountElement,
          final FhirCode? base,
          @JsonKey(name: '_base') final PrimitiveElement? baseElement}) =
      _$VisionPrescriptionPrismImpl;
  const _VisionPrescriptionPrism._() : super._();

  factory _VisionPrescriptionPrism.fromJson(Map<String, dynamic> json) =
      _$VisionPrescriptionPrismImpl.fromJson;

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

  /// [amount] Amount of prism to compensate for eye alignment in fractional
  ///  units.
  @override
  FhirDecimal? get amount;

  /// [amountElement] Extensions for amount
  @override
  @JsonKey(name: '_amount')
  PrimitiveElement? get amountElement;

  /// [base] The relative base, or reference lens edge, for the prism.
  @override
  FhirCode? get base;

  /// [baseElement] Extensions for base
  @override
  @JsonKey(name: '_base')
  PrimitiveElement? get baseElement;

  /// Create a copy of VisionPrescriptionPrism
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisionPrescriptionPrismImplCopyWith<_$VisionPrescriptionPrismImpl>
      get copyWith => throw _privateConstructorUsedError;
}
