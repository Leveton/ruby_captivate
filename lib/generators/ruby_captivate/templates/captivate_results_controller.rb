class CaptivateResultsController < ApplicationController

  def process_results
    company_name = params[:CompanyName]
    department_name = params[:DepartmentName]
    course_name = params[:CourseName]
    file_name = params[:Filename]
    file_data = params[:Filedata]
    file_path = File.join("#{Rails.root}/doc", "CaptivateResults", company_name, department_name, course_name)
    FileUtils.mkdir_p(file_path)
    file_path = File.join(file_path, file_name)
    handle = File.open(file_path, 'w' )
    handle << file_data
    handle.close # To parse the resulting XML file, you could now use Nokogiri.  For example:
    #file_save = File.open(handle)
    #file_iterate = Nokogiri::XML(file_save)
    ## DO SOMETHING WITH 'file_iterate'
  end
end
