// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dosage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Dosage _$DosageFromJson(Map<String, dynamic> json) {
  return _Dosage.fromJson(json);
}

/// @nodoc
mixin _$Dosage {
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

  /// [sequence] Indicates the order in which the dosage instructions should be
  ///  applied or interpreted.
  FhirInteger? get sequence => throw _privateConstructorUsedError;

  /// [sequenceElement] Extensions for sequence
  @JsonKey(name: '_sequence')
  PrimitiveElement? get sequenceElement => throw _privateConstructorUsedError;

  /// [text] Free text dosage instructions e.g. SIG.
  String? get text => throw _privateConstructorUsedError;

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement => throw _privateConstructorUsedError;

  /// [additionalInstruction] Supplemental instructions to the patient on how
  /// to take the medication  (e.g. "with meals" or"take half to one hour before
  /// food") or warnings for the patient about the medication (e.g. "may cause
  ///  drowsiness" or "avoid exposure of skin to direct sunlight or sunlamps").
  List<CodeableConcept>? get additionalInstruction =>
      throw _privateConstructorUsedError;

  /// [patientInstruction] Instructions in terms that are understood by the
  ///  patient or consumer.
  String? get patientInstruction => throw _privateConstructorUsedError;

  /// [patientInstructionElement] Extensions for patientInstruction
  @JsonKey(name: '_patientInstruction')
  PrimitiveElement? get patientInstructionElement =>
      throw _privateConstructorUsedError;

  /// [timing] When medication should be administered.
  Timing? get timing => throw _privateConstructorUsedError;

  /// [asNeededBoolean] Indicates whether the Medication is only taken when
  /// needed within a specific dosing schedule (Boolean option), or it indicates
  ///  the precondition for taking the Medication (CodeableConcept).
  FhirBoolean? get asNeededBoolean => throw _privateConstructorUsedError;

  /// [asNeededBooleanElement] Extensions for asNeededBoolean
  @JsonKey(name: '_asNeededBoolean')
  PrimitiveElement? get asNeededBooleanElement =>
      throw _privateConstructorUsedError;

  /// [asNeededCodeableConcept] Indicates whether the Medication is only taken
  /// when needed within a specific dosing schedule (Boolean option), or it
  ///  indicates the precondition for taking the Medication (CodeableConcept).
  CodeableConcept? get asNeededCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [site] Body site to administer to.
  CodeableConcept? get site => throw _privateConstructorUsedError;

  /// [route] How drug should enter body.
  CodeableConcept? get route => throw _privateConstructorUsedError;

  /// [method] Technique for administering medication.
  CodeableConcept? get method => throw _privateConstructorUsedError;

  /// [doseAndRate] The amount of medication administered.
  List<DosageDoseAndRate>? get doseAndRate =>
      throw _privateConstructorUsedError;

  /// [maxDosePerPeriod] Upper limit on medication per unit of time.
  Ratio? get maxDosePerPeriod => throw _privateConstructorUsedError;

  /// [maxDosePerAdministration] Upper limit on medication per administration.
  Quantity? get maxDosePerAdministration => throw _privateConstructorUsedError;

  /// [maxDosePerLifetime] Upper limit on medication per lifetime of the
  ///  patient.
  Quantity? get maxDosePerLifetime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DosageCopyWith<Dosage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DosageCopyWith<$Res> {
  factory $DosageCopyWith(Dosage value, $Res Function(Dosage) then) =
      _$DosageCopyWithImpl<$Res, Dosage>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirInteger? sequence,
      @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      List<CodeableConcept>? additionalInstruction,
      String? patientInstruction,
      @JsonKey(name: '_patientInstruction')
      PrimitiveElement? patientInstructionElement,
      Timing? timing,
      FhirBoolean? asNeededBoolean,
      @JsonKey(name: '_asNeededBoolean')
      PrimitiveElement? asNeededBooleanElement,
      CodeableConcept? asNeededCodeableConcept,
      CodeableConcept? site,
      CodeableConcept? route,
      CodeableConcept? method,
      List<DosageDoseAndRate>? doseAndRate,
      Ratio? maxDosePerPeriod,
      Quantity? maxDosePerAdministration,
      Quantity? maxDosePerLifetime});

  $TimingCopyWith<$Res>? get timing;
  $CodeableConceptCopyWith<$Res>? get asNeededCodeableConcept;
  $CodeableConceptCopyWith<$Res>? get site;
  $CodeableConceptCopyWith<$Res>? get route;
  $CodeableConceptCopyWith<$Res>? get method;
  $RatioCopyWith<$Res>? get maxDosePerPeriod;
  $QuantityCopyWith<$Res>? get maxDosePerAdministration;
  $QuantityCopyWith<$Res>? get maxDosePerLifetime;
}

