# coding: utf-8

class OrdersController < ApplicationController
  def create
    @order = Order.new(permitted_params)
    if @order.save
      redirect_to request.referer
      flash[:notice] = "Ваш заказ успешно отправлен"
    else
      redirect_to request.referer
      flash[:error]  = "Не удалось отправить заказ"
    end
  end

  private

  def permitted_params
    params.require(:order).permit(:name, :email, :phone, :service_id, :message )
  end
end
