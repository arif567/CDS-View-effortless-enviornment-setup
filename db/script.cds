namespace db;

entity Student {
    key id : Integer;
    name : String;
    batch : Integer;
}

entity StudentInfo {
    key id : Integer;
    subject : String;
    title : String;
}

service MyService {
    entity Student as projection on db.Student;
    entity StudentInfo as projection on db.StudentInfo;

    view vStudent as select from Student {
        id,
        name
    }



}