# jenkins-containers
Docker containers for jenkins job runners.

All images are based on Alpine Linux unless otherwise stated.

## Supported Platforms

|  | Base Image | NodeJS | JDK 11 + Gradle (Ubuntu) |
|------------|------------|------------|------------|
| linux/386 | :white_check_mark: | :white_check_mark: | :x: [Upstream] |
| linux/amd64 | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| linux/arm/v6 | :white_check_mark: | :white_check_mark: | :x: [Upstream] |
| linux/arm/v7 | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| linux/arm64 | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| linux/ppc64le | :white_check_mark: | :white_check_mark: | :x: [Gradle] |
| linux/s390x | :white_check_mark: | :white_check_mark: | :x: [Gradle] |
| linux/riscv64 | :x: [Upstream] | :x: [Upstream, x2] | :x: [Upstream] |