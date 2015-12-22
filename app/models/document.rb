class Document < ActiveRecord::Base
  belongs_to :team
  has_and_belongs_to_many :clients
  def uploadfile(upload)

    name =  upload[:dafile].original_filename
    directory = "#{Rails.root}/public/data/"

    path = File.join(directory, name)
    self.file_path = path

    File.open(path, "wb") { |f| f.write(upload[:dafile].read) }


  end
end

