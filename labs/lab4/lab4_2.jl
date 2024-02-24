#case 2
# x'' + 2.2x' + 2.3x = 0

using DifferentialEquations

function lorenz!(du, u, p, t)
	a, b = p
	du[1] = u[2]
	du[2] = -a*du[1] - b*u[1]
end

const x = 1.2
const y = -1.2
u0 = [x, y]

p = (2.2, 2.3)
tspan = (0.0, 72)
prob =ODEProblem(lorenz!, u0, tspan, p)
sol = solve(prob, dtmax = 0.05)

using Plots; gr()

plot(sol)
savefig("lab@4_2.png")

plot(sol, vars=(2,1))
savefig("lab@4_2_phase.png")