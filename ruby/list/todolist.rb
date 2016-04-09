class TodoList
attr_accessor :items

def initialize(array)
	@items  = array
end


def get_items
	@items
end

def add_item(item)
	@items = @items.push("#{item}")
end

def delete_item(item)
	@items.delete("#{item}")
end

end
# list = TodoList.new(["test1", "test2"])
# p list.get_items[0]

# list.add_item("mop")
# p list.items
# puts "test"
# p list.items
# p list.get_items
# list.add_item("laundry")
# p list.get_items

