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

def test_add_pet_to_customer
  customer = @customers[0]
  add_pet_to_customer(customer, @new_pet)
  assert_equal(1, customer_pet_count(customer))
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  return customer[:pets] << new_pet
end







