[![Made with AI](https://img.shields.io/badge/Made_with-AI_assistance-blue)](AI-USAGE.md)
# Platinum-Guide

> One sentence: what this app does, and who it is for.

**Live demo:** [(ttps://cjchen1215.github.io/Platinum-Guide/](https://cjchen1215.github.io/Platinum-Guide/)

**Demo video:** [demo.mp4](https://drive.google.com/file/d/12N9LYYIiAAEkZgRqB9EhSZ_gK7I96yMC/view?usp=drive_link)

**Course:** Applications Development and Emerging Technologies (6ADET), Holy Angel University

**Author:** Chen, Edmund Cjiawei JR R.

---

## Screenshots

| Home | Starter | Gym |
| --- | --- | --- | 
| ![Home](docs/assets/Home.png) | ![Starter](docs/assets/Starter.png) | ![Gym](docs/assets/Gym.png) |

## What it does

- View information about the three Pokémon starters.
- Find Legendary Pokémon and where they can be encountered.
- View all eight Sinnoh Gym Leaders and their Pokémon teams.
- Check the Pokémon League members and their teams.
- Use the app as a quick reference guide while playing Pokémon Platinum.

## Built with

| | |
| --- | --- |
| Framework | Flutter (Dart) |
| State | `setState` / provider / riverpod (say which) |
| Storage | shared_preferences / Hive / Drift / Firebase / Supabase / other |
| Other packages | list the ones that matter, with a word on why |

## Running it yourself

```bash
flutter pub get
cp .env.example .env      # only if your app needs keys, see below
flutter run -d web-server --web-port 8080
```

Then open http://localhost:8080. Requires Flutter (run `flutter --version` and
put yours here).

## Privacy and secrets

The app does not currently store any real personal data; any future progress data will stay on the user's device using shared_preferences. The app does not use API keys or other secrets, so nothing is stored in a .env file or repository secrets, and nothing leaves the device. All sample data, screenshots, and the presentation video contain no real personal information.

## Project documentation

| Document | |
| --- | --- |
| [Proposal](docs/01-proposal.md) | the problem, the users, the scope |
| [Mockup and wireframes](docs/02-mockup.md) | what it looks like, and the screen flow |
| [Design system](docs/03-design-system.md) | colors, type, spacing, components |
| [Weekly reports](docs/04-weekly-reports.md) | what happened each week |
| [Demo video](docs/05-demo-video.md) | the recording and what it shows |
| [Start here](START-HERE.md) | how this repo works (delete once you have read it) |
| [Security and privacy](docs/06-security-and-privacy.md) | the checklist, filled in |

## Status and what is next

What works:

- Home screen and bottom navigation work.
- Starter, Legendary, Gym Leader, and Pokémon League screens are built.
- Gym badges can open the correct Gym Leader team preview.
- Team previews display Pokémon, levels, and moves.

Half done / known issues:

- Some navigation and layouts still need more testing.
- Image assets still need to be organized and checked.
- Progress saving with shared_preferences is not implemented yet.

What is next:

- Finish testing all screens and navigation.
- Fix remaining layout or asset issues.
- Add progress saving if there is enough time.
- Improve the visual design and add Pokémon images where needed.

## Credits

- Packages: see `pubspec.yaml`
- Assets, icons, 3D models, sounds: [serbii.net](serebii.net) (For all of the information)

## AI use

I used AI tools as a coding assistant while building the app, mainly for Flutter code, navigation, layout, and debugging. I also reviewed, tested, and modified the generated code to fit my design and project requirements.

## Licence

MIT, see [LICENSE](LICENSE). 
