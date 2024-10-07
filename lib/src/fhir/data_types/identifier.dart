import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Identifier extends DataType {
  Identifier({
    super.id,
    super.extension_,
    this.use,
    this.useElement,
    this.type,
    this.system,
    this.systemElement,
    this.value,
    this.valueElement,
    this.period,
    this.assigner,
  });

  final FhirCode? use;
  final Element? useElement;
  final CodeableConcept? type;
  final FhirUri? system;
  final Element? systemElement;
  final FhirString? value;
  final Element? valueElement;
  final Period? period;
  final Reference? assigner;
  @override
  Identifier clone() => throw UnimplementedError();
}
