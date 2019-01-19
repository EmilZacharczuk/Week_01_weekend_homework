def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  return shop[:admin][:total_cash] += amount
  return shop[:admin][:total_cash] -= amount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number_of_pets)
  return shop[:admin][:pets_sold] += number_of_pets
end

def stock_count(shop)
  # count = shop[:pets].length
  # return count
  #
  # or
  count = 0
  for pet in shop[:pets]
    count += 1
  end
  return count
end

def pets_by_breed(shop, breed_name)
  pets = []
  for pet in shop[:pets]
    if pet[:breed] == breed_name
      pets.push(pet)
    end
  end
  return pets
end

def find_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(shop, pet_name)
  shop[:pets].push(pet_name)
  count = 0
  for pet in shop[:pets]
    count += 1
  end
  return count
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
  return customer_pet_count(customer)
end

def customer_can_afford_pet(customers, new_pet)
    if customers[:cash] <= new_pet[:price]
      return false
    else
      return true
    end
end

def sell_pet_to_customer(shop, pet, customer)
  add_pet_to_customer(customer, pet)
  def pets_sold(shop)
    return shop[:admin][:pets_sold] += 1
  end
#   def customer_cash(customer)
#     return add_pet_to_customer(customer, pet)
#     return customer[:cash] -= customer[:pets][:price]
#   end
end
