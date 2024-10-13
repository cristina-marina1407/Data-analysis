function retval = polynomial_kernel (x, y, d)
  retval = (1 + x * y') ^ d;
endfunction
