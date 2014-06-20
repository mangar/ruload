module Ruload::Lib::Config

  # 
  # 
  def load_initialization(yaml="")
    # if $ruload != nil
      file = (!yaml.blank? ? yaml : "#{Rails.root}/config/initializers/ruload.yml")
      puts "=> (1) Initializing RULOAD CONFIG (#{file}) .. Env: #{ENV['RAILS_ENV']} ... #{Rails.env}"

      $ruload = YAML.load(File.open("#{file}"))
      # $ruload = YAML::parse(File.open("#{file}"))

    # else
      # if Rails.env == "development"
        # puts "=> (2) Initializing RULOAD CONFIG (initializers/ruload.yml) .. Env: #{ENV['RAILS_ENV']} ... #{Rails.env}"
        # $ruload = YAML.load(File.read(File.expand_path("#{Rails.root}/config/initializers/ruload.yml", File.dirname(__FILE__))))
      # end
    # end

    $ruload["file_path"] = file
    $ruload
  end
  
end