defmodule Secure.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline,
    otp_app: :secure,
    module: Secure.Guardian,
    error_handler: Secure.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