/// @nodoc
class _$DosageCopyWithImpl<$Res, $Val extends Dosage>
    implements $DosageCopyWith<$Res> {
  _$DosageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? sequence = freezed,
    Object? sequenceElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? additionalInstruction = freezed,
    Object? patientInstruction = freezed,
    Object? patientInstructionElement = freezed,
    Object? timing = freezed,
    Object? asNeededBoolean = freezed,
    Object? asNeededBooleanElement = freezed,
    Object? asNeededCodeableConcept = freezed,
    Object? site = freezed,
    Object? route = freezed,
    Object? method = freezed,
    Object? doseAndRate = freezed,
    Object? maxDosePerPeriod = freezed,
    Object? maxDosePerAdministration = freezed,
    Object? maxDosePerLifetime = freezed,
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
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      sequenceElement: freezed == sequenceElement
          ? _value.sequenceElement
          : sequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      additionalInstruction: freezed == additionalInstruction
          ? _value.additionalInstruction
          : additionalInstruction // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      patientInstruction: freezed == patientInstruction
          ? _value.patientInstruction
          : patientInstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      patientInstructionElement: freezed == patientInstructionElement
          ? _value.patientInstructionElement
          : patientInstructionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      timing: freezed == timing
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as Timing?,
      asNeededBoolean: freezed == asNeededBoolean
          ? _value.asNeededBoolean
          : asNeededBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      asNeededBooleanElement: freezed == asNeededBooleanElement
          ? _value.asNeededBooleanElement
          : asNeededBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      asNeededCodeableConcept: freezed == asNeededCodeableConcept
          ? _value.asNeededCodeableConcept
          : asNeededCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
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
      doseAndRate: freezed == doseAndRate
          ? _value.doseAndRate
          : doseAndRate // ignore: cast_nullable_to_non_nullable
              as List<DosageDoseAndRate>?,
      maxDosePerPeriod: freezed == maxDosePerPeriod
          ? _value.maxDosePerPeriod
          : maxDosePerPeriod // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      maxDosePerAdministration: freezed == maxDosePerAdministration
          ? _value.maxDosePerAdministration
          : maxDosePerAdministration // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      maxDosePerLifetime: freezed == maxDosePerLifetime
          ? _value.maxDosePerLifetime
          : maxDosePerLifetime // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimingCopyWith<$Res>? get timing {
    if (_value.timing == null) {
      return null;
    }

    return $TimingCopyWith<$Res>(_value.timing!, (value) {
      return _then(_value.copyWith(timing: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get asNeededCodeableConcept {
    if (_value.asNeededCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.asNeededCodeableConcept!,
        (value) {
      return _then(_value.copyWith(asNeededCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get site {
    if (_value.site == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.site!, (value) {
      return _then(_value.copyWith(site: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get route {
    if (_value.route == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.route!, (value) {
      return _then(_value.copyWith(route: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get method {
    if (_value.method == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.method!, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatioCopyWith<$Res>? get maxDosePerPeriod {
    if (_value.maxDosePerPeriod == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.maxDosePerPeriod!, (value) {
      return _then(_value.copyWith(maxDosePerPeriod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get maxDosePerAdministration {
    if (_value.maxDosePerAdministration == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.maxDosePerAdministration!, (value) {
      return _then(_value.copyWith(maxDosePerAdministration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get maxDosePerLifetime {
    if (_value.maxDosePerLifetime == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.maxDosePerLifetime!, (value) {
      return _then(_value.copyWith(maxDosePerLifetime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DosageImplCopyWith<$Res> implements $DosageCopyWith<$Res> {
  factory _$$DosageImplCopyWith(
          _$DosageImpl value, $Res Function(_$DosageImpl) then) =
      __$$DosageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirInteger? sequence,
      @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      List<CodeableConcept>? additionalInstruction,
      String? patientInstruction,
      @JsonKey(name: '_patientInstruction')
      PrimitiveElement? patientInstructionElement,
      Timing? timing,
      FhirBoolean? asNeededBoolean,
      @JsonKey(name: '_asNeededBoolean')
      PrimitiveElement? asNeededBooleanElement,
      CodeableConcept? asNeededCodeableConcept,
      CodeableConcept? site,
      CodeableConcept? route,
      CodeableConcept? method,
      List<DosageDoseAndRate>? doseAndRate,
      Ratio? maxDosePerPeriod,
      Quantity? maxDosePerAdministration,
      Quantity? maxDosePerLifetime});

  @override
  $TimingCopyWith<$Res>? get timing;
  @override
  $CodeableConceptCopyWith<$Res>? get asNeededCodeableConcept;
  @override
  $CodeableConceptCopyWith<$Res>? get site;
  @override
  $CodeableConceptCopyWith<$Res>? get route;
  @override
  $CodeableConceptCopyWith<$Res>? get method;
  @override
  $RatioCopyWith<$Res>? get maxDosePerPeriod;
  @override
  $QuantityCopyWith<$Res>? get maxDosePerAdministration;
  @override
  $QuantityCopyWith<$Res>? get maxDosePerLifetime;
}

/// @nodoc
class __$$DosageImplCopyWithImpl<$Res>
    extends _$DosageCopyWithImpl<$Res, _$DosageImpl>
    implements _$$DosageImplCopyWith<$Res> {
  __$$DosageImplCopyWithImpl(
      _$DosageImpl _value, $Res Function(_$DosageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? sequence = freezed,
    Object? sequenceElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? additionalInstruction = freezed,
    Object? patientInstruction = freezed,
    Object? patientInstructionElement = freezed,
    Object? timing = freezed,
    Object? asNeededBoolean = freezed,
    Object? asNeededBooleanElement = freezed,
    Object? asNeededCodeableConcept = freezed,
    Object? site = freezed,
    Object? route = freezed,
    Object? method = freezed,
    Object? doseAndRate = freezed,
    Object? maxDosePerPeriod = freezed,
    Object? maxDosePerAdministration = freezed,
    Object? maxDosePerLifetime = freezed,
  }) {
    return _then(_$DosageImpl(
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
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      sequenceElement: freezed == sequenceElement
          ? _value.sequenceElement
          : sequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      additionalInstruction: freezed == additionalInstruction
          ? _value._additionalInstruction
          : additionalInstruction // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      patientInstruction: freezed == patientInstruction
          ? _value.patientInstruction
          : patientInstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      patientInstructionElement: freezed == patientInstructionElement
          ? _value.patientInstructionElement
          : patientInstructionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      timing: freezed == timing
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as Timing?,
      asNeededBoolean: freezed == asNeededBoolean
          ? _value.asNeededBoolean
          : asNeededBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      asNeededBooleanElement: freezed == asNeededBooleanElement
          ? _value.asNeededBooleanElement
          : asNeededBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      asNeededCodeableConcept: freezed == asNeededCodeableConcept
          ? _value.asNeededCodeableConcept
          : asNeededCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
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
      doseAndRate: freezed == doseAndRate
          ? _value._doseAndRate
          : doseAndRate // ignore: cast_nullable_to_non_nullable
              as List<DosageDoseAndRate>?,
      maxDosePerPeriod: freezed == maxDosePerPeriod
          ? _value.maxDosePerPeriod
          : maxDosePerPeriod // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      maxDosePerAdministration: freezed == maxDosePerAdministration
          ? _value.maxDosePerAdministration
          : maxDosePerAdministration // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      maxDosePerLifetime: freezed == maxDosePerLifetime
          ? _value.maxDosePerLifetime
          : maxDosePerLifetime // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DosageImpl extends _Dosage {
  const _$DosageImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.sequence,
      @JsonKey(name: '_sequence') this.sequenceElement,
      this.text,
      @JsonKey(name: '_text') this.textElement,
      final List<CodeableConcept>? additionalInstruction,
      this.patientInstruction,
      @JsonKey(name: '_patientInstruction') this.patientInstructionElement,
      this.timing,
      this.asNeededBoolean,
      @JsonKey(name: '_asNeededBoolean') this.asNeededBooleanElement,
      this.asNeededCodeableConcept,
      this.site,
      this.route,
      this.method,
      final List<DosageDoseAndRate>? doseAndRate,
      this.maxDosePerPeriod,
      this.maxDosePerAdministration,
      this.maxDosePerLifetime})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _additionalInstruction = additionalInstruction,
        _doseAndRate = doseAndRate,
        super._();

  factory _$DosageImpl.fromJson(Map<String, dynamic> json) =>
      _$$DosageImplFromJson(json);

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

  /// [sequence] Indicates the order in which the dosage instructions should be
  ///  applied or interpreted.
  @override
  final FhirInteger? sequence;

  /// [sequenceElement] Extensions for sequence
  @override
  @JsonKey(name: '_sequence')
  final PrimitiveElement? sequenceElement;

  /// [text] Free text dosage instructions e.g. SIG.
  @override
  final String? text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  final PrimitiveElement? textElement;

  /// [additionalInstruction] Supplemental instructions to the patient on how
  /// to take the medication  (e.g. "with meals" or"take half to one hour before
  /// food") or warnings for the patient about the medication (e.g. "may cause
  ///  drowsiness" or "avoid exposure of skin to direct sunlight or sunlamps").
  final List<CodeableConcept>? _additionalInstruction;

  /// [additionalInstruction] Supplemental instructions to the patient on how
  /// to take the medication  (e.g. "with meals" or"take half to one hour before
  /// food") or warnings for the patient about the medication (e.g. "may cause
  ///  drowsiness" or "avoid exposure of skin to direct sunlight or sunlamps").
  @override
  List<CodeableConcept>? get additionalInstruction {
    final value = _additionalInstruction;
    if (value == null) return null;
    if (_additionalInstruction is EqualUnmodifiableListView)
      return _additionalInstruction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [patientInstruction] Instructions in terms that are understood by the
  ///  patient or consumer.
  @override
  final String? patientInstruction;

  /// [patientInstructionElement] Extensions for patientInstruction
  @override
  @JsonKey(name: '_patientInstruction')
  final PrimitiveElement? patientInstructionElement;

  /// [timing] When medication should be administered.
  @override
  final Timing? timing;

  /// [asNeededBoolean] Indicates whether the Medication is only taken when
  /// needed within a specific dosing schedule (Boolean option), or it indicates
  ///  the precondition for taking the Medication (CodeableConcept).
  @override
  final FhirBoolean? asNeededBoolean;

  /// [asNeededBooleanElement] Extensions for asNeededBoolean
  @override
  @JsonKey(name: '_asNeededBoolean')
  final PrimitiveElement? asNeededBooleanElement;

  /// [asNeededCodeableConcept] Indicates whether the Medication is only taken
  /// when needed within a specific dosing schedule (Boolean option), or it
  ///  indicates the precondition for taking the Medication (CodeableConcept).
  @override
  final CodeableConcept? asNeededCodeableConcept;

  /// [site] Body site to administer to.
  @override
  final CodeableConcept? site;

  /// [route] How drug should enter body.
  @override
  final CodeableConcept? route;

  /// [method] Technique for administering medication.
  @override
  final CodeableConcept? method;

  /// [doseAndRate] The amount of medication administered.
  final List<DosageDoseAndRate>? _doseAndRate;

  /// [doseAndRate] The amount of medication administered.
  @override
  List<DosageDoseAndRate>? get doseAndRate {
    final value = _doseAndRate;
    if (value == null) return null;
    if (_doseAndRate is EqualUnmodifiableListView) return _doseAndRate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [maxDosePerPeriod] Upper limit on medication per unit of time.
  @override
  final Ratio? maxDosePerPeriod;

  /// [maxDosePerAdministration] Upper limit on medication per administration.
  @override
  final Quantity? maxDosePerAdministration;

  /// [maxDosePerLifetime] Upper limit on medication per lifetime of the
  ///  patient.
  @override
  final Quantity? maxDosePerLifetime;

  @override
  String toString() {
    return 'Dosage(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, sequence: $sequence, sequenceElement: $sequenceElement, text: $text, textElement: $textElement, additionalInstruction: $additionalInstruction, patientInstruction: $patientInstruction, patientInstructionElement: $patientInstructionElement, timing: $timing, asNeededBoolean: $asNeededBoolean, asNeededBooleanElement: $asNeededBooleanElement, asNeededCodeableConcept: $asNeededCodeableConcept, site: $site, route: $route, method: $method, doseAndRate: $doseAndRate, maxDosePerPeriod: $maxDosePerPeriod, maxDosePerAdministration: $maxDosePerAdministration, maxDosePerLifetime: $maxDosePerLifetime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DosageImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.sequenceElement, sequenceElement) ||
                other.sequenceElement == sequenceElement) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement) &&
            const DeepCollectionEquality()
                .equals(other._additionalInstruction, _additionalInstruction) &&
            (identical(other.patientInstruction, patientInstruction) ||
                other.patientInstruction == patientInstruction) &&
            (identical(other.patientInstructionElement,
                    patientInstructionElement) ||
                other.patientInstructionElement == patientInstructionElement) &&
            (identical(other.timing, timing) || other.timing == timing) &&
            (identical(other.asNeededBoolean, asNeededBoolean) ||
                other.asNeededBoolean == asNeededBoolean) &&
            (identical(other.asNeededBooleanElement, asNeededBooleanElement) ||
                other.asNeededBooleanElement == asNeededBooleanElement) &&
            (identical(
                    other.asNeededCodeableConcept, asNeededCodeableConcept) ||
                other.asNeededCodeableConcept == asNeededCodeableConcept) &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality()
                .equals(other._doseAndRate, _doseAndRate) &&
            (identical(other.maxDosePerPeriod, maxDosePerPeriod) ||
                other.maxDosePerPeriod == maxDosePerPeriod) &&
            (identical(
                    other.maxDosePerAdministration, maxDosePerAdministration) ||
                other.maxDosePerAdministration == maxDosePerAdministration) &&
            (identical(other.maxDosePerLifetime, maxDosePerLifetime) ||
                other.maxDosePerLifetime == maxDosePerLifetime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        sequence,
        sequenceElement,
        text,
        textElement,
        const DeepCollectionEquality().hash(_additionalInstruction),
        patientInstruction,
        patientInstructionElement,
        timing,
        asNeededBoolean,
        asNeededBooleanElement,
        asNeededCodeableConcept,
        site,
        route,
        method,
        const DeepCollectionEquality().hash(_doseAndRate),
        maxDosePerPeriod,
        maxDosePerAdministration,
        maxDosePerLifetime
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DosageImplCopyWith<_$DosageImpl> get copyWith =>
      __$$DosageImplCopyWithImpl<_$DosageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DosageImplToJson(
      this,
    );
  }
}

abstract class _Dosage extends Dosage {
  const factory _Dosage(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirInteger? sequence,
      @JsonKey(name: '_sequence') final PrimitiveElement? sequenceElement,
      final String? text,
      @JsonKey(name: '_text') final PrimitiveElement? textElement,
      final List<CodeableConcept>? additionalInstruction,
      final String? patientInstruction,
      @JsonKey(name: '_patientInstruction')
      final PrimitiveElement? patientInstructionElement,
      final Timing? timing,
      final FhirBoolean? asNeededBoolean,
      @JsonKey(name: '_asNeededBoolean')
      final PrimitiveElement? asNeededBooleanElement,
      final CodeableConcept? asNeededCodeableConcept,
      final CodeableConcept? site,
      final CodeableConcept? route,
      final CodeableConcept? method,
      final List<DosageDoseAndRate>? doseAndRate,
      final Ratio? maxDosePerPeriod,
      final Quantity? maxDosePerAdministration,
      final Quantity? maxDosePerLifetime}) = _$DosageImpl;
  const _Dosage._() : super._();

  factory _Dosage.fromJson(Map<String, dynamic> json) = _$DosageImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [sequence] Indicates the order in which the dosage instructions should be
  ///  applied or interpreted.
  FhirInteger? get sequence;
  @override

  /// [sequenceElement] Extensions for sequence
  @JsonKey(name: '_sequence')
  PrimitiveElement? get sequenceElement;
  @override

  /// [text] Free text dosage instructions e.g. SIG.
  String? get text;
  @override

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement;
  @override

  /// [additionalInstruction] Supplemental instructions to the patient on how
  /// to take the medication  (e.g. "with meals" or"take half to one hour before
  /// food") or warnings for the patient about the medication (e.g. "may cause
  ///  drowsiness" or "avoid exposure of skin to direct sunlight or sunlamps").
  List<CodeableConcept>? get additionalInstruction;
  @override

  /// [patientInstruction] Instructions in terms that are understood by the
  ///  patient or consumer.
  String? get patientInstruction;
  @override

  /// [patientInstructionElement] Extensions for patientInstruction
  @JsonKey(name: '_patientInstruction')
  PrimitiveElement? get patientInstructionElement;
  @override

  /// [timing] When medication should be administered.
  Timing? get timing;
  @override

  /// [asNeededBoolean] Indicates whether the Medication is only taken when
  /// needed within a specific dosing schedule (Boolean option), or it indicates
  ///  the precondition for taking the Medication (CodeableConcept).
  FhirBoolean? get asNeededBoolean;
  @override

  /// [asNeededBooleanElement] Extensions for asNeededBoolean
  @JsonKey(name: '_asNeededBoolean')
  PrimitiveElement? get asNeededBooleanElement;
  @override

  /// [asNeededCodeableConcept] Indicates whether the Medication is only taken
  /// when needed within a specific dosing schedule (Boolean option), or it
  ///  indicates the precondition for taking the Medication (CodeableConcept).
  CodeableConcept? get asNeededCodeableConcept;
  @override

  /// [site] Body site to administer to.
  CodeableConcept? get site;
  @override

  /// [route] How drug should enter body.
  CodeableConcept? get route;
  @override

  /// [method] Technique for administering medication.
  CodeableConcept? get method;
  @override

  /// [doseAndRate] The amount of medication administered.
  List<DosageDoseAndRate>? get doseAndRate;
  @override

  /// [maxDosePerPeriod] Upper limit on medication per unit of time.
  Ratio? get maxDosePerPeriod;
  @override

  /// [maxDosePerAdministration] Upper limit on medication per administration.
  Quantity? get maxDosePerAdministration;
  @override

  /// [maxDosePerLifetime] Upper limit on medication per lifetime of the
  ///  patient.
  Quantity? get maxDosePerLifetime;
  @override
  @JsonKey(ignore: true)
  _$$DosageImplCopyWith<_$DosageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DosageDoseAndRate _$DosageDoseAndRateFromJson(Map<String, dynamic> json) {
  return _DosageDoseAndRate.fromJson(json);
}

/// @nodoc
mixin _$DosageDoseAndRate {
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

  /// [type] The kind of dose or rate specified, for example, ordered or
  ///  calculated.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [doseRange] Amount of medication per dose.
  Range? get doseRange => throw _privateConstructorUsedError;

  /// [doseQuantity] Amount of medication per dose.
  Quantity? get doseQuantity => throw _privateConstructorUsedError;

  /// [rateRatio] Amount of medication per unit of time.
  Ratio? get rateRatio => throw _privateConstructorUsedError;

  /// [rateRange] Amount of medication per unit of time.
  Range? get rateRange => throw _privateConstructorUsedError;

  /// [rateQuantity] Amount of medication per unit of time.
  Quantity? get rateQuantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DosageDoseAndRateCopyWith<DosageDoseAndRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DosageDoseAndRateCopyWith<$Res> {
  factory $DosageDoseAndRateCopyWith(
          DosageDoseAndRate value, $Res Function(DosageDoseAndRate) then) =
      _$DosageDoseAndRateCopyWithImpl<$Res, DosageDoseAndRate>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      Range? doseRange,
      Quantity? doseQuantity,
      Ratio? rateRatio,
      Range? rateRange,
      Quantity? rateQuantity});

  $CodeableConceptCopyWith<$Res>? get type;
  $RangeCopyWith<$Res>? get doseRange;
  $QuantityCopyWith<$Res>? get doseQuantity;
  $RatioCopyWith<$Res>? get rateRatio;
  $RangeCopyWith<$Res>? get rateRange;
  $QuantityCopyWith<$Res>? get rateQuantity;
}

/// @nodoc
class _$DosageDoseAndRateCopyWithImpl<$Res, $Val extends DosageDoseAndRate>
    implements $DosageDoseAndRateCopyWith<$Res> {
  _$DosageDoseAndRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? doseRange = freezed,
    Object? doseQuantity = freezed,
    Object? rateRatio = freezed,
    Object? rateRange = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      doseRange: freezed == doseRange
          ? _value.doseRange
          : doseRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      doseQuantity: freezed == doseQuantity
          ? _value.doseQuantity
          : doseQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      rateRatio: freezed == rateRatio
          ? _value.rateRatio
          : rateRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      rateRange: freezed == rateRange
          ? _value.rateRange
          : rateRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      rateQuantity: freezed == rateQuantity
          ? _value.rateQuantity
          : rateQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get doseRange {
    if (_value.doseRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.doseRange!, (value) {
      return _then(_value.copyWith(doseRange: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get doseQuantity {
    if (_value.doseQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.doseQuantity!, (value) {
      return _then(_value.copyWith(doseQuantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatioCopyWith<$Res>? get rateRatio {
    if (_value.rateRatio == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.rateRatio!, (value) {
      return _then(_value.copyWith(rateRatio: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get rateRange {
    if (_value.rateRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.rateRange!, (value) {
      return _then(_value.copyWith(rateRange: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get rateQuantity {
    if (_value.rateQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.rateQuantity!, (value) {
      return _then(_value.copyWith(rateQuantity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DosageDoseAndRateImplCopyWith<$Res>
    implements $DosageDoseAndRateCopyWith<$Res> {
  factory _$$DosageDoseAndRateImplCopyWith(_$DosageDoseAndRateImpl value,
          $Res Function(_$DosageDoseAndRateImpl) then) =
      __$$DosageDoseAndRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      Range? doseRange,
      Quantity? doseQuantity,
      Ratio? rateRatio,
      Range? rateRange,
      Quantity? rateQuantity});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $RangeCopyWith<$Res>? get doseRange;
  @override
  $QuantityCopyWith<$Res>? get doseQuantity;
  @override
  $RatioCopyWith<$Res>? get rateRatio;
  @override
  $RangeCopyWith<$Res>? get rateRange;
  @override
  $QuantityCopyWith<$Res>? get rateQuantity;
}

/// @nodoc
class __$$DosageDoseAndRateImplCopyWithImpl<$Res>
    extends _$DosageDoseAndRateCopyWithImpl<$Res, _$DosageDoseAndRateImpl>
    implements _$$DosageDoseAndRateImplCopyWith<$Res> {
  __$$DosageDoseAndRateImplCopyWithImpl(_$DosageDoseAndRateImpl _value,
      $Res Function(_$DosageDoseAndRateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? doseRange = freezed,
    Object? doseQuantity = freezed,
    Object? rateRatio = freezed,
    Object? rateRange = freezed,
    Object? rateQuantity = freezed,
  }) {
    return _then(_$DosageDoseAndRateImpl(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      doseRange: freezed == doseRange
          ? _value.doseRange
          : doseRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      doseQuantity: freezed == doseQuantity
          ? _value.doseQuantity
          : doseQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      rateRatio: freezed == rateRatio
          ? _value.rateRatio
          : rateRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      rateRange: freezed == rateRange
          ? _value.rateRange
          : rateRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      rateQuantity: freezed == rateQuantity
          ? _value.rateQuantity
          : rateQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DosageDoseAndRateImpl extends _DosageDoseAndRate {
  const _$DosageDoseAndRateImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      this.doseRange,
      this.doseQuantity,
      this.rateRatio,
      this.rateRange,
      this.rateQuantity})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$DosageDoseAndRateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DosageDoseAndRateImplFromJson(json);

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

  /// [type] The kind of dose or rate specified, for example, ordered or
  ///  calculated.
  @override
  final CodeableConcept? type;

  /// [doseRange] Amount of medication per dose.
  @override
  final Range? doseRange;

  /// [doseQuantity] Amount of medication per dose.
  @override
  final Quantity? doseQuantity;

  /// [rateRatio] Amount of medication per unit of time.
  @override
  final Ratio? rateRatio;

  /// [rateRange] Amount of medication per unit of time.
  @override
  final Range? rateRange;

  /// [rateQuantity] Amount of medication per unit of time.
  @override
  final Quantity? rateQuantity;

  @override
  String toString() {
    return 'DosageDoseAndRate(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, doseRange: $doseRange, doseQuantity: $doseQuantity, rateRatio: $rateRatio, rateRange: $rateRange, rateQuantity: $rateQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DosageDoseAndRateImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.doseRange, doseRange) ||
                other.doseRange == doseRange) &&
            (identical(other.doseQuantity, doseQuantity) ||
                other.doseQuantity == doseQuantity) &&
            (identical(other.rateRatio, rateRatio) ||
                other.rateRatio == rateRatio) &&
            (identical(other.rateRange, rateRange) ||
                other.rateRange == rateRange) &&
            (identical(other.rateQuantity, rateQuantity) ||
                other.rateQuantity == rateQuantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      doseRange,
      doseQuantity,
      rateRatio,
      rateRange,
      rateQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DosageDoseAndRateImplCopyWith<_$DosageDoseAndRateImpl> get copyWith =>
      __$$DosageDoseAndRateImplCopyWithImpl<_$DosageDoseAndRateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DosageDoseAndRateImplToJson(
      this,
    );
  }
}

abstract class _DosageDoseAndRate extends DosageDoseAndRate {
  const factory _DosageDoseAndRate(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? type,
      final Range? doseRange,
      final Quantity? doseQuantity,
      final Ratio? rateRatio,
      final Range? rateRange,
      final Quantity? rateQuantity}) = _$DosageDoseAndRateImpl;
  const _DosageDoseAndRate._() : super._();

  factory _DosageDoseAndRate.fromJson(Map<String, dynamic> json) =
      _$DosageDoseAndRateImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] The kind of dose or rate specified, for example, ordered or
  ///  calculated.
  CodeableConcept? get type;
  @override

  /// [doseRange] Amount of medication per dose.
  Range? get doseRange;
  @override

  /// [doseQuantity] Amount of medication per dose.
  Quantity? get doseQuantity;
  @override

  /// [rateRatio] Amount of medication per unit of time.
  Ratio? get rateRatio;
  @override

  /// [rateRange] Amount of medication per unit of time.
  Range? get rateRange;
  @override

  /// [rateQuantity] Amount of medication per unit of time.
  Quantity? get rateQuantity;
  @override
  @JsonKey(ignore: true)
  _$$DosageDoseAndRateImplCopyWith<_$DosageDoseAndRateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
