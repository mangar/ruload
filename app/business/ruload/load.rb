class Ruload::Load
  include Ruload::Lib::Config

  # 
  # 
  def initialize(yaml="")
    load_initialization(yaml)
  end


  # 
  # 
  def load provider_name="", file_path=""
    report = {}

    report[:content] = _load_file_content(file_path)


    report
  end





  private

    # 
    # 
    # 
    def _load_file_content file_path=""
      raw_file_content = File.open("#{file_path}")
      file_content = []

      raw_file_content.each_line do |line|
        array_line = line.split(";")
        file_content << array_line
      end


      file_content
    end



  # def confirm=""
    
  # end

end