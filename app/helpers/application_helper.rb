module ApplicationHelper
 # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Share Soul Care"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

 #this method will embed the code from the partial
 def youtube_video(link)
  render :partial => 'shared/video', :locals => { :link => link }
 end
end
