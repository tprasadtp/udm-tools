---
layout: default
navorder: 6
permalink: /build
title: Build
---

# Build

- Builds use
<a href="https://taskfile.dev" rel="noreferrer">Taskfile</a> and
<a href="https://nfpm.goreleaser.com" rel="noreferrer">nfpm</a>.

## Help

Built in help is set as default task, and can be invoked directly.

```
task
```

## Build packages

```
task build
```
and build outputs will be in `build` directory.

## Test mode

You can set `CI_TEST_MODE=703004ad-3b6c-4baa-84c5-868dd09acd06` to enable runnng utilities in test mode. This will disable UBiOS/UniFiOS enforcement and use `/tmp/703004ad-3b6c-4baa-84c5-868dd09acd06.*` directories to enable local testing.
