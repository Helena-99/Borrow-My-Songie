import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// // Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ["dates", "datePicker"];

  connect() {
      this.initFlatpickr();
  }

  initFlatpickr() {
    // Handles errors in case there are no bookings on the song and the @dates is empty
    const dateData = this.datesTarget.dataset.dates;
    if (!dateData) {
      console.error("No dates data found!");
      return;
    }

    // Parse dateData
    const disabledRanges = JSON.parse(dateData);

     // Convert the date strings into Flatpickr-compatible objects
    const disabledDates = disabledRanges.map(range => ({
      from: range[0],
      to: range[1]
    }));

    // Initialize Flatpickr on each datePicker input
    this.datePickerTargets.forEach(input => {
      flatpickr(input, {
        disable: disabledDates,
        minDate: "today"
      });
    });
  }
}
