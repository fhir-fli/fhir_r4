import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class ContactDetail extends DataType {
  ContactDetail({
    super.id,
    super.extension_,
    this.name,
    this.nameElement,
    this.telecom,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString? name;
  final Element? nameElement;
  final List<ContactPoint>? telecom;
  @override
  ContactDetail clone() => throw UnimplementedError();
}
