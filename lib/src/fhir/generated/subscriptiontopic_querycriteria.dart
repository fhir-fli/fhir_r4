import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubscriptionTopicQueryCriteria {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String previous;
  final PrimitiveElement Previous;
  final FhirCode resultForCreate;
  final PrimitiveElement ResultForCreate;
  final String current;
  final PrimitiveElement Current;
  final FhirCode resultForDelete;
  final PrimitiveElement ResultForDelete;
  final FhirBoolean requireBoth;
  final PrimitiveElement RequireBoth;
  const SubscriptionTopicQueryCriteria({
    this.id,
    this.extension,
    this.modifierExtension,
    this.previous,
    this.Previous,
    this.resultForCreate,
    this.ResultForCreate,
    this.current,
    this.Current,
    this.resultForDelete,
    this.ResultForDelete,
    this.requireBoth,
    this.RequireBoth,
  });
}
