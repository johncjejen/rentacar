class S3Store

    require "aws-sdk-s3"
    BUCKET = 'rentcarjcjc'


    attr_reader :object

    # @param object [Aws::S3::Object] An existing Amazon S3 object.
    def initialize(object)
      @object = object
    end
  
    # Uploads a file to an Amazon S3 object by using a managed uploader.
    #
    # @param file_path [String] The path to the file to upload.
    # @return [Boolean] True when the file is uploaded; otherwise false.
    def upload_file(file_path)
      @object.upload_file(file_path)
      true
    rescue Aws::Errors::ServiceError => e
      puts "Couldn't upload file #{file_path} to #{@object.key}. Here's why: #{e.message}"
      false
    end
  
    def initialize(file,folder)
      @file = file
      @s3 = Aws::S3.new(:region => 'us-west-1')
      @bucket = @s3.buckets[BUCKET+'/'+folder.to_s]
    end
  
    def store
      @obj = @bucket.objects[filename].write(@file.tempfile, acl: :private)
      self
    end
  
    def url
      # @obj.public_url.to_s
    end
  
    private
    
    def filename
      @filename ||= @file.original_filename.gsub(/[^a-zA-Z0-9_\.]/, '_')
    end
  
  end
  
  
  