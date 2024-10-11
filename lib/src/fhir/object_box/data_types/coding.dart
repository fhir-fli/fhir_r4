import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Coding {
  Coding({
    this.id,
    this.extension_,
    this.system,
    this.systemElement,
    this.version,
    this.versionElement,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.userSelected,
    this.userSelectedElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? system;
  ToOne<Element>? systemElement = ToOne<Element>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String? code;
  ToOne<Element>? codeElement = ToOne<Element>();
  String? display;
  ToOne<Element>? displayElement = ToOne<Element>();
  bool? userSelected;
  ToOne<Element>? userSelectedElement = ToOne<Element>();
}
