class ContactsController < ApplicationController
  def index
    @order = Order.new
  end
end
