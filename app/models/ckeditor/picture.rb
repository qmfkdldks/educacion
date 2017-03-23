class Ckeditor::Picture < Ckeditor::Asset
  mount_uploader :data, CkeditorPictureUploader, mount_on: :data_file_name

  def url_thumb
    public_id = data_file_name.split('/').last
    Cloudinary::Utils.cloudinary_url(public_id, :width => 118, :height => 100, :crop => :fill)
  end

  def url_content
    # url(:content)
    # data_url(:content)
    puts current_path
    public_id = data_file_name.split('/').last
    Cloudinary::Utils.cloudinary_url(public_id)

    # 'http://res.cloudinary.com/dnaexfddx/' + data_file_name
  end
end
