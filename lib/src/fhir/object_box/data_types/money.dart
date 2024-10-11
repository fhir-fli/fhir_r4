import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Money {
  Money({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  double? value;
  ToOne<Element>? valueElement = ToOne<Element>();
  String? currency;
  ToOne<Element>? currencyElement = ToOne<Element>();
}
