using { ust.reuse as reuse} from './reuse';
using { cuid, managed, temporal } from '@sap/cds/common';

namespace ust.demo;

context master{

    entity student : reuse.address{
        key id: reuse.guid;
        nameFirst:String(80);
        namelast: String(80);
        age:Integer;
        class: Association to semester;
    }

    entity semester {
        key id : String(32);
        name: String(30);
        specialization: String(80);
        hod: String(44);
    }
    entity stu {
        id : reuse.guid;
        foo : reuse.food;
    }
    entity books {
        key code : String(32);
        name: localized String(80);
        author: String(44);
    }   
}

context transaction {
   
    entity subs : cuid, managed, temporal{
        student: Association to one master.student;
        book: Association to one master.books;
    }
 
}