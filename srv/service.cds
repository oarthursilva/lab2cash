using { cap.oarthursilva.first.project as db } from '../db/schema';

service Main {
  entity Customers as projection on db.Customers;
}
