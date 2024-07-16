import { Controller } from "stimulus"

export default class extends Controller {
  handleSuccess(event) {
    const [data, status, xhr] = event.detail
    if (status === 200) {
      alert("Products imported successfully")
      window.location.href = "/products"
    }
  }
}
