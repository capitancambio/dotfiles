if has('conceal')
	syn   keyword   conFunction   function   skipwhite   conceal   cchar=𝑓
	syn   keyword   conSum        end        skipwhite   conceal   cchar=¶
	"some functions
	syn   keyword   conSqrt   sqrt    skipwhite   conceal   cchar=√
	syn   keyword   conSum    sum     skipwhite   conceal   cchar=∑
	syn   keyword   conMean   mean    skipwhite   conceal   cchar=μ
	syn   keyword   conStd    std     skipwhite   conceal   cchar=σ
	syn   keyword   conStd    beta    skipwhite   conceal   cchar=β
	syn   keyword   conStd    gamma   skipwhite   conceal   cchar=γ
	syn   keyword   conStd    psi     skipwhite   conceal   cchar=ψ

	"constants
	syn   keyword   conPi    pi    skipwhite   conceal   cchar=π
	syn   keyword   conEps   eps   skipwhite   conceal   cchar=ε
	syn   keyword   conInf   Inf   skipwhite   conceal   cchar=∞

	"greek letters 
	if exists("g:beauty_matlab_greek") && g:beauty_matlab_greek
		syn   match   greekAlpha     "alpha"     conceal   cchar=α
		syn   match   greekDelta     "delta"     conceal   cchar=δ
		syn   match   greekEpsilon   "epsilon"   conceal   cchar=ε
		syn   match   greekZeta      "zeta"      conceal   cchar=ζ
		syn   match   greekEta       "eta"       conceal   cchar=η
		syn   match   greekTheta     "theta"     conceal   cchar=θ
		syn   match   greekIota      "iota"      conceal   cchar=ι
		syn   match   greekKappa     "kappa"     conceal   cchar=κ
		syn   match   greekLambda    "lambda"    conceal   cchar=λ
		syn   match   greekMu        "mu"        conceal   cchar=μ
		syn   match   greekNu        "nu"        conceal   cchar=ν
		syn   match   greekXi        "xi"        conceal   cchar=ξ
		syn   match   greekOmicron   "omicron"   conceal   cchar=ο
		syn   match   greekRho       "rho"       conceal   cchar=ρ
		syn   match   greekSigma     "sigma"     conceal   cchar=σ
		syn   match   greekTau       "tau"       conceal   cchar=τ
		syn   match   greekUpsilon   "upsilon"   conceal   cchar=υ
		syn   match   greekPhi       "phi"       conceal   cchar=φ
		syn   match   greekChi       "chi"       conceal   cchar=χ
		syn   match   greekOmega     "omega"     conceal   cchar=ω
	endif

	"comparisons
	syn   match   conNeq   "\~="   conceal   cchar=≠
	syn   match   conLeq   "<="    conceal   cchar=≤
	syn   match   conGe    ">="    conceal   cchar=≥
	"power of 2
	syn match conGe "\^2" conceal cchar=²
	
endif


