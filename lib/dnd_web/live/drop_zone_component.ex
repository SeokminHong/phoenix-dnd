defmodule DndWeb.PageLive.DropZoneComponent do
  use Phoenix.LiveComponent

  @impl true
  def render(assigns) do
    ~H"""
    <div
      class={"dropzone grid gap-3 p-6 border-solid border-2 #{@border_color} rounded-md my-6"}
      id={@drop_zone_id}
    >
      <%= @title %>
      <%= for %{text: text, id: id} <- @draggables do %>
        <div draggable="true" id={id} class={"draggable p-4 #{@item_color} text-white"}>
          <%= text %>
        </div>
      <% end %>
    </div>
    """
  end
end
