// User 
function showUser(data) {
    openModal("Usuario")
}

function editUser(data) {
    openModal("Editar Usuario")
    $('#name').val(data.name);
    $('#email').val(data.email);
    console.log('data', data)
}

function deleteUser(id) {

}

function sendUser(params) {

}