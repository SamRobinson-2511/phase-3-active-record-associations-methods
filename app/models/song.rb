class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.first
    
  end

  def drake_made_this 
    self.first_or_create(name: "Drake")
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if Drake is *not found*

  end
end


#Contact.where(survey_id: survey,voter_id: voter).first_or_create