class Captivate_ResultsController < ApplicationController

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
    handle.close
    #file_save = File.open(handle)
end


end