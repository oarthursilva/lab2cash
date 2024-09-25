namespace cap.oarthursilva.first.project;

using {
  cuid,
  managed
} from '@sap/cds/common';

//@cds.persistence.exists
entity Customers : cuid, managed {
  name   : String(100) @description: 'name';
  age    : Integer     @description: 'age';
  orders : Composition of many Orders
             on orders.customer = $self;
}

entity Orders : cuid, managed {
  amount   : Decimal;
  customer : Association to Customers;
  invoice  : Association to one Invoices
               on invoice.order = $self;
}

entity Invoices : cuid, managed {
  invoice : String;
  order   : Association to Orders;
}
