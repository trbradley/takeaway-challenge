require 'takeaway'

describe 'User Stories' do
  subject(:takeaway) { Takeaway.new }
  subject(:menu) { Menu.new }
  subject(:order) { Order.new }

  # As a customer
  # So that I can check if I want to order something
  # I would like to see a list of dishes with prices

  describe 'User Story 1' do
    it 'lists the items on the menu' do
      expect(takeaway.read_menu).to include(menu.contents)
    end
  end

  # As a customer
  # So that I can order the meal I want
  # I would like to be able to select some number of several available dishes

  describe 'User Story 2' do
    it 'allows the user to select their preferred dishes' do
      takeaway.order('Dish 1': 3, 'Dish 2': 1)
      expect(order.list).to include('Dish 1': 3, 'Dish 2': 1)
    end
  end



  # As a customer
  # So that I can verify that my order is correct
  # I would like to check that the total I have been given
  # matches the sum of the various dishes in my order





  # As a customer
  # So that I am reassured that my order will be delivered on time
  # I would like to receive a text such as "Thank you! Your order was
  # placed and will be delivered before 18:52" after I have ordered

end
