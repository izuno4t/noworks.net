# noworks.net Website

This repository contains the source code for the [noworks.net](https://noworks.net) website.

## Overview

This is a simple static website built with HTML and CSS, and hosted on Firebase Hosting.

## Prerequisites

Before you begin, ensure you have the [Firebase CLI](https://firebase.google.com/docs/cli) installed.

```bash
npm install -g firebase-tools
```

You will also need to be authenticated with Firebase:

```bash
firebase login
```

## Development

To run the website locally, you have a couple of options:

1.  **Using `firebase serve` (Recommended for static sites):**
    This command serves your static files from the `public` directory. It's lighter and faster for just testing your website's content.

    ```bash
    firebase serve
    ```

    You can usually view the site at `http://localhost:5000` or `http://localhost:5001`. The command output will show the exact URL.

2.  **Using `firebase emulators:start` (for a full Firebase emulation environment):**
    This command starts the Firebase Local Emulator Suite, providing a comprehensive environment if your site were to integrate with other Firebase services (like Functions, Firestore, etc.).

    ```bash
    firebase emulators:start
    ```

    This will start a local server, and you can view the site at `http://localhost:5000` (or another port specified in the output).

Alternatively, for basic viewing, you can open the `public/index.html` file directly in your web browser.

## Deployment

To deploy the website to Firebase Hosting, run the following command:

```bash
firebase deploy
```

This will upload the contents of the `public` directory to Firebase.

## To Do

- [ ] Configure GitHub Actions for automatic deployment.
