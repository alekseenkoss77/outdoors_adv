# coding: utf-8

module ApplicationHelper

  def meta_title(title)
    content_for :meta_title do
      title
    end
  end

  def meta_keywords(title)
    content_for :meta_keywords do
      title
    end
  end

  def meta_description(title)
    content_for :meta_description do
      title
    end
  end

  def render_flash_notice
    out = ''
    if flash[:notice]
      out += "<div class='flash-notice'>#{flash[:notice]}</div>"
    elsif flash[:error]
      out += "<div class='flash-error'>#{flash[:error]}</div>"
    end
    raw out
  end

end
