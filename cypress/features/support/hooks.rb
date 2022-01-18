

Before do |scnario|
  # SetUrl.new.load
end  

After do |scenario|
  ## nome do cenário
  scenario_name = scenario.name.simplify
  file_name = scenario_name.gsub(' ', '_')
  
  img_path = "results/images/"
  shot = "#{img_path}/#{file_name.downcase!}.png"
  
  # vai planeta
  page.save_screenshot(shot)
  embed(shot, 'image/png', 'Clique aqui pra ver o PRINT :)')

end

at_exit do
  inputFile = 'log/report/final_report.json'
  utils = Utils.new
  
  if (File.file?(inputFile))
    ReportBuilder.configure do |config|
      # puts utils.dateTime
      config.input_path = inputFile
      config.html_report_path = "log/report/final_report_#{utils.dateTime}"
      config.report_path = "test_report"
      config.report_types = [:html]
      config.report_title = "Execução Automática"
      config.color = "amber"
      config.additional_info = { Serviço: "Rest", Ambiente: "QA" }
    end

    ReportBuilder.build_report
  end
end