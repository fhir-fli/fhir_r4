// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSampledData {
  ObjectBoxSampledData({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    ObjectBoxQuantity? origin,
    required this.period,
    ObjectBoxElement? periodElement,
    this.factor,
    ObjectBoxElement? factorElement,
    this.lowerLimit,
    ObjectBoxElement? lowerLimitElement,
    this.upperLimit,
    ObjectBoxElement? upperLimitElement,
    required this.dimensions,
    ObjectBoxElement? dimensionsElement,
    this.data,
    ObjectBoxElement? dataElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.origin.target = origin;
    this.periodElement.target = periodElement;
    this.factorElement.target = factorElement;
    this.lowerLimitElement.target = lowerLimitElement;
    this.upperLimitElement.target = upperLimitElement;
    this.dimensionsElement.target = dimensionsElement;
    this.dataElement.target = dataElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity> origin = ToOne<ObjectBoxQuantity>();
  double period;
  ToOne<ObjectBoxElement> periodElement = ToOne<ObjectBoxElement>();
  double? factor;
  ToOne<ObjectBoxElement> factorElement = ToOne<ObjectBoxElement>();
  double? lowerLimit;
  ToOne<ObjectBoxElement> lowerLimitElement = ToOne<ObjectBoxElement>();
  double? upperLimit;
  ToOne<ObjectBoxElement> upperLimitElement = ToOne<ObjectBoxElement>();
  int dimensions;
  ToOne<ObjectBoxElement> dimensionsElement = ToOne<ObjectBoxElement>();
  String? data;
  ToOne<ObjectBoxElement> dataElement = ToOne<ObjectBoxElement>();
}
