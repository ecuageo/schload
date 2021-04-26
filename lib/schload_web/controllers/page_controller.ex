defmodule SchloadWeb.PageController do
  use SchloadWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
