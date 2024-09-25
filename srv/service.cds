using {cap.oarthursilva.first.project as db} from '../db/schema';

service Main @(path: '/main') {

  // @restrict: [{grant: [
  //   'CREATE',
  //   'READ'
  // ]}]
  entity Customers        as
    projection on db.Customers {
      *,
      name @mandatory
    }

  entity Orders as
    projection on db.Orders {
      *
    }

  entity Invoices         as
    projection on db.Invoices {
      *
    }
}
