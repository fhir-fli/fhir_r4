// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSampledData {
  ObjectBoxSampledData({
    this.id,
    this.extension_,
    required this.origin,
    required this.period,
    this.periodElement,
    this.factor,
    this.factorElement,
    this.lowerLimit,
    this.lowerLimitElement,
    this.upperLimit,
    this.upperLimitElement,
    required this.dimensions,
    this.dimensionsElement,
    this.data,
    this.dataElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity> origin = ToOne<ObjectBoxQuantity>();
  double period;
  ToOne<ObjectBoxElement>? periodElement = ToOne<ObjectBoxElement>();
  double? factor;
  ToOne<ObjectBoxElement>? factorElement = ToOne<ObjectBoxElement>();
  double? lowerLimit;
  ToOne<ObjectBoxElement>? lowerLimitElement = ToOne<ObjectBoxElement>();
  double? upperLimit;
  ToOne<ObjectBoxElement>? upperLimitElement = ToOne<ObjectBoxElement>();
  int dimensions;
  ToOne<ObjectBoxElement>? dimensionsElement = ToOne<ObjectBoxElement>();
  String? data;
  ToOne<ObjectBoxElement>? dataElement = ToOne<ObjectBoxElement>();
}
