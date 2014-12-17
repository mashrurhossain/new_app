module ApplicationHelper

def dog_info(dog)
	"#{dog.name} is #{dog.height_in_inches} inches tall and weighs #{dog.weight_in_lbs}"
end

end
