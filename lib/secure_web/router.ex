defmodule SecureWeb.Router do
  use SecureWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SecureWeb do
    pipe_through :api
  end
end
