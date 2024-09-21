import 'package:fhir_r4/fhir_r4.dart';

mixin Api {
  static const String schema = 'dev.fhirfli.mobileauthdemo';

  /// redirect url for oauth2 authentication
  static final FhirUri fhirCallback =
      FhirUri('dev.fhirfli.mobileauthdemo:/callback');

  /// HAPI
  static const String hapiUrl = 'http://hapi.fhir.org/baseR4';

  /// Aidbox
  static const String aidboxClientId = 'mobileauthdemo';
  static const String aidboxUrl = 'https://mobileauthdemo.aidbox.app/fhir';

  /// user = user@mail.com
  /// pw = password

  /// GCS
  static const String gcsUrl = 'https://healthcare.googleapis.com/v1/projects'
      '/demos-322021/locations/us-central1/datasets/mayjuun/fhirStores/dev/fhir';
  static const String gcsClientId = '';

  /// Meld
  static const String meldClientId = '604185a0-efcd-4bee-aa29-d0f237adbab3';
  static const String meldUrl = 'https://gw.interop.community/MayJuun/data';

  /// Azure
  static const String azureClientId = '';
  static const String azureUrl = '';

  /// Epic
  static const String epicClientId = '3fa5caf9-8a98-4828-92de-59e66bcb2064';
  static const String epicUrl =
      'https://fhir.epic.com/interconnect-fhir-oauth/';
}
