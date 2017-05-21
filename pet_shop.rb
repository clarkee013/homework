def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  return pet_shop[:admin][:total_cash]+=(amount)
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
  return pet_shop[:admin][:pets_sold]+=(sold)
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  pet_breed_count = []
  for pet in pet_shop[:pets]
    if (pet[:breed] == breed)
      pet_breed_count << pet
    end
  end
  return pet_breed_count
end

def find_pet_by_name(pet_shop, title)
  pet_name_array = []
  for pet in pet_shop[:pets]
    if (pet[:name] == title)
      pet_name_array << pet
    end
  end 
  return pet_name_array.first
end

def remove_pet_by_name(pet_shop, title)
  for pet in pet_shop[:pets]
    if (pet[:name]==title)
      pet_shop[:pets].delete(pet)
    end
  end 
end 

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end 

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  return customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, pet_shop)
  for customer in customers 
    if (customer[:cash] >= pet_shop[:pets][:price])
    end
  end
end

# i want to check if the customer can afford the pet
# check cash against pet price - return true
# from the test below its looking at the index of customers calling it customer
# and then another variable can_buy_pet from the function - end function named can_buy_pet?
# def test_customer_can_afford_pet__insufficient_funds
#   customer = @customers[1]
#   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
#   assert_equal(false, can_buy_pet)
# end


