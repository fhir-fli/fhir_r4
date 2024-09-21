mixin Api {
  /// Cerner
  static const String cernerPatientClientId =
      '3fa5caf9-8a98-4828-92de-59e66bcb2064';
  static const String cernerClinicianClientId =
      '8a50630d-830f-479b-b738-f0b4ac07004d';
  static const String cernerUrl =
      'https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d';

  /// user = user@mail.com
  /// pw = password

  /// HAPI
  static const String hapiUrl = 'http://hapi.fhir.org/baseR4';

  /// GCS
  static const String gcsUrl = 'https://healthcare.googleapis.com/v1/projects'
      '/demos-322021/locations/us-central1/datasets/mayjuun/fhirStores/dev/fhir';
  static const String gcsClientId = '';

  /// Meld
  static const String meldClientId = '7cf38a3c-ae85-419e-b3ee-a35094797aca';
  static const String meldUrl = 'https://gw.interop.community/MayJuun/data';

  /// Epic
  static const String epicPatientClientId =
      '3fa5caf9-8a98-4828-92de-59e66bcb2064';
  static const String epicClinicianClientId =
      '8a50630d-830f-479b-b738-f0b4ac07004d';
  static const String epicUrl =
      'https://fhir.epic.com/interconnect-fhir-oauth/api/FHIR/R4';

  /// Patient Username: fhircamila
  /// Patient Password: epicepic1
  ///
  /// Provider Username: FHIR
  /// Provider Password: EpicFhir11!
}
