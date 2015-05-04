require 'cucumber'

Given /^I am on a Google Translate page in (.*)$/ do |brows|
 #открываем страницу в chrome
  
  @gt = GoogleTranslate.new
  @gt.OpenBrowse
end

When /^I write '(.*)'$/ do |source_word|
 # вводим слово для перевода
  @gt.GetTranslation(source_word, "")
end

Then /^I should see '(.*)'$/ do |exp_result|
 # сравниваем ожид результат с реальным
  @exp_result = exp_result
  res = @gt.result_tr
  res.should eql(@exp_result)
  @gt.CloseBrowse
end
