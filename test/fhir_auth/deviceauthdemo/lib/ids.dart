import 'package:fhir_primitives/fhir_primitives.dart';

mixin Api {
  static const schema = 'dev.fhirfli.mobileauthdemo';

  /// redirect url for oauth2 authentication
  static final fhirCallback = FhirUri('dev.fhirfli.mobileauthdemo:/callback');

  /// HAPI
  static const hapiUrl = 'http://hapi.fhir.org/baseR4';

  /// Aidbox
  static const aidboxClientId = 'mobileauthdemo';
  static const aidboxUrl = 'https://mobileauthdemo.aidbox.app/fhir';

  /// user = user@mail.com
  /// pw = password

  /// GCS
  static const gcsUrl = 'https://healthcare.googleapis.com/v1/projects'
      '/demos-322021/locations/us-central1/datasets/mayjuun/fhirStores/dev/fhir';
  static const gcsClientId =
      '691103016946-osqfkktjkhed64scjr0rdh5g59sao2bb.apps.googleusercontent.com';

  /// Meld
  static const meldClientId = '604185a0-efcd-4bee-aa29-d0f237adbab3';
  static const meldUrl = 'https://gw.interop.community/MayJuun/data';

  /// Azure
  static const azureClientId = '';
  static const azureUrl = '';

  /// Epic
  static const epicClientId = '3fa5caf9-8a98-4828-92de-59e66bcb2064';
  static const epicUrl = 'https://fhir.epic.com/interconnect-fhir-oauth/';
}
