module CO2SYSeg2

println(" ")
println("Here is another example:")
println(" ")
println("What is the pH on the Seawater Scale at 2 degrees, 4000 meters deep of a sample")
println("that has a pH of 7.8 on the Total Scale at 25 degrees at atmospheric pressure?")
println(" ")
println("(Addional info: alk=2400, si=50, po4=2, dissociation constats: Mehrbach Refit)")
println(" ")

par1type =   1    # The first parameter supplied is of type "1", which means "alkalinity"
par1    = 2400    # value of the first parameter
par2type =   3    # The first parameter supplied is of type "1", which means "pH"
par2    =  7.8    # value of the second parameter
sal     =   35    # Salinity of the sample
tempin  =   25    # Temperature at input conditions
tempout =    2    # Temperature at output conditions
presin  =    0    # Pressure    at input conditions
presout = 4000    # Pressure    at output conditions
sil     =   50    # Concentration of silicate  in the sample (in umol/kg)
po4     =    2    # Concentration of phosphate in the sample (in umol/kg)
pHscale =    1    # pH scale at which the input pH is reported ("1" means "Total Scale")
k1k2c   =    4    # Choice of H2CO3 and HCO3- dissociation constants K1 and K2 ("4" means "Mehrbach refit")
kso4c   =    1    # Choice of HSO4- dissociation constants KSO4 ("1" means "Dickson")

# Import CO2SYS
include("../src/CO2SYS.jl")
using .CO2SYSjl

# Do the calculation. See CO2SYS's help for syntax and output format
A = CO2SYS(par1,par2,par1type,par2type,sal,tempin,tempout,presin,presout,
    sil,po4,pHscale,k1k2c,kso4c)[1]

println("The answer:") # It is the 38th element of the output of CO2SYS (pHoutSWS)
println(A[38])
println(" ")
println("See CO2SYSexample2.jl to see what the syntax for this calculation was.")
println(" ")

end # module CO2SYSeg2
