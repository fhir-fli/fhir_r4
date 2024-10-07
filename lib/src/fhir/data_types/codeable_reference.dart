import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class CodeableReference extends DataType {
  CodeableReference({
    super.id,
    super.extension_,
    this.concept,
    this.reference,
  });

  final CodeableConcept? concept;
  final Reference? reference;
  @override
  CodeableReference clone() => throw UnimplementedError();
}
