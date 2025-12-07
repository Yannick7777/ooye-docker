# OOYE Docker container

This repo contains buildscripts and instructions to setup and run ooye inside a docker conatiner.

## Setup
- Copy compose.yaml from repo
- Uncomment the command line in `compose.yaml`
- Make sure `ooye.db` and `registration.yaml` exist by creating them with `touch ooye.db registration.yaml`
- Run `docker compose up -d` to start the container in the background
- You now got 30 mins time to setup the container
- Run `docker compose exec ooye npm run setup` to start the interactive setup process
- After setup is complete, remove or comment out the command line inside the `compose.yaml` file again and restarting the container by running `docker compose down && docker compose up -d`

## Other info
- [ooye project source](https://gitdab.com/cadence/out-of-your-element)
- [ooye get-started](https://gitdab.com/cadence/out-of-your-element/src/branch/main/docs/get-started.md)