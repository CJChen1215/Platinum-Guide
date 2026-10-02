# AI Usage

## 1. How I Used AI

### 2026-09-23 - Home Screen Assistance

* **Tool:** ChatGPT
* **What I asked for:** I asked for help turning my Home Screen wireframe into Flutter code.
* **What it gave back:** It suggested the Flutter structure for the screen, including `Scaffold`, `Stack`, `Image.asset`, and the bottom navigation.
* **What I kept, what I changed, and why:** I used the suggestions as a starting point, but I chose the actual layout, colors, images, logo position, and navigation that matched my project. I also adjusted the asset paths to match my own files.
* **File:** `lib/screens/home_screen.dart`
* **Commit:** https://github.com/YOUR-USERNAME/YOUR-REPO/commit/YOUR-SHA

### 2026-09-24 - Gym Leaders Screen

* **Tool:** ChatGPT
* **What I asked for:** I asked for help implementing my Gym Leaders wireframe in Flutter.
* **What it gave back:** It suggested using `GridView.builder` for the eight Gym badges and showed how to connect the badge images to the screen.
* **What I kept, what I changed, and why:** I did most of the design decisions myself, including the two-column layout, colors, badge assets, spacing, borders, and overall appearance. I used AI mainly to help with the Flutter structure and navigation.
* **File:** `lib/screens/gym_screen.dart`
* **Commit:** https://github.com/YOUR-USERNAME/YOUR-REPO/commit/YOUR-SHA

### 2026-09-25 - Gym Leader Team Preview

* **Tool:** ChatGPT
* **What I asked for:** I asked how I could make one screen handle all eight Gym Leader team previews instead of creating a separate file for every leader.
* **What it gave back:** It suggested using one `GymLeaderTeamScreen` and passing the selected leader's name to it.
* **What I kept, what I changed, and why:** I kept the idea of using one screen because it makes the project easier to manage. I added and adjusted the actual leader information, Pokémon information, images, layout, text sizes, scrolling, and back button based on my design.
* **File:** `lib/screens/gym_leader_team_screen.dart`
* **Commit:** https://github.com/YOUR-USERNAME/YOUR-REPO/commit/YOUR-SHA

### 2026-09-26 - Pokémon League Screen

* **Tool:** ChatGPT
* **What I asked for:** I asked for help turning my Pokémon League mockup into a Flutter screen.
* **What it gave back:** It suggested a scrollable list for the five League members and showed how to display their banner images.
* **What I kept, what I changed, and why:** I kept my original mockup design and decided how the banners, colors, spacing, and navigation should look. I mainly used AI for the Flutter implementation and troubleshooting.
* **File:** `lib/screens/league_screen.dart`
* **Commit:** https://github.com/YOUR-USERNAME/YOUR-REPO/commit/YOUR-SHA

### 2026-09-29 - Starter Screen

* **Tool:** ChatGPT
* **What I asked for:** I asked for help coding my Starter Screen mockup with Turtwig, Chimchar, and Piplup.
* **What it gave back:** It suggested a scrollable layout with starter information and reusable evolution rows.
* **What I kept, what I changed, and why:** I chose the actual content, Pokémon images, colors, layout, descriptions, and overall design from my mockup. I also made sure the old five-icon navigation bar was kept instead of changing the navigation design.
* **File:** `lib/screens/starter_screen.dart`
* **Commit:** https://github.com/YOUR-USERNAME/YOUR-REPO/commit/YOUR-SHA

### 2026-10-02 - Legendary Encounters Screen

* **Tool:** ChatGPT
* **What I asked for:** I asked for help implementing my Legendary Encounters mockup and organizing the available Legendary Pokémon.
* **What it gave back:** It suggested using lists of Legendary Pokémon and a reusable card widget for displaying the location, name, level, and image.
* **What I kept, what I changed, and why:** I decided how the Legendary Pokémon should be grouped and arranged in my guide. I specifically moved Heatran and Regigigas into the After Getting National Pokédex section to match my planned guide structure. I also kept the original five-icon navigation bar.
* **File:** `lib/screens/legendary_screen.dart`
* **Commit:** https://github.com/YOUR-USERNAME/YOUR-REPO/commit/YOUR-SHA

## 2. Where the AI Got It Wrong

### Case 1 - Gym Team Layout Error

* **What it gave me:** The AI initially suggested using `Expanded` inside the Gym Leader team layout.
* **What was wrong with it:** The layout caused a Flutter rendering/layout problem because the widget did not have the correct height constraints.
* **What I did instead:** I changed the team section to a `Column` and displayed the Pokémon using a loop. I tested the change until the team preview displayed correctly.
* **File:** `lib/screens/gym_leader_team_screen.dart`
* **Commit:** https://github.com/YOUR-USERNAME/YOUR-REPO/commit/YOUR-SHA

### Case 2 - Invalid Constant Value

* **What it gave me:** The AI initially used `const` when passing `gymNames[index]` into `GymLeaderTeamScreen`.
* **What was wrong with it:** `gymNames[index]` is determined while the program is running, so it cannot be used as a constant.
* **What I did instead:** I removed `const` from that part of the navigation code and tested the screen again.
* **File:** `lib/screens/gym_screen.dart`
* **Commit:** https://github.com/YOUR-USERNAME/YOUR-REPO/commit/YOUR-SHA

### Case 3 - Undefined `gymNames`

* **What it gave me:** The navigation code used `gymNames[index]` before the list had been properly defined in my Gym screen.
* **What was wrong with it:** Flutter reported that `gymNames` was undefined.
* **What I did instead:** I created the `gymNames` list myself and made sure its order matched the eight Gym badge images. I then tested each badge to make sure it opened the correct leader.
* **File:** `lib/screens/gym_screen.dart`
* **Commit:** https://github.com/YOUR-USERNAME/YOUR-REPO/commit/YOUR-SHA

## 3. Who Wrote What

### Written by me

* **Files:** `lib/screens/home_screen.dart`, `lib/screens/gym_screen.dart`, `lib/screens/gym_leader_team_screen.dart`, `lib/screens/league_screen.dart`, `lib/screens/starter_screen.dart`, `lib/screens/legendary_screen.dart`
* **Commit:** See the individual commits for each screen above.
* **What it does and why it is built this way:** I was responsible for putting the project together and making the screens match my wireframes and mockups. I chose the screen layouts, colors, images, text, navigation order, and the way the Pokémon information is presented. I also connected the screens, organized the assets, tested the app, and fixed errors when the first version of the code did not work. I used AI as a programming assistant, but I made the decisions about how the final app should look and function.

### The AI-written part I understand best

* **File:** `lib/screens/gym_screen.dart`
* **Commit:** https://github.com/YOUR-USERNAME/YOUR-REPO/commit/YOUR-SHA
* **What it does and why we kept it:** This screen displays the eight Sinnoh Gym badges in a two-column grid. The `gymBadges` list stores the image paths, while the `gymNames` list stores the corresponding Gym Leader names. The `GridView.builder` uses the index to match each badge with its leader. When a badge is pressed, the selected leader name is passed to `GymLeaderTeamScreen`. I understand this part because I tested the navigation myself and fixed the errors that appeared while connecting the badge screen to the team preview.
