defmodule HealthInspector.Router do
  use HealthInspector.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HealthInspector do
    pipe_through :browser # Use the default browser stack

    get "/", HomeController, :index
    post "/search", PackageController, :search
  end

  # Other scopes may use custom stacks.
  # scope "/api", HealthInspector do
  #   pipe_through :api
  # end
end
