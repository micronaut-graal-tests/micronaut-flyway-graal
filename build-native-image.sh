./gradlew assemble
native-image --no-fallback --class-path build/libs/micronaut-flyway-graal-*-all.jar
