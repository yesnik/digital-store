module ApplicationHelper
  def urls_to_images(text)
    text.gsub! /\s+(https?\:\/\/.+(jpg|jpeg|png))\s*/, '<img src="\1">'
    text.html_safe
  end

  def urls_to_links(text)
    text.gsub! /\s+(https?\:\/\/.+)\s*/, '<a href="\1">\1</a>'
    text.html_safe
  end

  # Returns thumb image wrapped in <a> tag to be clickable
  #   image - instance of model Image
  def clickable_thumb(image)
    render partial: 'shared/clickable_thumb', locals: {image: image} if image.file.thumb.file
  end
end
