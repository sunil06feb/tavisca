let storeEv;
var closeBtn = document.querySelectorAll('.close');
function addTask() {
  var inputValue = document.getElementById("myInput").value;
  if (inputValue === '') {
    alert("You must write something !");
  } else {
    storeEv.target.parentElement.insertAdjacentHTML('afterbegin', `<li>${inputValue}</li>`);
  }
  document.getElementById("myInput").value = "";
  const addCard = document.getElementById("addCard");
  addCard.classList.add("display-none");
}
function addList() {
  var inputValue = document.getElementById("myInputList").value;
  var ele = `<div class="myTask box-col span-3">
              <h3 class="text-cap">${inputValue}</h3>
                <ul id="myUL" class="text-cap">
                    <button type="button" class="add-card" onclick="addCard(event)">+ Add a card</button>
                </ul>
            </div>`;
  if (inputValue === '') {
    alert("You must write something!");
  } else {
    document.getElementById("myTask").insertAdjacentHTML('beforeend', ele);
  }
  document.getElementById("myInputList").value = "";
  const addCard = document.getElementById("addList");
  addCard.classList.add("display-none");
}

function addCard(ev) {
  storeEv = ev;
  const addCard = document.getElementById("addCard");
  addCard.classList.remove("display-none");
}

function addCardPop() {
  const addList = document.getElementById("addList");
  addList.classList.remove("display-none");
}

for (let i = 0; i < closeBtn.length; i++) {
  closeBtn[i].addEventListener("click", function (ev) {
    ev.target.parentElement.classList.add("display-none");
  });
}