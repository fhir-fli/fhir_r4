import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class MarketingStatus extends BackboneType {
  final CodeableConcept? country;
  final CodeableConcept? jurisdiction;
  final CodeableConcept status;
  final Period? dateRange;
  final FhirDateTime? restoreDate;
  final Element? restoreDateElement;

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

@override
MarketingStatus clone() => throw UnimplementedError();
}

