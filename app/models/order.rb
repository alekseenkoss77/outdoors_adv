# coding: utf-8

class Order < ActiveRecord::Base
  belongs_to :service

  validates :name, :phone, presence: true

  after_save :send_message

private

  def send_message
    Smsru::Sender.sms_send('79539237396', "Новый заказ: #{self.name} #{self.phone}")
  end
end
