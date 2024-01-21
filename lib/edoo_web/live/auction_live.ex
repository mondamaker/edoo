defmodule EdooWeb.AuctionLive do
  use EdooWeb, :live_view

  def mount(params, session, socket) do
   {:ok, assign(socket, :raised, 0)}
  end

  def render(assigns) do
    ~L"""
       <h1>Cabinet of Curiosities</h1>
       <div id="auction">
           <div class="meter">
             <span style="width: <%= @raised %>%">
               $<%= @raised %> USD
             </span>
           </div>

        <button phx-click="donate-1"> $1 </button>
           <button phx-click="donate-5"> $5 </button>
           <button phx-click="donate-10"> $10 </button>
           <button phx-click="donate-100"> $100 </button>
        </div>
    """
  end
 end
