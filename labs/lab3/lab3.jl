using Plots;
using DifferentialEquations;

function one(du, u, p, t)
	du[1] = -0.55*u[1] - 0.77*u[2] + 1.5*sin(3*t+1)
	du[2] = -0.66*u[1] - 0.44*u[2] + 1.2*cos(t+1)
end

function two(du, u, p, t)
	du[1] = -0.27*u[1] - 0.88*u[2] + sin(20*t)
	du[2] = (-0.68*u[1] - 0.37)*u[2] + cos(10*t)+1
end

const people = Float64[32888, 17777]
const pron1 = [0.0, 3.0]
const pron2 = [0.0, 0.0007]

prob1 = ODEProblem(one, people, pron1)
prob2 = ODEProblem(two, people, pron2)

sol1 = solve(prob1, dtmax=0.1)
sol2 = solve(prob2, dtmax=0.000001)

A1 = [u[1] for u in sol1.u]
A2 = [u[2] for u in sol1.u]
T1 = [t for t in sol1.t]
A3 = [u[1] for u in sol2.u]
A4 = [u[2] for u in sol2.u]
T2 = [t for t in sol2.t]

plt1 = plot(dpi = 300, legend= true, bg =:white)
plot!(plt1, xlabel="Время", ylabel="Численность", title="Модель боевых действий №1", legend=:outerbottom)
plot!(plt1, T1, A1, label="Численность армии X", color =:red)
plot!(plt1, T1, A2, label="Численность армии Y", color =:green)
savefig(plt1, "lab@3_1.png")

plt2 = plot(dpi = 1200, legend= true, bg =:white)
plot!(plt2, xlabel="Время", ylabel="Численность", title="Модель боевых действий  №2", legend=:outerbottom)
plot!(plt2, T2, A3, label="Численность армии X", color =:red)
plot!(plt2, T2, A4, label="Численность армии Y", color =:green)
savefig(plt2, "lab@3_2.png")
