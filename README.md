# Fueled Coding Test
## Assessment
Show us what you'd like to do to make the codebase functional and efficient again. There isn't necessarily an overarching right or wrong way to do things, we're mostly just interested to see what decisions you make along the way!

## Requirements
- You will need to connect to the live Unsplash API to fetch data. You'll need credentials to be able to access the API, so you need to create a (free) account on the [Unsplash Developer Portal](https://unsplash.com/developers) to get them. Once you get your public and private keys, update the constants in `config.json` with your keys and you should be good to go!
- If you use some AI help along the way, you must cite your query and leave a comment along with the solution code you used.
- Spend no more than 4-6 hours on this exercise. It's more about the quality of your work than the quantity!
- Add a detail screen to display details of a selected character
- Bonus points for adding tests for the business logic

## Completion
When you've finished, please include a short note with your response, explaining:
- What were your priorities, and why?
  1. Clean Architecture i followed the existing architecture to make the code clean as possible to ensure maintainability.
  2. Core Features:
    - Generate Freezed/JSON serialization code.
    - Enhanced home screen by replaceing a manual row building with GridView.builder for lazy loading to avoid memory leaks in large list items and adding error handling in StreamBuilder.
    - Created Photo Details screen in a clean code , easy to read and easy to maintain. 
    - Added additional fields to PhotoApiModel from Unsplash API response to support photo details.

- If you had another two days, what would you have tackled next?
   1. i will add pagination for photos api cause its now fetching all photos at once.
   2. add offline support by caching data into storage.


- What would you change about the structure of the code?
   1. i prefer to use bloc structure with states and events its cleaner than using only streams .
   2. adding dependency injection it will make things easier i can I can manage bloc instances and their dependencies centrally and inject mock repositories or services during testing.
   3. adding repository and domain layers:
    - Repository: Acts as a middleman between data sources and BLoc.
    - Domain: Contains your business logic, entities, and use cases.
    These layers separate concerns data fetching (repository), business logic (domain), and UI logic (BLoC) making the code cleaner,more testable and easier to maintain.
- What bugs did you find but not fix?
   The hardcoded api key its better to put in secure storage or put it in .env file.
- What would you change about the visual design of the app?
    home screen is very simple and basic it can be imporved for example by adding appbar and changing colors and show more data in each item list cause now it shows photo only and description seems to be always null from response.
    also empty state is just a simple text and needs better UI .
- How long did you spend on this project(approximately)?
   I spent around 2 hours on this project, i focus on delivering a working solution within the time constraint, however Im aware there iss room for improvement in the base structure . Thats why I included suggestions on what could be enhanced, with more time, I would definitely implement those improvements to make the architecture more robust and scalable.

## Instructions
1. Clone this repo to a repo on your own Github account and **make it private**
2. Invite user `intakebot` to collaborate on that repo
3. Address each step of the problem above and commit as necessary
4. Once you are finished, open a PR on your work (in your own repository) and assign `intakebot` as the reviewer and notify your Fueled contact via email.
# code-test-flutter