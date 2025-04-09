// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'vision_prescription.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $VisionPrescriptionCopyWith<T>
    extends $DomainResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FinancialResourceStatusCodes? status,
    FhirDateTime? created,
    Reference? patient,
    Reference? encounter,
    FhirDateTime? dateWritten,
    Reference? prescriber,
    List<VisionPrescriptionLensSpecification>? lensSpecification,
    bool? disallowExtensions,
  });
}

class _$VisionPrescriptionCopyWithImpl<T>
    implements $VisionPrescriptionCopyWith<T> {
  final VisionPrescription _value;
  final T Function(VisionPrescription) _then;

  _$VisionPrescriptionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? status = fhirSentinel,
    Object? created = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? dateWritten = fhirSentinel,
    Object? prescriber = fhirSentinel,
    Object? lensSpecification = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      VisionPrescription(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        status: status as FinancialResourceStatusCodes? ?? _value.status,
        created: created as FhirDateTime? ?? _value.created,
        patient: patient as Reference? ?? _value.patient,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        dateWritten: dateWritten as FhirDateTime? ?? _value.dateWritten,
        prescriber: prescriber as Reference? ?? _value.prescriber,
        lensSpecification:
            lensSpecification as List<VisionPrescriptionLensSpecification>? ??
                _value.lensSpecification,
      ),
    );
  }
}

extension VisionPrescriptionCopyWithExtension on VisionPrescription {
  $VisionPrescriptionCopyWith<VisionPrescription> get copyWith =>
      _$VisionPrescriptionCopyWithImpl<VisionPrescription>(
        this,
        (value) => value,
      );
}

abstract class $VisionPrescriptionLensSpecificationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? product,
    VisionEyes? eye,
    FhirDecimal? sphere,
    FhirDecimal? cylinder,
    FhirInteger? axis,
    List<VisionPrescriptionPrism>? prism,
    FhirDecimal? add,
    FhirDecimal? power,
    FhirDecimal? backCurve,
    FhirDecimal? diameter,
    Quantity? duration,
    FhirString? color,
    FhirString? brand,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$VisionPrescriptionLensSpecificationCopyWithImpl<T>
    implements $VisionPrescriptionLensSpecificationCopyWith<T> {
  final VisionPrescriptionLensSpecification _value;
  final T Function(VisionPrescriptionLensSpecification) _then;

  _$VisionPrescriptionLensSpecificationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? product = fhirSentinel,
    Object? eye = fhirSentinel,
    Object? sphere = fhirSentinel,
    Object? cylinder = fhirSentinel,
    Object? axis = fhirSentinel,
    Object? prism = fhirSentinel,
    Object? add = fhirSentinel,
    Object? power = fhirSentinel,
    Object? backCurve = fhirSentinel,
    Object? diameter = fhirSentinel,
    Object? duration = fhirSentinel,
    Object? color = fhirSentinel,
    Object? brand = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      VisionPrescriptionLensSpecification(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        product: product as CodeableConcept? ?? _value.product,
        eye: eye as VisionEyes? ?? _value.eye,
        sphere: identical(sphere, fhirSentinel)
            ? _value.sphere
            : sphere as FhirDecimal?,
        cylinder: identical(cylinder, fhirSentinel)
            ? _value.cylinder
            : cylinder as FhirDecimal?,
        axis:
            identical(axis, fhirSentinel) ? _value.axis : axis as FhirInteger?,
        prism: identical(prism, fhirSentinel)
            ? _value.prism
            : prism as List<VisionPrescriptionPrism>?,
        add: identical(add, fhirSentinel) ? _value.add : add as FhirDecimal?,
        power: identical(power, fhirSentinel)
            ? _value.power
            : power as FhirDecimal?,
        backCurve: identical(backCurve, fhirSentinel)
            ? _value.backCurve
            : backCurve as FhirDecimal?,
        diameter: identical(diameter, fhirSentinel)
            ? _value.diameter
            : diameter as FhirDecimal?,
        duration: identical(duration, fhirSentinel)
            ? _value.duration
            : duration as Quantity?,
        color: identical(color, fhirSentinel)
            ? _value.color
            : color as FhirString?,
        brand: identical(brand, fhirSentinel)
            ? _value.brand
            : brand as FhirString?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension VisionPrescriptionLensSpecificationCopyWithExtension
    on VisionPrescriptionLensSpecification {
  $VisionPrescriptionLensSpecificationCopyWith<
          VisionPrescriptionLensSpecification>
      get copyWith => _$VisionPrescriptionLensSpecificationCopyWithImpl<
              VisionPrescriptionLensSpecification>(
            this,
            (value) => value,
          );
}

abstract class $VisionPrescriptionPrismCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDecimal? amount,
    VisionBase? base,
    bool? disallowExtensions,
  });
}

class _$VisionPrescriptionPrismCopyWithImpl<T>
    implements $VisionPrescriptionPrismCopyWith<T> {
  final VisionPrescriptionPrism _value;
  final T Function(VisionPrescriptionPrism) _then;

  _$VisionPrescriptionPrismCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? base = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      VisionPrescriptionPrism(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        amount: amount as FhirDecimal? ?? _value.amount,
        base: base as VisionBase? ?? _value.base,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension VisionPrescriptionPrismCopyWithExtension on VisionPrescriptionPrism {
  $VisionPrescriptionPrismCopyWith<VisionPrescriptionPrism> get copyWith =>
      _$VisionPrescriptionPrismCopyWithImpl<VisionPrescriptionPrism>(
        this,
        (value) => value,
      );
}
