# Design System

**App: Sinnoh Region Playthrough Guide – Pokémon Platinum**

## Step A: The Palette, as a ColorScheme

My design uses a Pokémon-themed palette with a yellow/gold background, dark teal text and icons, light blue navigation elements, and different colors for Pokémon types and guide sections. These colors are used consistently throughout the mockup screens.

### Color Palette

| **Role**   | **Hex** | **Used For**                                              |
| ---------- | ------- | --------------------------------------------------------- |
| Primary    | #124A49 | Main headings, icons, active elements, and important text |
| On Primary | #FFFFFF | Text or icons placed on the primary color                 |
| Secondary  | #97C1E6 | Bottom navigation bar and secondary UI elements           |
| Surface    | #FDD673 | Main app background, phone frame, and large surfaces      |
| On Surface | #124A49 | Main text and headings on the yellow background           |
| Error      | #E95A3A | Red highlights and error/destructive states               |

### Additional Colors Used in the Mockup

| **Color**     | **Hex** | **Used For**                              |
| ------------- | ------- | ----------------------------------------- |
| Starter Green | #07C15B | Turtwig section                           |
| Starter Red   | #E95A3A | Chimchar section                          |
| Starter Blue  | #74D7DA | Piplup section                            |
| Gym Orange    | #E7993E | Gym Leader selection cards                |
| White         | #FFFFFF | Text, backgrounds, and image areas        |
| Dark Outline  | #111111 | Borders and outlines around cards/buttons |





### Flutter ColorScheme

```dart
final scheme = const ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF124A49),
  onPrimary: Color(0xFFFFFFFF),
  secondary: Color(0xFF97C1E6),
  onSecondary: Color(0xFF124A49),
  surface: Color(0xFFFDD673),
  onSurface: Color(0xFF124A49),
  error: Color(0xFFE95A3A),
  onError: Color(0xFFFFFFFF),
);
```

### Contrast

The main body text uses dark teal (#124A49) against the light yellow background (#FDD673). This provides a strong visual contrast for the main text and headings.
The design will use the same colors through the theme instead of repeatedly hardcoding colors throughout individual widgets.

### Dark Mode

**No. The app will be light only.**
The mockup was designed around a bright Pokémon-themed light interface, and a separate dark palette is not currently needed for the project's main features.

---

# Step B: The Type Scale, as a TextTheme

The mockup uses a simple sans-serif font with bold headings and smaller regular text. The exact font family is not specified in the PDF, so the implementation will use a consistent sans-serif font rather than claiming an exact font that was not documented in the mockup.

### Type Scale

| **Your Style** | **Flutter Slot** | **Size** | **Weight** | **Used For**                                                   |
| -------------- | ---------------- | -------- | ---------- | -------------------------------------------------------------- |
| Heading        | headlineSmall    | 24 px    | Bold       | Main screen titles such as "STARTERS" and "SINNOH LEAGUE"      |
| Body           | bodyMedium       | 16 px    | Regular    | Normal guide information and descriptions                      |
| Caption        | labelSmall       | 12 px    | Regular    | Smaller Pokémon numbers, type information, and supporting text |







### Font

**Font style:** Codec-Pro
**Main heading:** Bold
**Body text:** Regular
**Caption:** Regular
The same font family will be used throughout the app to keep the design consistent.

### Flutter TextTheme

textTheme: const TextTheme(
  headlineSmall: TextStyle(
fontSize: 24,
fontWeight: FontWeight.bold,
  ),
  bodyMedium: TextStyle(
fontSize: 16,
fontWeight: FontWeight.normal,
  ),
  labelSmall: TextStyle(
fontSize: 12,
fontWeight: FontWeight.normal,
  ),
),

The sizes are design-system values for the Flutter implementation. They are based on the visual hierarchy of the mockup rather than exact measurements from the PDF.

---

# Step C: Spacing, as Constants

The app uses consistent spacing between the edges of the screen, cards, text, and navigation elements.

### Spacing Values

| **Spacing** | **Value** | **Used For**                 |
| ----------- | --------- | ---------------------------- |
| Base unit   | 4 px      | Small gaps and icon spacing  |
| Extra small | 4 px      | Small internal gaps          |
| Small       | 8 px      | Gap between related elements |
| Medium      | 16 px     | Standard padding             |
| Large       | 24 px     | Gap between major sections   |

### Flutter Spacing Class

```dart
class AppSpacing {
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
}
```

### Standard Layout

- **Screen edge padding:** 16 px
- **Gap between list/card items:** 8 px
- **Gap between sections:** 16–24 px
- **Small icon/text gap:** 4–8 px
- **Card internal padding:** 8–16 px

The spacing system will use these constants instead of choosing different spacing values for every screen.

---

# Step D: Components, as Files

The mockup contains several repeated components that can be reused across multiple screens.

| **Component**    | **File**                           | **Constructor Parameters**                                 | **Appears On**                  |
| ---------------- | ---------------------------------- | ---------------------------------------------------------- | ------------------------------- |
| BottomNavigation | lib/widgets/bottom_navigation.dart | int currentIndex, ValueChanged<int> onTap                 | All main screens                |
| GuideCard        | lib/widgets/guide_card.dart        | String title, String image, VoidCallback? onTap            | Home and guide sections         |
| StarterCard      | lib/widgets/starter_card.dart      | String name, String type, String image, String description | Starter Screen                  |
| GymBadgeCard     | lib/widgets/gym_badge_card.dart    | String image, VoidCallback onTap                           | Sinnoh Gym Leaders              |
| LeagueBanner     | lib/widgets/league_banner.dart     | String name, String image, VoidCallback onTap              | Pokémon League                  |
| SectionTitle     | lib/widgets/section_title.dart     | String title                                               | Main guide screens              |
| TypeBadge        | lib/widgets/type_badge.dart        | String type, Color color                                   | Starter and Pokémon information |

### Component Rules

Each reusable component will receive its data through constructor parameters and will not contain the screen's setState.
For example, a GymBadgeCard receives the badge image and an onTap callback. When the user taps the badge, the callback handles the navigation.
Reusable widgets will use const constructors where possible.

# Component Appearance

## Bottom Navigation

- Background: #97C1E6
- Contains five navigation icons
- Icons are arranged horizontally
- Active/selected icon uses the primary dark teal color
- Appears at the bottom of the main screens
- Used to move between the major sections of the application

## Starter Card

- Rounded rectangular shape
- Green, red, or blue background depending on the starter
- Pokémon image on the left
- Pokémon name and information beside the image
- Evolution information displayed below
- Used for Turtwig, Chimchar, and Piplup

## Gym Badge Card

- Orange background: #E7993E
- Dark outline
- Rounded corners
- Gym badge centered inside
- Each badge is tappable
- Selecting a badge displays that Gym Leader's team

## Pokémon League Banner

- Rectangular image banner
- Each League member has a separate banner
- The member banner is tappable
- Selecting a banner displays that member's Pokémon team

## Section Title

- Dark teal text: #124A49
- Bold
- Approximately 24 px
- Centered or positioned according to the screen layout
- Used for major page titles such as "STARTERS" and "SINNOH LEAGUE"

---

# Step E: Theme File

// lib/theme.dart
import 'package:flutter/material.dart';

final appTheme = ThemeData(
  useMaterial3: true,

  colorScheme: const ColorScheme(
brightness: Brightness.light,
primary: Color(0xFF124A49),
onPrimary: Color(0xFFFFFFFF),
secondary: Color(0xFF97C1E6),
onSecondary: Color(0xFF124A49),
surface: Color(0xFFFDD673),
onSurface: Color(0xFF124A49),
error: Color(0xFFE95A3A),
onError: Color(0xFFFFFFFF),
  ),

  textTheme: const TextTheme(
headlineSmall: TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
),
bodyMedium: TextStyle(
  fontSize: 16,
),
labelSmall: TextStyle(
  fontSize: 12,
),
  ),

  cardTheme: const CardThemeData(
margin: EdgeInsets.all(8),
  ),

  filledButtonTheme: FilledButtonThemeData(
style: FilledButton.styleFrom(
  minimumSize: const Size.fromHeight(48),
),
  ),
);



