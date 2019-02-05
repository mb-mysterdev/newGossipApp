class GossipsController < ApplicationController

def new

    @gossip = Gossip.all

end

def create
    @gossip = Gossip.new(xxx) # avec xxx qui sont les données obtenues à partir du formulaire
  
    if @gossip.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end
  end
end