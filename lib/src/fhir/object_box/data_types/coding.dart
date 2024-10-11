import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Coding {
  Coding({
    this.id,
    this.extension_,
    this.system,
    this.version,
    this.code,
    this.display,
    this.userSelected,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? system;
  String? version;
  String? code;
  String? display;
  bool? userSelected;
}
