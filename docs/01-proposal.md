# Proposal

## The problem, in one sentence

Players going through Pokémon Platinum may need to search different sources for information about Pokémon, Gym battles, 
Legendary Pokémon, and the Pokémon League, making it difficult to find the information they need in one organized place.

## Who it is for

This app is for **Pokémon Platinum players who are going through the Sinnoh region and want a quick reference guide while playing the game**.

Today, players may have to search through websites, videos, wikis, 
or other online guides to find information about specific Pokémon, Gym battles, Legendary encounters, and the Pokémon League. 
This app will organize the information into separate sections so players can quickly find what they need without searching through multiple sources.

## Core features

| # | Feature                                                                                                                        | Still in the MVP? | Flutter pieces it needs                                                        | Honest estimate |
| - | ------------------------------------------------------------------------------------------------------------------------------ | ----------------- | ------------------------------------------------------------------------------ | --------------- |
| 1 | **Starter Guide** – View the available starter Pokémon and their information.                                                  | Keep              | `ListView.builder`, `ListTile`, `Card`, `Navigator.push`, model class          | 3 hours         |
| 2 | **Legendary Encounters** – View obtainable Legendary Pokémon and their information.                                            | Keep              | `ListView.builder`, `ListTile`, `Card`, `Navigator.push`, model class          | 3 hours         |
| 3 | **Gym Battle Guide** – View Gym information, including the Gym Leader's type and Pokémon team.                                 | Keep              | `ListView.builder`, `ListTile`, `Card`, `Navigator.push`, model class          | 4 hours         |
| 4 | **Pokémon League Battle Guide** – View information about the Elite Four and Champion, including their types and Pokémon teams. | Keep              | `ListView.builder`, `ListTile`, `Card`, `Navigator.push`, model class          | 4 hours         |

## Out of scope, and why

This is mainly a guide for the major important battles, and catching legendary. Things like side quest battles, trainer battles, and evolution method will not be included. Because I want the players who use this app to be more prepare for the battles.

## Data the app remembers, and where it is saved

The app will remember the user's last viewed section and last position in the guide. This allows the user to continue from where they stopped when they open the app again.

The data will be saved locally on the user's device using shared_preferences.

Data saved: Last viewed section and last position
Class: GuideProgress
Fields: lastSection and lastPage
Storage: shared_preferences
Keys: lastSection and lastPage
Data type: String for the section and int for the position

The guide information itself does not need to be saved because it is fixed content included in the app. Only the user's personal progress needs to be stored locally.

## Risks

Too much content to organize — There are many Pokémon, locations, and battle details to add, which could take more time than expected. I will focus on the required guide sections first and leave extra information as a stretch goal.

Image and asset problems — Missing or incorrectly named image files could cause the app to fail when loading images. I will keep the assets organized in separate folders and test each screen after adding images.

Navigation errors — Connecting several screens through the bottom navigation and buttons could cause incorrect screens or navigation errors. I will test each navigation button individually.

Screen layout issues — Large amounts of Pokémon information may not fit on a phone screen. I will use scrollable layouts such as SingleChildScrollView and ListView where needed.

Persistence may take longer than expected — Saving the user's last viewed section and position using shared_preferences may require additional testing. If it takes too much time, I will prioritize completing the main guide screens first.

## Changes since the last version

September 23, 2026 — Changed the Special Evolution section to Pokémon League Battle Guide.
I changed this feature because the Pokémon League is more useful for the main playthrough guide and gives the app a clearer focus on important battles.
