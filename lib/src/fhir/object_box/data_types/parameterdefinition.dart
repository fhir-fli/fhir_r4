import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ParameterDefinition {
  ParameterDefinition({
    this.id,
    this.extension_,
    this.name,
    required this.use,
    this.min,
    this.max,
    this.documentation,
    required this.type,
    this.profile,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? name;
  String use;
  int? min;
  String? max;
  String? documentation;
  String type;
  String? profile;
}
