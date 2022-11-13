defmodule DepotWeb.PageController do
  use DepotWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
