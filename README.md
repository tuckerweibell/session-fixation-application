# Summary
This is a demo rails application to show the danger of session fixation attacks.

You can clone this repo to view the source code or if you are just looking for a demo you can run the app with docker.

`docker run -p 3000:3000 tweibell/session-fixation-application`

## Instructions
1. Open a seperate incognito window.

2. Confirm the session IDs are different on both windows.

3. On one of the window, generate a xss payload.

4. Use the xss payload in the search parameter on the other windows.

5. Notice now both session IDs are the same.

6. Login in to one of the windows and refresh the other window.

7. Notice you are now logged in on both windows.

## Lessons Learned
1. Use HttpOnly cookies.

2. Don’t roll your own authentication. Use Devise.

3. Call reset_session before associating a user. Clean slates matter.

4. Call reset_session after disassociating a user. Once they’re out, keep them out.
