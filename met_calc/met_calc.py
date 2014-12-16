import numpy as np
import sys


########################################################################
# Colorize output fuction
########################################################################

BLACK, RED, GREEN, YELLOW, BLUE, MAGENTA, CYAN, WHITE = range(8)

#following from Python cookbook, #475186
def has_colours(stream):
    if not hasattr(stream, "isatty"):
        return False
    if not stream.isatty():
        return False # auto color only on TTYs
    try:
        import curses
        curses.setupterm()
        return curses.tigetnum("colors") > 2
    except:
        # guess false in case of error
        return False
has_colours = has_colours(sys.stdout)


def printout(text, colour=WHITE):
        if has_colours:
                seq = "\x1b[1;%dm" % (30+colour) + text + "\x1b[0m"
                sys.stdout.write(seq)
        else:
                sys.stdout.write(text)


########################################################################
#Constants
########################################################################
R=8.315       # general gas constant
R_a=287.1     # dry air gas constant
R_l=461       # liquid gas constant

rho_l=1000    # density of water
m_w=18.02     # mol mass water


########################################################################
#Variables
########################################################################

p_hpa=1013  # hPa
T_c=20      # Celsius
q_g=10      # g/kg
RH=60       # %


T = T_c + 273.15    # Kelvin
q = q_g /1000       # kg/kg
p = p_hpa*100       # Pascal
########################################################################
#Functions
########################################################################

def calc_rho(T, p, R_a, q):
  rho_result = p / (R_a * T * (1 + 0.61 * q))
  return rho_result;

def calc_vapor_pressure(e_s, RH):
  e_result = e_s*RH/100
  return e_result;

def calc_saturated_vapor_pressure(T_c):
  e_s = 6.1078 * np.exp((17.1*T_c)/(235+T_c))/100
  return e_s;

def calc_liquid_water_content(e, p):
  q_result = 0.622*e/(p-0.378*e)
  return q_result

########################################################################
#Interaction with the USER
########################################################################

rho_result = calc_rho(T, p, R_a, q)
e_s = calc_saturated_vapor_pressure(T_c)
e_result = calc_vapor_pressure(e_s, RH)
q_result = calc_liquid_water_content(e_result, p)

printout('##############################################################', RED)
print #blank
print 'Calculated DENSITY:', rho_result
print #blank
printout('##############################################################', RED)
print #blank
print 'Calculated SATURATED VAPOR PRESSURE [hPa]:', e_s*100
print #blank
printout('##############################################################', RED)
print #blank
print 'Calculated VAPOR PRESSURE [hPa]:', e_result*100
printout('###############################################################', RED)
print #blank
printout('##############################################################', RED)
print #blank
print 'Calculated [hPa]:', q_result
printout('###############################################################', RED)
print #blank

