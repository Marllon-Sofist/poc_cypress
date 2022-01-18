
# encoding: utf-8
module Pages
    class Login < SitePrism::Page
  
        set_url '/'
        element :input_login, '.input'
        element :input_senha, '.password'
        element :btn_login, 'button'
    
        def click_button_sign_in
            self.btn_login.click
        end   
      
        def click_button_search
            self.btn_search.click
        end
  
    end
  end
  