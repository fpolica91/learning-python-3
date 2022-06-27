



letters = ""
rows = 0
cols = 0




if __name__ == '__main__':
  letters = "abcdefghijklmnopqrstuvwxyz"
  alphabets = [letter for letter in letters]
  print(alphabets)

  rows = int(input("Enter the number of rows: "))
  cols = int(input("Enter the number of columns: "))

  # crates matrix of rows and columns according to the user input
  is_visited = [[False for _ in range(cols)] for _ in range(rows)]
  print(is_visited)