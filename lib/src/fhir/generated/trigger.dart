import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class TriggerDefinition {
  final String id;
  final List<FhirExtension> extension_;
  final dynamic type;
  final PrimitiveElement typeElement;
  final String name;
  final PrimitiveElement nameElement;
  final Timing timingTiming;
  final Reference timingReference;
  final String timingDate;
  final PrimitiveElement timingDateElement;
  final String timingDateTime;
  final PrimitiveElement timingDateTimeElement;
  final List<DataRequirement> data;
  final FhirExpression condition;
}


