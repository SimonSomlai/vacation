require 'test_helper'

class VacationItinerariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vacation_itinerary = vacation_itineraries(:one)
  end

  test "should get index" do
    get vacation_itineraries_url
    assert_response :success
  end

  test "should get new" do
    get new_vacation_itinerary_url
    assert_response :success
  end

  test "should create vacation_itinerary" do
    assert_difference('VacationItinerary.count') do
      post vacation_itineraries_url, params: { vacation_itinerary: { description: @vacation_itinerary.description, end_date: @vacation_itinerary.end_date, location: @vacation_itinerary.location, name: @vacation_itinerary.name, need_vaccins: @vacation_itinerary.need_vaccins, start_date: @vacation_itinerary.start_date, travel_time: @vacation_itinerary.travel_time } }
    end

    assert_redirected_to vacation_itinerary_url(VacationItinerary.last)
  end

  test "should show vacation_itinerary" do
    get vacation_itinerary_url(@vacation_itinerary)
    assert_response :success
  end

  test "should get edit" do
    get edit_vacation_itinerary_url(@vacation_itinerary)
    assert_response :success
  end

  test "should update vacation_itinerary" do
    patch vacation_itinerary_url(@vacation_itinerary), params: { vacation_itinerary: { description: @vacation_itinerary.description, end_date: @vacation_itinerary.end_date, location: @vacation_itinerary.location, name: @vacation_itinerary.name, need_vaccins: @vacation_itinerary.need_vaccins, start_date: @vacation_itinerary.start_date, travel_time: @vacation_itinerary.travel_time } }
    assert_redirected_to vacation_itinerary_url(@vacation_itinerary)
  end

  test "should destroy vacation_itinerary" do
    assert_difference('VacationItinerary.count', -1) do
      delete vacation_itinerary_url(@vacation_itinerary)
    end

    assert_redirected_to vacation_itineraries_url
  end
end
