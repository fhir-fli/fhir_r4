// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchPaymentNotice extends SearchResource {
  SearchPaymentNotice created(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}created'] =
        value.toString();
    return this;
  }

  SearchPaymentNotice identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchPaymentNotice paymentStatus(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}payment_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchPaymentNotice status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}