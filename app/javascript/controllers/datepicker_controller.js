// import { Controller } from "@hotwired/stimulus"
// import flatpickr from "flatpickr";
// // Connects to data-controller="datepicker"
// export default class extends Controller {
//   static targets = ["dates"];

//   connect() {
//       this.initFlatpickr();
//   }

//   initFlatpickr() {
//     const datesJson = this.datesTarget.getAttribute("data-dates-json");
//     const datesArray = JSON.parse(datesJson);
//     const disabledDates = datesArray.map(range => ({
//       from: range[0],
//       to: range[1]
//     }));

//     flatpickr(this.element, {
//         disable: disabledDates,
//     });
//   }
// }


import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// // Connects to data-controller="datepicker"
export default class extends Controller {
//   static targets = ["dates"];
<<<<<<< HEAD

  connect() {
    flatpickr(this.element);
  }

=======
  connect() {
    flatpickr(this.element);
  }
>>>>>>> master
//   initFlatpickr() {
//     const datesJson = this.datesTarget.getAttribute("data-dates-json");
//     const datesArray = JSON.parse(datesJson);
//     const disabledDates = datesArray.map(range => ({
//       from: range[0],
//       to: range[1]
//     }));
<<<<<<< HEAD

=======
>>>>>>> master
//     flatpickr(this.element, {
//         disable: disabledDates,
//     });
//   }
}
