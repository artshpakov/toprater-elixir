use Mix.Config

config :phoenix, Toprater.Router,
  port: System.get_env("PORT") || 4000,
  ssl: false,
  host: "localhost",
  cookies: true,
  session_key: "_toprater_key",
  session_secret: "S^_1Z_1KMVQYOC92H80%7+1(EH(^R13%X2)U0CUKSQNYDWC)ULT4*)@$&YGN=JUSUSN",
  debug_errors: true

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


