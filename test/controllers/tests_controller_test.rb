require 'test_helper'

class TestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test = tests(:one)
  end

  test "should get index" do
    get tests_url
    assert_response :success
  end

  test "should get new" do
    get new_test_url
    assert_response :success
  end

  test "should create test" do
    assert_difference('Test.count') do
      post tests_url, params: { test: { blood_oxygen_saturation: @test.blood_oxygen_saturation, blood_sugar_fasting: @test.blood_sugar_fasting, blood_sugar_pp: @test.blood_sugar_pp, bmi: @test.bmi, body_temperature: @test.body_temperature, bp_diastolic: @test.bp_diastolic, bp_systolic: @test.bp_systolic, height: @test.height, ongoing_medication: @test.ongoing_medication, prev_diagnosis: @test.prev_diagnosis, prev_medication: @test.prev_medication, pulse_rate: @test.pulse_rate, recommendation: @test.recommendation, respiratory_rate: @test.respiratory_rate, test_date: @test.test_date, weight: @test.weight } }
    end

    assert_redirected_to test_url(Test.last)
  end

  test "should show test" do
    get test_url(@test)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_url(@test)
    assert_response :success
  end

  test "should update test" do
    patch test_url(@test), params: { test: { blood_oxygen_saturation: @test.blood_oxygen_saturation, blood_sugar_fasting: @test.blood_sugar_fasting, blood_sugar_pp: @test.blood_sugar_pp, bmi: @test.bmi, body_temperature: @test.body_temperature, bp_diastolic: @test.bp_diastolic, bp_systolic: @test.bp_systolic, height: @test.height, ongoing_medication: @test.ongoing_medication, prev_diagnosis: @test.prev_diagnosis, prev_medication: @test.prev_medication, pulse_rate: @test.pulse_rate, recommendation: @test.recommendation, respiratory_rate: @test.respiratory_rate, test_date: @test.test_date, weight: @test.weight } }
    assert_redirected_to test_url(@test)
  end

  test "should destroy test" do
    assert_difference('Test.count', -1) do
      delete test_url(@test)
    end

    assert_redirected_to tests_url
  end
end
