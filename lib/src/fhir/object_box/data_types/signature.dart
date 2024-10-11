import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Signature {
  Signature({
    this.id,
    this.extension_,
    required this.type,
    required this.when,
    this.whenElement,
    required this.who,
    this.onBehalfOf,
    this.targetFormat,
    this.targetFormatElement,
    this.sigFormat,
    this.sigFormatElement,
    this.data,
    this.dataElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<Coding> type = ToMany<Coding>();
  String when;
  ToOne<Element>? whenElement = ToOne<Element>();
  ToOne<Reference> who = ToOne<Reference>();
  ToOne<Reference>? onBehalfOf = ToOne<Reference>();
  String? targetFormat;
  ToOne<Element>? targetFormatElement = ToOne<Element>();
  String? sigFormat;
  ToOne<Element>? sigFormatElement = ToOne<Element>();
  String? data;
  ToOne<Element>? dataElement = ToOne<Element>();
}
