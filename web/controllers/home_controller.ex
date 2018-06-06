defmodule HealthInspector.HomeController do
  use HealthInspector.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
