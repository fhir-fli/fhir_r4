// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchVisionPrescription extends SearchResource {
  SearchVisionPrescription identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchVisionPrescription datewritten(FhirDateTime value,
      {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}datewritten'] =
        value.toString();
    return this;
  }

  SearchVisionPrescription status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
