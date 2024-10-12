// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxParameterDefinition {
  ObjectBoxParameterDefinition({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String use;
  ToOne<ObjectBoxElement>? useElement = ToOne<ObjectBoxElement>();
  int? min;
  ToOne<ObjectBoxElement>? minElement = ToOne<ObjectBoxElement>();
  String? max;
  ToOne<ObjectBoxElement>? maxElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement>? documentationElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? profile;
  ToOne<ObjectBoxElement>? profileElement = ToOne<ObjectBoxElement>();
}
