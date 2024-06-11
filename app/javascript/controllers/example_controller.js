import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "homeworld" ]
    load_home_world(event) {
        const homeworld_id = event.target.dataset.homeworld
        const targetFrame = this.homeworldTarget
        targetFrame.src = `${targetFrame.dataset.basePath}/${homeworld_id}`
    }
}
