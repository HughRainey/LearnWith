import {Injectable} from "@angular/core";
import {HttpClient, HttpHeaders} from "@angular/common/http";
import {Observable} from "rxjs/index";
import {DatePipe} from "@angular/common";
import {TaskFilterVO} from "../../vo/TaskFilterVO";

const servicePrefix : string = '../../php/';

@Injectable()
export class TaskServicePHP {
    options : Object;

    constructor(private http: HttpClient) {
        let optionHeaders : HttpHeaders = new HttpHeaders().set('Content-Type',
            'application/x-www-form-urlencoded; charset=UTF-8');
        this.options = {headers:optionHeaders};
    }

    loadTasks(taskFilter:TaskFilterVO) : Observable<any> {
        let datePipe: DatePipe = new DatePipe('en-US');

        let url : string = servicePrefix + 'com/dotComIt/learnWith/api/tasks/';
        let concatenator : string = "?";
        if ((taskFilter.completed !== null) &&
            (typeof taskFilter.completed !== "undefined")) {
            url += concatenator + "completed=" + taskFilter.completed;
            concatenator = "&";
        }
        if (taskFilter.startDate) {
            url += concatenator + "startDate=" +
                datePipe.transform(taskFilter.startDate, "M/d/yyyy");
            concatenator = "&";
        }
        return this.http.get(url);


    }


}
