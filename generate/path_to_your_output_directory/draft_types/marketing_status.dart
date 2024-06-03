import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MarketingStatus] The marketing status describes the date when a
/// medicinal product is actually put on the market or the date as of which it
/// is no longer available.

@freezed
class MarketingStatus with _$MarketingStatus {
  const MarketingStatus._();

  const factory MarketingStatus({
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
/// [country] The country in which the marketing authorization has been
/// granted shall be specified It should be specified using the ISO 3166 ‑ 1
/// alpha-2 code elements.

    @JsonKey(name: 'country') CodeableConcept? country,
/// [jurisdiction] Where a Medicines Regulatory Agency has granted a
/// marketing authorization for which specific provisions within a jurisdiction
/// apply, the jurisdiction can be specified using an appropriate controlled
/// terminology The controlled term and the controlled term identifier shall be
/// specified.

    @JsonKey(name: 'jurisdiction') CodeableConcept? jurisdiction,
/// [status] This attribute provides information on the status of the
/// marketing of the medicinal product See ISO/TS 20443 for more information
/// and examples.

    @JsonKey(name: 'status') CodeableConcept? status,
/// [dateRange] The date when the Medicinal Product is placed on the market
/// by the Marketing Authorization Holder (or where applicable, the
/// manufacturer/distributor) in a country and/or jurisdiction shall be
/// provided A complete date consisting of day, month and year shall be
/// specified using the ISO 8601 date format NOTE “Placed on the market” refers
/// to the release of the Medicinal Product into the distribution chain.

    @JsonKey(name: 'dateRange') Period? dateRange,
/// [restoreDate] The date when the Medicinal Product is placed on the
/// market by the Marketing Authorization Holder (or where applicable, the
/// manufacturer/distributor) in a country and/or jurisdiction shall be
/// provided A complete date consisting of day, month and year shall be
/// specified using the ISO 8601 date format NOTE “Placed on the market” refers
/// to the release of the Medicinal Product into the distribution chain.

    @JsonKey(name: 'restoreDate') FhirDateTime? restoreDate,
/// [_restoreDate] Extensions for restoreDate

    @JsonKey(name: '_restoreDate') PrimitiveElement? restoreDateElement,
  }) = _$MarketingStatus;

  @override
  String get fhirType => 'MarketingStatus';

  factory MarketingStatus.fromJson(Map<String, dynamic> json) =>
      _$MarketingStatusFromJson(json);

  factory MarketingStatus.fromYaml(dynamic yaml) => yaml is String
      ? MarketingStatus.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MarketingStatus.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MarketingStatus cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MarketingStatus.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MarketingStatusFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
