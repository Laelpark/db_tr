SELECT * from jobs;

CREATE SEQUENCE test
       INCREMENT BY 1
       START WITH 1
       MINVALUE 1
       MAXVALUE 9999
       NOCYCLE
       NOCACHE
       NOORDER;
   
select test.nextval from dual;   
       
select test.currval from dual;

test.nextval;

insert into testTable (
    name
    ,test3
    )VALUES (
    '�ǳ�?'
    ,'�Ǵ°�?'
    )
;

insert into codeGroup (
    ifcgName
    ,ifcgName_Eng
    )VALUES (
    '��Ż�'
    ,'radio_operator'
    )
;
