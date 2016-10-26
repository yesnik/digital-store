module ApplicationHelper
  def urls_to_images(text)
    text.gsub! /\s*(https?\:\/\/.+)\s*/, '<img src="\1">'
    text.html_safe
  end
end
