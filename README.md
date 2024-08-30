# Mods by Charm, in Docker

To setup [Mods](https://github.com/charmbracelet/mods) in a Docker container, run:
```shell
docker build -t test_mods_image .
docker run --it test_mods_image
```

Once inside the container, set `OPENAI_API_KEY`:
```shell
export OPENAI_API_KEY="<api_key>"
```

Then you're all set to use `mods`