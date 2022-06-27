from collections import namedtuple
Point = namedtuple('Point', ['x', 'y'])






if __name__ == '__main__':
  p = Point(1, 2)
  print(p.x, p.y)
  print(isinstance(p, Point))
  print(p._asdict())
  print(p._fields)
  print(p._make(['x', 'y']))
  print(p._replace(x=3)) # Replacing the old values with the new ones

  # Namedtuple is a subclass of tuple
  x = namedtuple('x', 'a, b, c')

  iterable = ['i', 'j', 'k']      # A list
  y = x._make(iterable)           # y = ('i', 'j', 'k'
  print(y)
 
  

 