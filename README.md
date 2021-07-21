## Overview

Cato TV is your one-stop destination for short-form videos that focus on education. We re-designed your existing social media feeds with the best 0.1% of the knowledge from the best teachers and leaders that has 90% of the value on the internet.

Cato TV is a flagship product from [catoverse](https://twitter.com/catoverse).

This project leverages [Flutter](https://flutter.dev/) framework to build natively compiled applications for android and iOS.

## Getting started

1. Clone this repo to your local machine
   ```bash
   git clone https://github.com/catoverse/flutter_cato_feed.git
   ```
2. Drag this folder into your Visual Studio code editor to open a workspace
3. Get required pub packages
   ```bash
   flutter packages get
   ```
4. Add `.env` with the following fields
   ```
   NO_KEY=nothing
   GRAPHQL_API_URL=https://api.cato.tv/graphql
   ```
5. Start developing

## Architecture

The current architecture is based on MVVM pattern. This architecture consists of only three parts

1. Views — UI on top closest to the user
2. ViewModels — acts as interface between Views and Services
3. Services are 
    1. actual functionality required for business logic
    2. wrappers around external functionality such as Database, Filestorage, Network

Here's why we chose MVVM over other alternatives

1. Business logic separation from UI even at complex scenarios
2. Automatic code generation with `stacked_generator`
3. 100% Test coverage
## Folder structure and placement

I've been playing around with folder structure and the below is what I ended up with.

1. `app` — It is where we register dependencies and routes
   - Routes are registered with `auto_route`
   - Dependencies are injected with `get_it`
2. `ui` — contains all the routes that your app navigates to
   1. `view` — UI code with group of widgets
   2. `viewmodel` — contains the business logic needed.
3. `core` — this folder contains all of our app's main pieces
   1. `services` — services required for your user
   2. `models` — data models that our app uses
   3. misc
      1. `constants`
      2. `exceptions` — custom exceptions for error handling
      3. `enums` — custom datatypes
      4. `mixins` — repeated logic can be wrapped inside `mixins` and can be re-used
4. `remote` — contains all the network related functionality
5. `firebase` — services related to Firebase

## Contributing

Contributions are very welcome! See our CONTRIBUTING.md for more information.

## Community

Cato TV is an open source project and we value and welcome new contributors and members of the community. Here are ways to get in touch with the community:

- Slack
- Github Issue Tracker
