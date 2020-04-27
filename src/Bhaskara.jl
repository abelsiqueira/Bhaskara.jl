module Bhaskara

export bhaskara

"""
    (r1, r2) = bhaskara(a, b, c)

Calcula as raízes da equação ``ax² + bx + c = 0``.
"""
function bhaskara(a, b, c)
  if a == 0
    throw(ArgumentError("a precisa ser diferente de zero em bhaskara"))
  end
  Δ = b^2 - 4a * c
  sΔ = sqrt(Complex(Δ))
  r1 = (-b - sΔ) / 2a
  r2 = (-b + sΔ) / 2a
  if real(r1) > real(r2) || imag(r1) > imag(r2)
    r1, r2 = r2, r1
  end
  return r1, r2
end

end # module
