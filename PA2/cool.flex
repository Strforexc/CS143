/*
 *  The scanner definition for COOL.
 */

/*
 *  Stuff enclosed in %{ %} in the first section is copied verbatim to the
 *  output, so headers and global definitions are placed here to be visible
 * to the code in the file.  Don't remove anything that was here initially
 */
%{
#include <cool-parse.h>
#include <stringtab.h>
#include <utilities.h>
#include <iostream>
using namespace std;
/* The compiler assumes these identifiers. */
#define yylval cool_yylval
#define yylex  cool_yylex

/* Max size of string constants */
#define MAX_STR_CONST 1025
#define YY_NO_UNPUT   /* keep g++ happy */

extern FILE *fin; /* we read from this file */

/* define YY_INPUT so we read from the FILE fin:
 * This change makes it possible to use this scanner in
 * the Cool compiler.
 */
#undef YY_INPUT
#define YY_INPUT(buf,result,max_size) \
	if ( (result = fread( (char*)buf, sizeof(char), max_size, fin)) < 0) \
		YY_FATAL_ERROR( "read() in flex scanner failed");

char string_buf[MAX_STR_CONST]; /* to assemble string constants */
char *string_buf_ptr;

extern int curr_lineno;
extern int verbose_flag;

extern YYSTYPE cool_yylval;
static int commentCaller;
static int strcode;
static int ccnt;
string res;
/*
 *  Add Your own definitions here
 */

%}




/*
 * Define names for regular expressions here.
 */

DARROW          =>
CLASS           (?i:class) 
ELSE            (?i:else) 
FI              (?i:fi)
IF              (?i:if)
IN              (?i:in)
INHERITS        (?i:inherits)
ISVOID          (?i:isvoid)
LET             (?i:let)
LOOP            (?i:loop)
POOL            (?i:pool)
THEN            (?i:then)
WHILE           (?i:while)
CASE            (?i:case)
ESAC            (?i:esac)
NEW             (?i:new)
OF              (?i:of)
NOT             (?i:not)
DIGIT           [0-9]+
TYPEID          [A-Z][A-Za-z0-9_]*
OBJECTID        [a-z][A-Za-z0-9_]*
ASSIGN          "<-"
ERROR           [\[\]\'>_\0!#$%^&_>?`|\\\1\2\3\4]
LE              <=

%x COMMENT 
%x STR 
%x STR_ESC CLEAR 

/* 




LET_STMT */


%%

 /*
  *  Nested comments
  */


 /*
  *  The multiple-character operators.
  */

"(*"        {
    ccnt = 1;
    commentCaller = INITIAL;
    BEGIN(COMMENT);
}

<COMMENT>[^*(]  {
    if(yytext[0]=='\n'){
        ++curr_lineno;
    }
}
<COMMENT>"*"    ;
<COMMENT>"("    ;
<COMMENT>"(*"   {
    ccnt++;    
    BEGIN(COMMENT);
}
<COMMENT>"*)"   {
    ccnt--;
    if(ccnt==0)
        BEGIN(commentCaller);
    else
        BEGIN(COMMENT);
}
<COMMENT><<EOF>>    {
    BEGIN(commentCaller);
    cool_yylval.error_msg = "EOF in comment";
    return (ERROR);
}
"*)"   {
    cool_yylval.error_msg = "Unmatched *)";
    return (ERROR);
}



t[rR][uU][eE]   {
    cool_yylval.boolean = true;
    return (BOOL_CONST);
}
f[Aa][lL][sS][eE]   {
    cool_yylval.boolean = false;
    return (BOOL_CONST);
}

{DARROW}        { return (DARROW); }
{CLASS}		    { return (CLASS); }
{ELSE}		    { return (ELSE); }
{FI}		    { return (FI); }
{IF}		    { return (IF); }
{IN}		    { return (IN); }
{INHERITS}		    { return (INHERITS); }
{ISVOID}		    { return (ISVOID); }
{LET}		    { return (LET); }
{LOOP}		    { return (LOOP); }
{POOL}		    { return (POOL); }
{THEN}		    { return (THEN); }
{WHILE}		    { return (WHILE); }
{CASE}		    { return (CASE); }
{ESAC}		    { return (ESAC); }
{NEW}		    { return (NEW); }
{OF}		    { return (OF); }
{NOT}		    { return (NOT); }
{ASSIGN}		    { return (ASSIGN); }
{LE}		    { return (LE); }
{ERROR}		        { 
    cool_yylval.error_msg = yytext;
    return (ERROR); 
    }
{DIGIT} {
  cool_yylval.symbol = inttable.add_string(yytext);
  return INT_CONST;
}
{TYPEID} {
  cool_yylval.symbol = stringtable.add_string(yytext);
  return TYPEID;
}
{OBJECTID} {
  cool_yylval.symbol = stringtable.add_string(yytext);
  return OBJECTID;
}

[ \f\r\t\v]+       ;
\n { ++curr_lineno; }

--.*        ;



 /*
  * Keywords are case-insensitive except for the values true and false,
  * which must begin with a lower-case letter.
  */


 /*
  *  String constants (C syntax)
  *  Escape sequence \c is accepted for all characters c. Except for 
  *  \n \t \b \f, the result is c.
  *
  */


\"      {
    strcode = INITIAL;
    res.clear();
    // cout<<":"<<yytext<<endl;
    BEGIN(STR);

}
<STR>[^\"\\\n\0]*\\   {
    res.append(yytext);
    res.pop_back();
    
    BEGIN(STR_ESC);
}
<STR>[^\"\\\n\0]*\"   {
    
    res.append(yytext);
    res.pop_back();
    // cout<<":"<<res.length()<<endl;
    if(res.length()>1024){
        cool_yylval.error_msg = "String constant too long";
        BEGIN(strcode);
        return ERROR;
    }
    else{
        cool_yylval.symbol = stringtable.add_string((char*)res.data());
        BEGIN(strcode);
        return STR_CONST;
    }
    
}
<STR>[^\"\\]*$  {
    res.append(yytext);
    cool_yylval.error_msg = "Unterminated string constant";
    BEGIN(strcode);
    ++curr_lineno;
    return (ERROR);
}
<STR>"\0" {
    BEGIN(CLEAR);
    cool_yylval.error_msg = "String contains escaped null character.";
    return (ERROR);
}
<STR>[^\"\\\n]   {
    
    res.append(yytext);
}

<STR_ESC>n       {
    res.append("\n");
    BEGIN(STR);
}
<STR_ESC>b       {
    res.append("\b");
    BEGIN(STR);
}
<STR_ESC>t       {
    res.append("\t");
    BEGIN(STR);
}
<STR_ESC>f       {
    res.append("\f");
    BEGIN(STR);
}

<STR_ESC>\n       {
    res.append("\n");
    ++curr_lineno;
    BEGIN(STR);
}
<STR_ESC>"\0" {
    BEGIN(CLEAR);
    cool_yylval.error_msg = "String contains escaped null character.";
    return (ERROR);
}

<CLEAR>[^\"]*\"   {
    BEGIN(strcode);
}
<STR_ESC>.       {
    res.append(yytext);
    BEGIN(STR);
}
<STR_ESC><<EOF>>    {
    BEGIN(strcode);
    cool_yylval.error_msg = "EOF in string constant";
    return (ERROR);
}
<STR><<EOF>>    {
    BEGIN(strcode);
    cool_yylval.error_msg = "EOF in string constant";
    return (ERROR);
}
.       {
    return yytext[0];
}
%%
