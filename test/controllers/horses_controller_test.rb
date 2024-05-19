require "test_helper"

class HorsesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get "/horses.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal Horse.count, data.length
  end
  
  test "create" do
    assert_difference "Horse.count", 1 do
      post "/horses.json", params: { name: "test product", color: "color", weight: 30, price: 10000  }
    end
  end
  
  test "show" do
    get "/horses/#{Horse.first.id}.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal ["id", "name", "color", "weight", "price", "created_at", "updated_at"], data.keys
  end
  
  test "update" do
    horse = Horse.first
    patch "/horses/#{horse.id}.json", params: { name: "Updated name" }
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end
  
  test "destroy" do
    assert_difference "Horse.count", -1 do
      delete "/horses/#{Horse.first.id}.json"
      assert_response 200
    end
  end
end
