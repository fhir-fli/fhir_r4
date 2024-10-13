// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxParameterDefinition {
  ObjectBoxParameterDefinition({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    this.name,
    ObjectBoxElement? nameElement,
    required this.use,
    ObjectBoxElement? useElement,
    this.min,
    ObjectBoxElement? minElement,
    this.max,
    ObjectBoxElement? maxElement,
    this.documentation,
    ObjectBoxElement? documentationElement,
    required this.type,
    ObjectBoxElement? typeElement,
    this.profile,
    ObjectBoxElement? profileElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.nameElement.target = nameElement;
    this.useElement.target = useElement;
    this.minElement.target = minElement;
    this.maxElement.target = maxElement;
    this.documentationElement.target = documentationElement;
    this.typeElement.target = typeElement;
    this.profileElement.target = profileElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String use;
  ToOne<ObjectBoxElement> useElement = ToOne<ObjectBoxElement>();
  int? min;
  ToOne<ObjectBoxElement> minElement = ToOne<ObjectBoxElement>();
  String? max;
  ToOne<ObjectBoxElement> maxElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement> documentationElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? profile;
  ToOne<ObjectBoxElement> profileElement = ToOne<ObjectBoxElement>();
}
