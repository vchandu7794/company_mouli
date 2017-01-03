class LoginController < ApplicationController
def index
	end
    def login
       
    end	
    def edit
        
    end
    def sign_out
        $n = nil
  redirect_to :action => 'index'
end
def data
  @employees = Article.all
end
    def check
    	
    	a=Article.where(:email => params[:email], :password=> params[:password])
        
    	if !a.blank?
        
    		flash[:notice] = "Logged in as :"
    		redirect_to '/articles'
            flash.discard(:notice)
    	else
    		flash[:notice] = "* User ID and Password not matches"
    		redirect_to :action => 'index'

    	end

    end

    def logout
  redirect_to :action => 'index'
    end

end
