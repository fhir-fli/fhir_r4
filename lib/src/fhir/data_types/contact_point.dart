import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class ContactPoint extends DataType {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode? system;
  final Element? systemElement;
  final FhirString? value;
  final Element? valueElement;
  final FhirCode? use;
  final Element? useElement;
  final FhirPositiveInt? rank;
  final Element? rankElement;
  final Period? period;
  @override
  ContactPoint clone() => throw UnimplementedError();
}
