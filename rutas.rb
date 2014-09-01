                  Prefix Verb   URI Pattern                                        Controller#Action
   getalltickets_cliente GET    /clientes/:id/getalltickets(.:format)              clientes#getalltickets
  getopentickets_cliente GET    /clientes/:id/getopentickets(.:format)             clientes#getopentickets
getclosedtickets_cliente GET    /clientes/:id/getclosedtickets(.:format)           clientes#getclosedtickets
         cliente_equipos GET    /clientes/:cliente_id/equipos(.:format)            equipos#index {:name_prefix=>"cliente_"}
                         POST   /clientes/:cliente_id/equipos(.:format)            equipos#create {:name_prefix=>"cliente_"}
      new_cliente_equipo GET    /clientes/:cliente_id/equipos/new(.:format)        equipos#new {:name_prefix=>"cliente_"}
     edit_cliente_equipo GET    /clientes/:cliente_id/equipos/:id/edit(.:format)   equipos#edit {:name_prefix=>"cliente_"}
          cliente_equipo GET    /clientes/:cliente_id/equipos/:id(.:format)        equipos#show {:name_prefix=>"cliente_"}
                         PATCH  /clientes/:cliente_id/equipos/:id(.:format)        equipos#update {:name_prefix=>"cliente_"}
                         PUT    /clientes/:cliente_id/equipos/:id(.:format)        equipos#update {:name_prefix=>"cliente_"}
                         DELETE /clientes/:cliente_id/equipos/:id(.:format)        equipos#destroy {:name_prefix=>"cliente_"}
                clientes GET    /clientes(.:format)                                clientes#index
                         POST   /clientes(.:format)                                clientes#create
             new_cliente GET    /clientes/new(.:format)                            clientes#new
            edit_cliente GET    /clientes/:id/edit(.:format)                       clientes#edit
                 cliente GET    /clientes/:id(.:format)                            clientes#show
                         PATCH  /clientes/:id(.:format)                            clientes#update
                         PUT    /clientes/:id(.:format)                            clientes#update
                         DELETE /clientes/:id(.:format)                            clientes#destroy
          equipo_tickets GET    /equipos/:equipo_id/tickets(.:format)              tickets#index {:name_prefix=>"equipo_"}
                         POST   /equipos/:equipo_id/tickets(.:format)              tickets#create {:name_prefix=>"equipo_"}
       new_equipo_ticket GET    /equipos/:equipo_id/tickets/new(.:format)          tickets#new {:name_prefix=>"equipo_"}
      edit_equipo_ticket GET    /equipos/:equipo_id/tickets/:id/edit(.:format)     tickets#edit {:name_prefix=>"equipo_"}
           equipo_ticket GET    /equipos/:equipo_id/tickets/:id(.:format)          tickets#show {:name_prefix=>"equipo_"}
                         PATCH  /equipos/:equipo_id/tickets/:id(.:format)          tickets#update {:name_prefix=>"equipo_"}
                         PUT    /equipos/:equipo_id/tickets/:id(.:format)          tickets#update {:name_prefix=>"equipo_"}
                         DELETE /equipos/:equipo_id/tickets/:id(.:format)          tickets#destroy {:name_prefix=>"equipo_"}
                 equipos GET    /equipos(.:format)                                 equipos#index
                         POST   /equipos(.:format)                                 equipos#create
              new_equipo GET    /equipos/new(.:format)                             equipos#new
             edit_equipo GET    /equipos/:id/edit(.:format)                        equipos#edit
                  equipo GET    /equipos/:id(.:format)                             equipos#show
                         PATCH  /equipos/:id(.:format)                             equipos#update
                         PUT    /equipos/:id(.:format)                             equipos#update
                         DELETE /equipos/:id(.:format)                             equipos#destroy
      ticket_comentarios GET    /tickets/:ticket_id/comentarios(.:format)          comentarios#index {:name_prefix=>"ticket_"}
                         POST   /tickets/:ticket_id/comentarios(.:format)          comentarios#create {:name_prefix=>"ticket_"}
   new_ticket_comentario GET    /tickets/:ticket_id/comentarios/new(.:format)      comentarios#new {:name_prefix=>"ticket_"}
  edit_ticket_comentario GET    /tickets/:ticket_id/comentarios/:id/edit(.:format) comentarios#edit {:name_prefix=>"ticket_"}
       ticket_comentario GET    /tickets/:ticket_id/comentarios/:id(.:format)      comentarios#show {:name_prefix=>"ticket_"}
                         PATCH  /tickets/:ticket_id/comentarios/:id(.:format)      comentarios#update {:name_prefix=>"ticket_"}
                         PUT    /tickets/:ticket_id/comentarios/:id(.:format)      comentarios#update {:name_prefix=>"ticket_"}
                         DELETE /tickets/:ticket_id/comentarios/:id(.:format)      comentarios#destroy {:name_prefix=>"ticket_"}
                 tickets GET    /tickets(.:format)                                 tickets#index
                         POST   /tickets(.:format)                                 tickets#create
              new_ticket GET    /tickets/new(.:format)                             tickets#new
             edit_ticket GET    /tickets/:id/edit(.:format)                        tickets#edit
                  ticket GET    /tickets/:id(.:format)                             tickets#show
                         PATCH  /tickets/:id(.:format)                             tickets#update
                         PUT    /tickets/:id(.:format)                             tickets#update
                         DELETE /tickets/:id(.:format)                             tickets#destroy
             comentarios GET    /comentarios(.:format)                             comentarios#index
                         POST   /comentarios(.:format)                             comentarios#create
          new_comentario GET    /comentarios/new(.:format)                         comentarios#new
         edit_comentario GET    /comentarios/:id/edit(.:format)                    comentarios#edit
              comentario GET    /comentarios/:id(.:format)                         comentarios#show
                         PATCH  /comentarios/:id(.:format)                         comentarios#update
                         PUT    /comentarios/:id(.:format)                         comentarios#update
                         DELETE /comentarios/:id(.:format)                         comentarios#destroy
           welcome_index GET    /welcome/index(.:format)                           welcome#index
                    root GET    /                                                  welcome#index