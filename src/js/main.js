// let buttonNav = document.querySelector('.button-nav').addEventListener('click', () => {
//   document.querySelector('.line').classList.toggle('rotate');
// });
let buttonNav = document.querySelector('.button-nav');
buttonNav.addEventListener('click', () => {
  document.querySelectorAll('.line').classList.toggle('rotate');
});
