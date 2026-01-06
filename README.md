# noworks.net Website

This repository contains the source code for the [noworks.net](https://noworks.net)
website.

## Overview

This is a simple static website built with HTML and CSS, and hosted on Firebase
Hosting. This project utilizes Google Gemini for development and maintenance.

## Prerequisites

Before you begin, ensure you have the [Firebase CLI](https://firebase.google.com/docs/cli)
installed globally.

You will also need to be authenticated with Firebase:

```bash
firebase login
```

## Development

To run the website locally, use the `firebase serve` command. This will start a local
server and serve the files from the `public` directory.

```bash
firebase serve
```

You can then view the site at the URL provided in the command output (usually
`http://localhost:5000`).

## Build Procedures

This project is a static site and does not have a traditional build step like compiling
source code. However, you should install project dependencies and run linters to
ensure code quality before deployment.

1.  **Install Dependencies:**
    Install the necessary development dependencies (linters) using npm:

    ```bash
    npm install
    ```

2.  **Run Linters:**
    Check for markdown and spelling errors:

    ```bash
    npm run lint
    ```

    You can also run linters individually:
    - `npm run lint:md` for markdown issues.
    - `npm run lint:spell` for spelling issues.

## Development Conventions

When editing any Markdown files (like `README.md` or `GEMINI.md`), always ensure
that there are no `markdownlint` errors. You can check for these errors by running:

```bash
npm run lint:md
```

## Deployment

To deploy the website to Firebase Hosting, run the following command:

```bash
firebase deploy
```

This will upload the contents of the `public` directory to Firebase.

## To Do

- [ ] Configure GitHub Actions for automatic deployment.

## Use Gemini

This project is developed and maintained with the assistance of Google's Gemini.
You can use Gemini to help you with a variety of development tasks.

To interact with Gemini, state your request in natural language. Here are some
examples of how you can phrase your requests:

- "What is the purpose of the `firebase.json` file?"
- "Explain the CSS in `public/styles.css`."

**For making changes:**

- "Change the h1 heading to 'Welcome to noworks.net'."
- "Add a new section to the `index.html` file with a list of my projects."

**For adding new features:**

- "Add a contact form to the website."
- "Create a new page called 'about.html' and link to it from the main page."

**For documentation:**

- "Update the 'Development' section of this `README.md` to include instructions
  for a new team member."
- "Generate a `CONTRIBUTING.md` file with standard contribution guidelines."

## Theme

This site uses the [Dracula Theme](https://draculatheme.com/).

- **Website:** [draculatheme.com](https://draculatheme.com/)
- **GitHub:** [github.com/dracula/dracula-theme](https://github.com/dracula/dracula-theme)
