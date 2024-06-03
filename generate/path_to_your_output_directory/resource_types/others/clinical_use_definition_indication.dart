import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ClinicalUseDefinition_Indication] A single issue - either an
/// indication, contraindication, interaction or an undesirable effect for a
/// medicinal product, medication, device or procedure.

@freezed
class ClinicalUseDefinition_Indication with _$ClinicalUseDefinition_Indication {
  const ClinicalUseDefinition_Indication._();

  const factory ClinicalUseDefinition_Indication({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [diseaseSymptomProcedure] The situation that is being documented as an
/// indicaton for this item.

    @JsonKey(name: 'diseaseSymptomProcedure') CodeableReference? diseaseSymptomProcedure,
/// [diseaseStatus] The status of the disease or symptom for the
/// indication, for example "chronic" or "metastatic".

    @JsonKey(name: 'diseaseStatus') CodeableReference? diseaseStatus,
/// [comorbidity] A comorbidity (concurrent condition) or coinfection as
/// part of the indication.

    @JsonKey(name: 'comorbidity') List<List<CodeableReference>>? comorbidity,
/// [intendedEffect] The intended effect, aim or strategy to be achieved.

    @JsonKey(name: 'intendedEffect') CodeableReference? intendedEffect,
/// [durationRange] Timing or duration information, that may be associated
/// with use with the indicated condition e.g. Adult patients suffering from
/// myocardial infarction (from a few days until less than 35 days), ischaemic
/// stroke (from 7 days until less than 6 months).

    @JsonKey(name: 'durationRange') Range? durationRange,
/// [durationString] Timing or duration information, that may be associated
/// with use with the indicated condition e.g. Adult patients suffering from
/// myocardial infarction (from a few days until less than 35 days), ischaemic
/// stroke (from 7 days until less than 6 months).

    @JsonKey(name: 'durationString') String? durationString,
/// [_durationString] Extensions for durationString

    @JsonKey(name: '_durationString') PrimitiveElement? durationStringElement,
/// [undesirableEffect] An unwanted side effect or negative outcome that
/// may happen if you use the drug (or other subject of this resource) for this
/// indication.

    @JsonKey(name: 'undesirableEffect') List<List<Reference>>? undesirableEffect,
/// [applicability] An expression that returns true or false, indicating
/// whether the indication is applicable or not, after having applied its other
/// elements.

    @JsonKey(name: 'applicability') FhirExpression? applicability,
/// [otherTherapy] Information about the use of the medicinal product in
/// relation to other therapies described as part of the indication.

    @JsonKey(name: 'otherTherapy') List<List<ClinicalUseDefinition_OtherTherapy>>? otherTherapy,
  }) = _$ClinicalUseDefinition_Indication;

  @override
  String get fhirType => 'ClinicalUseDefinition_Indication';

  factory ClinicalUseDefinition_Indication.fromJson(Map<String, dynamic> json) =>
      _$ClinicalUseDefinition_IndicationFromJson(json);

  factory ClinicalUseDefinition_Indication.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalUseDefinition_Indication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinition_Indication.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinition_Indication cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ClinicalUseDefinition_Indication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinition_IndicationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
