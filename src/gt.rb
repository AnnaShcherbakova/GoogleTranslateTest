require 'selenium/webdriver'
require 'rspec/autorun'

include RSpec

class GoogleTranslate
  attr_accessor :result_tr
   
  def OpenBrowse
#    let (:browser) {@browser ||= Selenium:WebDriver.for :ff
    @driver = Selenium::WebDriver.for :ff
    @driver.get 'https://translate.google.ru/'
  end


  def GetTranslation(source_txt, res_txt)#, auto_trans=true, lang_source="Английский", lang_result="Русский")
    stxt_el = @driver.find_element :id => 'source'
    stxt_el.send_keys source_txt
    stxt_el.submit #don't know if it is needed, works without it

    rtxt_el = @driver.find_element :id => 'result_box'
    self.result_tr = rtxt_el.text
  end


  def CloseBrowse
    @driver.quit
  end

end
