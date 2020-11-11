FactoryBot.define do
  sequence :name do |n|
    "generated resource name #{n}"
  end
  
  factory :resource_object do
    name
    width { 1 }
    height { 1 }
    image_resource { "test_resource_object_image" }
  end
end
