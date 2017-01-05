require './lib/snack'
require 'pry'

class VendingMachine
  attr_reader :inventory

  def initialize
    @inventory = []
  end

  def add_snack(snack)
    @inventory << snack
  end

  def snacks_by_name
    @inventory.map {|snack| snack.name}
  end

  def how_many_snacks
    snacks_hash = Hash.new
    @inventory.each do |snack|
      snacks_hash[snack.quantity] = [snack]
    end
    snacks_hash
  end

end