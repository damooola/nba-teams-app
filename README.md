# NBA Teams App

This Flutter app displays a list of NBA teams, including their abbreviation, full name, and city. The data is fetched from the BALLDONTLIE API.

## Features

- List of NBA teams
- Display team details (abbreviation, full name, city)
- Future enhancement: Team logos

## Getting Started

1. **Prerequisites:**
   - Make sure you have Flutter and Dart installed. If not, follow the [official installation guide](https://flutter.dev/docs/get-started/install).

2. **Clone the Repository:**

   ```bash
   git clone https://github.com/damooola/nba_app.git
   cd nba_app
   ```

3. **Install Dependencies:**

   ```bash
   flutter pub get
   ```

4. **API Integration:**
   - Create an account on the [BALLDONTLIE API](https://www.balldontlie.io/) website to obtain an API key.
   - In your Dart code, make HTTP requests to the BALLDONTLIE API to fetch the list of NBA teams. Use the `http` package for this.

5. **Project Structure:**
   - Organize your project files:

     ```
     lib/
       ├── main.dart
       ├── models/
       │   └── team.dart
       ├── services/
       │   └── team_service.dart
       ├── screens/
       │   └── team_list_screen.dart
       └── widgets/
           └── team_card.dart
     ```

6. **Team Model:**
   - A `Team` model class (in `models/team.dart`) to represent NBA team with `abbreviation`, `fullName`, and `city` property.

7. **Team Service:**
   - A class (in `services/team_service.dart`) to handle API requests using the BALLDONTLIE API to fetch team data.

8. **Team List Screen:**
   - The main screen (in `screens/team_list_screen.dart`) that displays the list of NBA teams using a `ListView.builder`.

9. **Team Card Widget:**
   - A `TeamCard` widget (in `widgets/team_card.dart`) to display team information (abbreviation, full name, city).

10. **Run the App:**

    ```bash
    flutter run
    ```

## Future Enhancements

- Add team logos using another API (e.g., the [API-SPORTS API](https://api-sports.io/)).

## Acknowlegdement

This project is based on [FULL Flutter Masterclass:Beginner to Pro ] by [Mitch Koko]. You can find the original tutorial [here](https://youtu.be/TclK5gNM_PM?si=34oyeNUEi0zszOsF).
