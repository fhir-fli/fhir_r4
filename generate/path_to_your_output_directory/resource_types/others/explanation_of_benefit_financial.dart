import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ExplanationOfBenefit_Financial] This resource provides: the claim
/// details; adjudication details from the processing of a Claim; and
/// optionally account balance information, for informing the subscriber of the
/// benefits provided.

@freezed
class ExplanationOfBenefit_Financial with _$ExplanationOfBenefit_Financial {
  const ExplanationOfBenefit_Financial._();

  const factory ExplanationOfBenefit_Financial({
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
/// [type] Classification of benefit being provided.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [allowedUnsignedInt] The quantity of the benefit which is permitted
/// under the coverage.

    @JsonKey(name: 'allowedUnsignedInt') FhirUnsignedInt? allowedUnsignedInt,
/// [_allowedUnsignedInt] Extensions for allowedUnsignedInt

    @JsonKey(name: '_allowedUnsignedInt') PrimitiveElement? allowedUnsignedIntElement,
/// [allowedString] The quantity of the benefit which is permitted under
/// the coverage.

    @JsonKey(name: 'allowedString') String? allowedString,
/// [_allowedString] Extensions for allowedString

    @JsonKey(name: '_allowedString') PrimitiveElement? allowedStringElement,
/// [allowedMoney] The quantity of the benefit which is permitted under the
/// coverage.

    @JsonKey(name: 'allowedMoney') Money? allowedMoney,
/// [usedUnsignedInt] The quantity of the benefit which have been consumed
/// to date.

    @JsonKey(name: 'usedUnsignedInt') FhirUnsignedInt? usedUnsignedInt,
/// [_usedUnsignedInt] Extensions for usedUnsignedInt

    @JsonKey(name: '_usedUnsignedInt') PrimitiveElement? usedUnsignedIntElement,
/// [usedMoney] The quantity of the benefit which have been consumed to
/// date.

    @JsonKey(name: 'usedMoney') Money? usedMoney,
  }) = _$ExplanationOfBenefit_Financial;

  @override
  String get fhirType => 'ExplanationOfBenefit_Financial';

  factory ExplanationOfBenefit_Financial.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_FinancialFromJson(json);

  factory ExplanationOfBenefit_Financial.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefit_Financial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExplanationOfBenefit_Financial.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExplanationOfBenefit_Financial cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefit_Financial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExplanationOfBenefit_FinancialFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
