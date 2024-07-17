# fhir_auth

This package is supposed to allow easier authentication for FHIR applications. It's primary goal is to support SMART on FHIR, although it does also support login using a Google account, and I'm hoping to include AWS Amplify soon. I will say, this continues to be the most frustrating package to try and develop/support. I continue to feel as though, even though each server that I work with *SAYS* that they support SMART on FHIR, I still always struggle and fight with the process.

## Current examples in demo

|| Provider || Patient ||
|:-:|:-:|:-:|:-:|:-:|
||Standalone|Portal|Standalone|Portal||
|MELD|Web, Android|Web|Web, Android|Web|
|Google|Android|NA|Android|NA|
|Epic|Web|Web|Web|Web|
|Cerner|NA|NA|Web|Web|

You'll notice that I'm missing desktop authentication. It's on the todo list, but I've run into some trouble. So if anyone wants to open a PR for this, feel free.

## Full SMART on FHIR

All SMART on FHIR capabilities defined, all scopes allowed, all FHIR versions (Dstu2, Stu3, R4b, and R5) defined. Allows external standalone launches and internal portal launches. Supports both old scope scheme (read/write/*) and new scope scheme (c/r/u/d/s)

## Typical Flow

### SmartClient

```Dart
  final client = SmartFhirClient(
    fhirUri: FhirUri(url),
    clientId: clientId,
    redirectUri: fhirCallback,
    scopes: Scopes(
      clinicalScopes: [
        ClinicalScope(
          role: Role.patient,
          resourceType: R4ResourceType.Patient,
          interaction: Interaction.read,
        ),
      ],
    ).scopesList(),
    openid: true,
    offlineAccess: true
);
```

### Make Request

```dart
  await client.login();
  final request1 = FhirRequest.create(
    base: client.fhirUri!.value!,
    resource: _newPatient,
    fhirClient: client,
  );
  final response = await request1.request();
```

### Credentials

Just to assist, when you look at the demos, they all refer to an api.dart file. My file looks something like this:

```dart
mixin Api {
  /// redirect url for oauth2 authentication
  static final fhirCallback = FhirUri('com.myshiny.newapp://callback');
  /// because google apparently requires/prefers one slash at times
  static final googleFhirCallback = FhirUri('com.myshiny.newapp:/callback');

  /// GCS
  static const gcsUrl = 'https://healthcare.googleapis.com/v1/projects/'
      'brandnewdemo/locations/us-central1/'
      'datasets/demo/fhirStores/demo/fhir';
  static const gcsClientId =
      '1234567890-abcdefghijklmnopqrstuvwxyz.apps.googleusercontent.com';

  /// HAPI Server
  static const hapiUrl = 'https://hapi.fhir.org/baseR4';

  /// MELD
  static const meldClientId = '0eae5157-61bc-4d4b-a663-1b0bfdea3c16';
  static const meldUrl = 'https://meld.interop.community/Demo/data';

  /// Epic
  static const epicClientId = '5a13c447-56c0-4ebf-9788-7dd5374c9813';
  static const epicUrl = 'https://fhir.epic.com/interconnect-fhir-oauth/';
}
```

So once it's setup, it works reasonable well, it's the setup that's terrible. I'm going to do my best to document it here, but as always, your setup may be different.

## Setup

### Web

#### Redirects

One of the most important things to note about web/PWA is that you need to have a redirect in order to catch the token. This means you'll need to know where the redirect will be ahead of time. It's usually the same as your launch url, but with an extra path or subdirectory.

```sh
https://my-shiny-new-app.com/redirect.html
```

This means that you need to have ```redirect.html``` file present. You can just copy this:

```html
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Connexion Succeeded</title>
    <meta name="description"
        content="Simple, quick, standalone responsive placeholder without any additional resources">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
</body>
<script>
    window.opener.postMessage(window.location.href, '*');
</script>

</html>
```

And put it in the web folder of your flutter project. For test purposes (and only for test purposes), I've included a script you can use to test and ensure everything works, it runs on ```localhost:8888``` and so your redirect would be: ```http://localhost:8888/redirect.html```

Details about all of this can be found in this article [in this article](https://itnext.io/flutter-web-oauth-authentication-through-external-window-d890a7ff6463)

### MELD

To setup for Meld, you obviously need a Meld account. You can [signup here](https://meld.interop.community/). For the demo example for meld, I setup an app called webauthdemo. It has a clientId, launch and redirect URIs, and then scopes. This particular app only requires:

```sh
launch patient/Patient.* openid offline_access profile
```

In case anyone is interested, here is the manifest:

```json
{
  "software_id":null,
  "client_name":"webauthdemo",
  "client_uri":null,
  "logo_uri":null,
  "launch_url":"https://my-launch-url",
  "redirect_uris":["https://my-launch-url/redirect.html"],
  "scope":"launch patient/Patient.* openid offline_access profile",
  "token_endpoint_auth_method":"NONE",
  "fhirVersions":null,
  "briefDescription":"webauthdemo",
  "samplePatients":""
}
```

### Epic

1. You must register an account at [Epic's FHIR Sandbox](https://fhir.epic.com/).
2. For web launch we need to create two applications, you can name them whatever you'd like.
3. ClientID, for these demos we're going to use the ```Non-Production Client ID```.
4. ```Application Audience``` one should be ```Patients``` and the other ```Clinicians or Administrative Users```
5. Select FHIR resources and interactions that you want.
6. Register the redirect URIs
7. Select SMART on FHIR version (most will probably be R4, and remember Epic doesn't support R5 yet)
8. Select Save & Ready for Sandbox
9. The patient demo example pulls the patientId from the client to search
10. The Provider creates a new patient
11. Additional details on their [Sandbox Data Site](https://fhir.epic.com/Documentation?docId=testpatients)
12. Of note, unsurprisingly, Epic makes it difficult, and requires strict-origin-when-cross-origin, meaning that while you can make a patient, you cannot then receive the new ID and find the patient that you just created
  - Patient
    - username: fhircamila
    - password: epicepic1
  - Practitioner
    - username: FHIRTWO
    - password: EpicFhir11!
    
### Cerner

1. Must register for account at their [Code Console](https://code-console.cerner.com/) or [Cernercare](https://cernercare.com/)
2. Create a new application, take note of the ClientID
3. Select Patient type (I don't know any demo users for Cerner)
4. Specify your redirect URL
5. Select Standard capabilities (I check all of them, but obviously select the ones you need)
6. Product APIs - select the resources you need your app to have use of
7. Cerner has its own annoying aspects. For instance, you can't request a ```*``` interaction, you have to request both read and write access as separate scopes
8. I haven't found any provider credentials, but they have a list of patient credentials. The following is what I've been using to test with their sandbox
  - username: nancysmart
  - password: Cerner01

### Google's Healthcare API

I don't know why Google always seems to be such a pain in the ass to implement. I wrote some older posts ([part 1](https://mayjuun.com/fhirfli/2-gcp-fhir-flutter-1/), and [part 2](https://mayjuun.com/fhirfli/3-gcp-fhir-flutter-2-/)) about seting up your GCP instance for this. They're a little dated but most of it is still accurate.
  
1. Go through the APIs & Services -> OAuth consent screen (fill in everything, including support email, and your authorized domains as your GCP domain)
2. Your sensitive scopes - ```https://www.googleapis.com/auth/cloud-healthcare```
3. Non-sensitive scopes - ```https://www.googleapis.com/auth/userinfo.profile```
4. APIs & Services -> Credentials -> Create OAuth client ID
5. Application type - Web Application
6. Name - whatever you'd like
7. Authorized JavaScript origins - where your website lives
8. Authorized redirect URIs - usually the same, just remember the ```/redirect.html``` at the end
9. Identity Platform -> Add a Provider -> Select Google
10. Web Client ID (from the above web app) and Web Client Secret (from the above web app)
11. Lastly, in Healthcare -> Dataset -> Datastore, you need to add Principal, copy and paste the OAuth ClientId, and give it Healthcare FHIR Resource Editor Permissions.

### EHR Launch

For an EHR launch it's generally easiest (and flexible) to pass in a bunch of url parameters with your launch. In the demo, it assumes you're going to pass in the iss (base FHIR server url), the clientId, a launch code. It also assumes that the redirect url is the base url + ```redirect.html```. That's important because you'll need to register it ahead of time with the Server.

- The launch url should be something like:
  - ```https://url-to-your-application/?clientId=abcdef-ghijklm-nopqrst-uvwxyz&iss=https://url-to-the-server-that-is-being-launched&launch=ml925C```
- Let's break it down
  - ```https://url-to-your-application/``` The url where your application is located
  - ```?clientId=abcdef-ghijklm-nopqrst-uvwxyz``` this is the clientId of your application, it DOES need to be registered at the server ahead of time
  - ```iss=https://url-to-the-server-that-is-being-launched``` server url that you will be authenticating against AND in the demo cases the same one we call to request data (usually added by the server)
  - ```launch=ml925C``` unique launch code used for this particular session - it's added by the server, you don't specify it

For this one, you will again run the ```run_locally.sh``` script. You can then go to the sandbox and launch the application.

#### Meld

Similar setup for this one. There are a few more scopes, but otherwise it looks very similar. But notice the launch url contains the clientId.

```json
{
  "software_id":null,
  "client_name":"ehrlaunchdemo",
  "client_uri":null,
  "logo_uri":null,
  "launch_url":"https://my-launch-url/?clientId=3d5997bc-1da8-4aed-b779-685d82c9293d",
  "redirect_uris":["https://my-launch-url/redirect.html"],
  "scope":"launch patient/Patient.* launch/patient openid profile offline_access",
  "token_endpoint_auth_method":"NONE",
  "fhirVersions":null,
  "briefDescription":"ehrlaunchdemo",
  "samplePatients":""
  }
```

Also in Meld, it lets you select a Persona during the launch. You may select either a practitioner or a patient, and then use their credentials for the OAuth authentication process. You do need to be careful of which scopes you request however. Because of how I've setup the demo, it's not exactly as you'd set it up in production, but it will work with both a Provider and a Patient login.

#### Epic

Same setup as above. The difference is that for this launch, you do it from inside their sandbox. To do that, you go to the [Launch Page](https://fhir.epic.com/Documentation?docId=launching). Click the button that says ```Try it```. Choose the app you want to launch, choose a MyChart user, and then enter the launch URL of your app. Remember, this should be the base url where your app lives, and add ```clientId=my-client-id``` to the end. The demo just pulls the data about whoever launches it, but it shows you can launch as either a Practitioner or a Patient.

#### Cerner

Also same setup as above. Just remember to specify the launch url the same way, and include the clientId. When you launch, you will be able to choose a patient, and they will provide the username and password that you'll use for the Oauth login.

## Mobile

Unfortunately, neither Epic nor Cerner offer an option to use a mobile device (well, not a mobile app anyway, they only allow http or https redirects, which is now how mobile redirects work). The setup below should work in real life, however, you would just need your sysadmin to approve your redirects.

### Android Setup

For a new Flutter project, most of your setup should already be done. Previosly there was a lot of mucking about with gradles and such that we don't have to do anymore. The one thing you will have to do is add to the AndroidManifest.xml file (```android/app/src/main/AndroidManifest.xml```), you will need to add this section. You should be able to add it before or after the MainActivity.

```xml
        <activity
        android:name="com.linusu.flutter_web_auth_2.CallbackActivity"
        android:exported="true">
            <intent-filter android:label="flutter_web_auth_2">
                <action android:name="android.intent.action.VIEW" />
                <category android:name="android.intent.category.DEFAULT" />
                <category android:name="android.intent.category.BROWSABLE" />
                <data android:scheme="your.application.id" />
            </intent-filter>
        </activity>
```

### iOS Setup

You must set the platform in ios/Podfile

```podfile
platform :ios, '11.0'
```

### [MELD](https://meld.interop.community/) - Mobile

1. Setup is similar to web
2. Setup your app, App name and description as you'd like, Public Client, make note of the ClientId
3. App Launch URI is only important if you're going to do deep linking, which I haven't setup yet
4. App redirect (given above API): ```com.myshiny.newapp://callback``` (or again, ```com.myshiny.newapp:/callback``` for goole)
5. You'll need to choose your own scopes, I've gone with: ```launch patient/Patient.* openid profile offline_access user/Patient.*```
6. You could add users, although this isn't required
7. Should be able to launch and login as you normally would

## Suggestions and Complaints

As I mentioned above, this is the most difficult package I've tried to publish. Mostly because authentication is a huge pain in the ass. Anyone who has suggestions or wants to open a PR is welcome. If you would like to contact me directly, my email is grey@fhirfli.dev.

FHIR® is a registered trademark of Health Level Seven International (HL7) and its use does not constitute an endorsement of products by HL7®
