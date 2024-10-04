import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class QuestionnaireResponseItem {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String linkId;
  final PrimitiveElement LinkId;
  final FhirUri definition;
  final PrimitiveElement Definition;
  final String text;
  final PrimitiveElement Text;
  final List<QuestionnaireResponseAnswer> answer;
  final List<QuestionnaireResponseItem> item;
  const QuestionnaireResponseItem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.linkId,
    this.LinkId,
    this.definition,
    this.Definition,
    this.text,
    this.Text,
    this.answer,
    this.item,
  });
}
