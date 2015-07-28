module TasksHelper

  def embed(image)
    youtube_id = image.split("=").last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  end

end  