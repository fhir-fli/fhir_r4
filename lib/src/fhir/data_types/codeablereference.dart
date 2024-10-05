import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class CodeableReference {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final CodeableConcept? concept;
  final Reference? reference;

  CodeableReference({
    this.id,
    this.extension_,
    this.concept,
    this.reference,
  });

}



