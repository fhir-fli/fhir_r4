import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [MarketingStatus] /// The marketing status describes the date when a medicinal product is
/// actually put on the market or the date as of which it is no longer
/// available.
class MarketingStatus extends BackboneType {
  MarketingStatus({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.country,
    this.jurisdiction,
    required this.status,
    this.dateRange,
    this.restoreDate,
    this.restoreDateElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [country] /// The country in which the marketing authorisation has been granted shall be
  /// specified It should be specified using the ISO 3166 ‑ 1 alpha-2 code
  /// elements.
  final CodeableConcept? country;

  /// [jurisdiction] /// Where a Medicines Regulatory Agency has granted a marketing authorisation
  /// for which specific provisions within a jurisdiction apply, the jurisdiction
  /// can be specified using an appropriate controlled terminology The controlled
  /// term and the controlled term identifier shall be specified.
  final CodeableConcept? jurisdiction;

  /// [status] /// This attribute provides information on the status of the marketing of the
  /// medicinal product See ISO/TS 20443 for more information and examples.
  final CodeableConcept status;

  /// [dateRange] /// The date when the Medicinal Product is placed on the market by the
  /// Marketing Authorisation Holder (or where applicable, the
  /// manufacturer/distributor) in a country and/or jurisdiction shall be
  /// provided A complete date consisting of day, month and year shall be
  /// specified using the ISO 8601 date format NOTE “Placed on the market” refers
  /// to the release of the Medicinal Product into the distribution chain.
  final Period? dateRange;

  /// [restoreDate] /// The date when the Medicinal Product is placed on the market by the
  /// Marketing Authorisation Holder (or where applicable, the
  /// manufacturer/distributor) in a country and/or jurisdiction shall be
  /// provided A complete date consisting of day, month and year shall be
  /// specified using the ISO 8601 date format NOTE “Placed on the market” refers
  /// to the release of the Medicinal Product into the distribution chain.
  final FhirDateTime? restoreDate;
  final Element? restoreDateElement;
  @override
  MarketingStatus clone() => throw UnimplementedError();
  MarketingStatus copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? country,
    CodeableConcept? jurisdiction,
    CodeableConcept? status,
    Period? dateRange,
    FhirDateTime? restoreDate,
    Element? restoreDateElement,
  }) {
    return MarketingStatus(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      country: country ?? this.country,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      status: status ?? this.status,
      dateRange: dateRange ?? this.dateRange,
      restoreDate: restoreDate ?? this.restoreDate,
      restoreDateElement: restoreDateElement ?? this.restoreDateElement,
    );
  }
}
