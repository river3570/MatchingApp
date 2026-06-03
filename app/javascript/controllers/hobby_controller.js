import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["select", "list", "hiddenHobbyContainer"];

  add() {
    const hobbyId = this.selectTarget.value;

    // バリデーション
    if (!this._isValidHobby(hobbyId)) return;

    const hobbyName =
      this.selectTarget.options[this.selectTarget.selectedIndex].text;

    const li = document.createElement("li");
    li.classList.add("user-edit__hobby");
    li.dataset.hobbyId = hobbyId;
    li.innerHTML = `
      ${hobbyName}
      <button
      type="button"
      class="user-edit__button-remove"
      data-action="click->hobby#remove">
      ×
      </button>

`;

    this.listTarget.appendChild(li);

    const input = document.createElement("input");
    input.type = "hidden";
    input.name = "user[hobby_ids][]";
    input.value = hobbyId;
    input.dataset.hobbyId = hobbyId;

    this.hiddenHobbyContainerTarget.appendChild(input);
  }

  remove(event) {
    const hobbyElement = event.currentTarget.closest(".user-edit__hobby");
    const hobbyId = hobbyElement.dataset.hobbyId;

    hobbyElement.remove();

    const hiddenInput = this.hiddenHobbyContainerTarget.querySelector(
      `input[data-hobby-id="${hobbyId}"]`,
    );

    hiddenInput?.remove();
  }

  _isValidHobby(hobbyId) {
    const hobbyCount = this.hiddenHobbyContainerTarget.querySelectorAll(
      'input[name="user[hobby_ids][]"]',
    ).length;
    if (hobbyCount >= 3) return false;

    const existsHobby = this.hiddenHobbyContainerTarget.querySelector(
      `input[data-hobby-id="${hobbyId}"]`,
    );
    if (existsHobby) return false;

    return true;
  }
}
