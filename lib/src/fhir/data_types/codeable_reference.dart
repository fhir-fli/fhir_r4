import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class CodeableReference extends DataType {
  final CodeableConcept? concept;
  final Reference? reference;

  CodeableReference({
    super.id,
    super.extension_,
    this.concept,
    this.reference,
  });

@override
CodeableReference clone() => throw UnimplementedError();
}

