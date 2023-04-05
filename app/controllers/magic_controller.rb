class MagicController < ApplicationController
  require 'mtg_sdk'
  
  def index
      
      @card = MTG::Card.find(409574)
      #@card = MTG::Card.find(386616)
      #puts @card.name
      
      #@cards = MTG::Card.where(name: 'Squee').all
      #@cards = MTG::Card.where(name: '"Westgate Regent"').all
      

  end
end
