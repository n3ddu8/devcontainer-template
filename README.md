# :recycle: devcontainer-template

Because starting from scratch shouldn’t feel like chewing glass.

Welcome to the one repo you’ll clone, forget about, and then rediscover six months later like a long-lost IKEA Allen key. This is a template for launching devcontainers that Just Work™—whether you’re bootstrapping a new project, testing something weird, or trying to remember how Docker even works.

## :toolbox: What’s in the box?

This repo is a buffet of options for spinning up a Python devcontainer with all the bells, whistles, and unnecessary complexity you secretly enjoy. Pick your branch, pick your poison:

- main — includes a basic .devcontainer.json that launches a scratch container using a prebuilt image. Fast, clean, and boring.
- dockerfile — builds from a Dockerfile with a .devcontainer.json alongside. Because you like pain.
- dockercompose — builds from docker-compose.yaml with a .devcontainer.json and Dockerfile. For when one container just isn’t enough.

Choose your flavor. Or don’t. I’m not your manager.

## :snake: The Dockerfile

A delightful Frankenstein of Python, Java, Spark, and Microsoft SQL Server tools. Why? Because you probably needed one of those once and now it’s easier to keep them all.

### Highlights:

- Python 3 (Bookworm edition, because Debian is still cool)
- OpenJDK & Apache Spark (for Spark, Hadoop, and other JVM regrets)
- Microsoft SQL Server ODBC + tools (yes, on Linux. No, I don’t want to talk about it.)

## :construction: docker-compose.yaml

Because sometimes you need:

- A workspace container that never sleeps
- An SFTP server (for reasons)
- A SQL Server container (because you like living dangerously)

All wired up with volumes, ports, and enough environment variables to make you question your life choices.

## :robot: Pre-commit hooks

You will forget to run them. That’s why they run themselves:

- Flake8, mypy, pyupgrade, trailing commas, docstring nags
- A local pytest hook with coverage enforcement (80% or bust)

If your code doesn’t pass, it’s probably your fault.

## :gear: GitHub Actions

CI that runs your tests on pull requests. Because nothing says “professional” like failing builds on main.

pytest --cov=classes --cov-fail-under=80

Yes, it’s hardcoded to classes. No, I won’t apologize.

## :package: Chezmoi + Homebrew + Neovim

Dotfiles and package management for people who think YAML is too mainstream. Neovim for the keystroke masochists, Homebrew for the package pragmatists, and Chezmoi to keep it all reproducible.

## :notebook: How to use this

1. Clone this repo.
2. Pick your poison: .json, .dockertemplate, or .composetemplate.
3. Launch your devcontainer.
4. Regret nothing.

## :brain: Pro tips

- Want to use this as a template for a new project? Go wild.
- Want to swap out Spark for something less 2010? You do you.
- Want to remove SQL Server? Good luck with your client.

## :paintbrush: .gitignore

It ignores everything you don’t want to commit. Including your shame.

