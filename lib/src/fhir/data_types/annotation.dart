import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Annotation] /// A text note which also contains information about who made the statement
/// and when.
class Annotation extends DataType {
  Annotation({
    super.id,
    super.extension_,
    this.authorReference,
    this.authorString,
    this.authorStringElement,
    this.time,
    this.timeElement,
    required this.text,
    this.textElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [authorReference] /// The individual responsible for making the annotation.
  final Reference? authorReference;

  /// [authorString] /// The individual responsible for making the annotation.
  final FhirString? authorString;
  final Element? authorStringElement;

  /// [time] /// Indicates when this particular annotation was made.
  final FhirDateTime? time;
  final Element? timeElement;

  /// [text] /// The text of the annotation in markdown format.
  final FhirMarkdown text;
  final Element? textElement;
  @override
  Annotation clone() => throw UnimplementedError();
  Annotation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    Reference? authorReference,
    FhirString? authorString,
    Element? authorStringElement,
    FhirDateTime? time,
    Element? timeElement,
    FhirMarkdown? text,
    Element? textElement,
  }) {
    return Annotation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      authorReference: authorReference ?? this.authorReference,
      authorString: authorString ?? this.authorString,
      authorStringElement: authorStringElement ?? this.authorStringElement,
      time: time ?? this.time,
      timeElement: timeElement ?? this.timeElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
    );
  }
}
