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

To run the website locally, you can use the Firebase emulator:

```bash
firebase emulators:start
```

This will start a local server, and you can view the site at `http://localhost:5000`.

Alternatively, you can open the `public/index.html` file directly in your web browser.

## Deployment

To deploy the website to Firebase Hosting, run the following command:

```bash
firebase deploy
```

This will upload the contents of the `public` directory to Firebase.

## To Do

- [ ] Configure GitHub Actions for automatic deployment.
