require_relative ('../db/sql_runner')

class Shoe

  attr_reader :orderer, :address, :quantity, :size, :id

  def initialize(params)
    @id = nil || params['id'].to_i
    @orderer = params['orderer']
    @address = params['address']
    @quantity = params['quantity'].to_i
    @size = params['size'].to_i
  end

  def save
    sql = "INSERT INTO shoes (
      orderer,
      address,
      quantity,
      size) VALUES (
      '#{@orderer}',
      '#{@address}',
      #{@quantity},
      #{@size}
    ) RETURNING * "
    shoe_data = SqlRunner.run(sql)
    @id = shoe_data.first()['id'].to_i
  end


  def self.all()
    sql = "SELECT * FROM shoes;"
    shoes = SqlRunner.run(sql)
    result = shoes.map{|shoe| Shoe.new(shoe)}
    return result
  end

end

