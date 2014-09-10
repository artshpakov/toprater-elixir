use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, Toprater.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_toprater_key",
  session_secret: "S^_1Z_1KMVQYOC92H80%7+1(EH(^R13%X2)U0CUKSQNYDWC)ULT4*)@$&YGN=JUSUSN"

config :logger, :console,
  level: :info,
  metadata: [:request_id]

