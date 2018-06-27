# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :resume,
  namespace: Resume,
  ecto_repos: [Resume.Repo]

# Configures the endpoint
config :resume, ResumeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WTqbOV4Wn+p8y48WBfi5FZ1ROEhIkUhbnhXW5hE0h61BCyIYDXzVVKRieEBMypI0",
  render_errors: [view: ResumeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Resume.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
