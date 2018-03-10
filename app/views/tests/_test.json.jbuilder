json.extract! test, :id, :prev_diagnosis, :prev_medication, :ongoing_medication, :pulse_rate, :body_temperature, :respiratory_rate, :bp_systolic, :bp_diastolic, :blood_oxygen_saturation, :blood_sugar_pp, :blood_sugar_fasting, :height, :weight, :bmi, :test_date, :recommendation, :created_at, :updated_at
json.url test_url(test, format: :json)
