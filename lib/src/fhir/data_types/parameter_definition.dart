import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class ParameterDefinition extends DataType {
  ParameterDefinition({
    super.id,
    super.extension_,
    this.name,
    this.nameElement,
    required this.use,
    this.useElement,
    this.min,
    this.minElement,
    this.max,
    this.maxElement,
    this.documentation,
    this.documentationElement,
    required this.type,
    this.typeElement,
    this.profile,
    this.profileElement,
  });

  final FhirCode? name;
  final Element? nameElement;
  final FhirCode use;
  final Element? useElement;
  final FhirInteger? min;
  final Element? minElement;
  final FhirString? max;
  final Element? maxElement;
  final FhirString? documentation;
  final Element? documentationElement;
  final FhirCode type;
  final Element? typeElement;
  final FhirCanonical? profile;
  final Element? profileElement;
  @override
  ParameterDefinition clone() => throw UnimplementedError();
}
