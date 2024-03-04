using Plots
using DifferentialEquations

N = 12700
I0 = 170
R0 = 57
S0 = N-I0 - R0
alpha = 0.6
beta = 0.2

function zab(du, u ,p, t)
	S,I,R = u
	du[1] = 0
	du[2] = -beta*u[2]
	du[3] = beta*I
end

v0 = [S0,I0,R0]
tspan = (0.0, 60.0)
prob = ODEProblem(zab,v0,tspan)
sol = solve(prob, dtmax = 0.05)
S = [u[1] for u in sol.u]
I = [u[2] for u in sol.u]
R = [u[3] for u in sol.u]
T = [t for t in sol.t]

plt = plot(dpi = 600, legend = :topright)
plot!(plt,T,S,label="Восприимчивые особи",color=:blue)
plot!(plt,T,I,label="Заражённые особи",color=:green)
plot!(plt,T,R,label="Иммунитетные",color=:red)

savefig(plt, "lab6_1.png")








