# Mark Sadegi

## This is home. My aim is to create a Phoenix 1.3.3 umbrella app with two nested applications.
###
  - [apps/resume](apps/resume)
  - [apps/blog](apps/blog)

#### commands & steps
> set up initial umbrella app
```sh
$ mix new mark_sadegi --umbrella
```

> create the resume app
```sh
$ cd apps/
```
> if there are child apps that resume will depend on, there are two additions to  `apps/resume/mix.exs` that will needed
1.
> this:
```elixir
extra_applications: [:logger, :runtime_tools]
```
> to this:
```elixir
extra_applications: [:logger, :runtime_tools, :some_service_type_app]]
```
2.
> this:
```elixir
defp deps do
  [
    {:phoenix, "~> 1.3.3"},
    {:phoenix_pubsub, "~> 1.0"},
    {:phoenix_ecto, "~> 3.2"},
    {:postgrex, ">= 0.0.0"},
    {:phoenix_html, "~> 2.10"},
    {:phoenix_live_reload, "~> 1.0", only: :dev},
    {:gettext, "~> 0.11"},
    {:cowboy, "~> 1.0"}
  ]
end
```
> to this:
> this:
```elixir
defp deps do
  [
    {:phoenix, "~> 1.3.3"},
    {:phoenix_pubsub, "~> 1.0"},
    {:phoenix_ecto, "~> 3.2"},
    {:postgrex, ">= 0.0.0"},
    {:phoenix_html, "~> 2.10"},
    {:phoenix_live_reload, "~> 1.0", only: :dev},
    {:gettext, "~> 0.11"},
    {:cowboy, "~> 1.0"},
    {:some_service_type_app, in_umbrella: true}
  ]
end
```
