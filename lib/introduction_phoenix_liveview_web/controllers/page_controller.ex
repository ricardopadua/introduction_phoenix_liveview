defmodule IntroductionPhoenixLiveviewWeb.PageController do
  use IntroductionPhoenixLiveviewWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
