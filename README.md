# noworks.net Website

This repository contains the source code for the [noworks.net](https://noworks.net) website.

## Overview

This is a simple static website built with HTML and CSS, and hosted on Firebase Hosting. This project utilizes Google Gemini for development and maintenance.

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

To run the website locally, use the `firebase serve` command. This will start a local server and serve the files from the `public` directory.

```bash
firebase serve
```

You can then view the site at the URL provided in the command output (usually `http://localhost:5000`).

## Deployment

To deploy the website to Firebase Hosting, run the following command:

```bash
firebase deploy
```

This will upload the contents of the `public` directory to Firebase.

## To Do

- [ ] Configure GitHub Actions for automatic deployment.

## Gemini

This project is developed and maintained with the assistance of Google's Gemini. You can use Gemini for a variety of tasks, including:

*   Answering questions about the codebase.
*   Implementing changes and new features.
*   Generating or updating documentation.

To interact with Gemini, simply state your request in natural language within your development environment.

## Theme

This site uses the [Dracula Theme](https://draculatheme.com/).

-   **Website:** [draculatheme.com](https://draculatheme.com/)
-   **GitHub:** [github.com/dracula/dracula-theme](https://github.com/dracula/dracula-theme)
