
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc1948.vhd,v 1.2 2001-10-26 16:29:44 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

package c07s02b01x00p01n02i01948pkg is
--
--          Index types for array declarations
--
  SUBTYPE st_ind1 IS INTEGER   RANGE   1   TO     4;     -- index from 1 (POSITIVE)
  SUBTYPE st_ind2 IS INTEGER   RANGE   0   TO     3;     -- index from 0 (NATURAL)
  SUBTYPE st_ind3 IS CHARACTER RANGE 'a'   TO   'd';     -- non-INTEGER index
  SUBTYPE st_ind4 IS INTEGER   RANGE   0 DOWNTO  -3;     -- descending range
--
--          Logic types for subelements
--
  SUBTYPE st_scl1 IS BIT;
  SUBTYPE st_scl2 IS BOOLEAN;

-- -----------------------------------------------------------------------------------------
--      Composite type declarations
-- -----------------------------------------------------------------------------------------
--
--          Unconstrained arrays
--
  TYPE t_usa1_1 IS ARRAY (st_ind1 RANGE <>) OF BIT;
  TYPE t_usa1_2 IS ARRAY (st_ind2 RANGE <>) OF BOOLEAN;
  TYPE t_usa1_3 IS ARRAY (st_ind3 RANGE <>) OF BIT;
  TYPE t_usa1_4 IS ARRAY (st_ind4 RANGE <>) OF BOOLEAN;
