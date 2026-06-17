import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    this.scrollToBottom();

    this.listener = () => {
      setTimeout(() => {
        this.scrollToBottom();
      }, 100);
    };

    document.addEventListener("turbo:before-stream-render", this.listener);
  }

  disconnect() {
    document.removeEventListener("turbo:before-stream-render", this.listener);
  }

  scrollToBottom() {
    const lastMessage = this.element.lastElementChild;

    console.log(lastMessage);

    lastMessage?.scrollIntoView({
      block: "end",
    });
  }
}
