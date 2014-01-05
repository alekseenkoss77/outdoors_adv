# coding: utf-8

class PortfolioController < ApplicationController
  def index
    @items = Item.order('id desc')
  end

  def show
    @items = Item.where(service_id: params[:id])
  end
end
