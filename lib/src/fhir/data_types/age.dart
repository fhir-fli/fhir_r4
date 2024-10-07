import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Age extends Quantity {

  Age({
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
Age clone() => throw UnimplementedError();
}

