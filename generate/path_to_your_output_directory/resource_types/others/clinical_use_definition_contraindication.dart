import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ClinicalUseDefinition_Contraindication] A single issue - either an
/// indication, contraindication, interaction or an undesirable effect for a
/// medicinal product, medication, device or procedure.

@freezed
class ClinicalUseDefinition_Contraindication with _$ClinicalUseDefinition_Contraindication {
  const ClinicalUseDefinition_Contraindication._();

  const factory ClinicalUseDefinition_Contraindication({
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
/// [diseaseSymptomProcedure] The situation that is being documented as
/// contraindicating against this item.

    @JsonKey(name: 'diseaseSymptomProcedure') CodeableReference? diseaseSymptomProcedure,
/// [diseaseStatus] The status of the disease or symptom for the
/// contraindication, for example "chronic" or "metastatic".

    @JsonKey(name: 'diseaseStatus') CodeableReference? diseaseStatus,
/// [comorbidity] A comorbidity (concurrent condition) or coinfection.

    @JsonKey(name: 'comorbidity') List<List<CodeableReference>>? comorbidity,
/// [indication] The indication which this is a contraidication for.

    @JsonKey(name: 'indication') List<List<Reference>>? indication,
/// [applicability] An expression that returns true or false, indicating
/// whether the indication is applicable or not, after having applied its other
/// elements.

    @JsonKey(name: 'applicability') FhirExpression? applicability,
/// [otherTherapy] Information about the use of the medicinal product in
/// relation to other therapies described as part of the contraindication.

    @JsonKey(name: 'otherTherapy') List<List<ClinicalUseDefinition_OtherTherapy>>? otherTherapy,
  }) = _$ClinicalUseDefinition_Contraindication;

  @override
  String get fhirType => 'ClinicalUseDefinition_Contraindication';

  factory ClinicalUseDefinition_Contraindication.fromJson(Map<String, dynamic> json) =>
      _$ClinicalUseDefinition_ContraindicationFromJson(json);

  factory ClinicalUseDefinition_Contraindication.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalUseDefinition_Contraindication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinition_Contraindication.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinition_Contraindication cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ClinicalUseDefinition_Contraindication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinition_ContraindicationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
