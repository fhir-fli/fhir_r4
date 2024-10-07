import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [CodeableConcept] /// A concept that may be defined by a formal reference to a terminology or
/// ontology or may be provided by text.
class CodeableConcept extends DataType {
  CodeableConcept({
    super.id,
    super.extension_,
    this.coding,
    this.text,
    this.textElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [coding] /// A reference to a code defined by a terminology system.
  final List<Coding>? coding;

  /// [text] /// A human language representation of the concept as seen/selected/uttered by
  /// the user who entered the data and/or which represents the intended meaning
  /// of the user.
  final FhirString? text;
  final Element? textElement;
  @override
  CodeableConcept clone() => throw UnimplementedError();
  CodeableConcept copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<Coding>? coding,
    FhirString? text,
    Element? textElement,
  }) {
    return CodeableConcept(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      coding: coding ?? this.coding,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
    );
  }
}
