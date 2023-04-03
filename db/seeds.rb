
puts "🌱 Seeding spices..."

# Seed your database here
    
    category = Category.create(
        category: 'Yard Work'
    )
        
        Task.create(
            name: 'lawn mowing',
            description: 'mow the lawn',
            priority: rand(1..5),
            category_id: category.id
        )
        Task.create(
            name: 'trim bushes',
            description: 'get the trimmer',
            priority: rand(1..5),
            category_id: category.id
        )
        






puts "✅ Done seeding!"
