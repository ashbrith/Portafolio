const btnDelete= document.querySelectorAll('.btn_delete')
if (btnDelete) {
  const btnArray= Array.from(btnDelete);
  btnArray.forEach((btn) =>{
    btn.addEventListener('click',(e)=>{
      if(!confirm('¿Seguro deseas eliminar?')){
        e.preventDefault();
      }
    });
  });
}

var alertList = document.querySelectorAll('.alert')
alertList.forEach(function (alert) {
  new bootstrap.Alert(alert)
})
