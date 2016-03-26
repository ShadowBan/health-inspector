defmodule HealthInspector.LayoutView do
  use HealthInspector.Web, :view
  use Phoenix.HTML
  
   @doc """
  Generates tag for inlined form input errors.
  """
  def msg_tag(conn, type) do
    msg = nil 
    type_class = ""
    case type do
      :info ->
        msg = get_flash(conn, :info)
        type_class = "is-info"
      :error ->
        msg = get_flash(conn, :error)
        type_class = "is-danger"
    end
    if msg do
      content_tag(:div, class: "notification " <> type_class) do
        [
          content_tag(:button,"", class: "delete"),
          content_tag(:span, msg)
        ]
      end
    end
  end 
end