FROM oracle/graalvm-ce:20.0.0-java8 as graalvm
# For JDK 11
#FROM oracle/graalvm-ce:20.0.0-java11 as graalvm
RUN gu install native-image

COPY . /home/app/mn-flyway-graal
WORKDIR /home/app/mn-flyway-graal

RUN native-image --no-server -cp build/libs/mn-flyway-graal-*-all.jar

FROM frolvlad/alpine-glibc
RUN apk update && apk add libstdc++
EXPOSE 8080
COPY --from=graalvm /home/app/mn-flyway-graal/mn-flyway-graal /app/mn-flyway-graal
ENTRYPOINT ["/app/mn-flyway-graal"]
