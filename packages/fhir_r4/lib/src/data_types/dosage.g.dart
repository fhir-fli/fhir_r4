// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'dosage.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DosageCopyWith<T> extends $BackboneTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? sequence,
    FhirString? text,
    List<CodeableConcept>? additionalInstruction,
    FhirString? patientInstruction,
    Timing? timing,
    AsNeededXDosage? asNeededX,
    CodeableConcept? site,
    CodeableConcept? route,
    CodeableConcept? method,
    List<DosageDoseAndRate>? doseAndRate,
    Ratio? maxDosePerPeriod,
    Quantity? maxDosePerAdministration,
    Quantity? maxDosePerLifetime,
    bool? disallowExtensions,
  });
}

class _$DosageCopyWithImpl<T> implements $DosageCopyWith<T> {
  final Dosage _value;
  final T Function(Dosage) _then;

  _$DosageCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? text = fhirSentinel,
    Object? additionalInstruction = fhirSentinel,
    Object? patientInstruction = fhirSentinel,
    Object? timing = fhirSentinel,
    Object? asNeededX = fhirSentinel,
    Object? site = fhirSentinel,
    Object? route = fhirSentinel,
    Object? method = fhirSentinel,
    Object? doseAndRate = fhirSentinel,
    Object? maxDosePerPeriod = fhirSentinel,
    Object? maxDosePerAdministration = fhirSentinel,
    Object? maxDosePerLifetime = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Dosage(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: identical(sequence, fhirSentinel)
            ? _value.sequence
            : sequence as FhirInteger?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        additionalInstruction: identical(additionalInstruction, fhirSentinel)
            ? _value.additionalInstruction
            : additionalInstruction as List<CodeableConcept>?,
        patientInstruction: identical(patientInstruction, fhirSentinel)
            ? _value.patientInstruction
            : patientInstruction as FhirString?,
        timing:
            identical(timing, fhirSentinel) ? _value.timing : timing as Timing?,
        asNeededX: identical(asNeededX, fhirSentinel)
            ? _value.asNeededX
            : asNeededX as AsNeededXDosage?,
        site: identical(site, fhirSentinel)
            ? _value.site
            : site as CodeableConcept?,
        route: identical(route, fhirSentinel)
            ? _value.route
            : route as CodeableConcept?,
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as CodeableConcept?,
        doseAndRate: identical(doseAndRate, fhirSentinel)
            ? _value.doseAndRate
            : doseAndRate as List<DosageDoseAndRate>?,
        maxDosePerPeriod: identical(maxDosePerPeriod, fhirSentinel)
            ? _value.maxDosePerPeriod
            : maxDosePerPeriod as Ratio?,
        maxDosePerAdministration:
            identical(maxDosePerAdministration, fhirSentinel)
                ? _value.maxDosePerAdministration
                : maxDosePerAdministration as Quantity?,
        maxDosePerLifetime: identical(maxDosePerLifetime, fhirSentinel)
            ? _value.maxDosePerLifetime
            : maxDosePerLifetime as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DosageCopyWithExtension on Dosage {
  $DosageCopyWith<Dosage> get copyWith => _$DosageCopyWithImpl<Dosage>(
        this,
        (value) => value,
      );
}

abstract class $DosageDoseAndRateCopyWith<T> extends $ElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    CodeableConcept? type,
    DoseXDosageDoseAndRate? doseX,
    RateXDosageDoseAndRate? rateX,
    bool? disallowExtensions,
  });
}

class _$DosageDoseAndRateCopyWithImpl<T>
    implements $DosageDoseAndRateCopyWith<T> {
  final DosageDoseAndRate _value;
  final T Function(DosageDoseAndRate) _then;

  _$DosageDoseAndRateCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? type = fhirSentinel,
    Object? doseX = fhirSentinel,
    Object? rateX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DosageDoseAndRate(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        doseX: identical(doseX, fhirSentinel)
            ? _value.doseX
            : doseX as DoseXDosageDoseAndRate?,
        rateX: identical(rateX, fhirSentinel)
            ? _value.rateX
            : rateX as RateXDosageDoseAndRate?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DosageDoseAndRateCopyWithExtension on DosageDoseAndRate {
  $DosageDoseAndRateCopyWith<DosageDoseAndRate> get copyWith =>
      _$DosageDoseAndRateCopyWithImpl<DosageDoseAndRate>(
        this,
        (value) => value,
      );
}
