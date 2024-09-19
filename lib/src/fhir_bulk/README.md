# fhir_bulk
A package for dealing with FHIR flat-files or FHIR bulk data. This was recommended to us to develop by [ONC](https://www.healthit.gov/). FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7. 

It's pretty straight forward but here are some examples:
```Dart
/// Basic Patient Bulk Request
final BulkRequest request = BulkRequest.patient(
base: Uri.parse('http://hapi.fhir.org/baseR5'),);
final response = await request.request(headers: {'test': 'header'});

/// From Accounts ndjson file
final List<Resource> resources =
    await FhirBulk.fromFile('./test/fhir_bulk/ndjson/Account.ndjson');

/// From Accounts zip file
final List<Resource> resources = await FhirBulk.fromCompressedFile('./test/fhir_bulk/ndjson/account.zip');

/// From Accounts & MedicationRequest zip file
final List<Resource> resources = await FhirBulk.fromCompressedFile('./test/fhir_bulk/ndjson/accountMedRequest.zip');

/// From Account gzip file
final List<Resource> resources = await FhirBulk.fromCompressedFile('./test/fhir_bulk/ndjson/Account.ndjson.gz');

/// From MedicationRequest tar-gzip file
final List<Resource> resources = await FhirBulk.fromCompressedFile('./test/fhir_bulk/ndjson/tarGzip.tar.gz');

/// To Accounts ndjson
final List<Resource> resources = FhirBulk.fromNdJson(account);
final List<Resource> resourceList = <Resource>[];
resources.forEach(resourceList.add);
final String bulkString = FhirBulk.toNdJson(resourceList);

/// To MedicationRequest ndjson', () {
final List<Resource> resources = FhirBulk.fromNdJson(medicationRequest);
final List<Resource> resourceList = <Resource>[];
resources.forEach(resourceList.add);
final String bulkString = FhirBulk.toNdJson(resourceList);
```

FHIR® is a registered trademark of Health Level Seven International (HL7) and its use does not constitute an endorsement of products by HL7®