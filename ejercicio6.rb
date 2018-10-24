# Clase productos
class Product
  attr_accessor :name, :large, :medium, :small, :xsmall
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large
    @medium = medium
    @small = small
    @xsmall = xsmall
  end

  def print_prod
  puts "Precios #{@name}:"
  puts "-$#{@large}"
  puts "-$#{@medium}"
  puts "-$#{@small}"
  puts "-$#{@xsmall}"
  end

  def average
    result = (@large.to_i + @medium.to_i + @small.to_i + @xsmall.to_i) / 4
    puts "Promedio precio #{@name}: $#{result}"
  end
end

# Clase nueva lista
class NewCatalogue
  def initialize(list)
    @new_file = File.open('nuevo_catalogo.txt', 'w')
    list.each do |i|
      @element = (i.split(', ').reject { |j| j.include?("\n") })
      @new_file.puts("#{@element[0]}, #{@element[1]}, #{@element[2]}, #{@element[3]}\n")
    end
  end
end

@products_list = []
@data = []
File.open('catalogo.txt', 'r') { |file| @data = file.readlines }
@data.each do |prod|
  @ls = prod.split(', ').map(&:chomp)
  @products_list << Product.new(*@ls)
end
@products_list.each(&:print_prod)
@products_list.each(&:average)
@new_products = NewCatalogue.new(@data)
