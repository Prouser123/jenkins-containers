# jenkins-containers
Docker containers for jenkins job runners.

## Supported Platforms

|  | Base Image | NodeJS |
|------------|------------|------------|
| linux/386 | :white_check_mark: | :white_check_mark: |
| linux/amd64 | :white_check_mark: | :white_check_mark: |
| linux/arm/v6 | :white_check_mark: | :white_check_mark: [Experimental]|
| linux/arm/v7 | :white_check_mark: | :white_check_mark: |
| linux/arm64 | :white_check_mark: | :white_check_mark: |
| linux/ppc64le | :white_check_mark: | :white_check_mark: [Tier 2]|
| linux/s390x | :white_check_mark: | :white_check_mark: [Tier 2]|
| linux/riscv64 | :x: [Upstream] | :x: [Upstream, x2]