# coding: utf-8
class HomeController < ApplicationController
  def index
    @slides = Slide.all
    @items = Item.order('id desc').limit(6)
  end
end
