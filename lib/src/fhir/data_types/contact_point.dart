import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ContactPoint extends DataType {
  final FhirCode? system;
  final Element? systemElement;
  final FhirString? value;
  final Element? valueElement;
  final FhirCode? use;
  final Element? useElement;
  final FhirPositiveInt? rank;
  final Element? rankElement;
  final Period? period;

  ContactPoint({
    super.id,
    super.extension_,
    this.system,
this.systemElement,
    this.value,
this.valueElement,
    this.use,
this.useElement,
    this.rank,
this.rankElement,
    this.period,
  });

@override
ContactPoint clone() => throw UnimplementedError();
}

