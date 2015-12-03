CarrierWave.configure do |config|
   config.ftp_host = "ltzn.ftp.infomaniak.com"
   config.ftp_port = 21
   config.ftp_user = "ltzn_rubocop"
   config.ftp_passwd = "Rubocop123"
   config.ftp_folder = "/"
   config.ftp_url = "http://chashmeetsingh.com"
   config.ftp_passive = true # false by default
 end