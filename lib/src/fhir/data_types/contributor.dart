import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Contributor extends DataType {
  Contributor({
    super.id,
    super.extension_,
    required this.type,
    this.typeElement,
    required this.name,
    this.nameElement,
    this.contact,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode type;
  final Element? typeElement;
  final FhirString name;
  final Element? nameElement;
  final List<ContactDetail>? contact;
  @override
  Contributor clone() => throw UnimplementedError();
}
