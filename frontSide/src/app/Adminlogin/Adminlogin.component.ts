import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';



@Component({
    selector: 'admin-login',
    templateUrl: './Adminlogin.component.html',
    styleUrls: ['./Adminlogin.component.css']
})

export class AdminloginComponent implements OnInit {
    email1 = ''
    password1 = ''

    constructor(private router: Router) { }

    onlogin()
    {
        if(this.email1 == "juber@gmail.com" && this.password1 == "Password@123"){
            this.router.navigate(['/login/dashboard'])
        }
        else
        {
            alert('enter the vaild password')
        }

    }

    ngOnInit() { }
}
