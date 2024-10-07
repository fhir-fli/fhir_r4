import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Identifier extends DataType {
  final FhirCode? use;
  final Element? useElement;
  final CodeableConcept? type;
  final FhirUri? system;
  final Element? systemElement;
  final FhirString? value;
  final Element? valueElement;
  final Period? period;
  final Reference? assigner;

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

@override
Identifier clone() => throw UnimplementedError();
}

