var url = "http://localhost:8084/ComputerGeek"

function signup() {
    if(checkemail() == true){
        
        return true; 
    }else{
        return false;
        
    }
    
}

function checkemail(){
    
    if(document.getElementById("Password").value.localeCompare(document.getElementById("ConPassword").value) == 0){
            
    var http = new XMLHttpRequest();
    http.open("POST", url + "/ajax/isEmailValid.jsp?", true);
    http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var params = "Email"+ document.getElementById("email").value ;
    http.send(params);
    http.onload = function () {
        var r = (http.responseText).toString().trim();
        if(r.localeCompare("FALSE")==0){
            alert("Given Mail is Already Exist !");
            return false;
        }
        if(r.localeCompare("TRUE")==0){
            return true;
        }
    }
}else{
    alert("Password and confirm password must be same !")
        return false;
}
}
