module ApplicationHelper
  def urls_to_images(text)
    text.gsub! /\s+(https?\:\/\/.+(jpg|jpeg|png))\s*/, '<img src="\1">'
    text.html_safe
  end

  def urls_to_links(text)
    text.gsub! /\s+(https?\:\/\/.+)\s*/, '<a href="\1">\1</a>'
    text.html_safe
  end
end
