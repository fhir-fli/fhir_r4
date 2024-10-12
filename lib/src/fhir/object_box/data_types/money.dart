// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMoney {
  ObjectBoxMoney({
    this.id,
    this.extension_,
    this.value,
    this.valueElement,
    this.currency,
    this.currencyElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  double? value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
  String? currency;
  ToOne<ObjectBoxElement>? currencyElement = ToOne<ObjectBoxElement>();
}
