#define PREFIX GRAD
#define ADDON DOUBLES(PREFIX,COMPONENT)

#define QUOTE(var1) #var1
#define DOUBLES(var1,var2) ##var1##_##var2
#define TRIPLES(var1,var2,var3) ##var1##_##var2##_##var3

#define ADDON DOUBLES(PREFIX,COMPONENT)

#define FNC_SMC(var1,var2) TRIPLES(DOUBLES(PREFIX,var1),fnc,var2)  //MOD Function (Module Cross)
#define FNC_SMI(var1) TRIPLES(ADDON,fnc,var1) //MOD Function (Module Intern)
#define FNC_BIS(var1) TRIPLES(BIS,fnc,var1)   //BIS Function
#define FNC_CBA(var1) TRIPLES(CBA,fnc,var1)   //CBA Function#

#define REM_SMI(var1) TRIPLES('ADDON,fnc,var1') //function name as string
#define REM_SMC(var1,var2) TRIPLES('DOUBLES(PREFIX,var1),fnc,var2') //function name as string (Modul Cross)

#define VAR_SMC(var1,var2) QUOTE(TRIPLES(PREFIX,var1,var2))
#define VAR_SMI(var1) QUOTE(DOUBLES(ADDON,var1))
#define VAR_SMA(var1) QUOTE(DOUBLES(PREFIX,var1))

//remote execute macros
// TODO check
//<params> remoteExecCall [<function>,(<target>,<isPersistent>)];
#define RE_SMI_SRV(params,function) { params ["_params","_func"] if (!isServer) exitWith {_params remoteExecCall [REM_SMI(function), 2]}}
#define RE_SMI_AT(params,function,target) params remoteExecCall [REM_SMI(function), target]
#define RE_SMI_ATS(params,function,target) params remoteExec [REM_SMI(function), target]
#define RE_SMI_AT_JIP(params,function,target) params remoteExecCall [REM_SMI(function), target, true]

#define RE_SMC_SRV(params,modul,function) { params ["_params","_modul", "_func"] if (!isServer) exitWith {_params remoteExecCall [REM_SMC(modul,function), 2]}}
#define RE_SMC_AT(params,modul,function,target) params remoteExecCall [REM_SMC(modul,function), target]
#define RE_SMC_ATS(params,modul,function,target) params remoteExec [REM_SMC(modul,function), target]
#define RE_SMC_AT_JIP(params,modul,function,target) params remoteExecCall [REM_SMC(modul,function), target, true]



#define GRAD_isHC (!hasInterface && !isDedicated)
#define LOG_BASE(message) diag_log format[QUOTE(%1),message]
#define LOG_ERR(message) LOG_BASE(message)
#define LOG_WARN(message) LOG_BASE(message)
