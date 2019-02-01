defmodule SecureWeb.Router do
  use SecureWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", SecureWeb do
    pipe_through :api

    post "/sign_up", UserController, :create
  end
end
