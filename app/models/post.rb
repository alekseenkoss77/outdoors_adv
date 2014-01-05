# coding: utf-8

class Post < ActiveRecord::Base
  has_many :attachments, as: :attacheble
  accepts_nested_attributes_for :attachments, allow_destroy: true

  acts_as_taggable
  acts_as_taggable_on :tags

  default_scope order('created_at DESC')
end
