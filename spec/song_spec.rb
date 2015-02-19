describe "Song" do
  it "can initialize a song" do
    expect(Song.new).to be_an_instance_of(Song)
  end

  it "can have a name" do
    song = Song.new
    song.name = "Rolling in the jungle"
    expect(song.name).to eq("Rolling in the jungle")
  end

  let(:song) { Song.new }
  let(:genre) { Genre.new }
  artist = Artist.new

  it "can have a genre" do
      genre.songs=(song)
     expect(song.genre.count).to eq(1)
  end

  it "has an artist" do
      song = Song.new
      song.name = "Believe"
      genre = Genre.new.tap{|g| g.name = "soul"}
      song.genre = genre
      artist = Artist.new
      artist.add_song  song
     expect(song.artist.count).to eq(1)
  end
end
