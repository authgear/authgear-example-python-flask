# Authentication for Authgear Python Flask Web Application

This sample repository demonstrates how to add authentication to a Python web app built with the [Flask](https://palletsprojects.com/p/flask/) using [Authgear](https://www.authgear.com/).

## What is Authgear?

[Authgear](https://www.authgear.com/) acts as an IAM provider that is a **gatekeeper to the resources** you provide to customers as web and mobile applications, APIs, etc. The gatekeeper initiates authorization as outlined in [OAuth 2.0](https://www.notion.so/concepts/identity-fundamentals#oauth-2.0). The addition of the [OpenID Connect](https://www.notion.so/concepts/identity-fundamentals#open-id-connect) layer adds authentication to secure your users’ digital identities and your product.

## How to run the project

## Prerequisites

Before you get started, you will need the following:

- A **free Authgear account**. [Sign up](https://accounts.portal.authgear.com/signup) if you don't have one already.
- Create [Authgear OIDC Client App](https://docs.authgear.com/how-to-guide/authenticate/oidc-provider#setting-up-authgear-in-the-portal) to use it as an OpenID Connect Provider.
- Make sure that [Python](https://www.python.org/downloads/) 3.10 or above is installed on your machine.
- Download and Install [Pip](https://pip.pypa.io/en/stable/installation/) to manage project packages.

Start by cloning the project into your local machine:

```bash
git clone https://github.com/authgear/authgear-example-python-flask.git
```

Make the project directory your current working directory:

```bash
cd authgear-example-python-flask
```

Rename `.env.example` to `.env` and fill it with the client ID, client secret and your Authgear OIDC client app domain. Generate a suitable string for `APP_SECRET_KEY` using openssl rand -hex 32 from your shell and also set it in the environment file.

Also, add the callback URL to the settings section of your Authgear client app.

Register `http://localhost:3000/callback` as `Authorized Redirect URIs`.

Run `pip install -r requirements.txt` to install the dependencies and run `python server.py`.
The app will be served at [http://localhost:3000/](http://localhost:3000/).
