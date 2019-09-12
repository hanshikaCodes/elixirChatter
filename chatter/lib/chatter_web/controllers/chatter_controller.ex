defmodule ChatterWeb.ChatterController do
    use ChatterWeb, :controller

    def get(conn,params) do
        #text conn, "got it #{params["status"]}"
        #using render instead of text and it takes 3 arguments
        # connection, name of the template and third is data to be sent

        render conn, "getting_message.html", status: params["status"]
    end

end