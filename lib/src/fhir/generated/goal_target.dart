import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class GoalTarget {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept measure;
  final Quantity detailQuantity;
  final Range detailRange;
  final CodeableConcept detailCodeableConcept;
  final String detailString;
  final PrimitiveElement DetailString;
  final bool detailBoolean;
  final PrimitiveElement DetailBoolean;
  final double detailInteger;
  final PrimitiveElement DetailInteger;
  final Ratio detailRatio;
  final String dueDate;
  final PrimitiveElement DueDate;
  final FhirDuration dueDuration;
  const GoalTarget({
    this.id,
    this.extension,
    this.modifierExtension,
    this.measure,
    this.detailQuantity,
    this.detailRange,
    this.detailCodeableConcept,
    this.detailString,
    this.DetailString,
    this.detailBoolean,
    this.DetailBoolean,
    this.detailInteger,
    this.DetailInteger,
    this.detailRatio,
    this.dueDate,
    this.DueDate,
    this.dueDuration,
  });
}
