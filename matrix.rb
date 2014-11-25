class Matrix


 def self.rotate(matrix)
   # put your logic here
   matrix.each { |row| puts row.inspect }
   # rows needs to change columns
   # reverse the columns

  new_matrix = []
   while matrix.length > 0 do
     new_matrix.push(matrix.pop)
   end

   puts ''
   new_matrix.each { |row| puts row.inspect }
     # matrix[2] -> ([0, 0, 1, 0])[1]
 end


end

  matrix =[
           [0, 1, 0, 0],
           [0, 1, 1, 0],
           [0, 0, 1, 0],
           [0, 0, 0, 0]
            ]

Matrix.rotate matrix