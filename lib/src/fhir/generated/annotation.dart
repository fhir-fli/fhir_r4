import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Annotation {
  final String id;
  final List<Extension> extension;
  final Reference authorReference;
  final String authorString;
  final PrimitiveElement AuthorString;
  final FhirDateTime time;
  final PrimitiveElement Time;
  final FhirMarkdown text;
  final PrimitiveElement Text;
  const Annotation({
    this.id,
    this.extension,
    this.authorReference,
    this.authorString,
    this.AuthorString,
    this.time,
    this.Time,
    this.text,
    this.Text,
  });
}
