import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ParameterDefinition {
  ParameterDefinition({
    this.id,
    this.extension_,
    this.name,
    this.nameElement,
    required this.use,
    this.useElement,
    this.min,
    this.minElement,
    this.max,
    this.maxElement,
    this.documentation,
    this.documentationElement,
    required this.type,
    this.typeElement,
    this.profile,
    this.profileElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String use;
  ToOne<Element>? useElement = ToOne<Element>();
  int? min;
  ToOne<Element>? minElement = ToOne<Element>();
  String? max;
  ToOne<Element>? maxElement = ToOne<Element>();
  String? documentation;
  ToOne<Element>? documentationElement = ToOne<Element>();
  String type;
  ToOne<Element>? typeElement = ToOne<Element>();
  String? profile;
  ToOne<Element>? profileElement = ToOne<Element>();
}
