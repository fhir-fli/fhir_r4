import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? country;
  final CodeableConcept? jurisdiction;
  final CodeableConcept status;
  final Period? dateRange;
  final FhirDateTime? restoreDate;
  final Element? restoreDateElement;
  @override
  MarketingStatus clone() => throw UnimplementedError();
}
