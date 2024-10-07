import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class CodeableReference extends DataType {
  CodeableReference({
    super.id,
    super.extension_,
    this.concept,
    this.reference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? concept;
  final Reference? reference;
  @override
  CodeableReference clone() => throw UnimplementedError();
}
