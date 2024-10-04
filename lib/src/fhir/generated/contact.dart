import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ContactPoint {
  final String id;
  final List<FhirExtension> extension_;
  final dynamic system;
  final PrimitiveElement systemElement;
  final String value;
  final PrimitiveElement valueElement;
  final dynamic use;
  final PrimitiveElement useElement;
  final FhirPositiveInt rank;
  final PrimitiveElement rankElement;
  final Period period;
  const ContactPoint({
    required this.id,
    required this.extension_,
    required this.system,
    required this.systemElement,
    required this.value,
    required this.valueElement,
    required this.use,
    required this.useElement,
    required this.rank,
    required this.rankElement,
    required this.period,
  });
}

@Data()
@JsonCodable()
class ContactDetail {
  final String id;
  final List<FhirExtension> extension_;
  final String name;
  final PrimitiveElement nameElement;
  final List<ContactPoint> telecom;
  const ContactDetail({
    required this.id,
    required this.extension_,
    required this.name,
    required this.nameElement,
    required this.telecom,
  });
}


