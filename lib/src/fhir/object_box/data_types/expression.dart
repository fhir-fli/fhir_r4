import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class FhirExpression {
  FhirExpression({
    this.id,
    this.extension_,
    this.description,
    this.name,
    required this.language,
    this.expression,
    this.reference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? description;
  String? name;
  String language;
  String? expression;
  String? reference;
}
