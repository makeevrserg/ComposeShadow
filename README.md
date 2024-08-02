## ComposeShadow sample project

- [Habr](https://habr.com/ru/sandbox/222572/)
- [Medium](https://medium.com/@makeevrserg/compose-desktop-shadowjar-1cba3aba9a58)

### How to run

- Don't use JetBrains Runtime Java
- Setup AmazonCoretto Java 17
- run `./gradlew :composeApp:shadowJar` to create shadowJar
- run `./gradlew :composeApp:obfuscate` to create obfuscated jar

The built files well be located [here](./jars)
