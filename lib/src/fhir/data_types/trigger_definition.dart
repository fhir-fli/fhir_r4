import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [TriggerDefinition] /// A description of a triggering event. Triggering events can be named events,
/// data events, or periodic, as determined by the type element.
class TriggerDefinition extends DataType {
  TriggerDefinition({
    super.id,
    super.extension_,
    required this.type,
    this.typeElement,
    this.name,
    this.nameElement,
    this.timingTiming,
    this.timingReference,
    this.timingDate,
    this.timingDateElement,
    this.timingDateTime,
    this.timingDateTimeElement,
    this.data,
    this.condition,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of triggering event.
  final FhirCode type;
  final Element? typeElement;

  /// [name] /// A formal name for the event. This may be an absolute URI that identifies
  /// the event formally (e.g. from a trigger registry), or a simple relative URI
  /// that identifies the event in a local context.
  final FhirString? name;
  final Element? nameElement;

  /// [timingTiming] /// The timing of the event (if this is a periodic trigger).
  final Timing? timingTiming;

  /// [timingReference] /// The timing of the event (if this is a periodic trigger).
  final Reference? timingReference;

  /// [timingDate] /// The timing of the event (if this is a periodic trigger).
  final FhirDate? timingDate;
  final Element? timingDateElement;

  /// [timingDateTime] /// The timing of the event (if this is a periodic trigger).
  final FhirDateTime? timingDateTime;
  final Element? timingDateTimeElement;

  /// [data] /// The triggering data of the event (if this is a data trigger). If more than
  /// one data is requirement is specified, then all the data requirements must
  /// be true.
  final List<DataRequirement>? data;

  /// [condition] /// A boolean-valued expression that is evaluated in the context of the
  /// container of the trigger definition and returns whether or not the trigger
  /// fires.
  final FhirExpression? condition;
  @override
  TriggerDefinition clone() => throw UnimplementedError();
  TriggerDefinition copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? type,
    Element? typeElement,
    FhirString? name,
    Element? nameElement,
    Timing? timingTiming,
    Reference? timingReference,
    FhirDate? timingDate,
    Element? timingDateElement,
    FhirDateTime? timingDateTime,
    Element? timingDateTimeElement,
    List<DataRequirement>? data,
    FhirExpression? condition,
  }) {
    return TriggerDefinition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      timingTiming: timingTiming ?? this.timingTiming,
      timingReference: timingReference ?? this.timingReference,
      timingDate: timingDate ?? this.timingDate,
      timingDateElement: timingDateElement ?? this.timingDateElement,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      timingDateTimeElement:
          timingDateTimeElement ?? this.timingDateTimeElement,
      data: data ?? this.data,
      condition: condition ?? this.condition,
    );
  }
}
