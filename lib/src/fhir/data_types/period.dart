import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Period] /// A time period defined by a start and end date and optionally time.
class Period extends DataType {
  Period({
    super.id,
    super.extension_,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [start] /// The start of the period. The boundary is inclusive.
  final FhirDateTime? start;
  final Element? startElement;

  /// [end] /// The end of the period. If the end of the period is missing, it means no end
  /// was known or planned at the time the instance was created. The start may be
  /// in the past, and the end date in the future, which means that period is
  /// expected/planned to end at that time.
  final FhirDateTime? end;
  final Element? endElement;
  @override
  Period clone() => throw UnimplementedError();
  Period copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDateTime? start,
    Element? startElement,
    FhirDateTime? end,
    Element? endElement,
  }) {
    return Period(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      start: start ?? this.start,
      startElement: startElement ?? this.startElement,
      end: end ?? this.end,
      endElement: endElement ?? this.endElement,
    );
  }
}
