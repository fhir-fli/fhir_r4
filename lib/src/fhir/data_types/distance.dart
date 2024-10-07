import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Distance extends Quantity {

  Distance({
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
Distance clone() => throw UnimplementedError();
}

