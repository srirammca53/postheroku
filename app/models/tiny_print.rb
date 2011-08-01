class TinyPrint < ActiveRecord::Base
  
  has_attached_file :image,
    :convert_options => { :quality =>  4 },
    :styles => { :small_thumb => [ "50x50", :jpg ],
	               :medium_thumb => [ "100x100", :jpg ],
                 :large_thumb => [ "370x370", :jpg ],
	               :detail_preview => [ "450x338", :jpg ] },
     #:path => "/prints/:id/:style.:extension",
    #:default_url => "/images/missing/prints/:style.png"
	 :storage => :s3,
      :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
      :bucket => "sharmanyros",
      :path => "/sriram/files/:style/:id/:filename" ,
      :default_url => "/sriram/files/:style/:id/:filename";
    

end
