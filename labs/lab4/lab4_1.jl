#case 1
# x'' + 21x = 0
using DifferentialEquations

function lorenz!(du, u, p, t)
	a = p
	du[1] = u[2]
	du[2] = -a*u[1]
end

const x = 1.2
const y = -1.2
u0 = [x, y]

p =(21)
tspan = (0.0, 72)
prob =ODEProblem(lorenz!, u0, tspan, p)
sol = solve(prob, dtmax = 0.05)

using Plots; gr()

plot(sol)
savefig("lab@4_1.png")

plot(sol, vars=(2,1))
savefig("lab@4_1_phase.png")