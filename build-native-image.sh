./gradlew assemble
native-image --no-server --no-fallback --class-path build/libs/micronaut-flyway-graal-*-all.jar
