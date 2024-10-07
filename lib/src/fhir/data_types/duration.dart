import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  @override
  FhirDuration clone() => throw UnimplementedError();
}
