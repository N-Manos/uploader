# initializers/s3.rb
if Rails.env == "production"
  # set credentials from ENV hash
  S3_CREDENTIALS = { :access_key_id => ENV['S3_KEY'], :secret_access_key => ENV['S3_SECRET'], :bucket => "uploaderfilestorage"}
else
  # get credentials from YML file
  S3_CREDENTIALS = Rails.root.join("config/aws.yml")
end
