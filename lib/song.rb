require_relative 'artist.rb'  # => false, true
require 'tempfile'            # => true, false
require 'pry'

class Song
  # code goes here

  attr_accessor :title, :artist, :serialize  # => nil, nil

  # def initialize
  #   @title = title
  # end

  def title
    @title
  end

  def artist=(artist)
    @artist = artist
  end

  def artist
    @artist 
  end

  def serialize
    #Replaces spaces in the song title with underscores and makes every character lower case.
    file_title = "#{@title}".tr(' ', '_')
    # file_title2 = file_title.downcase + ".txt"
    file = Tempfile.new(["#{file_title.downcase}", ".txt"], "tmp")
      # f = Tempfile.open('#{file_title2}', 'tmp')
      #             #    This filename contains 'foo' in its basename.
    file.write("#{@artist.name} - #{@title}")
 
   
    file.close

  end


end



