require 'pry'
# 1 - fewer than two live neighbors dies
# 2 - two or three live neighbours lives
# 3 - more than three live neighbours dies
# 4 - Any dead cell with exactly three live neighbours becomes a live


class Cell
  attr_reader :row, :column
  attr_accessor :life, :neighbors

  def initialize(row, column)
    @life = false
    @neighbors = []
    @row = row
    @column = column
  end

  def alive?
    @life
  end

  def die(reason)
    @life = false
  end

  def birth(reason)
    @life = true
    true
  end
end

class Life
  def initialize
    @grid = []
    @dead = '    '
    @alive = " 👾  "
  end

  def create_grid(n)
    @grid = Array.new(n) { [] }
    @grid.each.with_index do |row, r|
      10.times do |col|
        @grid[r] << Cell.new(r, col)
      end
    end
  end

  def print_grid
    header = []
    footer = []
    10.times do |n|
      footer << "----"
    end
    10.times do |n|
      header << " #{n}  "
    end
    print "  "
    header.each {|column| print "#{column}"}
    print "\n"
    @grid.each.with_index do |line, idx|
      print "#{idx} "
      line.each do |cell|
        print cell.alive? ? @alive : @dead
        # print cell.alive? ? "A#{cell.neighbors.length}  " : " #{cell.neighbors.length}  "
      end
      print "\n"
      #{line}"
    end
    print "  "
    footer.each {|column| print "#{column}"}
    print "\n"
  end

  def dies?(square)
    square.die("< 2") if square.neighbors.length < 2
    square.die("> 3") if square.neighbors.length > 3
  end

  def primordial_soup(population)
    count = 0
    until population == count #.times do |n|
      column = rand(10)
      row = rand(10)
      square = @grid[row][column]
      until !square.alive?
        column = rand(10)
        row = rand(10)
        square = @grid[row][column]
      end
      count += 1
      square.life = true
    end
  end

  def run_rules
    @grid.each.with_index do |line, row|
      line.each.with_index do |square, column|
        if square.alive?
          dies?(square)
        else
          square.birth("Menage a trois") if square.neighbors.length == 3
        end
      end
    end
  end

  def has_space_less?(number)
    number >= 0
  end

  def has_space_more?(number)
    number < 10
  end

  def gather_neighbors(square)
    row = square.row
    column = square.column
    row_before = row - 1
    row_after = row + 1
    column_before = column - 1
    column_after = column + 1
    square.neighbors = []
    if has_space_less?(row_before)
      if has_space_less?(column_before)
        square.neighbors << @grid[row_before][column_before] if @grid[row_before][column_before].alive?
      end

      square.neighbors << @grid[row_before][column] if @grid[row_before][column].alive?

      if has_space_more?(column_after)
        square.neighbors << @grid[row_before][column_after] if @grid[row_before][column_after].alive?
      end

    end
    if has_space_less?(column_before)
      square.neighbors << @grid[row][column_before] if @grid[row][column_before].alive?
    end
    if has_space_more?(column_after)
      square.neighbors << @grid[row][column_after] if @grid[row][column_after].alive?
    end
    if has_space_more?(row_after)
      if has_space_less?(column_before)
        square.neighbors << @grid[row_after][column_before] if @grid[row_after][column_before].alive?
      end
      square.neighbors << @grid[row_after][column] if @grid[row_after][column].alive?
      if has_space_more?(column_after)
        square.neighbors << @grid[row_after][column_after] if @grid[row_after][column_after].alive?
      end
    end
  end

  def update_neighbors
    @grid.each.with_index do |line, row|
      line.each.with_index do |square, column|
        gather_neighbors(square)
      end
    end
  end

  def let_there_be_light
    create_grid(10)
    primordial_soup(55)
    print_grid
    update_neighbors
    sleep 1
    100.times do
      sleep 0.5
      run_rules
      update_neighbors
      print_grid
    end
  end
end

l = Life.new
l.let_there_be_light
