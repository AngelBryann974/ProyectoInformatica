class Videojuego < ActiveRecord::Base 
  attr_accessor :photo,:titulo
  FOTOS = File.join Rails.root, 'public', 'photo_store'
  after_save :guardar_foto
 
 def has_photo?
   File.exists? photo_filename
   
 end
  
  
  
  def photo_filename
    File.join FOTOS, "#{id}.#{extension}"
  end
  
  def photo_path
    "/photo_store/#{id}.#{extension}"
  end  
  
  def photo=(file_data)
    unless file_data.blank?
      @file_data = file_data
      self.extension = file_data.orginal_filename.split('.').last.downcase
     end
  end 
  
  
  private
  
  def guardar_foto
    if @file_data
        FileUtils.mkdir_p FOTOS
        File.open(photo_filename, 'wb') do |f|
          f.write(file_data.read)
        end
        @file_data = nil
    end
  end
  
  has_many :videojuego_admins
 has_many :admins, through: :videojuego_admins
 validates :nombre, presence: { Message:"Debe existir un nombre de usuario"}
  
end
