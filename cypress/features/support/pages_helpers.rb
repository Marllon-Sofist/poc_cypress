Dir[File.join(File.dirname(__FILE__), "pages/menu/*_page.rb")].each{|file| require file}

module PageObjects

  def catListBreeds
    @CatListBreeds ||= CatListBreedsRequest::new
  end 

  def searchBreedsByName
    @SearchBreedsByName ||= SearchBreedsByNameRequest::new
  end 
 
  def listCategoriesRequest
    @listCategoriesRequest ||= ListCategoriesRequest::new
  end 
  
  def getYourVotesRequest
    @getYourVotesRequest ||= GetYourVotesRequest::new
  end 

  def createVotesRequest
    @createVotesRequest ||= CreateVotesRequest::new
  end 

  def getVoteByIdRequest
    @getVoteByIdRequest ||= GetVoteByIdRequest::new
  end  

  def deleteVotesRequest
    @deleteVotesRequest ||= DeleteVotesRequest::new
  end  


end
