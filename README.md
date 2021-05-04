### Overview

Cato TV is your one-stop destination for short-form videos that focus on education. We re-designed your existing social media feeds with the best 0.1% of the knowledge from the best teachers and leaders that has 90% of the value on the internet.

Cato TV is a flagship product from [catoverse](https://twitter.com/catoverse).

This project leverages [Flutter](https://flutter.dev/) framework to build natively compiled applications for android and iOS.

### Getting started

1. Clone this repo to your local machine
   ```bash
   git clone https://github.com/catoverse/flutter_cato_feed.git
   ```
2. Drag this folder into your Visual Studio code editor to open a workspace
3. Get required pub packages
   ```bash
   flutter packages get
   ```
4. Start developing

### Architecture Details

This whole project is powered by Bloc Architecture. Bloc is a predictable state management library for Dart and here are the reasons why we chose Bloc 

1. Bloc provides a clear separation between UI and logic which makes it powerful when developing complex applications
2. By clear separation we can test our logic easily
3. Predictable state across the whole application
4. By making the state predictable, one can observe the state of our application in a given point of time

Read more about bloc [here](https://bloclibrary.dev/).

### Structure and Placement

The whole app leverages the clean code folder structure that follows Domain Driven Design Architecture.

1. `application` — we store the state of the entire application here. The state is powered by Bloc. Using Bloc we define the states our app could be in a given moment of time and then list the events that trigger the state changes. 
2. `domain` — contains all the data models that will be used in the application.
3. `infrastructure` — contains all the repository implementations which are wrappers build around a particular service.
4. `presentation` — contains all the code relating to the user interface. We use all the above layers to perfectly craft the behaviour of the application.

Learn more about the folder structure [here](https://resocoder.com/2020/03/09/flutter-firebase-ddd-course-1-domain-driven-design-principles/).

### Contributing

Contributions are very welcome! See our CONTRIBUTING.md for more information.

### Community

Cato TV is an open source project and we value and welcome new contributors and members of the community. Here are ways to get in touch with the community:

- Slack
- Github Issue Tracker
