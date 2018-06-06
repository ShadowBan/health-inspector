defmodule HealthInspector.PackageController do
  use HealthInspector.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def search(conn, _params) do
    render conn, "index.html"
  end
end
