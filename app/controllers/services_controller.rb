# coding: utf-8

class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find_by(slug: params[:slug])
    @order = Order.new
  end
end