--
--          Constrained arrays of scalars (make compatable with unconstrained types
--
  SUBTYPE t_csa1_1 IS t_usa1_1 (st_ind1);
  SUBTYPE t_csa1_2 IS t_usa1_2 (st_ind2);
  SUBTYPE t_csa1_3 IS t_usa1_3 (st_ind3);
  SUBTYPE t_csa1_4 IS t_usa1_4 (st_ind4);
-- -----------------------------------------------------------------------------------------
--
--          TYPE declarations for resolution function (Constrained types only)
--
  TYPE t_csa1_1_vct IS ARRAY (POSITIVE RANGE <>) OF t_csa1_1;
  TYPE t_csa1_2_vct IS ARRAY (POSITIVE RANGE <>) OF t_csa1_2;
  TYPE t_csa1_3_vct IS ARRAY (POSITIVE RANGE <>) OF t_csa1_3;
  TYPE t_csa1_4_vct IS ARRAY (POSITIVE RANGE <>) OF t_csa1_4;
end;

use work.c07s02b01x00p01n02i01948pkg.all;
ENTITY c07s02b01x00p01n02i01948ent IS
END c07s02b01x00p01n02i01948ent;

ARCHITECTURE c07s02b01x00p01n02i01948arch OF c07s02b01x00p01n02i01948ent IS
--
--          CONSTANT Declarations
--
  CONSTANT ARGA_C_csa1_1 : t_csa1_1          := ( '1', '1', '0', '0' );
  CONSTANT ARGA_C_usa1_1 : t_usa1_1(st_ind1) := ( '1', '1', '0', '0' );
  CONSTANT ARGB_C_csa1_1 : t_csa1_1          := ( '1', '0', '1', '0' );
  CONSTANT ARGB_C_usa1_1 : t_usa1_1(st_ind1) := ( '1', '0', '1', '0' );
  CONSTANT  NOR_C_csa1_1 : t_csa1_1          := ( '0', '0', '0', '1' );
  CONSTANT  NOR_C_usa1_1 : t_usa1_1(st_ind1) := ( '0', '0', '0', '1' );
  
  CONSTANT ARGA_C_csa1_2 : t_csa1_2          := (  TRUE,  TRUE, FALSE, FALSE );
  CONSTANT ARGA_C_usa1_2 : t_usa1_2(st_ind2) := (  TRUE,  TRUE, FALSE, FALSE );
  CONSTANT ARGB_C_csa1_2 : t_csa1_2          := (  TRUE, FALSE,  TRUE, FALSE );
  CONSTANT ARGB_C_usa1_2 : t_usa1_2(st_ind2) := (  TRUE, FALSE,  TRUE, FALSE );
  CONSTANT  NOR_C_csa1_2 : t_csa1_2          := ( FALSE, FALSE, FALSE,  TRUE );
  CONSTANT  NOR_C_usa1_2 : t_usa1_2(st_ind2) := ( FALSE, FALSE, FALSE,  TRUE );
  
  CONSTANT ARGA_C_csa1_3 : t_csa1_3          := ( '1', '1', '0', '0' );
  CONSTANT ARGA_C_usa1_3 : t_usa1_3(st_ind3) := ( '1', '1', '0', '0' );
  CONSTANT ARGB_C_csa1_3 : t_csa1_3          := ( '1', '0', '1', '0' );
  CONSTANT ARGB_C_usa1_3 : t_usa1_3(st_ind3) := ( '1', '0', '1', '0' );
  CONSTANT  NOR_C_csa1_3 : t_csa1_3          := ( '0', '0', '0', '1' );
  CONSTANT  NOR_C_usa1_3 : t_usa1_3(st_ind3) := ( '0', '0', '0', '1' );
  
  CONSTANT ARGA_C_csa1_4 : t_csa1_4          := (  TRUE,  TRUE, FALSE, FALSE );
  CONSTANT ARGA_C_usa1_4 : t_usa1_4(st_ind4) := (  TRUE,  TRUE, FALSE, FALSE );
  CONSTANT ARGB_C_csa1_4 : t_csa1_4          := (  TRUE, FALSE,  TRUE, FALSE );
  CONSTANT ARGB_C_usa1_4 : t_usa1_4(st_ind4) := (  TRUE, FALSE,  TRUE, FALSE );
  CONSTANT  NOR_C_csa1_4 : t_csa1_4          := ( FALSE, FALSE, FALSE,  TRUE );
  CONSTANT  NOR_C_usa1_4 : t_usa1_4(st_ind4) := ( FALSE, FALSE, FALSE,  TRUE );
--
--          SIGNAL Declarations
--
  SIGNAL ARGA_S_csa1_1 : t_csa1_1          := ( '1', '1', '0', '0' );
  SIGNAL ARGA_S_usa1_1 : t_usa1_1(st_ind1) := ( '1', '1', '0', '0' );
  SIGNAL ARGB_S_csa1_1 : t_csa1_1          := ( '1', '0', '1', '0' );
  SIGNAL ARGB_S_usa1_1 : t_usa1_1(st_ind1) := ( '1', '0', '1', '0' );
  SIGNAL  NOR_S_csa1_1 : t_csa1_1          := ( '0', '0', '0', '1' );
  SIGNAL  NOR_S_usa1_1 : t_usa1_1(st_ind1) := ( '0', '0', '0', '1' );
  
  SIGNAL ARGA_S_csa1_2 : t_csa1_2          := (  TRUE,  TRUE, FALSE, FALSE );
  SIGNAL ARGA_S_usa1_2 : t_usa1_2(st_ind2) := (  TRUE,  TRUE, FALSE, FALSE );
  SIGNAL ARGB_S_csa1_2 : t_csa1_2          := (  TRUE, FALSE,  TRUE, FALSE );
  SIGNAL ARGB_S_usa1_2 : t_usa1_2(st_ind2) := (  TRUE, FALSE,  TRUE, FALSE );
  SIGNAL  NOR_S_csa1_2 : t_csa1_2          := ( FALSE, FALSE, FALSE,  TRUE );
  SIGNAL  NOR_S_usa1_2 : t_usa1_2(st_ind2) := ( FALSE, FALSE, FALSE,  TRUE );
  
  SIGNAL ARGA_S_csa1_3 : t_csa1_3          := ( '1', '1', '0', '0' );
  SIGNAL ARGA_S_usa1_3 : t_usa1_3(st_ind3) := ( '1', '1', '0', '0' );
  SIGNAL ARGB_S_csa1_3 : t_csa1_3          := ( '1', '0', '1', '0' );
  SIGNAL ARGB_S_usa1_3 : t_usa1_3(st_ind3) := ( '1', '0', '1', '0' );
  SIGNAL  NOR_S_csa1_3 : t_csa1_3          := ( '0', '0', '0', '1' );
  SIGNAL  NOR_S_usa1_3 : t_usa1_3(st_ind3) := ( '0', '0', '0', '1' );
  
  SIGNAL ARGA_S_csa1_4 : t_csa1_4          := (  TRUE,  TRUE, FALSE, FALSE );
  SIGNAL ARGA_S_usa1_4 : t_usa1_4(st_ind4) := (  TRUE,  TRUE, FALSE, FALSE );
  SIGNAL ARGB_S_csa1_4 : t_csa1_4          := (  TRUE, FALSE,  TRUE, FALSE );
  SIGNAL ARGB_S_usa1_4 : t_usa1_4(st_ind4) := (  TRUE, FALSE,  TRUE, FALSE );
  SIGNAL  NOR_S_csa1_4 : t_csa1_4          := ( FALSE, FALSE, FALSE,  TRUE );
  SIGNAL  NOR_S_usa1_4 : t_usa1_4(st_ind4) := ( FALSE, FALSE, FALSE,  TRUE );
BEGIN
  TESTING: PROCESS
--
--          VARIABLE Declarations
--
    VARIABLE ARGA_V_csa1_1 : t_csa1_1          := ( '1', '1', '0', '0' );
    VARIABLE ARGA_V_usa1_1 : t_usa1_1(st_ind1) := ( '1', '1', '0', '0' );
    VARIABLE ARGB_V_csa1_1 : t_csa1_1          := ( '1', '0', '1', '0' );
    VARIABLE ARGB_V_usa1_1 : t_usa1_1(st_ind1) := ( '1', '0', '1', '0' );
    VARIABLE  NOR_V_csa1_1 : t_csa1_1          := ( '0', '0', '0', '1' );
    VARIABLE  NOR_V_usa1_1 : t_usa1_1(st_ind1) := ( '0', '0', '0', '1' );
    
    VARIABLE ARGA_V_csa1_2 : t_csa1_2          := (  TRUE,  TRUE, FALSE, FALSE );
    VARIABLE ARGA_V_usa1_2 : t_usa1_2(st_ind2) := (  TRUE,  TRUE, FALSE, FALSE );
    VARIABLE ARGB_V_csa1_2 : t_csa1_2          := (  TRUE, FALSE,  TRUE, FALSE );
    VARIABLE ARGB_V_usa1_2 : t_usa1_2(st_ind2) := (  TRUE, FALSE,  TRUE, FALSE );
    VARIABLE  NOR_V_csa1_2 : t_csa1_2          := ( FALSE, FALSE, FALSE,  TRUE );
    VARIABLE  NOR_V_usa1_2 : t_usa1_2(st_ind2) := ( FALSE, FALSE, FALSE,  TRUE );
    
    VARIABLE ARGA_V_csa1_3 : t_csa1_3          := ( '1', '1', '0', '0' );
    VARIABLE ARGA_V_usa1_3 : t_usa1_3(st_ind3) := ( '1', '1', '0', '0' );
    VARIABLE ARGB_V_csa1_3 : t_csa1_3          := ( '1', '0', '1', '0' );
    VARIABLE ARGB_V_usa1_3 : t_usa1_3(st_ind3) := ( '1', '0', '1', '0' );
    VARIABLE  NOR_V_csa1_3 : t_csa1_3          := ( '0', '0', '0', '1' );
    VARIABLE  NOR_V_usa1_3 : t_usa1_3(st_ind3) := ( '0', '0', '0', '1' );
    
    VARIABLE ARGA_V_csa1_4 : t_csa1_4          := (  TRUE,  TRUE, FALSE, FALSE );
    VARIABLE ARGA_V_usa1_4 : t_usa1_4(st_ind4) := (  TRUE,  TRUE, FALSE, FALSE );
    VARIABLE ARGB_V_csa1_4 : t_csa1_4          := (  TRUE, FALSE,  TRUE, FALSE );
    VARIABLE ARGB_V_usa1_4 : t_usa1_4(st_ind4) := (  TRUE, FALSE,  TRUE, FALSE );
    VARIABLE  NOR_V_csa1_4 : t_csa1_4          := ( FALSE, FALSE, FALSE,  TRUE );
    VARIABLE  NOR_V_usa1_4 : t_usa1_4(st_ind4) := ( FALSE, FALSE, FALSE,  TRUE ); 

  BEGIN
--
--          Test NOR operator on: CONSTANTs
--
    ASSERT ( ARGA_C_csa1_1 NOR  ARGB_C_csa1_1 ) =  NOR_C_csa1_1
      REPORT "ERROR: composite NOR operator failed; CONSTANT; csa1_1"
      SEVERITY FAILURE;
    ASSERT ( ARGA_C_csa1_2 NOR  ARGB_C_csa1_2 ) =  NOR_C_csa1_2
      REPORT "ERROR: composite NOR operator failed; CONSTANT; csa1_2"
      SEVERITY FAILURE;
    ASSERT ( ARGA_C_csa1_3 NOR  ARGB_C_csa1_3 ) =  NOR_C_csa1_3
      REPORT "ERROR: composite NOR operator failed; CONSTANT; csa1_3"
      SEVERITY FAILURE;
    ASSERT ( ARGA_C_csa1_4 NOR  ARGB_C_csa1_4 ) =  NOR_C_csa1_4
      REPORT "ERROR: composite NOR operator failed; CONSTANT; csa1_4"
      SEVERITY FAILURE;
    ASSERT ( ARGA_C_usa1_1 NOR  ARGB_C_usa1_1 ) =  NOR_C_usa1_1
      REPORT "ERROR: composite NOR operator failed; CONSTANT; usa1_1"
      SEVERITY FAILURE;
    ASSERT ( ARGA_C_usa1_2 NOR  ARGB_C_usa1_2 ) =  NOR_C_usa1_2
      REPORT "ERROR: composite NOR operator failed; CONSTANT; usa1_2"
      SEVERITY FAILURE;
    ASSERT ( ARGA_C_usa1_3 NOR  ARGB_C_usa1_3 ) =  NOR_C_usa1_3
      REPORT "ERROR: composite NOR operator failed; CONSTANT; usa1_3"
      SEVERITY FAILURE;
    ASSERT ( ARGA_C_usa1_4 NOR  ARGB_C_usa1_4 ) =  NOR_C_usa1_4
      REPORT "ERROR: composite NOR operator failed; CONSTANT; usa1_4"
      SEVERITY FAILURE;
--
--          Test NOR operator on: SIGNALs
--
    ASSERT ( ARGA_S_csa1_1 NOR  ARGB_S_csa1_1 ) =  NOR_S_csa1_1
      REPORT "ERROR: composite NOR operator failed; SIGNAL; csa1_1"
      SEVERITY FAILURE;
    ASSERT ( ARGA_S_csa1_2 NOR  ARGB_S_csa1_2 ) =  NOR_S_csa1_2
      REPORT "ERROR: composite NOR operator failed; SIGNAL; csa1_2"
      SEVERITY FAILURE;
    ASSERT ( ARGA_S_csa1_3 NOR  ARGB_S_csa1_3 ) =  NOR_S_csa1_3
      REPORT "ERROR: composite NOR operator failed; SIGNAL; csa1_3"
      SEVERITY FAILURE;
    ASSERT ( ARGA_S_csa1_4 NOR  ARGB_S_csa1_4 ) =  NOR_S_csa1_4
      REPORT "ERROR: composite NOR operator failed; SIGNAL; csa1_4"
      SEVERITY FAILURE;
    ASSERT ( ARGA_S_usa1_1 NOR  ARGB_S_usa1_1 ) =  NOR_S_usa1_1
      REPORT "ERROR: composite NOR operator failed; SIGNAL; usa1_1"
      SEVERITY FAILURE;
    ASSERT ( ARGA_S_usa1_2 NOR  ARGB_S_usa1_2 ) =  NOR_S_usa1_2
      REPORT "ERROR: composite NOR operator failed; SIGNAL; usa1_2"
      SEVERITY FAILURE;
    ASSERT ( ARGA_S_usa1_3 NOR  ARGB_S_usa1_3 ) =  NOR_S_usa1_3
      REPORT "ERROR: composite NOR operator failed; SIGNAL; usa1_3"
      SEVERITY FAILURE;
    ASSERT ( ARGA_S_usa1_4 NOR  ARGB_S_usa1_4 ) =  NOR_S_usa1_4
      REPORT "ERROR: composite NOR operator failed; SIGNAL; usa1_4"
      SEVERITY FAILURE;
--
--          Test NOR operator on: VARIABLEs
--
    ASSERT ( ARGA_V_csa1_1 NOR  ARGB_V_csa1_1 ) =  NOR_V_csa1_1
      REPORT "ERROR: composite NOR operator failed; VARIABLE; csa1_1"
      SEVERITY FAILURE;
    ASSERT ( ARGA_V_csa1_2 NOR  ARGB_V_csa1_2 ) =  NOR_V_csa1_2
      REPORT "ERROR: composite NOR operator failed; VARIABLE; csa1_2"
      SEVERITY FAILURE;
    ASSERT ( ARGA_V_csa1_3 NOR  ARGB_V_csa1_3 ) =  NOR_V_csa1_3
      REPORT "ERROR: composite NOR operator failed; VARIABLE; csa1_3"
      SEVERITY FAILURE;
    ASSERT ( ARGA_V_csa1_4 NOR  ARGB_V_csa1_4 ) =  NOR_V_csa1_4
      REPORT "ERROR: composite NOR operator failed; VARIABLE; csa1_4"
      SEVERITY FAILURE;
    ASSERT ( ARGA_V_usa1_1 NOR  ARGB_V_usa1_1 ) =  NOR_V_usa1_1
      REPORT "ERROR: composite NOR operator failed; VARIABLE; usa1_1"
      SEVERITY FAILURE;
    ASSERT ( ARGA_V_usa1_2 NOR  ARGB_V_usa1_2 ) =  NOR_V_usa1_2
      REPORT "ERROR: composite NOR operator failed; VARIABLE; usa1_2"
      SEVERITY FAILURE;
    ASSERT ( ARGA_V_usa1_3 NOR  ARGB_V_usa1_3 ) =  NOR_V_usa1_3
      REPORT "ERROR: composite NOR operator failed; VARIABLE; usa1_3"
      SEVERITY FAILURE;
    ASSERT ( ARGA_V_usa1_4 NOR  ARGB_V_usa1_4 ) =  NOR_V_usa1_4
      REPORT "ERROR: composite NOR operator failed; VARIABLE; usa1_4"
      SEVERITY FAILURE;
    wait for 5 ns;
    assert NOT(   ( ARGA_C_csa1_1 NOR  ARGB_C_csa1_1 ) =  NOR_C_csa1_1   and
                  ( ARGA_C_csa1_2 NOR  ARGB_C_csa1_2 ) =  NOR_C_csa1_2   and
                  ( ARGA_C_csa1_3 NOR  ARGB_C_csa1_3 ) =  NOR_C_csa1_3   and
                  ( ARGA_C_csa1_4 NOR  ARGB_C_csa1_4 ) =  NOR_C_csa1_4   and
                  ( ARGA_C_usa1_1 NOR  ARGB_C_usa1_1 ) =  NOR_C_usa1_1   and
                  ( ARGA_C_usa1_2 NOR  ARGB_C_usa1_2 ) =  NOR_C_usa1_2   and
                  ( ARGA_C_usa1_3 NOR  ARGB_C_usa1_3 ) =  NOR_C_usa1_3   and
                  ( ARGA_C_usa1_4 NOR  ARGB_C_usa1_4 ) =  NOR_C_usa1_4   and
                  ( ARGA_S_csa1_1 NOR  ARGB_S_csa1_1 ) =  NOR_S_csa1_1   and
                  ( ARGA_S_csa1_2 NOR  ARGB_S_csa1_2 ) =  NOR_S_csa1_2   and
                  ( ARGA_S_csa1_3 NOR  ARGB_S_csa1_3 ) =  NOR_S_csa1_3   and
                  ( ARGA_S_csa1_4 NOR  ARGB_S_csa1_4 ) =  NOR_S_csa1_4   and
                  ( ARGA_S_usa1_1 NOR  ARGB_S_usa1_1 ) =  NOR_S_usa1_1   and
                  ( ARGA_S_usa1_2 NOR  ARGB_S_usa1_2 ) =  NOR_S_usa1_2   and
                  ( ARGA_S_usa1_3 NOR  ARGB_S_usa1_3 ) =  NOR_S_usa1_3   and
                  ( ARGA_S_usa1_4 NOR  ARGB_S_usa1_4 ) =  NOR_S_usa1_4   and
                  ( ARGA_V_csa1_1 NOR  ARGB_V_csa1_1 ) =  NOR_V_csa1_1   and
                  ( ARGA_V_csa1_2 NOR  ARGB_V_csa1_2 ) =  NOR_V_csa1_2   and
                  ( ARGA_V_csa1_3 NOR  ARGB_V_csa1_3 ) =  NOR_V_csa1_3   and
                  ( ARGA_V_csa1_4 NOR  ARGB_V_csa1_4 ) =  NOR_V_csa1_4   and
                  ( ARGA_V_usa1_1 NOR  ARGB_V_usa1_1 ) =  NOR_V_usa1_1   and
                  ( ARGA_V_usa1_2 NOR  ARGB_V_usa1_2 ) =  NOR_V_usa1_2   and
                  ( ARGA_V_usa1_3 NOR  ARGB_V_usa1_3 ) =  NOR_V_usa1_3   and
                  ( ARGA_V_usa1_4 NOR  ARGB_V_usa1_4 ) =  NOR_V_usa1_4   )
      report "***PASSED TEST: c07s02b01x00p01n02i01948" 
      severity NOTE;
    assert (   ( ARGA_C_csa1_1 NOR  ARGB_C_csa1_1 ) =  NOR_C_csa1_1   and
               ( ARGA_C_csa1_2 NOR  ARGB_C_csa1_2 ) =  NOR_C_csa1_2   and
               ( ARGA_C_csa1_3 NOR  ARGB_C_csa1_3 ) =  NOR_C_csa1_3   and
               ( ARGA_C_csa1_4 NOR  ARGB_C_csa1_4 ) =  NOR_C_csa1_4   and
               ( ARGA_C_usa1_1 NOR  ARGB_C_usa1_1 ) =  NOR_C_usa1_1   and
               ( ARGA_C_usa1_2 NOR  ARGB_C_usa1_2 ) =  NOR_C_usa1_2   and
               ( ARGA_C_usa1_3 NOR  ARGB_C_usa1_3 ) =  NOR_C_usa1_3   and
               ( ARGA_C_usa1_4 NOR  ARGB_C_usa1_4 ) =  NOR_C_usa1_4   and
               ( ARGA_S_csa1_1 NOR  ARGB_S_csa1_1 ) =  NOR_S_csa1_1   and
               ( ARGA_S_csa1_2 NOR  ARGB_S_csa1_2 ) =  NOR_S_csa1_2   and
               ( ARGA_S_csa1_3 NOR  ARGB_S_csa1_3 ) =  NOR_S_csa1_3   and
               ( ARGA_S_csa1_4 NOR  ARGB_S_csa1_4 ) =  NOR_S_csa1_4   and
               ( ARGA_S_usa1_1 NOR  ARGB_S_usa1_1 ) =  NOR_S_usa1_1   and
               ( ARGA_S_usa1_2 NOR  ARGB_S_usa1_2 ) =  NOR_S_usa1_2   and
               ( ARGA_S_usa1_3 NOR  ARGB_S_usa1_3 ) =  NOR_S_usa1_3   and
               ( ARGA_S_usa1_4 NOR  ARGB_S_usa1_4 ) =  NOR_S_usa1_4   and
               ( ARGA_V_csa1_1 NOR  ARGB_V_csa1_1 ) =  NOR_V_csa1_1   and
               ( ARGA_V_csa1_2 NOR  ARGB_V_csa1_2 ) =  NOR_V_csa1_2   and
               ( ARGA_V_csa1_3 NOR  ARGB_V_csa1_3 ) =  NOR_V_csa1_3   and
               ( ARGA_V_csa1_4 NOR  ARGB_V_csa1_4 ) =  NOR_V_csa1_4   and
               ( ARGA_V_usa1_1 NOR  ARGB_V_usa1_1 ) =  NOR_V_usa1_1   and
               ( ARGA_V_usa1_2 NOR  ARGB_V_usa1_2 ) =  NOR_V_usa1_2   and
               ( ARGA_V_usa1_3 NOR  ARGB_V_usa1_3 ) =  NOR_V_usa1_3   and
               ( ARGA_V_usa1_4 NOR  ARGB_V_usa1_4 ) =  NOR_V_usa1_4   )
      report "***FAILED TEST: c07s02b01x00p01n02i01948 - Logical operator NOR for any user-defined one-dimensional array type test failed." 
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c07s02b01x00p01n02i01948arch;
