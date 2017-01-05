require './lib/snack'

class VendingMachine
  attr_reader :inventory

  def initialize
    @inventory = []
  end

  def add_snack(snack)
    inventory << snack
  end

  def snacks_by_name
    inventory.map {|snack| snack.name}
  end

  def how_many_snacks
    inventory.group_by {|snack| snack.quantity}
  end

  def inventory_by_alphabet
    inventory.group_by {|snack| snack.name[0]}
  end

  def total_num_items
    inventory.reduce(0) do |total, snack|
      total += snack.quantity
    end
  end

  def first_letters
    inventory.reduce("") do |combined_string, snack|
      combined_string += snack.name[0]
    end
  end

  def change_indexes
    inventory.map.with_index do |snack, index|
      index + 1
    end
  end

end