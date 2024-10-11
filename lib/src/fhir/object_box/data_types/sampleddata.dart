import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class SampledData {
  SampledData({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToOne<Quantity> origin = ToOne<Quantity>();
  double period;
  ToOne<Element>? periodElement = ToOne<Element>();
  double? factor;
  ToOne<Element>? factorElement = ToOne<Element>();
  double? lowerLimit;
  ToOne<Element>? lowerLimitElement = ToOne<Element>();
  double? upperLimit;
  ToOne<Element>? upperLimitElement = ToOne<Element>();
  int dimensions;
  ToOne<Element>? dimensionsElement = ToOne<Element>();
  String? data;
  ToOne<Element>? dataElement = ToOne<Element>();
}
