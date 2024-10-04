import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImmunizationProtocolApplied {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String series;
  final PrimitiveElement Series;
  final Reference authority;
  final List<CodeableConcept> targetDisease;
  final double doseNumberPositiveInt;
  final PrimitiveElement DoseNumberPositiveInt;
  final String doseNumberString;
  final PrimitiveElement DoseNumberString;
  final double seriesDosesPositiveInt;
  final PrimitiveElement SeriesDosesPositiveInt;
  final String seriesDosesString;
  final PrimitiveElement SeriesDosesString;
  const ImmunizationProtocolApplied({
    this.id,
    this.extension,
    this.modifierExtension,
    this.series,
    this.Series,
    this.authority,
    this.targetDisease,
    this.doseNumberPositiveInt,
    this.DoseNumberPositiveInt,
    this.doseNumberString,
    this.DoseNumberString,
    this.seriesDosesPositiveInt,
    this.SeriesDosesPositiveInt,
    this.seriesDosesString,
    this.SeriesDosesString,
  });
}