---

# Visual Design Summary

The overall visual design is based on the Pokémon Platinum theme shown in the mockup.

### Main Visual Choices

- **Primary background:** Yellow/gold
- **Main text:** Dark teal
- **Navigation:** Light blue
- **Gym section:** Orange
- **Turtwig section:** Green
- **Chimchar section:** Red
- **Piplup section:** Light blue
- **Cards:** Rounded corners with dark outlines
- **Images:** Pokémon artwork and Gym badges
- **Typography:** Bold headings with regular body text
- **Layout:** Phone-sized vertical layout
- **Navigation:** Bottom navigation bar
- **Theme:** Light only

The same visual language is used across the Starter, Gym Leader, Pokémon League, and Legendary Encounter screens. The mockup shows these repeated colors, rounded cards, image-based selections, and bottom navigation across the different screens.

---

# What Changed, and Why

| **Element** | **Prelim Said**                                                | **Now Says**                                                                                                | **Why It Changed**                                                                                                                        |
| ----------- | -------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| Palette     | The design used an initial hand-picked Pokémon-themed palette. | The palette now has documented hex values and Flutter ColorScheme roles.                                    | The mockup made the colors more consistent across the different screens, so the colors can now be directly translated into Flutter code.  |
| Typography  | Font sizes and styles were not fully defined.                  | The design now uses a defined heading, body, and caption scale.                                             | The mockup showed that headings, descriptions, and small labels need different visual sizes, so they are now organized into a TextTheme.  |
| Spacing     | Spacing was mainly based on the wireframe layout.              | Spacing now uses 4, 8, 16, and 24 px values.                                                                | The mockup showed repeated gaps between cards, text, and navigation elements, so these are now represented as reusable spacing constants. |
| Components  | The wireframe mainly showed placeholders and screen layouts.   | Reusable cards, Gym badges, League banners, Starter cards, and bottom navigation are defined as components. | The mockup showed the same types of elements appearing repeatedly, so they can be implemented as reusable Flutter widgets.                |
| Navigation  | Navigation was shown as part of the wireframe.                 | A consistent bottom navigation component is used across the main screens.                                   | The mockup confirmed that the same navigation area appears across the guide screens, making it suitable for one reusable component.       |


![Design system](assets/Gym.png)



