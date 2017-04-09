require 'carrierwave/orm/activerecord'
CarrierWave.configure do |config|
 config.fog_provider = 'fog/aws'                        
 config.fog_credentials = {
   provider:              'AWS',                        
   aws_access_key_id:     'AKIAIZLKPDVKROX42D3A',                        
   aws_secret_access_key: '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',     
   region:                 'ap-south-1'                  
 }
 config.fog_directory  = 'cwave'  #this is bucket name of your AWS                                                 
end
