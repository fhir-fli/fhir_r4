import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DiagnosticReportMedia {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String comment;
  final PrimitiveElement Comment;
  final Reference link;
  const DiagnosticReportMedia({
    this.id,
    this.extension,
    this.modifierExtension,
    this.comment,
    this.Comment,
    required this.link,
  });
}
