# Cookify

Cookify is an iOS app that allows users to browse and discover delicious dessert recipes. It utilizes the MealDB API to fetch the list of dessert recipes and display their details.

## Features

- Browse a list of dessert recipes
- View detailed information about each recipe, including name, instructions, and ingredients
- Ability to favorite recipes for easy access
- Settings page for customization options

## Preview

![Cookify Preview](preview.gif)

## Getting Started

To run the Cookify app locally, follow these steps:

1. Clone the repository:

``` git clone https://github.com/ceobitch/cookify.git ```

2. Open the project in Xcode.

3. Build and run the app on a simulator or a physical device.

## Dependencies

Cookify uses the following dependencies:

- Alamofire: A popular networking library for making API requests.
- URLImage: A Swift package for asynchronous image loading.

These dependencies are managed using Swift Package Manager and are automatically resolved when you build the project.

## API Usage

Cookify uses the MealDB API (https://themealdb.com/api.php) to fetch dessert recipes. It utilizes the following endpoints:

- GET /filter.php?c=Dessert: Fetches the list of dessert recipes.
- GET /lookup.php?i=MEAL_ID: Fetches the details of a specific recipe by its ID.

The app handles network requests and JSON parsing to retrieve and display the recipe data.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to submit a pull request or open an issue on the GitHub repository.

## License

Cookify is released under the MIT License. See the [LICENSE](LICENSE) file for more details.
