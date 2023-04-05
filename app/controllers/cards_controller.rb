require 'mtg_sdk'

class CardsController < ApplicationController
  def search
    @cards = MTG::Card.where(name: params[:name])
    render json: @cards
  end
  
  def show
    @card = MTG::Card.find(184397)
    render :show
  end
end
