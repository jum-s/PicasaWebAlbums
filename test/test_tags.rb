require 'test/unit'
require 'shoulda'
require_relative '../lib/picasawebalbums'

module PicasaWebAlbums
  class TestTags < Test::Unit::TestCase
    
    context "get all tags" do
      repo = PicasaWebAlbums.get_repository('apitest33@gmail.com', 'ruhak23A')
      should "return at least 1 tag" do
        tags = repo.get_all_tags
        assert tags.count > 0
      end
    end
  
    context "get tags by album id" do
      repo = PicasaWebAlbums.get_repository('apitest33@gmail.com', 'ruhak23A')
      should "return at least 1 tag" do
        tags = repo.get_tags_by_album_id("5461230096110151249")
        assert tags.count > 0
      end
    end
  
    context "get tags by album id and photo id" do
      repo = PicasaWebAlbums.get_repository('apitest33@gmail.com', 'ruhak23A')
      should "return at least 1 tag" do
        tags = repo.get_tags_by_album_id_and_photo_id("5461230096110151249", "5577383323184640194")
        assert tags.count > 0
      end
    end
    
    context "get photos by tags" do
      should "return at least 1 photo" do
        repo = PicasaWebAlbums.get_repository('apitest33@gmail.com', 'ruhak23A')
        photos = repo.get_photos_by_tags(['penny'])
        assert photos.count > 0
      end
    end
  
  end
end