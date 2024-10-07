import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Count extends Quantity {

  Count({
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
Count clone() => throw UnimplementedError();
}

