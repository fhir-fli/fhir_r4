import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class TriggerDefinition {
  final String id;
  final List<FhirExtension> extension;
  final dynamic type;
  final PrimitiveElement Type;
  final String name;
  final PrimitiveElement Name;
  final Timing timingTiming;
  final Reference timingReference;
  final String timingDate;
  final PrimitiveElement TimingDate;
  final String timingDateTime;
  final PrimitiveElement TimingDateTime;
  final List<DataRequirement> data;
  final FhirExpression condition;
}


