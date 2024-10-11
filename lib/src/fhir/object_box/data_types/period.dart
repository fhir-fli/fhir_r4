import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Period {
  Period({
    this.id,
    this.extension_,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? start;
  ToOne<Element>? startElement = ToOne<Element>();
  String? end;
  ToOne<Element>? endElement = ToOne<Element>();
}
