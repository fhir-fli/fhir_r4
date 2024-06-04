// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dosage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DosageImpl _$$DosageImplFromJson(Map<String, dynamic> json) => _$DosageImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: json['sequence'] == null
          ? null
          : FhirInteger.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      text: json['text'] as String?,
      textElement: json['_text'] == null
          ? null
          : Element.fromJson(json['_text'] as Map<String, dynamic>),
      additionalInstruction: (json['additionalInstruction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      patientInstruction: json['patientInstruction'] as String?,
      patientInstructionElement: json['_patientInstruction'] == null
          ? null
          : Element.fromJson(
              json['_patientInstruction'] as Map<String, dynamic>),
      timing: json['timing'] == null
          ? null
          : Timing.fromJson(json['timing'] as Map<String, dynamic>),
      asNeededBoolean: json['asNeededBoolean'] == null
          ? null
          : FhirBoolean.fromJson(json['asNeededBoolean']),
      asNeededBooleanElement: json['_asNeededBoolean'] == null
          ? null
          : Element.fromJson(json['_asNeededBoolean'] as Map<String, dynamic>),
      asNeededCodeableConcept: json['asNeededCodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['asNeededCodeableConcept'] as Map<String, dynamic>),
      site: json['site'] == null
          ? null
          : CodeableConcept.fromJson(json['site'] as Map<String, dynamic>),
      route: json['route'] == null
          ? null
          : CodeableConcept.fromJson(json['route'] as Map<String, dynamic>),
      method: json['method'] == null
          ? null
          : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
      doseAndRate: (json['doseAndRate'] as List<dynamic>?)
          ?.map((e) => DosageDoseAndRate.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxDosePerPeriod: json['maxDosePerPeriod'] == null
          ? null
          : Ratio.fromJson(json['maxDosePerPeriod'] as Map<String, dynamic>),
      maxDosePerAdministration: json['maxDosePerAdministration'] == null
          ? null
          : Quantity.fromJson(
              json['maxDosePerAdministration'] as Map<String, dynamic>),
      maxDosePerLifetime: json['maxDosePerLifetime'] == null
          ? null
          : Quantity.fromJson(
              json['maxDosePerLifetime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DosageImplToJson(_$DosageImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('sequence', instance.sequence?.toJson());
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  writeNotNull('text', instance.text);
  writeNotNull('_text', instance.textElement?.toJson());
  writeNotNull('additionalInstruction',
      instance.additionalInstruction?.map((e) => e.toJson()).toList());
  writeNotNull('patientInstruction', instance.patientInstruction);
  writeNotNull(
      '_patientInstruction', instance.patientInstructionElement?.toJson());
  writeNotNull('timing', instance.timing?.toJson());
  writeNotNull('asNeededBoolean', instance.asNeededBoolean?.toJson());
  writeNotNull('_asNeededBoolean', instance.asNeededBooleanElement?.toJson());
  writeNotNull(
      'asNeededCodeableConcept', instance.asNeededCodeableConcept?.toJson());
  writeNotNull('site', instance.site?.toJson());
  writeNotNull('route', instance.route?.toJson());
  writeNotNull('method', instance.method?.toJson());
  writeNotNull(
      'doseAndRate', instance.doseAndRate?.map((e) => e.toJson()).toList());
  writeNotNull('maxDosePerPeriod', instance.maxDosePerPeriod?.toJson());
  writeNotNull(
      'maxDosePerAdministration', instance.maxDosePerAdministration?.toJson());
  writeNotNull('maxDosePerLifetime', instance.maxDosePerLifetime?.toJson());
  return val;
}

_$DosageDoseAndRateImpl _$$DosageDoseAndRateImplFromJson(
        Map<String, dynamic> json) =>
    _$DosageDoseAndRateImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      doseRange: json['doseRange'] == null
          ? null
          : Range.fromJson(json['doseRange'] as Map<String, dynamic>),
      doseQuantity: json['doseQuantity'] == null
          ? null
          : Quantity.fromJson(json['doseQuantity'] as Map<String, dynamic>),
      rateRatio: json['rateRatio'] == null
          ? null
          : Ratio.fromJson(json['rateRatio'] as Map<String, dynamic>),
      rateRange: json['rateRange'] == null
          ? null
          : Range.fromJson(json['rateRange'] as Map<String, dynamic>),
      rateQuantity: json['rateQuantity'] == null
          ? null
          : Quantity.fromJson(json['rateQuantity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DosageDoseAndRateImplToJson(
    _$DosageDoseAndRateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('doseRange', instance.doseRange?.toJson());
  writeNotNull('doseQuantity', instance.doseQuantity?.toJson());
  writeNotNull('rateRatio', instance.rateRatio?.toJson());
  writeNotNull('rateRange', instance.rateRange?.toJson());
  writeNotNull('rateQuantity', instance.rateQuantity?.toJson());
  return val;
}
