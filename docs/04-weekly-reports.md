# Weekly Reports

## Week 3 (September 28 – October 3)

## **Done this week**

I worked on turning more of my Pokémon Platinum guide design into actual Flutter screens. I worked on the Gym Leaders, Gym Leader team previews, Pokémon League, Starter, and Legendary Encounters screens. I also connected the screens using the same five-icon bottom navigation that I used on the Home screen.

For the Gym Leader team preview, I added the different teams for all eight Gym Leaders and made it so selecting a badge opens the correct leader's team. I also started doing the same thing for the Pokémon League members.

## **In progress**

I am still working on making the team preview screens look consistent and making sure the navigation works correctly between the different sections. I am also still organizing the Pokémon and character image assets.

## **Blocked or stuck on**

I had some problems with the Gym Leader team preview layout. I originally used `Expanded` inside a `ListView.builder`, which caused a Flutter layout error. I also had errors with `const` and the `gymNames` list when passing the selected Gym Leader to the team preview. I fixed these by changing the layout and checking how the data was being passed between screens.

## **Decisions made, and why**

I decided to keep the Gym Leader teams in one file instead of making a separate file for every Gym Leader. I am using the same approach for the Pokémon League team previews because it keeps the project easier to manage. I also decided to keep the original five-icon navigation instead of changing it because it already matches the design of my Home screen.

**Hours spent, roughly:** 7–9 hours

## **Next week I will:**

I will finish connecting the remaining screens, check the navigation and scrolling, organize the assets, and start testing the complete flow of the app. If the main screens are working properly, I will start looking at the `shared_preferences` progress-saving feature.

---

## Week 2 (September 21 – September 27)

## **Done this week**

I worked on the second version of my proposal and started making the project more specific. I changed the Special Evolution section into the Pokémon League Battle Guide and added the Legendary Encounters section. I also worked on the mockup and design system, including the colors, text sizes, spacing, and the reusable components I could use for the different screens.

I also planned how the app could save progress. I decided that the app would only need to save a user's own progress rather than sharing data between users.

## **In progress**

I was still working on the actual Flutter design and figuring out how the different guide sections would connect. I was also planning the Gym Leader and Pokémon League team information and deciding how much information should be shown on each screen.

## **Blocked or stuck on**

I was unsure about which type of storage to use for the progress feature. I looked at the options from the course material and decided that `shared_preferences` would be enough because I only need to save a small amount of information, such as the last section and position.

## **Decisions made, and why**

I decided to make progress saving a stretch goal so that it would not get in the way of finishing the main screens. I also decided to use Pokémon images as another stretch goal because the guide can still work without them.

**Hours spent, roughly:** 4–6 hours

## **Next week I will:**

I will start building the screens from my mockups in Flutter, starting with the Home screen and then working on the Gym Leaders and other guide sections.

---

## Week 1 (September 14 – September 20)

## **Done this week**

I started working on my Pokémon Platinum guide project and planned the main purpose of the app. The idea is to make a quick reference guide for players going through the Sinnoh region. I planned the main sections for Starters, Legendary Encounters, Gym Leaders, and the Pokémon League.

I also reviewed my original wireframes and started thinking about how I could turn them into actual Flutter screens.

## **In progress**

I was still planning the information that would appear on each screen. I was especially working out how the Gym Leader badges could open a team preview and how the Pokémon League members could work in a similar way.

## **Blocked or stuck on**

I needed to make the problem in the proposal more specific. Instead of just saying that the app was for Pokémon players, I focused on the situation where a player has to search through different websites, videos, or guides to find information while playing.

## **Decisions made, and why**

I decided to keep the app focused on being a quick reference guide instead of trying to make a complete Pokémon database. This keeps the project smaller and makes each section easier to understand.

**Hours spent, roughly:** 3–5 hours

## **Next week I will:**

I will continue working on the proposal and mockups, finalize the design choices, and begin creating the actual Flutter screens.
