import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [CodeableReference] /// A reference to a resource (by instance), or instead, a reference to a
/// concept defined in a terminology or ontology (by class).
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

  /// [concept] /// A reference to a concept - e.g. the information is identified by its
  /// general class to the degree of precision found in the terminology.
  final CodeableConcept? concept;

  /// [reference] /// A reference to a resource the provides exact details about the information
  /// being referenced.
  final Reference? reference;
  @override
  CodeableReference clone() => throw UnimplementedError();
  CodeableReference copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    CodeableConcept? concept,
    Reference? reference,
  }) {
    return CodeableReference(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      concept: concept ?? this.concept,
      reference: reference ?? this.reference,
    );
  }
}
