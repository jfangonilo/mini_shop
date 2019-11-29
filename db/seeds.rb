merchants = FactoryBot.create_list(:random_merchant, 3)

FactoryBot.create_list(:random_item, 20, merchant: merchants[0])
FactoryBot.create_list(:random_item, 20, merchant: merchants[1])
FactoryBot.create_list(:random_item, 20, merchant: merchants[2])