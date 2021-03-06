import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from "@angular/common/http";
import {Observable} from "rxjs";
import {ResultObjectVO} from "../../vo/result-object-vo";
import {Md5} from "ts-md5";

const servicePrefix : string = '/coldFusion/';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationService {
  options : object;

  constructor(private http: HttpClient) {
    let optionHeaders : HttpHeaders = new HttpHeaders().set('Content-Type',
      'application/x-www-form-urlencoded; charset=UTF-8');
    this.options = {headers:optionHeaders};
  }

  authenticate(username : string, password : string) : Observable<any> {
    let parameters : string =  "username" + '=' + username + '&';
    parameters += "password" +'='+ Md5.hashStr(password) + "&";
    parameters += "method" + "=" + "authenticate" ;
    return this.http.post(servicePrefix +
      'com/dotComIt/learnWith/services/AuthenticationService.cfc',
      parameters,
      this.options);

  }

}
