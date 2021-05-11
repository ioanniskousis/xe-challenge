/* eslint-disable func-names */
/* eslint-disable no-plusplus */
function inputMatchesOption(inputText) {
  const datalist = document.getElementById('datalist');
  for (let i = 0; i < datalist.options.length; i++) {
    if (datalist.options[i].innerHTML === inputText) { return true; }
  }
  return false;
}

function parseResponse(places) {
  const datalist = document.getElementById('datalist');
  datalist.innerHTML = '';

  places.forEach((place) => {
    const optionText = `${place.mainText}, ${place.secondaryText}`;
    const option = document.createElement('option');
    option.innerHTML = optionText;
    option.id = place.placeId;

    datalist.appendChild(option);
  });
}

document.getElementById('realestate_area').oninput = async (e) => {
  const inputText = e.target.value;
  if (inputText.length < 3) return;
  if (inputMatchesOption(inputText)) return;

  const apiUrl = `https://xegr-geography.herokuapp.com/places/autocomplete?input=${inputText}`;

  await fetch(apiUrl, { mode: 'no-cors' })
    .then((response) => response.json())
    .then((json) => {
      document.getElementById('api-error').innerHTML = '';
      parseResponse(json);
    })
    .catch((e) => {
      document.getElementById('api-error').innerHTML = e;
    });
};

document.getElementById('realestate_area').onchange = (e) => {
  document.getElementById('realestate_placeId').value = '';

  const areaText = e.target.value;
  const datalist = document.getElementById('datalist');
  for (let i = 0; i < datalist.options.length; i++) {
    if (datalist.options[i].innerHTML === areaText) {
      document.getElementById('realestate_placeId').value = datalist.options[i].id;
      return;
    }
  }
};
