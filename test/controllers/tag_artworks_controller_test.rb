require "test_helper"

class TagArtworksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get tag_artworks_create_url
    assert_response :success
  end
end
