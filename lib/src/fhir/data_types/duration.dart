import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class FhirDuration extends Quantity {

  FhirDuration({
    super.id,
    super.extension_,
    super.value,
super.valueElement,
    super.comparator,
super.comparatorElement,
    super.unit,
super.unitElement,
    super.system,
super.systemElement,
    super.code,
super.codeElement,
  });

@override
FhirDuration clone() => throw UnimplementedError();
}

