defmodule SchloadWeb.PageController do
  use SchloadWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def dynamic(conn, params) do
    resp = [%{
      body: "https://vid.podium.com",
      composer_app_item_webhook: "http://localhost:9002/webhook",
      composer_app_item_uid: UUID.uuid1(),
      is_message: true,
      header: "Video Chat",
      icon_url: "https://assets.podium.com/icons/video-w-gray-bg.png",
      conversation_uid: Map.get(params, :conversation_uid),
      application_uid: "f7962a91-848f-4118-a98c-f87aec7fa9c6",
      actions: [%{
        uri: "http://google.com",
        label: "Join Video Chat"
      }]
    }]
    json(conn, resp)
  end
end
