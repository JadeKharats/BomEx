defmodule BomWeb.PageController do
  use BomWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
