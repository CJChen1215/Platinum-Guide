# Security Checklist

## Secrets and credentials

| **#** | **Check** | **Yes / No / N/A** | **Evidence** |
| ----- | --------- | ------------------ | ------------ |
| 1 | No API key, token or password is hardcoded in `lib/`, including in comments and commented-out code | Yes | I checked the Dart files in `lib/` and found no API keys, tokens, passwords, or other credentials. |
| 2 | Anything private is in a gitignored config or passed with `--dart-define`, with an example file committed | N/A | The app currently has no private configuration, API keys, or other secrets that need to be stored this way. |
| 3 | No keystore, `key.properties` or signing credential is in the repository | Yes | I checked the project files and found no keystore, `key.properties`, or signing credentials. |
| 4 | Git history is clean: I searched `git log -p` for password, secret, api key and token | No | I have not completed a full `git log -p` search yet. |
| 5 | Any credential that was ever committed has been rotated | N/A | No credentials have been committed because the app does not currently use API keys, tokens, or passwords. |

## GitHub Actions

| **#** | **Check** | **Yes / No / N/A** | **Evidence** |
| ----- | --------- | ------------------ | ------------ |
| 6 | No secret value is written literally in any workflow YAML file | N/A | The project currently has no GitHub Actions workflow files. |
| 7 | Secrets are stored in repository Actions secrets and read with `${{ secrets.NAME }}` | N/A | The project has no GitHub Actions workflows or repository secrets. |
| 8 | No workflow step echoes, dumps or debug-prints a secret, and I opened a recent run's log to confirm | N/A | There are no GitHub Actions workflows or runs for this project. |
| 9 | If I build a signed APK: the keystore is a base64 secret decoded to a file at build time, never printed | N/A | I am not currently using a signed APK build workflow. |
| 10 | Uploaded build artifacts contain no key file, keystore or generated config | N/A | The project does not currently upload build artifacts through GitHub Actions. |
| 11 | Third-party actions are pinned to a commit SHA, not a moveable tag | N/A | The project has no GitHub Actions workflows. |
| 12 | Secret scanning and push protection are enabled on the repository | No | I have not confirmed these repository settings yet. |

## Backend and security rules

| **#** | **Check** | **Yes / No / N/A** | **Evidence** |
| ----- | --------- | ------------------ | ------------ |
| 13 | Firestore and Storage rules are not left open to anyone; they require an authenticated user | N/A | The app does not use Firebase Firestore or Firebase Storage. |
| 14 | Rules restrict a user to their own documents where that makes sense | N/A | The app has no backend documents or user accounts. |
| 15 | If Supabase: Row Level Security is on for every table | N/A | The app does not use Supabase. |
| 16 | Firebase and Google API keys are restricted in the Google Cloud console to the APIs and app they are for | N/A | The app does not use Firebase or Google API keys. |
| 17 | I opened the app signed out and confirmed I could not read or write data I should not | N/A | The app has no sign-in system or backend, and data does not leave the device. |
| 18 | Seed and sample data is invented, not real people's data | Yes | The app's guide and Pokémon data do not contain real people's personal information. |

## Input and app surface

| **#** | **Check** | **Yes / No / N/A** | **Evidence** |
| ----- | --------- | ------------------ | ------------ |
| 19 | Input is validated before it is written, not only styled as valid in the UI | N/A | The current app does not have user-entered data that is written to a backend or database. |
| 20 | Nothing secret is recoverable from the built app, since a shipped binary can be unpacked | Yes | The app currently contains no API keys, passwords, tokens, or other secrets. |

## Repository and privacy

| **#** | **Check** | **Yes / No / N/A** | **Evidence** |
| ----- | --------- | ------------------ | ------------ |
| 21 | No student number, personal email, phone number or home address in the repository or in commit messages | Yes | I checked the project content and did not include personal contact information or a student number. |
| 22 | No classmate's personal data in the repository | Yes | The project does not contain personal information belonging to classmates. |
| 23 | Dependencies come from pub.dev, and `build/` and `.dart_tool/` are gitignored | Yes | Flutter dependencies are declared through `pubspec.yaml`, and the generated `build/` and `.dart_tool/` folders are not part of the project source. |
| 24 | Images, fonts and other assets are mine, licensed, or credited | No | I still need to finish checking the source or licensing/credit information for all Pokémon images and other assets. |
| 25 | Repository visibility is deliberate, and I checked it after my last push | No | I have not completed the final repository visibility check after my latest push. |

## Anything I found and fixed

I did not find any API keys, passwords, tokens, or other secrets in the project. I did identify two checks that still need to be completed before making the repository public: reviewing the full Git history for accidentally committed secrets and confirming the licensing or credits for all image assets. I will complete these checks before the final public repository submission.
