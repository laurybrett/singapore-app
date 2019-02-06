ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
require 'bootsnap/setup' # Speed up boot time by caching expensive operations.

require 'parse/stack'

# Set your specific Parse keys in your ENV. For all connection options, see
# https://github.com/modernistik/parse-stack#connection-setup

Parse.setup app_id: 'DZnShMSFSMsOkaK4qSSfghTtZGGVNNlruSGgrM29',
           api_key: 'j6qJRij57ufDSAV3KdfxsSFrMhSViNCtYPeBHohg',
        master_key: 'qprI5UdFJdqfkHmWUetVi6fhBU49J6M1aZDrrMUq',
        server_url: 'https://parseapi.back4app.com/'
        # optional
        #    logging: false,
        #      cache: Moneta.new(:File, dir: 'tmp/cache'),
        #    expires: 1 # cache ttl 1 second

        Parse.auto_generate_models!
        class Parse::User
          property :first_name, :string
          property :last_name, :string
          property :location, :string
        end
        class Road < Parse::Object
          property :name
          property :play, :integer
          property :audio_file, :file
          property :tags, :array
          property :released, :date
          property :bibo_property, :string
          belongs_to :artist
        end
        class Song < Parse::Object
          property :name
          property :play, :integer
          property :audio_file, :file
          property :tags, :array
          property :released, :date
          belongs_to :artist
        end


        # class Artist < Parse::Object
        #   property :name
        #   property :genres, :array
        # end

        # updates schemas for your Parse app based on your models (non-destructive)
        Parse.auto_upgrade!

        # login
        # user = Parse::User.login(username, passwd)
        song = Song.new(name: "BiboSOng",play: 0)
        song.save
        artist = Artist.new(name: "Frank Sinatra", genres: ["swing", "jazz"])
        artist.save