class UsersController < ApplicationController
	@@count = 0
  def index
  	@@count +=1
  	p session[:id] = @@count

  	return render text: 'what do you want me to say?'

  end
  def restart
  	@@count = 0
  	p session[:id] = @@count
  	return render text: "session reset"
  end
  def hello
  	return render text: 'HELLO'
  	
  end
  def sayhello
  	return render text: "saying hello"
  	
  end
  def joe
  	return render text: "saying hello joe"
  	
  end
  def michael
  	return render text: "saying hello michael"
  	
  end
end
