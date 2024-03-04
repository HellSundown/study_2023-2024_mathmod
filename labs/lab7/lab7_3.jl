using Plots
using DifferentialEquations

N =1130
n0=11

function adv(du, u, p, t)
	(n)=u
	du[1]=(0.25 + 0.75*t*u[1])*(N - u[1])
end

v0=[n0]
tspan=(0.0,0.1)
prob = ODEProblem(adv,v0,tspan)
sol = solve(prob, dtmax = 0.05)
n=[u[1] for u in sol.u]
T=[t for t in sol.t]

plt = plot(dpi = 600, title = "Эффективность распространения рекламы (3) ", legend = false)
plot!(plt,T,n,color = :red)

savefig(plt, "lab7_3.png")









