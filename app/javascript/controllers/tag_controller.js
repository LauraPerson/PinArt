import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ['input']

  redesign(e) {
    e.preventDefault()
    if (e.keyCode === 188) {
      let tags = this.inputTarget.value
      let arr = tags.split(',')
      arr.forEach(tag => {
        if (tag.length >= 1 ) {
          console.log(this.inputTarget.innerHTML = `<p class='tag-green'>${tag}</p>`)
        }
      });
      
    };
  }
}
