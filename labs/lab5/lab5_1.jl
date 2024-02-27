using Plots
using DifferentialEquations

x0 = 8
y0 = 15

a = 0.7
b = 0.06
c = 0.6
d = 0.07

function hunt(du, u ,p ,t)
	x,y = u
	du[1] = -a*u[1] + b*u[1] * u[2]
	du[2] = c*u[2] - d*u[1] * u[2]
end

v0 = [x0,y0]
tspan = (0.0, 60.0)
prob = ODEProblem(hunt, v0, tspan)
sol = solve(prob, dtmax=0.05)
X = [u[1] for u in sol.u]
Y = [u[2] for u in sol.u]
T = [t for t in sol.t]

plt = plot(dpi=300, legend=false)
plot!(plt,X,Y,color=:blue)
savefig(plt,"lab5_1.png")

plt2 = plot(dpi=300, legend=true)
plot!(plt2,T,X,label="Численность жертв",color=:red)
plot!(plt2,T,Y,label="Численность хищников",color=:green)
savefig(plt2,"lab5_2.png")