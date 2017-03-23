class Ckeditor::AttachmentFile < Ckeditor::Asset
  mount_uploader :data, CkeditorAttachmentFileUploader, mount_on: :data_file_name

  def url_thumb
  	public_id = data_file_name.split('/').last
    # @url_thumb ||= Ckeditor::Utils.filethumb(filename)
    @url_thumb ||= Ckeditor::Utils.filethumb(data_file_name)
    # 'http://res.cloudinary.com/dnaexfddx/' + data_file_name
    # Cloudinary::Utils.cloudinary_url(public_id, :resource_type => :raw)
  end

  def url_content
  	public_id = data_file_name.split('/').last
	Cloudinary::Utils.cloudinary_url(public_id, :resource_type => :raw)
  end

end
