Tags: iOS, Dropbox, OAuth
Languages: ObjectiveC
Description: Implement the OAuth functions for Dropbox service in this iOS project.

== OAuth Workflow ==
OAuth authentication happens in three high level steps:
Obtain an OAuth request token to be used for the rest of the authentication process. This is the request token.
A web page is presented to the user through their web browser. Without the user’s authorization in this step, it isn’t possible for your application to obtain an access token from step 3.
After step 2 is complete, the application calls a web service to exchange the temporary request token (from step1) for a permanent access token, which is stored in the app.
