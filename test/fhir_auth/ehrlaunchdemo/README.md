## ehrlaunchdemo

- In theory you shouldn't need to store any apis, because it captures them for you.
- The launch url should be something like:
  - ```https://url-to-your-application/?clientId=abcdef-ghijklm-nopqrst-uvwxyz&iss=https://url-to-the-server-that-is-being-launched&launch=ml925C```
  - Let's break it down
  - ```https://url-to-your-application/``` The url where your application is located
  - ```?clientId=abcdef-ghijklm-nopqrst-uvwxyz``` this is the clientId of your application, it DOES need to be registered at the server ahead of time
  - ```iss=https://url-to-the-server-that-is-being-launched``` server url that you will be authenticating against AND in the demo cases the same one we call to request data.
  - ```launch=ml925C``` unique launch code used for this particular session - it's added by the server, you don't specify it
