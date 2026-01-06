# Project Overview

This is a simple static website for noworks.net, hosted on Firebase. It consists
of a single HTML page and a CSS stylesheet. The site appears to be a personal
landing page.

## Technologies

* **Hosting**: Firebase Hosting
* **Languages**: HTML, CSS
* **Linters**: cspell

## Building and Running

There is no build process for this project. To run the website locally, you can
open the `public/index.html` file in your web browser.

To deploy the website to Firebase, you can use the Firebase CLI:

```bash
firebase deploy
```

## Development Conventions

There are no explicit development conventions documented. However, the
`cspell.json` file indicates that spell checking is used to maintain the quality
of the content.

## Key Files

* `public/index.html`: The main HTML file for the website.
* `public/styles.css`: The CSS stylesheet for the website.
* `firebase.json`: The configuration for Firebase Hosting.
* `.firebaserc`: The Firebase project configuration.
* `README.md`: A brief introduction to the project and a to-do list.
* `cspell.json`: The configuration file for the spell checker cspell.
