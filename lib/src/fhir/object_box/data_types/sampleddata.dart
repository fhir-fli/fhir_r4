import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class SampledData {
  SampledData({
    this.id,
    this.extension_,
    required this.origin,
    required this.period,
    this.factor,
    this.lowerLimit,
    this.upperLimit,
    required this.dimensions,
    this.data,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToOne<Quantity> origin = ToOne<Quantity>();
  double period;
  double? factor;
  double? lowerLimit;
  double? upperLimit;
  int dimensions;
  String? data;
}
