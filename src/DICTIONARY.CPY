      *    PRIMATIVES
       01  NL          PIC X       VALUE x'0A'.
       01  H1          PIC X(3)    VALUE '<H1'.
       01  H1ID        PIC X(8)    VALUE '<H1 ID="'.
       01  END-H1      PIC X(5)    VALUE '</H1>'.
       01  PARA        PIC X(2)    VALUE '<P'.
       01  END-PARA    PIC X(4)    VALUE '</P>'.
       01  DIV         PIC X(5)    VALUE '<DIV '.
       01  END-DIV     PIC X(6)    VALUE '</DIV>'.
       01  BODY        PIC X(6)    VALUE '<BODY>'.
       01  END-BODY    PIC X(7)    VALUE '</BODY>'.
       01  LINEAGE     PIC X(6)    VALUE ' CLASS'.
       01  HTML        PIC X(6)    VALUE '<HTML>'.
       01  END-HTML    PIC X(7)    VALUE '</HTML>'.
       01  CAPTION     PIC X(7)    VALUE '<TITLE>'.
       01  END-CAPTION PIC X(8)    VALUE '</TITLE>'.
       01  DOC         PIC X(15)   VALUE '<!DOCTYPE html>'.
       01  HEAD        PIC X(6)    VALUE '<HEAD>'.
       01  END-HEAD    PIC X(7)    VALUE '</HEAD>'.
       01  BREAK       PIC X(4)    VALUE '<BR>'.
       01  META        PIC X(5)    VALUE '<META'.
       01  PROP        PIC X(9)    VALUE ' PROPERTY'.
       01  NAM         PIC X(5)    VALUE ' NAME'.
       01  STYLE       PIC X(7)    VALUE '<STYLE>'.
       01  END-STYLE   PIC X(9)    VALUE '</STYLE>'.
       01  SCRIPT      PIC X(7)    VALUE '<SCRIPT'.
       01  SRC         PIC X(4)    VALUE ' SRC'.
       01  END-SCRIPT  PIC X(9)    VALUE '</SCRIPT>'.
       01  IDENTITY    PIC X(3)    VALUE ' ID'.
       01  BECOMES     PIC X       VALUE '='.
       01  EPITHET     PIC X(5)    VALUE '<!-- '.
       01  END-EPITHET PIC X(4)    VALUE ' -->'.
       01  LINK        PIC X(3)    VALUE '<A '.
       01  END-LINK    PIC X(4)    VALUE '</A>'.
       01  URL         PIC X(5)    VALUE ' HREF'.
       01  SLASH       PIC X       VALUE '/'.
       01  L1NK        PIC X(5)    VALUE '<LINK'.
       01  RELATES     PIC X(4)    VALUE ' REL'.
       01  KIND        PIC X(5)    VALUE ' TYPE'.
       01  CON         PIC X(8)    VALUE ' CONTENT'.
       01  MIDDLE      PIC X(8)    VALUE '<CENTER>'.
       01  END-MIDDLE  PIC X(9)    VALUE '</CENTER>'.
       01  IMAGE       PIC X(4)    VALUE '<IMG'.
       01  END-IMAGE   PIC X(6)    VALUE '</IMG>'.
       01  STYLE-ATTR  PIC X(6)    VALUE ' STYLE'.
       01  BOLD        PIC X(6)    VALUE '<BOLD>'.
       01  END-BOLD    PIC X(7)    VALUE '</BOLD>'.
      *    CLASSES/ID'S
       01  STORYTITLE  PIC X(100).
       01  CLOSED      PIC X       VALUE '>'.
       01  CLOSE-DIV   PIC X       VALUE '>'.
       01  CLOSE-META  PIC X       VALUE '>'.
       01  CLOSE-H1    PIC X       VALUE '>'.
       01  CLOSE-LINK  PIC X       VALUE '>'.
       01  CLOSE-PARA  PIC X       VALUE '>'.
       01  CLOSE-IMAGE PIC X       VALUE '>'.
       01 CLOSE-SCRIPT PIC X       VALUE '>'.
