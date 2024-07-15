namespace ust.reuse;

type guid : String(32);

type food{
    id : Integer;
    name: String(10);
}

aspect address{
    houseno: Integer;
    street : String(32);
    sector : String(44);
    landmark : String(80);
    city: String(50) 
}