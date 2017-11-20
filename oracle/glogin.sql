-- Anzahl der Zeilen, bevor sqlplus die Kopfzeilen erneut ausgibt
SET PAGESIZE 999

-- Zeilenlange, bevor automatisch ein Zeilenumbruch erfolgt
SET LINESIZE 1000

-- setze automatisch Ausgabe 
SET SERVEROUTPUT ON SIZE 1000000 FORMAT WRAPPED

-- Standardeditor
DEFINE _EDITOR="nvim"

-- keine anhnung, wozu das gut ist
COLUMN segment_name FORMAT A30 WORD_WRAP
COLUMN object_name FORMAT A30 WORD_WRAP

-- WHENEVER SQLERROR EXIT SQL.CODE ROLLBACK
column global_name new_value gname
set termout off
select lower(user) || '@idm-db' || global_name global_name from global_name;
set termout on
set sqlprompt '&gname> '
