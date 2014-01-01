require 'spec_helper'

feature 'User adds a car' do
#   Acceptance Criteria:

# I must specify the color, year, mileage of the car.
# Only years from 1980 and above can be specified.
# I can optionally specify a description of the car.
# If I enter all of the required information in the required format, the car is recorded.
# If I do not specify all of the required information in the required formats, the car is not recorded and I am presented with errors.
# Upon successfully creating a car, I am redirected so that I can create another car.

  context 'with valid attributes' do

    it 'specifies all required fields with valid attributes' do
      visit 'cars/new'

      fill_in 'Color', with: 'Red'
      fill_in 'Year', with: 1980
      fill_in 'Mileage', with: 100000

      click_on 'Submit'
      expect(page).to have_content('Car was successfully created!')
    end
  end
  context 'with invalid attributes do'
    it 'does not provide valid attributes' do
      visit 'cars/new'

      click_on 'Submit'

      within ".input.car_color" do
      expect(page).to have_content "can't be blank"
      end
      within ".input.car_year" do
      expect(page).to have_content "can't be blank"
      end
      within ".input.car_mileage" do
      expect(page).to have_content "can't be blank"
      end
    end
end
