const farmerTrue = document.querySelector('#user_isFarmer_true');
const farmerMore = document.querySelector('.farmervalid');
const farmerFalse = document.querySelector('#user_isFarmer_false');

if (farmerTrue) {
  farmerTrue.addEventListener('change', () => {
    farmerMore.style.display = 'block';
  });
}

if (farmerFalse) {
  farmerFalse.addEventListener('change', () => {
    farmerMore.style.display = 'none';
  });
}


