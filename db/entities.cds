namespace app.entities;

//Re-usables
using {managed} from '@sap/cds/common';

//Entities
entity OrderHeaders : managed { //Parent
    key id          : Int32;
    key ordernumber : String(10);
        desciption  : String(50);
        orderitems  : Association to many OrderItems
                          on orderitems.ordernumber = $self;
}

entity OrderItems { //Child
    key id          : Int32;
    key ordernumber : Association to OrderHeaders;
        material    : String(10);

}

entity Materials { //Grandchild
    key id          : Int32;
    key material    : Association to OrderItems;
        description : String(50);
}
