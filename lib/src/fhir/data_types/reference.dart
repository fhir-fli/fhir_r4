import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Reference extends DataType {
  Reference({
    super.id,
    super.extension_,
    this.reference,
    this.referenceElement,
    this.type,
    this.typeElement,
    this.identifier,
    this.display,
    this.displayElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString? reference;
  final Element? referenceElement;
  final FhirUri? type;
  final Element? typeElement;
  final Identifier? identifier;
  final FhirString? display;
  final Element? displayElement;
  @override
  Reference clone() => throw UnimplementedError();
}
