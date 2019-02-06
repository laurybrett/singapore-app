class RegistrationsController < Devise::RegistrationsController
  def new
    super
    puts "hi there============>>>>>>>>" 
  end

  def create
    song = Song.new(name: "kaushik",play: 1)
    song.save
    puts "hi there============>>>>>>>>"
    # add custom create logic here
  end
  def update
    super
  end
end