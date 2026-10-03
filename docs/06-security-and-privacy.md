# Security and Privacy

This repository is public. I checked the project for security and privacy issues and made sure that no private credentials or personal information are included.

**Last checked:** 2026-10-03

## What this app stores

| **Data**                                          | **Where it lives**                   | **Who can see it**   |
| ------------------------------------------------- | ------------------------------------ | -------------------- |
| The user's last viewed guide section and position | On the device (`shared_preferences`) | Only that user       |
| Pokémon guide information                         | Inside the app                       | Anyone using the app |

## Secrets

* **Values my app needs at run time:** None
* **Where they live locally:** Not applicable because the app currently does not use API keys or other secrets.
* **Where the deploy workflow gets them:** Not applicable.
* **Anything my deployed web build carries that a visitor could read, and why that is acceptable:** Nothing. The app does not currently use Firebase, Supabase, or an external API.

## What protects the data on the service side

Nothing leaves the device. The app does not currently use a backend service, Firebase, Supabase, or a database server. Any future user progress saved with `shared_preferences` will remain local to that user's device.

## Checklist

* [x] `.env` or `env.json` is not needed because the app currently uses no secrets.
* [x] No real API keys, passwords, tokens, or other credentials are included in the repository.
* [x] No service account file, keystore, or `service_role` key is included in the repository.
* [x] No security rules or RLS policies are needed because the app does not currently send data to a service.
* [x] No real personal data is used in the app's sample data.
* [x] No course or university credentials are included.
* [x] No other person's private data is used in the app.

I did not find or revoke any leaked keys because the project does not currently use API keys or other secret values.
